-- =====================================================================
-- Protocolo de missões v2.6 — esquema mínimo e análise do gestor
-- PostgreSQL 14+ (compatível com Supabase)
--
-- O responsável só grava: etapas (no início), um registro por dia
-- (atividade principal ou motivo) e pendências. Toda a análise abaixo
-- é lida apenas pelo gestor; nenhuma view é exposta ao responsável.
-- =====================================================================

-- ---------------------------------------------------------------------
-- Tabelas
-- ---------------------------------------------------------------------

create table pessoa (
    id     serial primary key,
    nome   text not null,
    papel  text not null check (papel in ('gestor', 'responsavel'))
);

create table feriado (
    dia date primary key
);

create table missao (
    id              text primary key,                -- 'MS-027'
    titulo          text not null,
    gestor_id       int  not null references pessoa,
    responsavel_id  int  not null references pessoa,
    docs_url        text,                            -- Google Docs (opcional)
    pasta_url       text,                            -- pasta no Google Drive (opcional)
    emitida_em      date,
    data_estimada   date not null,
    situacao        text not null default 'rascunho' check (situacao in
                    ('rascunho', 'em_execucao', 'impedida', 'entregue',
                     'em_ajuste', 'concluida', 'cancelada')),
    versao          int  not null default 1
    -- descrição e requisitos ficam em campos de texto da missão;
    -- não entram na análise e foram omitidos aqui
);

-- Etapas: escritas pelo responsável no início, para alinhar a percepção.
create table etapa (
    id            serial primary key,
    missao_id     text not null references missao on delete cascade,
    ordem         int  not null,
    nome          text not null,
    concluida_em  date
);

-- Registro do dia: uma linha por dia, com a atividade principal OU um motivo.
create table registro_dia (
    missao_id      text not null references missao on delete cascade,
    dia            date not null,
    atividade      text,
    motivo         text check (motivo in ('folga_saude', 'outra_missao', 'fora_de_missao')),
    registrado_em  timestamptz not null default now(),
    primary key (missao_id, dia),
    check ((atividade is null) <> (motivo is null)),
    check (atividade = btrim(atividade))
);

create table pendencia (
    id             serial primary key,
    missao_id      text not null references missao on delete cascade,
    tipo           text not null check (tipo in ('duvida', 'consulta', 'impedimento', 'nova_data')),
    bloqueio       text not null default 'nenhum' check (bloqueio in ('tudo', 'parte', 'nenhum')),
    texto          text not null,
    aberta_em      timestamptz not null default now(),
    respondida_em  timestamptz,
    resposta_tipo  text check (resposta_tipo in ('resposta', 'alteracao')),
    fechada_em     timestamptz
);

-- Uma linha por entrega (uma missão em ajuste pode ser entregue de novo).
create table entrega (
    id           serial primary key,
    missao_id    text not null references missao on delete cascade,
    entregue_em  timestamptz not null default now(),
    revisada_em  timestamptz,
    revisao      text check (revisao in ('concluida', 'em_ajuste'))
);

-- ---------------------------------------------------------------------
-- Funções de apoio
-- ---------------------------------------------------------------------

-- Data de referência. Em produção é a data atual; em testes:
--   set app.hoje = '2026-10-22';
create function hoje() returns date
language sql stable as $$
    select coalesce(nullif(current_setting('app.hoje', true), '')::date, current_date)
$$;

-- Dias úteis no intervalo (de, ate]: sem sábados, domingos e feriados.
create function dias_uteis(de date, ate date) returns int
language sql stable as $$
    select count(*)::int
    from generate_series(de + 1, ate, interval '1 day') as d
    where extract(isodow from d) < 6
      and d::date not in (select dia from feriado)
$$;

-- Soma n dias úteis a uma data.
create function soma_dias_uteis(d date, n int) returns date
language sql stable as $$
    select case when n <= 0 then d else (
        select x::date
        from generate_series(d + 1, d + n * 3 + 14, interval '1 day') as x
        where extract(isodow from x) < 6
          and x::date not in (select dia from feriado)
        order by x
        offset n - 1 limit 1)
    end
$$;

-- Auto-complete do campo "atividade": atividades já usadas nesta missão,
-- as mais recentes primeiro. É a única leitura de registros que o
-- responsável faz, e devolve só nomes, não datas.
create function sugerir_atividades(p_missao text, p_prefixo text default '')
returns table (atividade text)
language sql stable as $$
    select u.atividade
    from (
        select distinct on (lower(r.atividade)) r.atividade, r.dia
        from registro_dia r
        where r.missao_id = p_missao
          and r.atividade is not null
          and r.atividade ilike p_prefixo || '%'
        order by lower(r.atividade), r.dia desc
    ) u
    order by u.dia desc
    limit 8
$$;

-- ---------------------------------------------------------------------
-- Views de análise (só gestor)
-- ---------------------------------------------------------------------

-- Data estimada exibida: avança pelos dias úteis de impedimento total.
create view v_data_estimada as
select m.id as missao_id,
       m.data_estimada,
       coalesce(sum(dias_uteis(p.aberta_em::date,
                               coalesce(p.respondida_em::date, hoje()))), 0)::int as dias_suspensos,
       soma_dias_uteis(m.data_estimada,
                       coalesce(sum(dias_uteis(p.aberta_em::date,
                                               coalesce(p.respondida_em::date, hoje()))), 0)::int)
           as data_exibida
from missao m
left join pendencia p
       on p.missao_id = m.id and p.tipo = 'impedimento' and p.bloqueio = 'tudo'
group by m.id, m.data_estimada;

-- Sequências: dias de trabalho seguidos com a mesma atividade principal
-- (técnica gaps-and-islands). Dias com motivo não quebram a sequência.
create view v_sequencias as
with r as (
    select missao_id, dia, atividade,
           row_number() over (partition by missao_id order by dia)
         - row_number() over (partition by missao_id, lower(atividade) order by dia) as grupo
    from registro_dia
    where atividade is not null
)
select missao_id,
       (array_agg(atividade order by dia desc))[1] as atividade,
       min(dia)       as inicio,
       max(dia)       as fim,
       count(*)::int  as dias
from r
group by missao_id, lower(atividade), grupo;

-- Sinais. Informam o gestor; nunca aparecem para o responsável.
create view v_sinais as
with ativa as (
    select m.*, de.data_exibida
    from missao m
    join v_data_estimada de on de.missao_id = m.id
    where m.situacao in ('em_execucao', 'impedida', 'em_ajuste')
)
-- 1. Dias sem registro (nem atividade, nem motivo): marca na lista.
select a.id as missao_id, 'dias_sem_registro' as sinal,
       dias_uteis(coalesce(max(r.dia), a.emitida_em), hoje() - 1) || ' dias úteis' as detalhe,
       false as notifica
from ativa a
left join registro_dia r on r.missao_id = a.id
where not exists (select 1 from pendencia p
                  where p.missao_id = a.id and p.tipo = 'impedimento'
                    and p.bloqueio = 'tudo' and p.fechada_em is null)
group by a.id, a.emitida_em
having dias_uteis(coalesce(max(r.dia), a.emitida_em), hoje() - 1) >= 2

union all
-- 2. Data estimada passou sem entrega nem pedido de nova data: marca na lista.
select a.id, 'data_estimada_passou', 'era ' || to_char(a.data_exibida, 'DD/MM'), false
from ativa a
where hoje() > a.data_exibida
  and not exists (select 1 from pendencia p
                  where p.missao_id = a.id and p.tipo = 'nova_data' and p.fechada_em is null)

union all
-- 3. Pendência sem resposta: notifica o gestor.
select p.missao_id, 'pendencia_sem_resposta',
       p.tipo || ' sem resposta há ' || dias_uteis(p.aberta_em::date, hoje()) || ' dias úteis', true
from pendencia p
join ativa a on a.id = p.missao_id
where p.respondida_em is null
  and dias_uteis(p.aberta_em::date, hoje()) >= case when p.tipo = 'impedimento' then 1 else 2 end

union all
-- 4a. Espera pela revisão: notifica o gestor.
select e.missao_id, 'espera_revisao',
       'entregue há ' || dias_uteis(e.entregue_em::date, hoje()) || ' dias úteis', true
from entrega e
where e.revisada_em is null
  and dias_uteis(e.entregue_em::date, hoje()) > 2

union all
-- 4b. Impedimento respondido, mas aberto há 3 dias úteis: notifica o gestor.
--     (o impedimento sem resposta já aparece no sinal 3)
select p.missao_id, 'impedimento_aberto',
       'respondido, mas aberto há ' || dias_uteis(p.aberta_em::date, hoje()) || ' dias úteis', true
from pendencia p
join ativa a on a.id = p.missao_id
where p.tipo = 'impedimento'
  and p.respondida_em is not null
  and p.fechada_em is null
  and dias_uteis(p.aberta_em::date, hoje()) >= 3;

-- Painel do gestor: uma linha por missão aberta.
create view v_painel_gestor as
select m.id,
       m.titulo,
       pr.nome as responsavel,
       m.situacao,
       m.versao,
       de.data_exibida as data_estimada,
       de.dias_suspensos,
       (select count(*) filter (where concluida_em is not null) || '/' || count(*)
          from etapa e where e.missao_id = m.id) as etapas_concluidas,
       ult.dia        as ultimo_registro,
       seq.atividade  as atividade_atual,
       seq.dias       as dias_seguidos_na_atividade,
       (select count(*) from registro_dia r
         where r.missao_id = m.id and r.motivo = 'outra_missao')   as dias_outra_missao,
       (select count(*) from registro_dia r
         where r.missao_id = m.id and r.motivo = 'fora_de_missao') as dias_fora_de_missao,
       (select string_agg(s.sinal || ' (' || s.detalhe || ')', '; ')
          from v_sinais s where s.missao_id = m.id) as sinais
from missao m
join pessoa pr          on pr.id = m.responsavel_id
join v_data_estimada de on de.missao_id = m.id
left join lateral (
    select dia from registro_dia r
    where r.missao_id = m.id order by dia desc limit 1
) ult on true
left join lateral (
    select atividade, dias from v_sequencias s
    where s.missao_id = m.id order by fim desc limit 1
) seq on true
where m.situacao not in ('concluida', 'cancelada');

-- Linha do tempo de uma missão (para o gestor abrir antes de conversar):
--   select dia, coalesce(atividade, 'sem trabalho: ' || motivo)
--   from registro_dia where missao_id = 'MS-027' order by dia;
