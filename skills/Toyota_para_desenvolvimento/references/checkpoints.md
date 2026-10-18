# Checkpoints: do protótipo ao mercado

Um checkpoint é um ponto de parada entre duas etapas. Nele se confere uma prova observável antes de seguir, para que a falha não avance e seja descoberta pelo cliente. É o mesmo raciocínio do ponto de pausa de um checklist de aviação, aplicado ao projeto inteiro.

Cada checkpoint traz: pergunta, por que existe, perguntas de condução, prova exigida, registro a entregar e a falha típica de quem pula.

Os seis checkpoints são a versão atual. Ao fechar um ciclo com um produto, revise: qual faltou, qual sobrou.

## Sumário
1. Cliente preparado
2. Protótipo em campo
3. Falhas previstas
4. Orientação embutida
5. Passagem para a equipe
6. Mercado
7. Prova por tipo de produto
8. Vários protótipos ao mesmo tempo

---

## 1. Cliente preparado

**Pergunta.** Quem já sabe que precisa disto, e o que precisa ter e saber para usar?

**Por que existe.** Convencer quem não está pronto gera atrito na venda e falha no uso. Ser cliente exige preparo: dirigir pede carteira, estrada, combustível padronizado e sinalização (caso 8). O produto vende sozinho quando encontra quem já tem o problema nomeado e as condições de uso.

**Perguntas de condução**
- Quem já tentou resolver esse problema por conta própria, e como?
- O que o cliente precisa ter antes: energia, rede, espaço, equipe, orçamento, um dado de referência?
- O que precisa saber antes? O que disso o produto pode ensinar sozinho?
- O que equivale, aqui, à carteira, à estrada e à sinalização?
- Quem não é cliente, mesmo interessado?

**Prova.** Perfil do cliente e lista de condições de uso, confirmados em conversa com pelo menos um cliente real.

**Registro.** Folha do Cliente Preparado: problema nas palavras dele; o que já tentou; condições que precisa ter; o que precisa saber; o que o produto assume; quem fica de fora.

**Falha de quem pula.** Produto bom nas mãos de quem não consegue usá-lo, lido como produto ruim.

---

## 2. Protótipo em campo

**Pergunta.** Funciona no lugar real, na mão desse cliente?

**Por que existe.** Na bancada, o especialista compensa sem perceber o que o produto não faz. Ir ver no lugar real (genchi genbutsu) mostra o que a opinião esconde.

**Perguntas de condução**
- Onde, por quanto tempo e com quem o teste aconteceu?
- O que você fez pelo cliente que ele teria de fazer sozinho?
- O que surpreendeu?
- A decisão de seguir é reversível? (premissa 21)

**Prova.** Teste com dados reais, registrado numa folha A3 (`ferramentas.md`).

**Falha de quem pula.** Descobrir no cliente o que o campo teria mostrado em uma semana.

---

## 3. Falhas previstas

**Pergunta.** Que falhas de uso, instalação e comunicação custam mais, e onde nascem?

**Por que existe.** O dano de um erro cresce com o tempo entre ele acontecer e ser descoberto (premissa 27; caso das 80 roscas). Prever é a habilidade central do método, e é o usuário quem deve exercitá-la primeiro.

**Perguntas de condução**
- Percorra os onze modos de falha de `prevencao-de-erro.md`: qual pode acontecer aqui?
- Quem erra: o cliente, o instalador, a equipe?
- Onde o erro nasce, e onde seria descoberto?
- O que ele custa se chegar ao fim?

**Prova.** Lista de falhas ordenada por custo, cada uma com modo, ponto de origem e causa no sistema (5 porquês).

**Falha de quem pula.** Tratar cada reclamação como caso isolado.

---

## 4. Orientação embutida

**Pergunta.** O produto orienta o uso e previne a falha sozinho?

**Por que existe.** Conhecimento que mora na cabeça do especialista não acompanha o produto. O que agrega conhecimento é a indicação no próprio objeto: o encaixe que só entra de um jeito, a tela que diz o que fazer, a medição em triplicata que prova a própria confiabilidade (caso dos pluviômetros).

**Perguntas de condução**
- Para cada falha cara: dá para eliminar a etapa? Tornar impossível? Senão, detectar na hora?
- O cliente vai precisar contornar o mecanismo para trabalhar?
- Ele consegue dizer por que o mecanismo existe?
- O que só pode ser coberto por checklist, e em que ponto de pausa ele fica?
- A instrução de uso passa no teste de lacunas?

**Prova.** Uma Ficha de Prevenção de Erro por falha cara, com mecanismo testado por alguém que não é o especialista.

**Falha de quem pula.** Manual que ninguém lê no lugar de desenho que impede o erro.

---

## 5. Passagem para a equipe

**Pergunta.** Outra pessoa fabrica, instala e dá suporte igual, e explica por quê?

**Por que existe.** Enquanto só o criador faz certo, não há produto: há um serviço do criador. A continuidade depende de a equipe compreender, não só de obedecer.

**Perguntas de condução**
- Quem fez sem você presente? O que saiu diferente?
- A instrução permitia a leitura que a pessoa fez?
- Ela sabia que podia parar e chamar?
- A resistência é por não entender, não concordar ou não conseguir? (`contexto-brasileiro.md`)

**Prova.** Protocolo de Delegação cumprido: Ficha de Tarefa, primeira peça verificada, sinal de parada combinado, e a pessoa explicando com as próprias palavras o que é pronto.

**Falha de quem pula.** Escalar antes de embutir o critério (premissa 23).

---

## 6. Mercado

**Pergunta.** O uso correto se mantém sem acompanhamento?

**Por que existe.** Venda não é prova. Prova é o cliente usando certo depois que o entusiasmo e o suporte inicial passaram, e trazendo outro cliente.

**Perguntas de condução**
- Depois de 30 dias, quantos usam como previsto?
- Que falhas voltaram do campo, e por qual canal chegaram?
- O cliente indicaria? Para quem?
- Há folga na operação para absorver o que voltar? (premissa 22)

**Prova.** Medição de uso após 30 dias e canal de retorno de falhas funcionando, com cada falha voltando ao checkpoint 3.

**Falha de quem pula.** Crescer sobre uma base que está abandonando o produto em silêncio.

---

## 7. Prova por tipo de produto

| Checkpoint | Hardware | SaaS | MBSE |
|---|---|---|---|
| 2. Campo | Instalado no local do cliente, com clima e energia reais | Usado com dados reais do cliente | Modelo aplicado a um processo de fabricação real |
| 3. Falhas | Montagem, instalação, manutenção | Primeiro acesso, erro, estado vazio, permissão | Requisito ambíguo, transição inválida, modelo fora de sincronia com o código |
| 4. Orientação | Encaixe único, cor, marca visual, teste por trecho | Padrão seguro, campo restrito, mensagem que diz o que fazer | Modelo como fonte única; guardas explícitas; transição inválida não existe |
| 5. Equipe | Terceiro instala sem o especialista | Outro publica uma versão seguindo o roteiro | Outro altera o modelo e os testes acusam a quebra |
| 6. Mercado | Unidades operando sem visita | Retenção e chamados por usuário | Requisitos rastreados a testes em uso contínuo |

## 8. Vários protótipos ao mesmo tempo

Com muitos protótipos funcionais, a armadilha é avançar um pouco em cada um (premissa 26: a lucidez que convoca para todas as frentes).

1. Liste os protótipos com o checkpoint em que cada um está e a prova que falta.
2. Escolha pelo cliente preparado: qual tem hoje um cliente que já sabe que precisa?
3. Limite as frentes ativas. As demais ficam registradas, com o próximo passo anotado, e não abandonadas.
4. O que se aprende em um produto (checklists, fichas, interfaces) vira padrão para o seguinte.
