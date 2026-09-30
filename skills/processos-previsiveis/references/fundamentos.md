# Fundamentos: a cadeia teórica, sua solidez e seus limites

Este arquivo desenvolve o raciocínio resumido no SKILL.md. Ele existe para que as recomendações possam ser justificadas pelo mecanismo, e não pela autoridade de uma regra.

## Sumário
1. A cadeia de raciocínio
2. A função dupla do artefato
3. Até onde a evidência sustenta a cadeia
4. Tensões que exigem julgamento

---

## 1. A cadeia de raciocínio

### 1.1 O esforço está onde a predição falha

O cérebro não recebe o mundo passivamente: ele antecipa o que vai perceber e processa sobretudo a diferença entre o antecipado e o ocorrido, o erro de predição (Friston, princípio da energia livre e codificação preditiva). Daí decorre a primeira consequência prática: o custo de uma tarefa não é proporcional ao seu volume, mas à quantidade de surpresa que ela gera. Uma tarefa longa e previsível pode, portanto, custar menos que uma curta e ambígua.

### 1.2 A precisão decide qual surpresa merece atenção

Nem todo erro de predição, no entanto, deve mudar o modelo. Alguns indicam que o modelo está errado (incerteza redutível); outros são apenas ruído (incerteza irredutível). O cérebro distingue os dois atribuindo um peso, a precisão, a cada erro. Quando essa regulação funciona, o ruído é absorvido e as crenças estáveis são preservadas; quando falha, o ruído é tratado como sinal, e o sistema passa a revisar o que não precisava ser revisado.

### 1.3 No autismo, segundo a hipótese HIPPEA, a regulação é rígida

A hipótese HIPPEA (Van de Cruys e colaboradores, 2014) propõe exatamente essa falha: a precisão seria alta e pouco ajustável. Por isso cada microvariação (uma mudança de iluminação, de tom de voz, de layout) chega como erro importante e exige recálculo. A consequência é dupla. De um lado, generalizar fica caro, já que o detalhe local desqualifica a categoria, como em *Funes, o Memorioso*. De outro, o gasto de processamento sobe. Sob essa leitura, a insistência em rotinas deixa de ser defeito e passa a ser estratégia: se não é possível baixar a precisão internamente, reduz-se a variação do ambiente externamente.

### 1.4 Há duas vias para reduzir a surpresa, e o ambiente pode bloquear uma delas

Essa estratégia revela um princípio mais geral da inferência ativa: a surpresa pode ser reduzida mudando o modelo (percepção) ou mudando o mundo (ação). Ocorre que, em ambientes opacos, sem critérios explícitos e com regras não ditas, a ação fica bloqueada, porque não se sabe qual ação confirmaria o esperado. Resta então a simulação interna ("o que ele quis dizer?", "quem aprova?", "qual critério vai valer?"), que é justamente a via mais cara, pois exige manter muitas hipóteses concorrentes ao mesmo tempo.

### 1.5 O artefato desbloqueia a ação e libera a memória

É nesse ponto que a mente estendida (Clark e Chalmers) entra na cadeia. Se a cognição inclui os artefatos, então um quadro, um checklist ou um critério escrito passam a guardar o estado que a memória de trabalho teria de sustentar ativamente, e a memória de trabalho é o recurso mais escasso e mais frágil a interrupções. Além disso, o artefato devolve a via da ação: consultar e atualizar o quadro é uma ação epistêmica (Kirsh e Maglio), que não produz nada diretamente, mas reduz o número de hipóteses que o cérebro precisa manter.

### 1.6 Instruções abertas são a porta de entrada da ambiguidade

A cegueira ao contexto, descrita por Peter Vermeulen, explica por onde a ambiguidade entra. Instruções como "o mais rápido possível" ou "veja se está adequado" só ganham significado quando combinadas com contexto implícito: hierarquia, tom, histórico. Portanto, para quem processa pouco contexto, a instrução não tem uma interpretação, mas muitas; e, como sob hiperprecisão nenhuma é descartada, a inferência não converge. Quando isso persiste, o resultado é alarme, e no limite paralisia (shutdown) ou desregulação (meltdown).

### 1.7 O que é necessário para o perfil sensível é útil para todos

Por fim, o mecanismo não é exclusivo do autismo; muda apenas a intensidade. Pessoas neurotípicas compensam a ambiguidade com intuição social, mas pagam por isso em reuniões de alinhamento, ansiedade de avaliação e retrabalho descoberto tarde. Logo, desenhar o processo para o perfil mais sensível não é concessão, e sim otimização geral, pelo mesmo motivo que o rebaixo de calçada feito para cadeirantes serve a carrinhos, idosos e entregadores.

---

## 2. A função dupla do artefato

Seguindo a cadeia, fica evidente que o artefato cumpre duas funções distintas. A primeira é armazenar estado: tirar da memória o que ela teria de sustentar (1.5). A segunda é regular precisão: dizer explicitamente o que importa e o que é ruído tolerável (1.2).

A literatura aplicada costuma desenvolver só a primeira. Ora, se o problema central apontado pelo HIPPEA é justamente a precisão que não se ajusta sozinha, então a contribuição mais direta de um artefato é fazer esse ajuste de fora, declarando tolerâncias, e não apenas especificando obrigações. É por isso que esta skill trata o campo de tolerâncias como parte obrigatória da Ficha de Tarefa: sem ele, o artefato resolve metade do problema.

A mesma cadeia se aplica a quem executa instruções com IA. Modelos de linguagem tendem a reconhecer ambiguidade e, ainda assim, supor em vez de perguntar; logo, os operadores desta skill servem tanto para auditar instruções humanas quanto como disciplina da própria IA ao receber um pedido.

---

## 3. Até onde a evidência sustenta a cadeia

A cadeia se apoia em elos de força desigual, e isso importa porque as recomendações devem carregar o peso que o elo correspondente sustenta.

**Elos sólidos.** Limites da memória de trabalho; custo de interrupções e de troca de contexto; descarga cognitiva em artefatos e o quadro da mente estendida; redução de retrabalho por critérios de aceite explícitos; o princípio do design universal. Sobre esses, recomende com segurança.

**Elos sérios, mas em debate.** O processamento preditivo como teoria geral do córtex; o HIPPEA como explicação do autismo, com apoio empírico parcial e resultados mistos; a cegueira ao contexto como formulação central. Use-os como explicação plausível e diga que são hipóteses.

**Elo fraco, útil como metáfora.** A ligação direta entre instrução vaga e esgotamento de ATP na bomba de sódio-potássio não se sustenta quantitativamente, já que o consumo energético total do cérebro varia pouco entre repouso e tarefa. A fadiga mental é mais bem explicada por estresse, alostase e custo de oportunidade. Por isso, a fisiologia serve para tornar o custo intuitivo ("a ambiguidade cansa"), mas não como justificativa mecânica. Pela mesma razão, promessas como "erro zero" devem ser lidas como "erro reduzido".

Também convém evitar a linguagem de déficit ("falha", "incapacidade") ao falar de pessoas. O enquadramento desta skill é o do design: o ambiente é que está mal calibrado para a diversidade de quem o usa.

---

## 4. Tensões que exigem julgamento

**Incerteza irredutível.** Tornar tudo determinístico é impossível e, se tentado, reproduz no processo o erro de tratar ruído como sinal. A saída é congelar o essencial e declarar a tolerância do resto.

**Rigidez contra adaptação.** O congelamento de escopo protege a execução, mas em ambientes voláteis pode impedir a adaptação necessária. Distinga etapas de execução, em que se congela, de etapas de exploração, que ficam abertas com prazo para fechar.

**Custo de especificar.** Toda especificação consome tempo antes de economizar tempo. O rigor deve ser proporcional à frequência e ao risco da tarefa.

**Escala.** Os mecanismos são individuais antes de serem coletivos; a skill vale tanto para uma equipe quanto para uma pessoa que organiza o próprio trabalho.

**Vínculos.** A passagem de tarefas por evidência, sem depender de conversa, serve ao trabalho técnico. Em relações de cuidado e confiança, a conversa é parte do que se quer preservar.
