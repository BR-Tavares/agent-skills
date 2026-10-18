# Prevenção de erro (poka-yoke) e checklists

Prevenção de erro por desenho (poka-yoke) é mudar o produto, a instrução ou o processo para que o erro fique impossível, difícil ou visível na hora. Serve antes do erro, ao prever falhas de um produto ou de uma tarefa nova, e depois dele, quando a mesma falha se repete. Vale para o cliente que usa o produto e para a equipe que executa uma tarefa.

## Sumário
1. Pergunta de partida
2. Modos de falha: lista para prever
3. Hierarquia de intervenção
4. Checklists
5. Avaliar o mecanismo antes de adotar
6. O que não é prevenção
7. Ficha de Prevenção de Erro

## 1. Pergunta de partida

> O que no produto, na instrução ou no processo permite que esse erro aconteça?

Procure onde o acerto depende de alguém lembrar, conferir, perceber, interpretar, avisar ou saber a exceção. Cada dependência dessas é candidata a virar uma condição explícita do desenho.

O erro costuma nascer antes do ponto em que é descoberto. Localize o ponto de criação, não o de descoberta.

## 2. Modos de falha: lista para prever

Percorra a lista antes de lançar um produto ou passar uma tarefa. Para cada modo, pergunte: isto pode acontecer aqui? Com que custo?

| Modo | O que acontece | Exemplo em produto | Exemplo em tarefa da equipe |
|---|---|---|---|
| Omissão | Um passo necessário não é feito | Sensor instalado sem calibrar | Entrega sem o teste registrado |
| Sequência | Passos na ordem errada | Ligar a bomba antes de escorvar | Soldar antes de testar o encaixe |
| Seleção | Opção errada escolhida | Conector no borne errado | Versão antiga do arquivo usada |
| Informação | Decisão com dado ausente ou velho | Painel mostra leitura sem data | Especificação desatualizada |
| Passagem | Algo se perde ao mudar de mão | Instalador não repassa a senha ao cliente | Tarefa enviada e nunca recebida |
| Autorização | Ação sem a validação devida | Usuário altera limite crítico | Compra sem aprovação |
| Tempo | Cedo ou tarde demais | Manutenção feita fora do intervalo | Atraso descoberto no prazo final |
| Capacidade | Demanda acima do previsto | Vazão maior que a bomba suporta | Mais frentes do que a equipe conclui |
| Ambiguidade | Critério ou próximo passo não está claro | Luz piscando sem legenda | "Capricha no acabamento" |
| Exceção | Situação especial sem tratamento | Queda de energia no meio da gravação | Fornecedor não entrega |
| Escalonamento | O alerta não chega a quem decide | Alarme toca onde ninguém ouve | Bloqueio que ninguém comunica |

## 3. Hierarquia de intervenção

Prefira o mecanismo mais forte que o risco justificar. Os de baixo dependem da atenção de alguém; os de cima, não.

1. **Eliminar** a etapa que produz o erro.
2. **Tornar impossível:** o encaixe só entra de um jeito; o formulário não avança sem o campo.
3. **Restringir** as opções ao que é válido naquele contexto.
4. **Padrão seguro:** sem escolha explícita, vale a alternativa menos arriscada.
5. **Detectar na hora,** perto da origem.
6. **Limitar o impacto:** testar em uma unidade antes de todas.
7. **Tornar reversível.**
8. **Alertar.**
9. **Documentar e treinar.**

Checklist fica entre os níveis 5 e 8, conforme o desenho: um checklist que bloqueia o avanço detecta na hora; um que só lembra é um alerta. Por isso ele complementa os níveis de cima e não os substitui.

## 4. Checklists

O checklist é a ferramenta da aviação para o que não pode ser impedido por desenho: ele protege contra o esquecimento de passos conhecidos em tarefas que a pessoa já sabe fazer. Não ensina a tarefa nem substitui o julgamento.

**Dois tipos**, conforme Gawande em *The Checklist Manifesto* (2009):

- **Ler e fazer:** lê-se cada item e executa-se em seguida. Para tarefas raras ou de emergência.
- **Fazer e confirmar:** executa-se de memória e, num ponto de pausa, confirma-se o que é crítico. Para tarefas rotineiras feitas por quem domina.

**Regras de desenho**

- Ligue o checklist a um ponto de pausa definido (um checkpoint): antes de energizar, antes de entregar, antes de publicar.
- Liste só os passos que, esquecidos, causam dano e que as pessoas de fato esquecem. Poucos itens; se passar de uma página, divida por ponto de pausa.
- Escreva cada item com resposta observável. "Pressão do trecho 1 acima de 2 bar?" serve; "conferir instalação" não serve.
- Coloque-o no ponto de uso: colado no painel, na tela anterior ao botão, na tampa da caixa.
- Teste com quem vai usar, numa situação real, e corte o que não for usado.
- Diga para que serve cada item crítico. Checklist imposto sem o porquê vira ritual marcado sem olhar.

**O que a evidência mostra.** A lista de segurança cirúrgica da OMS (2008) tem 19 itens em três pausas. No estudo de 2009 em oito hospitais, as complicações caíram de 11,0% para 7,0% e as mortes de 1,5% para 0,8%. Hospitais que a introduziram sem explicar o porquê nem definir quem marca não repetiram o resultado. Grau: consolidado para o efeito, com a ressalva de que depende de como é implantado.

## 5. Avaliar o mecanismo antes de adotar

1. **Força:** elimina, impede, detecta, alerta ou só documenta?
2. **Atrito:** quantos cliques, esperas, aprovações ou registros ele acrescenta?
3. **Contornabilidade:** a pessoa vai precisar burlar o mecanismo para fazer o trabalho real? Se sim, ele será abandonado. Esta é a principal causa de perda de continuidade.
4. **Novos modos de falha:** falso bloqueio, gargalo, dependência de um aprovador, excesso de alertas.
5. **Proporção:** probabilidade × impacto × dificuldade de detectar × dificuldade de recuperar. Risco pequeno e reversível pede só sinalização.
6. **Compreensão:** quem usa consegue dizer por que o mecanismo existe? Mecanismo sem porquê é lido como obstáculo.

## 6. O que não é prevenção

Mandar um e-mail, treinar de novo, criar mais uma reunião, somar uma aprovação, criar um painel sem dono, cobrar mais. Podem ajudar, mas não mudam o que permite o erro.

Pergunta de controle: estou pedindo que as pessoas tenham mais cuidado, ou estou tornando difícil errar?

## 7. Ficha de Prevenção de Erro

```
ERRO A PREVENIR: [descrição observável]
QUEM ERRA: [ ] cliente  [ ] instalador  [ ] equipe
MODO DE FALHA: [da lista da seção 2]
ONDE NASCE: [ponto de criação, não o de descoberta]
CUSTO SE PASSAR ADIANTE:
DEPENDÊNCIA HUMANA ATUAL: [o que alguém precisa lembrar, perceber ou interpretar]
MECANISMO:
NÍVEL NA HIERARQUIA: [1 a 9]
POR QUE EXISTE (frase que quem usa consegue repetir):
ATRITO E CONTORNO: [o que ele custa; como seria burlado]
COMO O ERRO FICA VISÍVEL E PARA QUEM:
TESTE DO MECANISMO: [com quem, quando, resultado esperado]
```

Tipos clássicos de Shingo: por contato (forma, encaixe), por número fixo (contagem de passos ou peças), por sequência (ordem obrigatória).
