# Protocolo de missões

Versão 2.0 básica • 18/10/2026 • Equipe pequena • Folha única por missão (PWA)

## Princípio

Uma missão é uma tarefa com ID, um responsável e um prazo único. A folha da missão é o **acordo vigente**: o que não está nela não foi combinado.

**Gestão por balizas.** O gestor define **o quê e os limites**: necessidade, resultado esperado, tarefa, critérios de conclusão, autonomia, entrega, insumos e prazo. O responsável define **o como**: as etapas e as atividades. No Lean, respeitar as pessoas é deixá-las pensar e resolver os próprios problemas.

**A folha é preenchida durante a execução.** O responsável recebe a missão, escreve as etapas e vai marcando o calendário, abrindo pendências e preenchendo a entrega conforme trabalha. O gestor vê a mesma folha, espelhada no celular, e só age quando precisa.

**O desvio aparece sozinho** (*jidoka*, controle visual). Dia sem marcação e atividade que se arrasta ficam evidentes sem que ninguém pergunte. Os sinais servem **primeiro ao responsável**, e o gestor é chamado só quando o sinal fica vermelho. A diferença entre controle visual e microgerenciamento está em mostrar o andamento sem cobrar todo dia.

**Linguagem.** A folha diz o porquê de cada pedido e evita termos de comando (apoio à autonomia, Teoria da Autodeterminação).

---

## A folha, bloco a bloco

São seis blocos, na ordem da tela. Cada bloco indica quem o preenche.

### 1. Cabeçalho (gestor)

- **ID e título:** número sequencial; título com verbo + objeto. Ex.: *MS-027 — Calibrar sensor de umidade em solo argiloso*
- **Gestor e responsável:** uma pessoa cada. Ninguém revisa a própria entrega.
- **Prazo:** uma data, que já inclui o tempo de revisão.
- **Versão:** avança a cada alteração das balizas.
- **Situação:** mostra quem precisa agir agora (ver *Situações*).

### 2. Balizas (gestor)

- **Necessidade:** o que precisa ser resolvido, por que importa e que decisão depende disso.
- **Resultado esperado:** como fica a situação quando a missão termina bem. Se o plano não se encaixar na realidade, o responsável decide pela necessidade e pelo resultado esperado.
- **Tarefa:** o que fazer, em uma ou duas frases.
- **Critérios de conclusão:** uma linha por critério, no formato **"[o que precisa ser verdade] — verificado por [como]"**. O "como" é uma de quatro formas: inspeção, análise, demonstração ou teste.
  Ex.: *Erro médio ≤ 3 p.p. frente ao gravimétrico, em 5 níveis × 3 repetições — verificado por teste.*
  Se os critérios não cabem em três linhas, a missão está grande demais e deve ser dividida.
- **Autonomia:** dois níveis.
  - **Decide sozinho:** o que o responsável resolve sem consultar.
  - **Consulta antes:** o que pede uma pendência do tipo *consulta* (bloco 5) antes de agir.
  - O que não está listado fica no "decide sozinho", desde que respeite a necessidade e os critérios.
- **Entrega:** o quê, em que formato e onde.
- **Insumos:** o que já está disponível e onde.

Depois de emitida a missão, só uma **alteração** muda as balizas (bloco 5).

### 3. Etapas e atividades (responsável)

- **Etapas:** partes do plano, cada uma com um nome que diz o resultado. Ex.: *Níveis 1 a 3 medidos*. O responsável cria, edita, reordena e exclui etapas a qualquer momento, sem aprovação. As etapas não têm data própria: o prazo é um só, o da missão.
- **Atividades:** os passos de cada etapa (verbo + objeto). Ex.: *preparar amostras n1*, *secar amostras n1*. Cada uma fica aberta ou concluída.
- Só o responsável cria e edita etapas e atividades. Se o gestor quiser mudar o rumo, altera as balizas, não o plano.

### 4. Calendário (responsável)

Ao fim de cada dia útil, o responsável toca nas **atividades** em que trabalhou, sem descrição. A marcação é feita no passo, não na etapa.

Num dia sem trabalho na missão, ele marca um motivo, com um toque:
- folga ou saúde;
- outra missão;
- demanda fora de missão.

O calendário mostra sozinho os **dias vazios** e as **atividades que se arrastam**, marcadas em muitos dias.

### 5. Pendências (responsável abre; gestor responde)

| Tipo | Quando usar | O que escrever |
|---|---|---|
| **Dúvida** | Algo na folha não está claro | A pergunta e o item da folha |
| **Consulta** | Uma decisão que a autonomia manda consultar antes | "Pretendo [ação], porque [motivo]." |
| **Impedimento** (andon) | Algo impede o trabalho | O que impede; se bloqueia tudo ou só uma atividade; o que já foi tentado |
| **Novo prazo** | O prazo não será cumprido | Motivo e nova data. Pedir assim que perceber, não no vencimento |

**A resposta do gestor é de um de dois tipos:**
- **Resposta:** esclarece, e a folha não muda. Aparece na folha do responsável, junto da pendência.
- **Alteração:** muda as balizas ou o prazo. A versão avança, e a folha mostra o que mudou.

**Quem abre a pendência é quem a fecha,** depois de confirmar que a resposta resolve.

**Durante um impedimento:** se bloqueia tudo, o prazo fica suspenso até a resposta; se bloqueia só uma atividade, o trabalho segue no restante.

Uma missão inviável não é recusada: o responsável abre um impedimento dizendo por quê.

### 6. Entrega, revisão e encerramento

**Entrega (responsável):**
- **Resultado:** o que foi obtido, separando o dado da interpretação.
- **Evidência por critério:** atendido / parcial / não atendido, e onde está a evidência.
- **Desvios e limites:** o que mudou em relação ao combinado e o que o resultado não permite concluir.

**Revisão (gestor),** em até 2 dias úteis, **somente pelos critérios de conclusão.** Uma exigência nova vira outra missão, não um ajuste desta. São dois olhares separados:
1. **A missão foi concluída?** Os critérios foram cobertos e as evidências estão lá?
2. **O que o resultado diz sobre o produto?** Atende, não atende ou é inconclusivo.

Uma missão pode estar concluída mesmo quando o produto falha. Achar a falha costuma ser o melhor resultado de um teste.

A revisão termina como **concluída** ou **em ajuste**. Neste caso, cada ajuste aponta o critério não atendido.

**Encerramento (responsável),** em uma frase:
> **O que a folha deveria ter dito desde o início?**

A resposta melhora as próximas balizas. Uma dúvida aberta mostra onde a folha não foi clara, não onde o responsável falhou. As missões concluídas ficam consultáveis, inclusive as de resultado negativo.

---

## Situações

| Situação | Quem age | Sai para |
|---|---|---|
| Rascunho | Gestor | Em execução (ao emitir), Cancelada |
| Em execução | Responsável | Impedida, Entregue |
| Impedida | Gestor | Em execução |
| Entregue | Gestor | Concluída, Em ajuste |
| Em ajuste | Responsável | Entregue |
| Concluída | — | — |
| Cancelada | — | — |

Uma pendência aberta não muda a situação, exceto o impedimento que bloqueia tudo: esse leva a missão para "Impedida". O gestor pode cancelar a missão a qualquer momento, registrando o motivo.

---

## Sinais essenciais

Os sinais saem só da marcação e das pendências, sem nenhum campo extra. O **amarelo** aparece para o responsável; o **vermelho** também notifica o gestor.

| Sinal | Amarelo (responsável) | Vermelho (gestor) |
|---|---|---|
| Dia vazio | 1 dia útil sem marcação nem motivo | 2 dias úteis seguidos |
| Atividade que se arrasta | A mesma atividade aberta, marcada em 3 dias | 5 dias |
| Prazo | — | Vencido sem entrega nem novo prazo |
| Pendência sem resposta | — | Impedimento sem resposta no mesmo dia; demais tipos após 1 dia útil |

O sinal de pendência sem resposta é o que cobra o gestor.

**Diante de um amarelo,** o responsável age sozinho: divide a atividade, reorganiza as etapas, abre uma pendência ou atualiza o calendário.

**Diante de um vermelho,** o gestor pergunta antes de propor (coaching Kata):
1. Qual é o resultado esperado?
2. Onde estamos agora?
3. O que está impedindo?
4. Qual é o próximo passo?

A solução continua com o responsável. O gestor remove o obstáculo que só ele pode remover.

**O sinal aponta para o processo, não para a pessoa.** Antes de tudo, pergunte: o que na missão, no insumo ou na carga permitiu isso? Se o calendário virar vigilância, as pessoas passam a marcar o que agrada, e os sinais perdem o valor.

Os limiares (1 e 2 dias; 3 e 5 dias) são valores iniciais. Ajuste-os com o uso.

---

## Exemplo

**MS-027 — Calibrar sensor de umidade em solo argiloso** • Prazo: 10 dias úteis • v1

- **Necessidade:** saber se o sensor v2 mede bem em solo argiloso para ir ao piloto com agricultores.
- **Resultado esperado:** a curva de calibração para solo argiloso, com erro conhecido.
- **Tarefa:** comparar as leituras do sensor com o método gravimétrico em amostras de solo argiloso.
- **Critérios de conclusão:**
  - Erro médio ≤ 3 p.p. em 5 níveis × 3 repetições — verificado por teste.
  - Planilha com todas as leituras, inclusive as descartadas, com o motivo — verificado por inspeção.
- **Autonomia:** decide sozinho a ordem e o horário das coletas e a repetição de amostras suspeitas; consulta antes de mudar o tipo de solo ou o número de níveis.

**Andamento:**
- **Dia 1:** o responsável cria as etapas *Amostras preparadas*, *Níveis 1 a 3 medidos*, *Níveis 4 e 5 medidos* e *Planilha consolidada*, cada uma com suas atividades.
- **Dia 4:** a atividade *secar amostras n1* está marcada nos dias 2, 3 e 4, e aparece o amarelo para o responsável. Ele descobre que a estufa não atinge a temperatura e abre um **impedimento** que bloqueia só o nível 5. Sugere 4 níveis × 4 repetições.
- O gestor responde com uma **alteração**: os critérios passam a 4 × 4, e a folha vai para a v2. O responsável fecha o impedimento e reorganiza as etapas.
- **Encerramento:** "A folha deveria ter dito a capacidade da estufa." A próxima missão de calibração já nasce com esse insumo.

O gestor não precisou perguntar nada. O desvio apareceu no dia 4, primeiro para quem podia corrigi-lo.

---

## Fora da versão básica

| Item da v1.2 | Por que ficou fora | Quando reconsiderar |
|---|---|---|
| Acordo, *catchball* e frase de acordo | As balizas são do gestor, e a folha é preenchida durante a execução, sem passo de aprovação | Se mal-entendidos da tarefa aparecerem com frequência na pergunta de encerramento |
| Declinar com motivo | Uma missão inviável vira impedimento | — |
| Etapas fixas e primeira peça | O como é do responsável, e a tela espelhada já mostra o andamento | Se desvios de caminho forem descobertos só na entrega |
| Aviso de intenção com silêncio como concordância | Substituído pela pendência de consulta e pela tela espelhada | — |
| Autonomia "decidido em conjunto" | Não combina com "o gestor define" | — |
| Atividades criadas pelo gestor | Conflita com "o como é do responsável" | — |
| Esforço previsto e sinal de esforço | Só o prazo é combinado | Quando houver histórico para estimar |
| Apoio (contribuidor) | Uma missão, um responsável | Se surgirem missões com partes bem definidas para outra pessoa |
| Sugestão de mudança como tipo de pendência | A dúvida e o impedimento cobrem o caso | Se as dúvidas passarem a carregar propostas de mudança com frequência |
| Limite de 2 missões por pessoa e prioridade entre missões | São regras entre folhas, e o app é de folha única | Na visão de equipe (várias folhas) |
| Sinais de carga invisível, acordo e primeira peça | Dependem de regras que saíram ou de visão entre folhas | Junto com a visão de equipe |
| Tabela de critérios em 4 colunas (condição, medida, critério, verificação) | Pesada para missões simples; a forma de uma linha mantém o núcleo verificável | Missões técnicas com vários requisitos |
| Complemento de pesquisa e teste (pergunta, hipótese, protocolo antes dos dados, limites) | É um tipo especial de missão | Primeira extensão recomendada (ver `proposta_solicitacao_pesquisa_testes.md`) |
| "Falhas encontradas" e "não verificado" na entrega | Cabem em "resultado" e em "parcial / não atendido" | Junto com o complemento de pesquisa e teste |
| "Concluída com ressalva" | A ressalva vira outra missão de qualquer forma | — |
| Perguntas 1 a 3 da revisão pós-ação | A pergunta 4 concentra o aprendizado para a folha | Se a equipe quiser revisão pós-ação completa |
| Contagem de dúvidas e impedimentos por missão | Métrica de melhoria entre missões | Na visão de equipe |

---

## Origem dos elementos

| Elemento | Prática de origem |
|---|---|
| Necessidade, resultado esperado, autonomia | Intenção do comandante; comando por missão |
| O gestor define o quê; o responsável, o como | Respeito às pessoas e liderança Lean (Toyota) |
| Responsável único; prazo; novo prazo antecipado | Controle de tarefas dos estados-maiores (OPR, *suspense*) |
| Critério com forma de verificação | Verificação de requisitos (ISO/IEC/IEEE 29148): inspeção, análise, demonstração, teste |
| Resposta versus alteração; versões | Controle de mudanças de engenharia |
| Calendário e sinais | *Jidoka* e controle visual (Toyota) |
| Impedimento | Andon (Toyota) |
| Perguntas diante do vermelho | Coaching Kata (Rother, *Toyota Kata*) |
| Pergunta sobre a folha no encerramento | Revisão pós-ação (AAR); kaizen da instrução |
| Linguagem com porquê e sem tom de comando | Teoria da Autodeterminação (apoio à autonomia) |
| Situações e regras | DoDAF OV-6b (estados) e OV-6a (regras) |
