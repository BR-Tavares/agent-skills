---
name: poka-yoke-gestao
description: >
  Aplica princípios de poka-yoke à gestão de processos e equipes para reduzir
  erros recorrentes, dependência de memória, ambiguidade de responsabilidades,
  falhas de handoff, aprovações esquecidas, retrabalho e riscos operacionais.
  Use quando um processo depende excessivamente de atenção humana, lembretes,
  boa vontade ou conhecimento tácito. Não use como skill principal para revisão
  de código ou arquitetura de software.
---

# Poka-Yoke para Gestão

## Objetivo

Redesenhar processos de trabalho para que erros previsíveis:

1. deixem de ser possíveis;
2. tornem-se difíceis de cometer;
3. sejam detectados rapidamente;
4. tenham impacto limitado;
5. sejam reversíveis quando possível.

A prioridade não é criar mais regras, treinamento ou cobrança.

A prioridade é alterar o desenho do processo para reduzir a possibilidade de erro.

## Princípio central

Quando um erro recorrente depende de alguém:

- lembrar;
- prestar mais atenção;
- consultar um documento;
- avisar outra pessoa;
- executar passos na ordem correta;
- perceber uma exceção;
- interpretar uma regra informal;

presuma inicialmente que existe uma oportunidade de melhorar o sistema.

Não conclua automaticamente que o problema é falta de disciplina.

Pergunte:

> O que no processo permite que esse erro aconteça?

---

# Quando usar esta skill

Use quando houver:

- erros recorrentes;
- atividades frequentemente esquecidas;
- retrabalho;
- falhas de comunicação;
- handoffs problemáticos;
- tarefas sem responsável claro;
- aprovações ignoradas;
- informações chegando tarde;
- decisões tomadas sem dados necessários;
- inconsistência entre pessoas ou equipes;
- exceções não tratadas;
- dependência excessiva de pessoas-chave;
- processos mantidos por planilhas ou memória;
- tarefas que falham quando alguém está ausente;
- checklists que frequentemente não são cumpridos;
- erros que reaparecem apesar de treinamento;
- incidentes atribuídos repetidamente a "falha humana".

Também use quando o usuário disser coisas como:

- "isso vive acontecendo";
- "ninguém lembra";
- "sempre esquecemos";
- "depende de fulano";
- "precisamos cobrar toda vez";
- "o processo não é seguido";
- "isso passou sem aprovação";
- "ninguém percebeu";
- "descobrimos tarde demais";
- "já treinamos e continua acontecendo";
- "como evitar que isso aconteça novamente?"

---

# Quando não usar como abordagem principal

Não transforme todo problema em poka-yoke.

Se o problema for predominantemente:

- conflito interpessoal;
- desempenho individual deliberadamente inadequado;
- estratégia;
- definição de objetivos;
- desenvolvimento de liderança;
- negociação;
- desenho organizacional amplo;
- decisão de investimento;
- revisão técnica de software;

use uma competência especializada.

Esta skill pode complementar essas análises quando existir um problema de execução ou de desenho de processo.

---

# Hierarquia de intervenção

Ao propor uma solução, prefira mecanismos mais fortes aos mais fracos.

Ordem aproximada:

## 1. Eliminar

Remover a etapa ou condição que produz o erro.

Exemplo:

Em vez de exigir que alguém transfira manualmente uma informação entre sistemas, eliminar a transferência quando ela não agrega valor.

## 2. Tornar impossível

Modificar o processo para que a ação incorreta não possa prosseguir.

Exemplo:

Uma solicitação não pode avançar para execução sem campos essenciais definidos.

## 3. Restringir

Limitar as opções disponíveis ao contexto correto.

Exemplo:

Apresentar somente categorias válidas para determinado tipo de solicitação.

## 4. Criar padrão seguro

Quando nenhuma escolha explícita é feita, usar a alternativa menos arriscada.

Exemplo:

Um pedido incompleto permanece como rascunho em vez de ser automaticamente considerado aprovado.

## 5. Detectar imediatamente

Quando o erro não puder ser evitado, detectá-lo próximo de sua origem.

Exemplo:

Uma divergência é apontada durante a preparação da atividade, e não no fechamento mensal.

## 6. Limitar impacto

Evitar que um erro pequeno se transforme em problema grande.

Exemplo:

Realizar uma mudança em uma unidade antes de aplicá-la à organização inteira.

## 7. Tornar reversível

Permitir recuperação simples.

Exemplo:

Alterações importantes entram em vigor somente após período de revisão ou podem ser revertidas sem reconstruir todo o processo.

## 8. Alertar

Usar alertas quando mecanismos estruturais não forem possíveis.

Alertas são mais fracos porque dependem de atenção humana.

## 9. Documentar e treinar

Documentação e treinamento são necessários em muitos processos, mas não devem ser a única barreira contra um erro previsível.

---

# Processo de análise

Siga as etapas abaixo.

## Etapa 1 — Definir o evento indesejado

Descreva o problema de maneira observável.

Evite:

> A equipe é desorganizada.

Prefira:

> Em quatro das últimas seis entregas, a documentação necessária não estava disponível quando a execução começou.

Identifique:

- o que aconteceu;
- quando acontece;
- onde acontece;
- quem é afetado;
- frequência;
- impacto.

Não confunda causa com sintoma.

---

## Etapa 2 — Localizar o ponto de criação do erro

Pergunte:

> Em qual momento o erro se torna possível?

Isso costuma ocorrer antes do momento em que ele é descoberto.

Mapeie, quando necessário:

```text
Entrada
  ↓
Preparação
  ↓
Decisão
  ↓
Execução
  ↓
Handoff
  ↓
Validação
  ↓
Saída
```

Identifique em qual transição a condição indesejada surge.

---

## Etapa 3 — Identificar a dependência humana

Procure frases implícitas como:

- alguém precisa lembrar;
- alguém precisa conferir;
- alguém precisa perguntar;
- alguém precisa interpretar;
- alguém precisa perceber;
- alguém precisa avisar;
- alguém precisa atualizar;
- alguém precisa conhecer a exceção;
- alguém precisa saber quem chamar.

Para cada dependência, pergunte:

> Podemos substituir memória, atenção ou interpretação por uma condição explícita do processo?

---

## Etapa 4 — Classificar o modo de falha

Classifique o problema em uma ou mais categorias.

### Omissão

Algo necessário não foi feito.

### Sequência

As etapas ocorreram na ordem errada.

### Seleção

Foi escolhida a opção incorreta.

### Informação

A decisão foi tomada com informação ausente, incorreta ou desatualizada.

### Handoff

Responsabilidade ou informação se perdeu entre pessoas, áreas ou sistemas.

### Autorização

Uma ação ocorreu sem a validação adequada.

### Timing

Algo aconteceu cedo ou tarde demais.

### Capacidade

A demanda excedeu a capacidade prevista.

### Ambiguidade

Responsabilidade, prioridade, critério ou próximo passo não estavam claros.

### Exceção

O processo padrão não tratava adequadamente uma situação especial.

### Escalonamento

Uma condição crítica não chegou à pessoa certa no momento adequado.

---

# Perguntas de diagnóstico

Use apenas as que forem relevantes.

## Processo

- Qual evento inicia o processo?
- Qual evento encerra o processo?
- Quais são as etapas obrigatórias?
- Existem etapas que não agregam valor?
- Onde ocorre retrabalho?
- Onde existem filas?
- Onde aparecem exceções?

## Responsabilidade

- Existe exatamente um responsável por cada decisão crítica?
- Quem percebe que algo está atrasado?
- Quem pode interromper o processo?
- Quem resolve exceções?
- O responsável é explícito ou apenas conhecido informalmente?

## Informação

- Qual informação é necessária antes de começar?
- Ela está disponível no momento certo?
- Existe uma fonte única?
- Duas pessoas podem trabalhar com versões diferentes da mesma informação?

## Handoffs

- Como a próxima pessoa sabe que deve agir?
- O recebimento é confirmado?
- Existe critério claro para considerar o handoff completo?
- O processo depende de mensagens ou conversas informais?

## Aprovações

- A aprovação é realmente necessária?
- Quem pode aprovar?
- Qual evidência registra a aprovação?
- É possível avançar sem aprovação?

## Exceções

- Quais exceções são comuns?
- Quem decide nesses casos?
- Existe um prazo para escalonamento?
- A exceção fica visível?

---

# Padrões de prevenção

Considere os seguintes mecanismos.

## Campos obrigatórios

Use quando uma atividade não deve começar sem determinadas informações.

Não transforme tudo em campo obrigatório. Exija somente o que for necessário para evitar falha significativa.

## Critério de entrada

Defina explicitamente quando uma tarefa está pronta para começar.

Exemplo:

```text
Uma demanda está pronta quando:

- responsável definido;
- objetivo definido;
- prazo conhecido;
- insumos disponíveis;
- dependências identificadas.
```

## Critério de saída

Defina o que significa "concluído".

Isso reduz interpretações diferentes de finalização.

## Gate

Impeça avanço antes de uma condição crítica.

Use gates com parcimônia. Gates em excesso criam burocracia e podem gerar desvios informais.

## Checklist contextual

Checklists devem:

- ser curtos;
- aparecer no momento da execução;
- conter itens realmente críticos;
- ter resposta observável;
- evitar afirmações vagas.

Prefira:

> Contrato aprovado pelo responsável jurídico?

a:

> Conferir documentação.

## Defaults seguros

Escolha o estado menos arriscado quando houver incerteza.

## Limites

Defina faixas aceitáveis.

Exemplo:

Se determinada demanda superar capacidade, orçamento ou prazo definido, ela exige tratamento diferente.

## Sinalização visual

Torne exceções e riscos visíveis.

Evite dashboards com excesso de informação.

Destaque somente aquilo que requer ação.

## Confirmação de handoff

O envio de uma atividade não significa necessariamente que ela foi recebida.

Para handoffs críticos, considere:

```text
enviado → recebido → aceito → iniciado
```

## Escalonamento automático ou explícito

Defina previamente:

```text
condição → prazo → responsável → ação
```

Evite depender de alguém decidir espontaneamente quando escalar.

## Limite de trabalho em andamento

Evite iniciar mais trabalho do que a capacidade permite concluir.

## Separação de etapas críticas

Quando necessário, separe:

- preparação;
- aprovação;
- execução;
- verificação.

Não aplique segregação indiscriminadamente: ela tem custo operacional.

## Amostragem antes de escala

Teste mudanças em pequena escala antes de expandi-las.

## Janela de reversão

Para decisões operacionais relevantes, considere período ou mecanismo de reversão.

---

# Gestão de equipes

Em processos de equipe, procure especialmente os seguintes problemas.

## Responsabilidade difusa

Se várias pessoas "são responsáveis", frequentemente ninguém é.

Diferencie:

- executor;
- responsável pelo resultado;
- consultado;
- informado.

Não aplique matrizes complexas quando uma simples definição de dono resolver.

## Dependência de pessoa-chave

Pergunte:

> O que acontece se esta pessoa ficar indisponível amanhã?

Considere:

- backup;
- documentação mínima;
- acesso compartilhado;
- substituição definida;
- redistribuição automática ou explícita.

## Conhecimento tácito

Quando uma tarefa funciona apenas porque alguém "sabe como fazer", identifique quais decisões precisam ser transformadas em:

- critérios;
- exemplos;
- limites;
- templates;
- regras de escalonamento.

## Sobrecarga

Não interprete automaticamente atraso como falha de disciplina.

Verifique:

```text
demanda
versus
capacidade
versus
prioridade
```

Um processo que exige capacidade inexistente não será corrigido por lembretes.

---

# Indicadores

Não recomende métricas apenas porque são fáceis de medir.

Prefira indicadores associados ao modo de falha.

Exemplos:

| Problema | Indicador possível |
|---|---|
| Omissões | % de casos com requisito ausente |
| Handoffs | tempo entre envio e aceite |
| Retrabalho | % de atividades devolvidas |
| Aprovação | % de ações iniciadas sem aprovação |
| Atraso | tempo além do limite definido |
| Exceções | quantidade e causa das exceções |
| Dependência | atividades bloqueadas por ausência de pessoa-chave |

Quando possível, acompanhe também:

- frequência;
- severidade;
- tempo de detecção;
- tempo de recuperação.

---

# Avaliação de soluções

Para cada mecanismo proposto, avalie:

## Força preventiva

O mecanismo:

1. elimina o erro;
2. impede o erro;
3. detecta o erro;
4. apenas alerta;
5. apenas documenta?

Prefira os níveis mais fortes quando forem proporcionais ao risco.

## Fricção

A solução aumenta desnecessariamente:

- cliques;
- espera;
- aprovações;
- burocracia;
- reuniões;
- registros;
- duplicação de dados?

Poka-yoke não significa adicionar controle indiscriminadamente.

## Contornabilidade

Pergunte:

> As pessoas conseguirão ou precisarão contornar este mecanismo para realizar o trabalho real?

Se sim, provavelmente existe conflito entre o controle e o processo.

## Novos modos de falha

Toda restrição pode criar um novo problema.

Analise:

- falsos bloqueios;
- gargalos;
- dependência de aprovadores;
- perda de autonomia;
- excesso de alertas;
- aumento de tempo;
- concentração de poder;
- ocultação de exceções.

---

# Formato recomendado de resposta

Quando aplicar esta skill, produza preferencialmente:

## Problema observado

Descrição objetiva.

## Modo de falha

Tipo ou tipos identificados.

## Por que o processo permite o erro

Condições estruturais relevantes.

## Dependência humana atual

Memória, atenção, interpretação, comunicação ou decisão exigida.

## Mecanismo preventivo recomendado

Mudança concreta no processo.

## Força do mecanismo

Classifique como:

- eliminação;
- prevenção;
- restrição;
- detecção;
- mitigação;
- alerta.

## Riscos introduzidos

Efeitos colaterais potenciais.

## Indicador

Como verificar se o mecanismo funcionou.

## Próximo experimento

Quando houver incerteza, recomende uma implementação pequena e reversível.

---

# Exemplo

Situação:

> Os gerentes frequentemente descobrem tarde que entregas críticas estão atrasadas.

Evite responder apenas:

> Criar reuniões de acompanhamento.

Analise:

```text
Evento:
atraso crítico descoberto tarde.

Modo de falha:
detecção tardia + escalonamento.

Dependência atual:
o gerente precisa perguntar manualmente sobre cada entrega.

Causa estrutural:
não existe condição explícita que transforme atraso potencial em exceção visível.
```

Possíveis mecanismos:

1. definir marcos intermediários observáveis;
2. registrar data esperada do próximo marco;
3. tornar automaticamente visível quando o marco não ocorre;
4. definir responsável por tratar a exceção;
5. definir prazo de escalonamento;
6. acompanhar tempo entre desvio e detecção.

A reunião pode continuar sendo útil, mas deixa de ser o mecanismo primário de detecção.

---

# Regra de qualidade

Antes de concluir, pergunte:

> Estou pedindo para as pessoas serem mais cuidadosas ou estou tornando o processo mais difícil de executar incorretamente?

Se a resposta depender principalmente de:

- "lembrar";
- "prestar atenção";
- "reforçar";
- "orientar";
- "cobrar";
- "treinar novamente";

procure pelo menos uma alternativa estrutural antes de finalizar.

---

# Princípio de proporcionalidade

Nem todo risco justifica bloqueio.

Escolha o mecanismo de acordo com:

```text
probabilidade
×
impacto
×
dificuldade de detecção
×
dificuldade de recuperação
```

Problemas pequenos e reversíveis podem exigir apenas sinalização.

Problemas graves, difíceis de detectar ou irreversíveis justificam mecanismos mais fortes.

---

# Resultado esperado

Uma boa aplicação desta skill deve produzir processos:

- menos dependentes de memória;
- menos ambíguos;
- mais observáveis;
- mais previsíveis;
- mais fáceis de operar;
- mais resistentes a ausência de pessoas;
- com erros detectados próximos da origem;
- com exceções claramente tratadas;
- sem burocracia desnecessária.

O objetivo final não é controlar mais pessoas.

É criar um sistema de trabalho no qual fazer a coisa correta seja o caminho mais simples e natural.
