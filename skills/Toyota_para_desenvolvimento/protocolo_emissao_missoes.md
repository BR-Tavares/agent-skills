# Protocolo de emissão de missões

Versão 1.0 • 18/10/2026 • Equipe pequena • Folha única por missão (PWA)

## Princípio

Uma missão é uma tarefa com ID, um responsável e um prazo. A folha da missão é o acordo vigente entre gestor e funcionário: o que não está nela não foi combinado.

O desvio deve aparecer sozinho e cedo, sem depender de alguém perguntar (*jidoka*, controle visual). Por isso a folha tem poucos checkpoints de conversa e um calendário de atividades que mostra, por si, o andamento: dia sem marcação e atividade que se arrasta ficam evidentes.

---

## A folha da missão

A folha tem sete blocos, na ordem em que aparecem na tela.

### 1. Cabeçalho

- **ID e título:** sequencial, verbo + objeto. Ex.: *MS-027 — Calibrar sensor de umidade em solo argiloso*
- **Emissor:** gestor, que emite, responde, avalia e decide
- **Responsável:** um funcionário, que responde pela missão até o fim
- **Apoio** (opcional): quem fornece uma parte definida, sem dividir a responsabilidade
- **Prazo:** uma data, que já inclui o tempo de avaliação
- **Limite de esforço:** dias de trabalho previstos
- **Versão:** muda a cada alteração
- **Situação e próxima ação:** quem precisa agir agora

Ninguém avalia a própria entrega.

### 2. Ordem

- **Propósito:** por que isto importa e que decisão apoia
- **Estado final:** como fica a situação quando a missão termina bem. Se o plano não se encaixar na realidade, o responsável decide pela intenção (propósito + estado final)
- **Tarefa:** o que fazer, em uma ou duas frases
- **Padrão de aceite:** uma linha por requisito

  | Condição | Medida | Critério | Verificação |
  |---|---|---|---|
  | ambiente em que vale | o que se mede | nível mínimo aceitável | inspeção / análise / demonstração / teste |

- **Liberdade de ação:** o que o responsável pode decidir sozinho e o que precisa consultar
- **Entrega:** o quê, em que formato, onde
- **Insumos:** o que já está disponível e onde

Somente em missões de **pesquisa ou teste**:
- **Pergunta e hipótese**
- **Protocolo antes dos dados:** amostra, procedimento, repetições e regra de análise, aprovados no checkpoint 1 e congelados antes da coleta
- **Limites:** o que a missão não permitirá concluir

Se o padrão de aceite não cabe em três linhas, a missão está grande demais: divida em mais de uma missão.

### 3. Checkpoints

Os checkpoints são três pontos fixos de conversa entre funcionário e gestor. Não têm data própria: o prazo é um só, o da missão.

| Checkpoint | Quem abre | Prova | Resposta do gestor |
|---|---|---|---|
| **C1 — Confirmação** | Responsável, até 1 dia útil após a emissão | Confirmação com as próprias palavras (*backbrief*) e, em pesquisa ou teste, o protocolo antes dos dados | **Segue** ou **ajusta** |
| **C2 — Primeira peça** | Responsável, assim que tiver | O primeiro resultado real e pequeno que mostra que o caminho funciona: a primeira amostra medida, o primeiro trecho rodando, a primeira fonte analisada | **Segue** ou **ajusta** |
| **C3 — Entrega** | Responsável, até o prazo | A entrega (bloco 6) | Avaliação (bloco 7) |

**C1, frase de confirmação:**
> Vou [tarefa] para [propósito]. Entrego [entrega] até [prazo]. O aceite será [padrão principal]. Não poderei concluir [limite].

No C1, em vez de confirmar, o responsável pode **pedir esclarecimento** (bloco 5) ou **recusar com motivo**: falta de competência, insumo impossível ou conflito com missão prioritária. Prazo curto não é motivo de recusa; nesse caso, pede-se prorrogação. A missão só entra em execução após o C1.

**Por que o C2 existe:** um caminho errado descoberto na primeira peça custa um dia; descoberto na entrega, custa a missão inteira. É o checkpoint que mais previne retrabalho (*poka-yoke*).

### 4. Atividades e calendário

**Lista de atividades.** São itens curtos (verbo + objeto), criados pelo responsável ou pelo gestor na própria folha. Ex.: *preparar amostras nível 1*, *secar amostras nível 1*, *lançar planilha*. Cada atividade fica **aberta** ou **concluída**.

As atividades organizam **como** fazer. Não mudam **o que** foi combinado: mudar tarefa, padrão, entrega ou prazo é alteração (bloco 5).

**Calendário.** Ao fim de cada dia útil, o responsável toca nas atividades em que trabalhou naquele dia, sem descrição. Um dia sem trabalho na missão pode ser marcado como **ausência**.

O calendário mostra, sem que ninguém precise interpretar:
- **dias vazios:** nenhuma atividade marcada e nenhuma ausência;
- **atividades longas:** a mesma atividade marcada em muitos dias;
- **esforço consumido:** dias marcados comparados com o limite de esforço.

### 5. Comunicações

O responsável abre uma comunicação; ela aparece para o gestor, que responde em texto, e a resposta aparece para o responsável. O gestor pode abrir as mesmas comunicações no sentido contrário.

| Tipo | Quando | Campos |
|---|---|---|
| **Esclarecimento** | Dúvida sobre o que está escrito | Pergunta; item da folha; sugestão de resposta |
| **Impedimento** (andon) | Algo impede o trabalho | O que impede; bloqueia tudo ou só [atividade]; o que já foi tentado |
| **Prorrogação** | O prazo não será cumprido | Motivo; nova data. Pedir assim que perceber, não no vencimento |
| **Proposta de mudança** | A missão deveria mudar | O que mudar; por quê; efeito no prazo |

A resposta do gestor é sempre de um destes tipos:
- **Resposta:** esclarece, e a folha não muda;
- **Alteração:** muda a folha; a versão avança e o responsável confirma.

**Quem abriu a comunicação é quem a fecha,** depois de confirmar que a resposta resolve.

### 6. Entrega

- **Resultado:** o que foi obtido, separando o dado da interpretação
- **Evidência por linha do padrão:** atendido / parcial / não atendido / não verificado, e onde está a evidência
- **Falhas encontradas:** falhas do produto observadas, com as condições em que ocorreram
- **Desvios e limites:** o que mudou em relação ao combinado (com a versão) e o que o resultado não permite concluir

### 7. Avaliação e encerramento

O gestor avalia em até 2 dias úteis, com dois julgamentos separados:

1. **A missão foi cumprida?** Seguiu o combinado, cobriu o escopo e trouxe evidências?
2. **O que o resultado diz sobre o produto?** Atende, não atende ou é inconclusivo.

Uma missão pode ser cumprida mesmo quando o produto falha: encontrar a falha costuma ser o melhor resultado de um teste.

**Decisão:**
- **aceita;**
- **aceita com ressalva:** a ressalva vira nova missão;
- **devolvida:** cada ajuste aponta a linha do padrão não atendida.

**Encerramento:** uma revisão pós-ação curta, em três respostas:
1. o que deveria acontecer;
2. o que aconteceu;
3. por que houve diferença (o calendário responde a isso melhor que a memória).

O próximo passo vira uma nova missão, ligada a esta.

---

## Situações

| Situação | Próxima ação com | Sai para |
|---|---|---|
| Emitida | Responsável | Em execução (C1 aceito), Em esclarecimento, Recusada |
| Em esclarecimento | Gestor | Emitida |
| Em execução | Responsável | Impedida, Entregue |
| Impedida | Gestor | Em execução |
| Entregue | Gestor | Encerrada, Em ajuste |
| Em ajuste | Responsável | Entregue |
| Recusada | Gestor | Emitida para outro responsável, ou cancelada |
| Encerrada | — | — |

---

## Sinais automáticos

Os sinais saem do calendário, dos checkpoints e das comunicações:

| Sinal | Regra | Cor |
|---|---|---|
| Dia vazio | Dia útil sem marcação nem ausência, com a missão em execução | Amarelo; vermelho no 2º dia seguido |
| Atividade longa | A mesma atividade aberta e marcada em 3 dias | Amarelo; vermelho aos 5 dias |
| Sem primeira peça | Passou 1/3 do prazo sem o C2 | Vermelho |
| Esforço estourado | Dias marcados atingiram o limite de esforço sem a entrega | Vermelho |
| Prazo vencido | Passou o prazo sem C3 nem prorrogação aceita | Vermelho |
| Confirmação parada | 1 dia útil sem o C1 | Amarelo |
| Comunicação parada | Impedimento sem resposta no mesmo dia; outras comunicações sem resposta após 1 dia útil | Vermelho |

**Regras de uso:**
- O amarelo é para o responsável agir: dividir a atividade, abrir um impedimento ou atualizar o calendário.
- O vermelho é para o gestor agir no mesmo dia.
- Um impedimento que bloqueia tudo suspende o prazo até a resposta.

**O sinal aponta para o processo, não para a pessoa.** A primeira pergunta diante de um vermelho é: o que na missão, no insumo ou na carga permitiu isso? Se o calendário virar vigilância, ele passa a registrar o que agrada, e os sinais perdem o valor.

Os limites (1/3 do prazo, 3 e 5 dias) são valores iniciais. Ajuste-os com o uso.

---

## Exemplo

**MS-027 — Calibrar sensor de umidade do solo em solo argiloso** • Prazo: 10 dias úteis • Esforço: 6 dias

- **Propósito:** decidir se o sensor v2 vai para o piloto com agricultores.
- **Estado final:** curva de calibração para solo argiloso e erro conhecido frente ao manejo de irrigação.
- **Tarefa:** comparar as leituras do sensor com o método gravimétrico em amostras de solo argiloso.
- **Padrão de aceite:**

  | Condição | Medida | Critério | Verificação |
  |---|---|---|---|
  | 5 níveis, 3 repetições | Erro absoluto médio frente ao gravimétrico | ≤ 3 p.p. (ilustrativo) | Teste |
  | — | Planilha com todas as leituras, inclusive as descartadas, com motivo | Completa | Inspeção |

- **Liberdade de ação:** pode escolher a ordem e o horário das coletas. Precisa consultar para trocar o tipo de solo ou o número de níveis.
- **Atividades:** preparar amostras (n1 a n5), secar amostras (n1 a n5), lançar planilha, escrever nota.

**Andamento:**
- **Dia 1:** C1 aceito.
- **Dia 4:** nenhum C2, e "secar amostras n1" marcada nos dias 2, 3 e 4. Sinal amarelo de atividade longa.
- O responsável abre um impedimento que bloqueia só o nível 5: a estufa não atinge a temperatura necessária. Ele sugere 4 níveis com 4 repetições.
- O gestor responde com uma **alteração**: o padrão passa a 4 níveis × 4 repetições. A folha vai para a v2, e o responsável confirma.
- **Dia 5:** C2, com a primeira amostra lançada. O gestor responde **segue**.

O desvio apareceu no dia 4, não no dia 10.

---

## Origem dos elementos

| Elemento | Prática de origem |
|---|---|
| Propósito, estado final, liberdade de ação | Ordem de operações; intenção do comandante |
| Responsável único e apoio; prazo; recusa com motivo; prorrogação antecipada | Controle de tarefas dos estados-maiores (OPR/OCR, *suspense*) |
| Condição, medida e critério | UJTL e T&EO (tarefa, condições, padrões) |
| Inspeção, análise, demonstração e teste | Verificação de requisitos (ISO/IEC/IEEE 29148, NASA) |
| C1 com as próprias palavras | *Backbrief* |
| C2 primeira peça | Inspeção de primeira peça (manufatura) |
| Protocolo antes dos dados | Pré-registro científico |
| Resposta versus alteração; versões | Controle de mudanças de engenharia |
| Calendário e sinais automáticos | *Jidoka* e controle visual (Toyota) |
| Impedimento | Andon (Toyota) |
| Sinal aponta para o processo | Respeito às pessoas (Toyota) |
| Encerramento | Revisão pós-ação (AAR) |
| Situações e regras | DoDAF OV-6b (estados) e OV-6a (regras) |
