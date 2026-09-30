# Ferramentas: modelos de registro

Cada modelo corresponde a um elo da cadeia (ver `fundamentos.md`). Escolha pelo elo em que a previsão está falhando, e não pelo hábito: um modelo aplicado ao elo errado só acrescenta papel.

| Onde a previsão falha | Modelo indicado |
|---|---|
| Na instrução que sai | Auditoria de Instrução |
| No que é "pronto" para uma tarefa | Ficha de Tarefa |
| Ninguém sabe em que ponto o trabalho está | Mapa de Estados do Fluxo |
| O trabalho se perde ao mudar de mão | Protocolo de Passagem |
| O fluxo muda mais do que a equipe absorve | Regra de Disjuntor |

Quando o caso já couber num registro da skill mentor-gestao-recursos (Protocolo de Delegação, Ficha de Poka-yoke), use o registro dela e acrescente os campos daqui que faltarem, em especial tolerâncias e critério de aceite.

---

## 1. Auditoria de Instrução

Serve para examinar uma instrução antes de ela chegar a quem executa, porque é mais barato fechar a lacuna no texto do que no retrabalho.

```
INSTRUÇÃO ORIGINAL: [texto exato, sem resumir]

LACUNAS
Escopo sem borda:      [o que não diz que fica de fora, ou onde parar]
Termos subjetivos:     [palavras que exigem adivinhar um gosto: "bom", "rápido"...]
Término sem critério:  [como se saberá que acabou]
Tolerâncias ausentes:  [o que pode variar e não foi dito]
Ênfase como remendo:   [caixa alta, "urgente", repetição — e a restrição que falta]

PERGUNTAS (uma por lacuna, com resposta curta)
1.
2.

VERSÃO REESCRITA: [a instrução com as respostas incorporadas]
```

Preencha só as linhas em que houver lacuna. Uma auditoria sem lacunas é um resultado válido, e deve ser dito assim.

---

## 2. Ficha de Tarefa

Serve para uma tarefa que vai para outra pessoa, ou para a própria IA, e cujo resultado precisa ser verificável.

```
TAREFA: [verbo + objeto]
PARA QUE SERVE: [uma frase; ajuda o executor a decidir casos não previstos]

CRITÉRIO DE ACEITE
Dado que:   [insumos e condições que precisam estar prontos antes]
Quando:     [a ação, com o escopo delimitado]
Então:      [propriedades observáveis do resultado, em lista curta]

FORA DO ESCOPO: [o que não fazer, inclusive o que o executor não pode fazer]
TOLERÂNCIAS:    [o que pode variar sem problema]
PRAZO:          [data real, não a desejada]
PRIMEIRA PEÇA:  [amostra pequena a ser mostrada antes do todo, e quando]
SINAL DE BLOQUEIO: [em que situação o executor para e avisa, e como avisa]
```

O campo "para que serve" não é enfeite: é o que permite ao executor resolver sozinho uma situação que a ficha não previu, sem precisar adivinhar a intenção. Já as tolerâncias impedem que ele trate cada detalhe como decisivo.

---

## 3. Mapa de Estados do Fluxo

Serve para um trabalho que atravessa várias etapas ou pessoas, de modo que o estado de cada item possa ser lido em vez de deduzido.

```
FLUXO: [nome]

ESTADO              | ENTRA QUANDO (guarda verificável)        | EVIDÊNCIA
A fazer             | tarefa tem Ficha preenchida              | ficha
Pronto para iniciar | insumos do "Dado que" disponíveis        | [onde estão]
Em execução         | alguém assumiu                           | nome no quadro
Bloqueado           | sinal de bloqueio acionado               | motivo escrito
Em verificação      | entrega depositada                       | [link, foto, arquivo]
Entregue            | todos os "Então" conferidos              | checklist marcado

LIMITE EM EXECUÇÃO: [quantos itens ao mesmo tempo por pessoa]
```

Adapte os nomes à realidade da equipe, mantendo duas propriedades: cada estado é mutuamente exclusivo, e nenhum estado depende de opinião ("aguardando alinhamento" não entra). Um quadro físico na parede cumpre a mesma função que um software.

---

## 4. Protocolo de Passagem

Serve para o ponto em que o trabalho muda de mão, onde as perdas costumam acontecer em silêncio.

```
DE: [quem entrega]        PARA: [quem recebe]
O QUE PASSA: [item]
PROVA DEPOSITADA: [o artefato que comprova o estado, e onde fica]
O RECEPTOR CONFERE: [lista curta do que verifica antes de aceitar]
SE FALTAR ALGO: [devolve para qual estado, e por qual canal]
```

A passagem depende da prova, e não da conversa, porque a conversa se perde e varia com o humor do dia. Isso não impede que as pessoas conversem; apenas faz com que a passagem não dependa disso.

---

## 5. Regra de Disjuntor

Serve para proteger um fluxo quando a variação passa do que a equipe consegue absorver.

```
FLUXO PROTEGIDO: [nome]
SINAL DE DISPARO: [ex.: 3 mudanças de escopo na mesma semana; 2 itens bloqueados há mais de 5 dias]
O QUE PARA: [entrada de novos itens]
COMO ESTABILIZAR: [revisar fichas, fechar ou renegociar itens abertos]
QUANDO RETOMA: [condição verificável]
```

O sinal precisa ser contável, porque um disjuntor que depende de "sentir que está demais" dispara tarde. Comece com um limiar simples e ajuste depois de observar.
