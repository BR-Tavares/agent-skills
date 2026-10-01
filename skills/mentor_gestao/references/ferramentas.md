# Ferramentas e modelos de registro

## Sumário
1. Testes diagnósticos
2. Mapa de Desperdício Pessoal
3. Mapa de Processo do Comportamento
4. A3 Pessoal
5. Protocolo de Delegação
6. Ficha de Poka-yoke
7. Registro de Compromissos
8. Perguntas do kata de coaching

---

## 1. Testes diagnósticos

**Tarefa real ou falsa**
1. Teste do gargalo: esta tarefa atua sobre o que hoje limita o resultado? (Goldratt)
2. Teste da entrega: gera um produto final ou só organiza, discute e sincroniza? (Reinertsen)
3. Teste da omissão: se ninguém fizer por três semanas, que dano concreto ocorre além do desconforto social? (inspirado em Graeber)
4. Teste do cliente: alguém, fora do processo, perceberia a diferença? (conceito de valor do Lean)

**Urgência real ou fabricada**
1. Custo de atraso: adiar 24 horas gera penalidade em degrau ou só alguém esperando? (Reinertsen)
2. Dependência: o pedido chegou completo ou estou pagando a falta de planejamento alheia? (Newport, Perlow)
3. Trinta dias: qual o impacto disso na meta principal daqui a um mês?

**Instrução clara ou ambígua** (premissa 29)
1. Borda: diz o que fica de fora e onde parar?
2. Termos subjetivos: há palavras que exigem adivinhar um gosto ("bom", "rápido", "caprichado", "enxuto")?
3. Término: dá para verificar que acabou sem depender da opinião de alguém?
4. Tolerâncias: diz o que pode variar sem problema?
Se alguma resposta for não, a lacuna é da instrução, e não de quem vai executar.

**Decisão**
1. Reversibilidade: porta de ida e volta ou só de ida? (premissa 21)
2. Limites da pessoa: a opção contraria algum limite registrado na percepção atual?

**Classificação de desperdício**
- Muda: consome sem agregar.
- Mura: irregularidade de carga ou direção.
- Muri: sobrecarga além da capacidade.

---

## 2. Mapa de Desperdício Pessoal

| Atividade | Horas/semana | Essencial / Urgente / Circunstancial | Tipo (muda, mura, muri, nenhum) | Atua no gargalo? | Decisão (manter, padronizar, delegar, eliminar) |
|---|---|---|---|---|---|

Ao final: gargalo atual; proporção por esfera; uma atividade a eliminar nesta semana.

---

## 3. Mapa de Processo do Comportamento

Use quando houver padrões recorrentes e for preciso descobrir onde uma intervenção pode agir. Numere os padrões observados como P1, P2... e descreva, conforme as evidências disponíveis, origem da demanda, condição que a mantém, decisão ou resposta, acúmulo e efeito. Essas posições são perguntas para investigar, não etapas obrigatórias nem causas já demonstradas. Uma crença só entra como relato ou hipótese a confirmar.

Mantenha as contramedidas numa lista separada, como C1, C2...; uma ação proposta nunca é um padrão. Para cada C, registre a ligação `C → P`, o mecanismo pelo qual deve alterar P e o sinal observável que permitirá verificar o efeito. Se a ligação não puder ser explicada com clareza, investigue o processo antes de recomendar a ação.

Quando um diagrama ajudar, represente o processo atual em SVG. Distinga visualmente relatos, observações e inferências e confirme as relações com a pessoa.

---

## 4. A3 Pessoal

```
TÍTULO:
1. CONTEXTO: por que isso importa para os objetivos e limites registrados na percepção da pessoa
2. SITUAÇÃO ATUAL: fatos observados (genchi genbutsu), números se houver
3. META / CONDIÇÃO-ALVO: como deve estar, até quando
4. ANÁLISE DE CAUSA: 5 porquês
5. CONTRAMEDIDAS: o menor passo que atua na causa
6. PLANO: o quê, quem, quando
7. VERIFICAÇÃO: como e quando saber se funcionou
8. PADRONIZAÇÃO: o que vira padrão se funcionar
```

---

## 5. Protocolo de Delegação

Baseado em TWI Job Instruction, jidoka, inspeção na fonte e na premissa 29.

0. **Especificar:** antes de ensinar, escreva o que será entregue, porque o ensino transmite o método, mas não corrige um pedido ambíguo. Dimensione pelo risco: tarefa única e de baixo risco pede só o critério; tarefa repetida, com segurança ou material caro pede todos os campos.
   ```
   TAREFA E PARA QUE SERVE: [verbo + objeto; uma frase de propósito, que permite à pessoa resolver casos não previstos]
   CRITÉRIO DE ACEITE
     Dado que: [insumos e condições prontos antes]
     Quando:   [a ação, com o escopo delimitado]
     Então:    [propriedades observáveis do resultado]
   FORA DO ESCOPO: [o que não fazer, inclusive o que o executor não pode fazer]
   TOLERÂNCIAS: [o que pode variar sem problema]
   PRAZO REAL: [data verdadeira, não a desejada]
   PROVA DE ENTREGA: [o que comprova o estado: foto, arquivo, teste registrado]
   ```
1. **Preparar:** decompor a tarefa em passos, pontos-chave (o que garante qualidade e segurança) e razões de cada ponto-chave.
2. **Apresentar:** mostrar, explicar os pontos-chave e o porquê.
3. **Testar:** a pessoa faz na sua frente, explicando os pontos-chave; corrigir na hora.
4. **Primeira peça:** a pessoa executa a primeira unidade real; verificar antes de liberar a série (primeira rosca, primeiro trecho, primeiro relatório).
5. **Amostragem crescente:** verificar a cada N unidades, espaçando conforme a confiança cresce.
6. **Andon:** combinar explicitamente quando parar e chamar (condição nova, dúvida, resultado diferente do padrão), por qual canal avisar, e acolher a parada sem punição.
7. **Poka-yoke:** onde o erro é caro, embutir o critério (gabarito, teste por trecho, marca visual).
8. **Condição nova:** se a pessoa nunca enfrentou aquela condição, volte ao passo 3 nela, mesmo que já domine a tarefa em outro contexto.

Princípio: se o aprendiz não aprendeu, o instrutor não ensinou.

---

## 6. Ficha de Poka-yoke

```
ERRO A PREVENIR:
NATUREZA: [ ] de execução  [ ] de interpretação (a instrução permitia outra leitura)
ONDE NASCE (fonte):
CUSTO SE PASSAR ADIANTE:
TIPO: [ ] impede o erro (controle)  [ ] revela o erro na hora (alerta)
MECANISMO:
COMO O ERRO FICA VISÍVEL E PARA QUEM:
TESTE DO MECANISMO:
```

Tipos clássicos de Shingo: por contato (forma, encaixe), por número fixo (contagem de passos ou peças), por sequência (ordem obrigatória).

O erro de interpretação também se previne por desenho, e não por mais atenção: critério de aceite escrito, exemplo de referência (a peça certa ao lado da bancada), primeira peça verificada e leitura de volta, em que a pessoa explica com as próprias palavras o que é "pronto" antes de começar.

---

## 7. Registro de Compromissos

| Compromisso | Com quem | Ainda faz sentido? | Próximo passo concreto | Data | Ou encerrar: como comunicar |
|---|---|---|---|---|---|

Regra: compromisso sem próximo passo concreto e datado é encerrado ou reformulado.

---

## 8. Perguntas do kata de coaching

Adaptadas de Rother. Úteis em conversas de acompanhamento:
1. Qual é a condição-alvo?
2. Qual é a condição atual agora?
3. O que você fez no último passo? O que esperava? O que aconteceu? O que aprendeu?
4. Que obstáculos impedem chegar à condição-alvo? Em qual você está trabalhando agora?
5. Qual é o próximo passo? O que espera que aconteça?
6. Quando podemos ver o que você aprendeu com esse passo?
