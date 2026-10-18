# Previsibilidade: formatar tarefas para a equipe

Uma tarefa é previsível quando quem executa não precisa adivinhar o que será considerado certo. O custo de um trabalho depende mais de quanto ele obriga a adivinhar do que do seu volume (premissa 29). Este arquivo traz os modelos para escrever, dividir e passar tarefas.

A instrução é um produto, e quem executa é o cliente dela. Por isso valem aqui as mesmas ferramentas do produto: prever falhas, prevenir o erro por desenho, verificar a primeira peça (ver `prevencao-de-erro.md`).

## Sumário
1. Escolher o modelo pelo ponto onde a previsão falha
2. Operadores
3. Auditoria de Instrução
4. Ficha de Tarefa
5. Quadro de Estados
6. Protocolo de Passagem
7. Regra de Disjuntor
8. Dividir o trabalho entre especialistas
9. Limites

## 1. Escolher o modelo

| Onde a previsão falha | Modelo |
|---|---|
| Na instrução que sai | Auditoria de Instrução |
| No que conta como pronto | Ficha de Tarefa |
| Ninguém sabe em que ponto o trabalho está | Quadro de Estados |
| O trabalho se perde ao mudar de mão | Protocolo de Passagem |
| O escopo muda mais do que a equipe absorve | Regra de Disjuntor |

## 2. Operadores

- **Auditar a instrução antes de ela sair.** Três lacunas se repetem: escopo sem borda (não diz o que fica de fora nem onde parar), termo subjetivo ("bom", "rápido", "caprichado") e término sem critério observável.
- **Declarar o que pode variar.** Sem tolerâncias, quem executa trata cada detalhe como decisivo.
- **Perguntar em vez de supor.** Cada pergunta converte algo vago em escolha ou número. Vale para a IA diante de um pedido com lacuna.
- **Escrever o pronto como Dado / Quando / Então.** O pronto passa a ser verificado, não negociado.
- **Tratar ênfase como sintoma.** Se a exigência precisa de caixa alta ou "URGENTE", falta uma restrição no processo.
- **Estados discretos com passagem verificável.** "Aguardando alinhamento" não é estado.
- **Passar por prova, não por impressão.** Foto, arquivo, teste registrado, no lugar combinado.
- **Congelar o escopo durante a execução.** O que surgir vai para o ciclo seguinte.
- **Agrupar ajustes nas transições.** Cada interrupção destrói o que a pessoa mantinha na cabeça.
- **Disjuntor.** Quando a variação passa da capacidade, parar a entrada de trabalho novo.

## 3. Auditoria de Instrução

```
INSTRUÇÃO ORIGINAL: [texto exato, sem resumir]

LACUNAS
Escopo sem borda:
Termos subjetivos:
Término sem critério:
Tolerâncias ausentes:
Ênfase como remendo:

PERGUNTAS (uma por lacuna, com resposta curta)
1.

VERSÃO REESCRITA:
```

Preencha só as linhas com lacuna. Auditoria sem lacunas é resultado válido.

## 4. Ficha de Tarefa

```
TAREFA: [verbo + objeto]
PARA QUE SERVE: [uma frase; permite decidir casos não previstos]

CRITÉRIO DE ACEITE
Dado que:   [insumos e condições prontos antes]
Quando:     [a ação, com escopo delimitado]
Então:      [propriedades observáveis do resultado]

FORA DO ESCOPO: [o que não fazer]
TOLERÂNCIAS:    [o que pode variar sem problema]
PRAZO:          [data real, não a desejada]
PRIMEIRA PEÇA:  [amostra pequena a mostrar antes do todo, e quando]
SINAL DE BLOQUEIO: [quando parar e avisar, e por qual canal]
PROVA DE ENTREGA: [foto, arquivo, teste registrado, e onde fica]
```

Dimensione pelo risco: tarefa única e de baixo risco pede só o critério; tarefa repetida, com segurança ou material caro pede a ficha inteira. A Ficha de Tarefa é o passo 0 do Protocolo de Delegação de `ferramentas.md`.

## 5. Quadro de Estados

```
ESTADO              | ENTRA QUANDO (verificável)             | PROVA
A fazer             | tarefa tem Ficha preenchida            | ficha
Pronto para iniciar | insumos do "Dado que" disponíveis      | onde estão
Em execução         | alguém assumiu                         | nome no quadro
Bloqueado           | sinal de bloqueio acionado             | motivo escrito
Em verificação      | entrega depositada                     | link, foto, arquivo
Entregue            | todos os "Então" conferidos            | checklist marcado

LIMITE EM EXECUÇÃO: [itens ao mesmo tempo por pessoa]
```

Cada estado é exclusivo e nenhum depende de opinião. Um quadro na parede serve tanto quanto um software. Sinal de que funciona: a reunião de acompanhamento encurta sozinha, porque passa a tratar só dos bloqueados.

## 6. Protocolo de Passagem

```
DE: [quem entrega]        PARA: [quem recebe]
O QUE PASSA:
PROVA DEPOSITADA: [o que comprova o estado, e onde]
O RECEPTOR CONFERE: [lista curta antes de aceitar]
SE FALTAR ALGO: [volta para qual estado, por qual canal]
```

Enviado não é recebido. Para passagens críticas: enviado, recebido, aceito, iniciado.

## 7. Regra de Disjuntor

```
FLUXO PROTEGIDO:
SINAL DE DISPARO: [contável: 3 mudanças de escopo na semana; 2 itens bloqueados há 5 dias]
O QUE PARA: [entrada de itens novos]
COMO ESTABILIZAR:
QUANDO RETOMA: [condição verificável]
```

## 8. Dividir o trabalho entre especialistas

No desenvolvimento de produto da Toyota, um engenheiro-chefe guarda a voz do cliente e responde pelo produto inteiro, e cada especialista aprofunda uma função (caso 6 de `casos.md`). Para uma equipe pequena com vários produtos:

1. **Um dono do todo por produto.** Ele decide o que o cliente precisa e arbitra os conflitos entre funções. Não executa cada tarefa.
2. **Um dono por função,** com critério de aceite próprio: mecânica, eletrônica, firmware, plataforma, instalação, documentação de uso.
3. **Interfaces escritas.** Cada fronteira entre duas funções tem um contrato: o que um entrega ao outro, em que formato, com que prova. É na fronteira que a falha de comunicação nasce.
4. **Um quadro só,** visível a todos, com os estados da seção 5.
5. **Uma folha por problema** (A3), para que a solução fique registrada e não na memória de quem resolveu.
6. **Checklists do que já se aprendeu,** revistos ao fim de cada produto.

## 9. Limites

- Nem toda incerteza se reduz. Congele o essencial e declare a tolerância do resto.
- Etapa de exploração não se congela: fica aberta, com prazo para fechar.
- Especificar custa. O rigor acompanha a frequência e o risco.
- Em relações de cuidado e confiança, a conversa é parte do que se quer preservar.
- Não rotule pessoas. Desenhar para quem processa pouco contexto implícito beneficia a equipe inteira, sem precisar saber quem é quem.

**Grau de evidência.** Limites da memória de trabalho, custo de interrupção, descarga em artefatos e critério explícito são consolidados. Processamento preditivo como teoria geral e a hipótese HIPPEA sobre autismo são hipóteses sérias em debate. A ligação entre ambiguidade e esgotamento energético do cérebro é metáfora.
