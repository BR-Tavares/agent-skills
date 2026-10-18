# Protocolo de missões

Versão 2.4 básica • 18/10/2026 • Equipe pequena • Folha única por missão (PWA)

## Princípio

Uma missão é uma tarefa com ID, um responsável e um prazo único. A folha da missão é o **acordo vigente**: o que não está nela não foi combinado.

**O gestor define o quê; o responsável define o como.** O gestor preenche a missão (necessidade, resultado esperado, tarefa, entrega, critérios de conclusão, insumos e prazo) e os **requisitos da tarefa**, que valem para a missão inteira: o que **precisa acontecer** e o que **não pode acontecer**. Tudo o que os requisitos não fixam é decisão do responsável: as etapas, as atividades, a ordem e o método. No Lean, respeitar as pessoas é deixá-las pensar e resolver os próprios problemas.

**A folha é preenchida durante a execução.** O responsável recebe a missão, escreve as etapas e vai marcando o calendário, abrindo pendências e preenchendo a entrega conforme trabalha. O gestor vê a mesma folha, espelhada no celular, e só age quando precisa.

**O desvio aparece sozinho** (controle visual e *jidoka*). Dia sem marcação, atividade que se arrasta e trabalho que não avança ficam evidentes sem que ninguém pergunte. Os sinais servem **primeiro ao responsável**, e o gestor é chamado só quando o sinal fica vermelho. Quem encontra um problema para e o mostra. A diferença entre controle visual e microgerenciamento está em mostrar o andamento sem cobrar todo dia.

**Linguagem.** A folha diz o porquê de cada pedido e evita termos de comando (apoio à autonomia, Teoria da Autodeterminação).

---

## Fluxo de uso do app

O gestor só entra em quatro pontos: ao emitir, ao ler o primeiro plano, ao responder uma pendência ou um vermelho e na revisão. O resto do ciclo é do responsável.

```mermaid
flowchart TD
    subgraph G["Gestor"]
        G1["Cria o rascunho: cabeçalho, pasta, missão e requisitos"]
        G2["Emite a missão"]
        G3{"O plano mostra que a tarefa foi entendida?"}
        G4["Responde ou faz uma alteração"]
        G5["Conversa Kata diante do trabalho real"]
        G6{"Revisão: critérios e requisitos cumpridos?"}
        G7["Encerramento: o que muda na próxima folha?"]
    end

    subgraph R["Responsável"]
        R1["Recebe a missão e abre a pasta"]
        R2["Cria e edita etapas e atividades"]
        R3["Trabalha e marca no calendário as atividades do dia"]
        R4{"Precisa do gestor?"}
        R5["Abre pendência: dúvida, consulta, impedimento ou novo prazo"]
        R6["Fecha a pendência"]
        R7{"Todas as atividades concluídas?"}
        R8["Preenche a entrega, com evidências na pasta"]
        R9["Encerramento: o que a folha deveria ter dito?"]
    end

    subgraph A["App"]
        A1["Aviso único do primeiro plano"]
        A2{"Sinal?"}
        A3["Amarelo para o responsável"]
        A4["Vermelho também para o gestor"]
    end

    G1 --> G2 --> R1 --> R2
    R2 --> A1 --> G3
    G3 -- "não" --> G4
    G3 -- "sim: nada a fazer" --> R3
    R2 --> R3
    R3 --> A2
    A2 -- "nenhum" --> R4
    A2 -- "amarelo" --> A3 --> R2
    A2 -- "vermelho" --> A4 --> G5 --> R2
    R4 -- "sim" --> R5 --> G4 --> R6 --> R3
    R4 -- "não" --> R7
    R7 -- "não" --> R3
    R7 -- "sim" --> R8 --> G6
    G6 -- "em ajuste" --> R3
    G6 -- "concluída" --> R9 --> G7
```

---

## A folha, bloco a bloco

São sete blocos, na ordem da tela. Cada bloco indica quem o preenche. Os campos **calculados** são mostrados pelo app e ninguém os preenche.

### 1. Cabeçalho (gestor)

- **ID e título:** número sequencial; título com verbo + objeto. Ex.: *MS-027 — Calibrar sensor de umidade em solo argiloso*
- **Gestor e responsável:** uma pessoa cada. Ninguém revisa a própria entrega.
- **Pasta da missão** (opcional): link de uma pasta do Google Drive, onde ficam os insumos, o trabalho e as evidências. Um toque abre a pasta. O app guarda só o link: o acesso à pasta é dado no próprio Google Drive, para o gestor e o responsável.
- **Prazo:** uma data, que já inclui os 2 dias úteis da revisão.
- **Entregar até** (calculado): o prazo menos 2 dias úteis. É a data que vale para o responsável.
- **Versão:** avança a cada alteração da missão ou dos requisitos. Uma alteração aparece como **"não vista"** até o responsável abrir a folha.
- **Situação:** mostra quem precisa agir agora (ver *Situações*).
- **Painel** (calculado), para ler num relance:
  - dias úteis decorridos / dias úteis até "entregar até";
  - atividades concluídas / total;
  - dias sem trabalho na missão, por motivo.

### 2. Missão (gestor)

- **Necessidade:** o que precisa ser resolvido, por que importa e que decisão depende disso.
- **Resultado esperado:** como fica a situação quando a missão termina bem. Se o plano não se encaixar na realidade, o responsável decide pela necessidade e pelo resultado esperado.
- **Tarefa:** o que fazer, em uma ou duas frases.
- **Entrega:** o quê, em que formato e onde. Se a missão tem pasta, o padrão é entregar nela.
- **Critérios de conclusão:** as condições que a **entrega** precisa cumprir, uma por linha, no formato **"[condição] — verificado por [inspeção / análise / demonstração / teste]"**.
  Ex.: *Erro médio ≤ 3 p.p. frente ao gravimétrico, em 5 níveis × 3 repetições — verificado por teste.*
  Se os critérios não cabem em três linhas, a missão está grande demais e deve ser dividida.
- **Insumos:** o que já está disponível e onde; o que estiver na pasta da missão basta citar pelo nome. Antes de emitir uma missão parecida com outra já encerrada, o gestor relê o encerramento dela (bloco 7).

### 3. Requisitos da tarefa (gestor)

São requisitos (MoSCoW) **globais à missão**: valem do primeiro ao último dia, para qualquer etapa ou atividade. Os critérios de conclusão dizem quando a entrega está pronta; os requisitos dizem o que vale no caminho até ela.

- **Precisa acontecer** (*Must*): o que tem que ser feito ou mantido durante toda a missão.
  Ex.: *Registrar todas as leituras, inclusive as descartadas, com o motivo.*
- **Não pode acontecer** (*Must not*): o que fica proibido, como um custo, um risco, um recurso ou um efeito colateral.
  Ex.: *Usar solo de outra classe textural.*
- **Consultar antes** (opcional): as decisões que pedem uma pendência de *consulta* (bloco 6) antes de agir.

**O que os requisitos não fixam é do responsável:** a ordem, o método, o ritmo e as escolhas técnicas, desde que atendam à necessidade e ao resultado esperado.

**Se algo do "não pode acontecer" acontecer,** o responsável para a atividade afetada e abre um impedimento no mesmo dia. Parar cedo é o comportamento esperado, e a pergunta é sempre o que no processo permitiu isso (*jidoka*).

Depois de emitida a missão, só uma **alteração** muda os blocos 2 e 3 (bloco 6).

### 4. Etapas e atividades (responsável)

- **Etapas:** partes do plano, cada uma com um nome que diz o resultado. Ex.: *Níveis 1 a 3 medidos*. O responsável cria, edita, reordena e exclui etapas a qualquer momento, sem aprovação. As etapas não têm data própria. Uma etapa está concluída quando todas as suas atividades estão concluídas.
- **Atividades:** os passos de cada etapa (verbo + objeto). Ex.: *preparar amostras n1*, *secar amostras n1*. Cada uma fica aberta ou concluída.
- Só o responsável cria e edita etapas e atividades. Se o gestor quiser mudar o rumo, altera a missão ou os requisitos, não o plano.

**Aviso do primeiro plano.** Quando o responsável salva as etapas pela primeira vez, o gestor recebe um aviso único. Não é aprovação: se o gestor perceber que a tarefa foi entendida de outro jeito, faz uma alteração; se não, não faz nada. É o *backbrief* reduzido a uma leitura.

### 5. Calendário (responsável)

Ao fim de cada dia útil, o responsável toca nas **atividades** em que trabalhou, sem descrição. A marcação é feita no passo, não na etapa.

Num dia sem trabalho na missão, ele marca um motivo, com um toque:
- folga ou saúde;
- outra missão;
- demanda fora de missão.

O calendário mostra sozinho os **dias vazios**, as **atividades que se arrastam** e os **dias sem trabalho na missão**, que o painel do cabeçalho soma.

### 6. Pendências (responsável abre; gestor responde)

| Tipo | Quando usar | O que escrever |
|---|---|---|
| **Dúvida** | Algo na folha não está claro | A pergunta e o item da folha |
| **Consulta** | Uma decisão listada em "consultar antes" | "Pretendo [ação], porque [motivo]." |
| **Impedimento** (andon) | Algo impede o trabalho, um requisito não pode ser cumprido, ou algo do "não pode acontecer" aconteceu | O que impede; se bloqueia tudo ou só uma atividade; o que já foi tentado |
| **Novo prazo** | O prazo não será cumprido | Motivo e nova data. Pedir assim que perceber, não no vencimento |

**Abrir um impedimento é bem-vindo.** Mostrar o problema cedo é o que o andon pede, e não é motivo de cobrança.

**A resposta do gestor é de um de dois tipos:**
- **Resposta:** esclarece, e a folha não muda. Aparece na folha do responsável, junto da pendência.
- **Alteração:** muda a missão, os requisitos ou o prazo. A versão avança, e a folha mostra o que mudou.

**Quem abre a pendência é quem a fecha,** depois de confirmar que a resposta resolve. Responder não fecha a pendência.

**Enquanto uma pendência espera:**
- Dúvida e consulta não param a missão: o trabalho segue em tudo o que não depende delas.
- O impedimento que bloqueia só uma atividade não para o restante.
- O impedimento que bloqueia tudo leva a missão para "Impedida", e o prazo fica suspenso da abertura até a resposta do gestor. O app soma os dias úteis suspensos ao prazo e a "entregar até", e mostra o motivo. Ex.: *entregar até 29/10 (+2 por impedimento)*.
- Um pedido de novo prazo aberto antes de "entregar até" suspende o sinal de prazo até a resposta.

Uma missão inviável não é recusada: o responsável abre um impedimento dizendo por quê.

### 7. Entrega, revisão e encerramento

**Entrega (responsável):**
- **Resultado:** o que foi obtido, separando o dado da interpretação.
- **Evidência por critério de conclusão:** atendido / parcial / não atendido, e onde está a evidência (de preferência, um arquivo da pasta da missão).
- **Desvios e limites:** o que mudou em relação ao combinado, se algum requisito ficou em risco, e o que o resultado não permite concluir.

**Revisão (gestor),** em até 2 dias úteis, **somente pelo que está na folha:** os critérios de conclusão foram atendidos? O que precisava acontecer aconteceu, e o que não podia acontecer não aconteceu? O gestor abre a evidência, não só o resumo. Uma exigência nova vira outra missão, não um ajuste desta. São dois olhares separados:
1. **A missão foi concluída?** Critérios e requisitos foram cumpridos e as evidências estão lá?
2. **O que o resultado diz sobre o produto?** Atende, não atende ou é inconclusivo.

Uma missão pode estar concluída mesmo quando o produto falha. Achar a falha costuma ser o melhor resultado de um teste.

A revisão termina como **concluída** ou **em ajuste**. Neste caso, cada ajuste aponta o critério ou o requisito não cumprido.

**Encerramento:**
- **Responsável,** em uma frase: **O que a folha deveria ter dito desde o início?**
- **Gestor,** em uma frase: **O que muda na próxima folha?**

As duas frases melhoram as próximas missões. Uma dúvida aberta mostra onde a folha não foi clara, não onde o responsável falhou. As missões concluídas ficam consultáveis, inclusive as de resultado negativo.

---

## Situações

| Situação | Quem age | Sai para |
|---|---|---|
| Rascunho | Gestor | Em execução (ao emitir) |
| Em execução | Responsável | Impedida, Entregue |
| Impedida | Gestor | A situação anterior, quando o gestor responde |
| Entregue | Gestor | Concluída, Em ajuste |
| Em ajuste | Responsável | Entregue, Impedida |
| Concluída | — | — |
| Cancelada | — | — |

- Só o impedimento que bloqueia tudo muda a situação. As demais pendências não mudam.
- Quando o gestor responde a um impedimento, a missão volta a "Em execução" ou a "Em ajuste", e a pendência continua aberta até o responsável fechá-la.
- O gestor pode cancelar a missão em qualquer situação aberta, registrando o motivo.

---

## Sinais essenciais

Os sinais saem só do calendário, das atividades e das pendências, sem nenhum campo extra. O **amarelo** aparece para o responsável; o **vermelho** também notifica o gestor.

| Sinal | Amarelo (responsável) | Vermelho (gestor) |
|---|---|---|
| Dia vazio | 1 dia útil sem marcação nem motivo | 2 dias úteis seguidos |
| Atividade que se arrasta | A mesma atividade aberta, marcada em 3 dias | 5 dias |
| Sem conclusão | 4 dias úteis marcados seguidos sem concluir nenhuma atividade | — |
| Prazo | Metade do tempo até "entregar até" sem nenhuma etapa concluída | "Entregar até" vencida sem entrega nem pedido de novo prazo |
| Pendência sem resposta | Resposta recebida e pendência não fechada após 1 dia útil | Impedimento sem resposta no mesmo dia; demais tipos após 1 dia útil |
| Espera pelo gestor | — | Entregue sem revisão após 2 dias úteis; impedimento aberto há 3 dias úteis, mesmo que já respondido |

Os sinais de pendência sem resposta e de espera pelo gestor são os que cobram o gestor. O sinal só apaga quando a causa some: a marcação é feita, a atividade é concluída, a pendência é fechada ou a revisão é feita.

**Diante de um amarelo,** o responsável age sozinho: divide a atividade, reorganiza as etapas, abre uma pendência, pede novo prazo ou atualiza o calendário.

**Diante de um vermelho,** o gestor pergunta antes de propor (coaching Kata), e a conversa acontece diante do trabalho real (a amostra, a planilha, o código), não só da tela:
1. Qual é o resultado esperado?
2. Onde estamos agora?
3. O que está impedindo, e qual obstáculo você ataca agora?
4. Qual é o próximo passo, e o que você espera que aconteça?
5. Quando podemos ver juntos o que você aprendeu com esse passo?

A solução continua com o responsável. O gestor remove o obstáculo que só ele pode remover.

**O sinal aponta para o processo, não para a pessoa.** Antes de tudo, pergunte: o que na missão, no insumo ou na carga permitiu isso? Se o calendário virar vigilância, as pessoas passam a marcar o que agrada, e os sinais perdem o valor.

Os limiares (1 e 2 dias; 3 e 5 dias; 4 dias; metade do tempo) são valores iniciais. Ajuste-os com o uso.

---

## Exemplo

**MS-027 — Calibrar sensor de umidade em solo argiloso** • Emitida em 19/10 • Prazo: 30/10 • Entregar até: 28/10 • v1 • Pasta: *Drive › Calibração › MS-027*

**Missão**
- **Necessidade:** saber se o sensor v2 mede bem em solo argiloso para ir ao piloto com agricultores.
- **Resultado esperado:** a curva de calibração para solo argiloso, com erro conhecido.
- **Tarefa:** comparar as leituras do sensor com o método gravimétrico em amostras de solo argiloso.
- **Entrega:** planilha e curva de calibração na pasta da missão.
- **Critérios de conclusão:** erro médio ≤ 3 p.p. frente ao gravimétrico, em 5 níveis × 3 repetições — verificado por teste.

**Requisitos da tarefa**
- **Precisa acontecer:** registrar todas as leituras, inclusive as descartadas, com o motivo.
- **Não pode acontecer:** usar solo de outra classe textural.
- **Consultar antes:** mudar o número de níveis ou de repetições.

**Andamento:**
- **19/10:** o responsável cria as etapas *Amostras preparadas*, *Níveis 1 a 3 medidos*, *Níveis 4 e 5 medidos* e *Planilha consolidada*. O gestor recebe o aviso do primeiro plano, lê e não faz nada.
- **Durante a semana:** o responsável decide sozinho a ordem das coletas e repete uma amostra suspeita, porque nada disso está nos requisitos.
- **22/10:** a atividade *secar amostras n1* está marcada em 20, 21 e 22/10, e aparece o amarelo de atividade que se arrasta. Ele descobre que a estufa só seca 3 amostras por ciclo: os 5 níveis não cabem até 28/10. Abre um **impedimento** que bloqueia só o nível 5 e sugere 4 níveis × 3 repetições.
- O gestor responde no mesmo dia com uma **alteração**: o critério de conclusão passa a 4 × 3, e a folha vai para a v2, que aparece como "não vista" até o responsável abrir a folha. Ele fecha o impedimento e exclui a atividade do nível 5.
- **27/10, entrega:** erro médio de 2,4 p.p. — atendido. Todas as leituras registradas, inclusive 2 descartadas, com o motivo. Limite: o resultado não vale para umidade acima do nível 4.
- **28/10, revisão:** missão **concluída**. Produto: **atende** de 0 ao nível 4; **inconclusivo** acima.
- **Encerramento.** Responsável: "A folha deveria ter dito a capacidade da estufa." Gestor: "Nas próximas calibrações, a capacidade da estufa entra nos insumos."

O gestor não precisou perguntar nada. O desvio apareceu no dia 4, primeiro para quem podia corrigi-lo, e a próxima missão de calibração já nasce com esse insumo.

---

## Fora da versão básica

| Item | Por que ficou fora | Quando reconsiderar |
|---|---|---|
| Acordo, *catchball* e frase de acordo | A missão e os requisitos são do gestor, e a folha é preenchida durante a execução, sem passo de aprovação. O aviso do primeiro plano cobre o essencial | Se mal-entendidos da tarefa aparecerem com frequência no encerramento |
| Declinar com motivo | Uma missão inviável vira impedimento | — |
| Etapas fixas e primeira peça | O como é do responsável; o amarelo "metade do tempo sem etapa concluída" cobre o atraso no início | Se desvios de caminho forem descobertos só na entrega |
| Aviso de intenção com silêncio como concordância | Substituído pela pendência de consulta e pela tela espelhada | — |
| Bloco "Autonomia" em três níveis | A autonomia passa a ser tudo o que os requisitos não fixam; resta só "consultar antes" | — |
| Requisitos *Should*, *Could* e *Won't* (MoSCoW completo) | A versão básica fica só com o que é obrigatório e o que é proibido | Se surgirem missões com escopo negociável |
| Requisitos-padrão herdados por todas as missões | Os requisitos são globais à missão, não à equipe | Na visão de equipe (trabalho padronizado) |
| Limite de duração da missão (ex.: 10 dias úteis) | Decisão do dono: o tamanho já é controlado pelas três linhas de critério | Se missões longas passarem a acumular desvios descobertos tarde |
| Atividades criadas pelo gestor | Conflita com "o como é do responsável" | — |
| Esforço previsto e sinal de esforço | Só o prazo é combinado | Quando houver histórico para estimar |
| Apoio (contribuidor) | Uma missão, um responsável | Se surgirem missões com partes bem definidas para outra pessoa |
| Sugestão de mudança como tipo de pendência | A dúvida e o impedimento cobrem o caso | Se as dúvidas passarem a carregar propostas de mudança com frequência |
| Motivo marcado para um intervalo de dias ("outra missão até sexta") | Detalhe de interface; reduz o registro e pode entrar se for barato de implementar | Na primeira versão do app |
| Limite de 2 missões por pessoa, prioridade entre missões e nivelamento (*heijunka*) | São regras entre folhas, e o app é de folha única | Na visão de equipe (várias folhas) |
| Sinal de carga invisível entre folhas | Depende da visão entre folhas; dentro da folha, o painel já soma os dias sem trabalho | Junto com a visão de equipe |
| Integração com a API do Google Drive (criar a pasta ao emitir, listar arquivos, anexar evidência pelo app) | A versão básica guarda só o link; o acesso fica no próprio Drive | Quando colar o link passar a ser atrito real |
| Biblioteca de insumos e requisitos aprendidos | Por enquanto, o gestor relê os encerramentos das missões parecidas | Na visão de equipe |
| Tabela de critérios em 4 colunas (condição, medida, critério, verificação) | Pesada para missões simples; a linha "condição — verificado por" mantém o núcleo verificável | Missões técnicas com vários requisitos |
| Complemento de pesquisa e teste (pergunta, hipótese, protocolo antes dos dados, limites) | É um tipo especial de missão | Primeira extensão recomendada (ver `proposta_solicitacao_pesquisa_testes.md`) |
| "Falhas encontradas" e "não verificado" na entrega | Cabem em "resultado" e em "parcial / não atendido" | Junto com o complemento de pesquisa e teste |
| "Concluída com ressalva" | A ressalva vira outra missão de qualquer forma | — |
| Revisão pós-ação completa ("o que deveria acontecer?", "o que aconteceu?", "por que houve diferença?") | A entrega já compara o combinado com o real em "desvios e limites"; o encerramento concentra o aprendizado para a folha | Se a equipe quiser revisão pós-ação completa |
| Contagem de dúvidas e impedimentos por missão | Métrica de melhoria entre missões | Na visão de equipe |

---

## Origem dos elementos

| Elemento | Prática de origem |
|---|---|
| Necessidade, resultado esperado | Intenção do comandante; comando por missão |
| Requisitos da tarefa: precisa / não pode acontecer | Priorização MoSCoW (DSDM), níveis *Must*; *constraints* e *restraints* do comando por missão (ADP 6-0) |
| O que os requisitos não fixam é do responsável | Respeito às pessoas e liderança Lean (Toyota); liberdade de ação do comando por missão |
| Aviso do primeiro plano | *Backbrief* (ADP 6-0), reduzido a uma leitura |
| Responsável único; prazo; novo prazo antecipado | Controle de tarefas dos estados-maiores (OPR, *suspense*) |
| Critérios de conclusão com forma de verificação | Verificação de requisitos (ISO/IEC/IEEE 29148): inspeção, análise, demonstração, teste |
| Resposta versus alteração; versões | Controle de mudanças de engenharia |
| Calendário, painel e sinais | Controle visual (*mieruka*; Liker, princípio 7) |
| Parar diante do "não pode acontecer" | *Jidoka* (Ohno; Liker, princípio 5) |
| Impedimento | Andon (Toyota) |
| Pendência com resposta no tempo e sinal de espera pelo gestor | Regra 2 do TPS: pedido direto com resposta no tempo combinado (Spear & Bowen, HBR, 1999); espera como desperdício (Ohno) |
| Perguntas diante do vermelho, diante do trabalho real | Coaching Kata (Rother, *Toyota Kata*); *genchi genbutsu* (Liker, princípio 12) |
| Encerramento do responsável e do gestor | Revisão pós-ação (AAR, TC 25-20); *hansei*; kaizen da instrução |
| Linguagem com porquê e sem tom de comando | Teoria da Autodeterminação (apoio à autonomia) |
| Situações e regras | DoDAF OV-6b (estados) e OV-6a (regras) |
