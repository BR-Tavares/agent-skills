---
name: xstate-eda-plug-and-play
description: Criar ou ajustar statecharts de motores e fontes plug and play com XState v5 e EDA, conectando comandos e conclusões por tópicos e contratos estáveis. Use para funcionalidades substituíveis e integração de motores externos; não para máquinas isoladas sem comunicação por eventos.
---

# XState v5 + EDA para motores plug and play

Crie funcionalidades que possam ser conectadas ou substituídas por registro/configuração, sem editar seus consumidores. EDA organiza comandos e fatos por eventos; XState controla o comportamento do ator; o barramento distribui mensagens. XState não fornece automaticamente broker, entrega durável ou descoberta de plugins.

## Fluxo operacional

`comando no tópico → evento no ator → trabalho invocado → resultado validado → emissão de conclusão → tópico → consumidor`

- Declare por funcionalidade: identidade/versão, factory registrada, assinaturas, eventos de entrada, publicações e schemas. Conecte o manifest por um carregador genérico; não execute código arbitrário descoberto numa pasta.
- Use tópicos canônicos de capacidade, como `clima/estado`, em vez de exigir o nome de um fornecedor no consumidor. Autorize produtores no registro. Quando houver fontes concorrentes, declare arbitragem; para troca durante execução, defina uma fronteira segura de ativação.
- Separe disponibilidade (`aguardando`) de resultado concluído (`calculado` da rodada X). Nomeie comandos como ações e conclusões como fatos.

## Statechart e adaptador

1. Modele `aguardando → executando → calculado`, com `falhou` e cancelamento quando necessário. Guarde rodada, entradas e resultado no `context`. Represente coordenação/ocupação em estados e guards, sem variáveis externas decidindo o ciclo.
2. Receba mensagens pelo adaptador: valide envelope/payload e encaminhe `actor.send({ type, ... })`. Proteja o ator contra reinício por comando duplicado ou recebido enquanto ocupado.
3. Execute consulta/processo externo com `invoke` e `fromPromise`, usando `input`, `signal`, `onDone` e `onError`. Aguarde término real e validação dos resultados; publicação aceita ou espera fixa não prova conclusão.
4. Atualize o contexto com `assign` e declare a saída com `emit(...)` na máquina. Registre tipos em `setup.types.emitted`. Não chame `emit()` ou `sendTo()` imperativamente dentro de uma função: são ações declarativas.
5. Conecte `actor.on('resultado_pronto', handler)` ao adaptador que publica no barramento. Instale listeners antes de `start()`; remova assinaturas e timers em `stop()`. Use `actor.subscribe()` para observar snapshots/erros, não para deduzir conclusão por uma espera.

Exemplo da ligação, adaptando nomes e tipos ao projeto:

```ts
// Na máquina, depois de atribuir o resultado ao contexto:
entry: emit(({ context }) => ({
  type: 'resultado_pronto',
  cycleId: context.cycleId,
  artifact: context.artifact
}))

// Fora da máquina, no adaptador de transporte:
const subscription = actor.on('resultado_pronto', event => {
  // Validar e registrar antes da entrega, conforme a garantia escolhida.
  transport.publish('motor/estado', event);
});
```

`emit` adia a notificação até o snapshot do ator estar atualizado. Isso melhora a ordem observável; não garante persistência ou processamento pelo consumidor. Ações customizadas com transporte externo são permitidas, mas prefira essa separação para publicação de conclusões.

## Contratos, arquivos e entrega

- Use envelope com `messageId`, `schemaVersion`, `processScope`, `correlationId`, produtor e horário. Preserve messageId em reentregas; correlação identifica a rodada. Isole escopos por caminho completo, incluindo o delimitador, sem aceitar prefixos parecidos.
- Use união discriminada por estado. Sucesso exige dados ou referência íntegra; falha exige causa. Valide datas, unidades, finitude e cardinalidade conforme o motor. Não aceite `pronto` sem o conteúdo obrigatório.
- Para resultados grandes, finalize arquivos em pasta por rodada/tentativa e manifesto com hashes antes da conclusão. Publique referência, não milhares de linhas. Consumidor verifica identidade e integridade antes de ler. Se usar pastas como transporte, publique marcador por renomeação atômica após finalizar resultados e controle deduplicação.
- Escolha a entrega pelo escopo: memória pode bastar numa PoC; recuperação exige eventos/entregas persistidos, confirmação após aceitação durável e consumidores idempotentes. Log não é confirmação. Isole falhas por consumidor e limite retries. Não prometa exatamente uma vez nem atomicidade entre snapshot XState, SQLite e subprocesso; reconcilie interrupções. Trabalho externo interrompido exige tentativa isolada ou recuperação explicitamente suportada pelo motor.

## Testes de aceitação

- No recebimento da emissão **e do tópico**, leia imediatamente `actor.getSnapshot()`: estado, contexto e correlação devem refletir a conclusão, sem espera artificial.
- Comando válido executa uma vez; duplicata, comando enquanto ocupado e evento de outra rodada/escopo não reiniciam nem concluem o trabalho atual.
- Sucesso sem dados/referência é rejeitado; falha do motor não publica calculado. Arquivos devem estar legíveis e íntegros no instante da conclusão.
- Substitua a fonte por fixture via registro/configuração sem editar consumidor ou núcleo. Adicione consumidor sem editar produtores.
- Se houver entrega durável, interrompa antes da entrega e antes da confirmação; reinicie e comprove recuperação sem efeito duplicado. Consumidor falho não bloqueia os demais.
- Verifique timers com relógio controlado e encerramento limpo. Execute integração com o motor real quando fizer parte da tarefa; fixtures não comprovam integração operacional.

## Evidência e portabilidade

Confirme os detalhes na versão XState v5 instalada e registre-a. Consulte a [documentação de emissão](https://stately.ai/docs/event-emitter) e de [atores invocados](https://stately.ai/docs/invoke), verificando a versão aplicável. Para investigar a ordem da emissão, examine `packages/core/src/actions/emit.ts`, `packages/core/src/createActor.ts` e `packages/core/test/emit.test.ts` numa cópia do repositório oficial XState. A skill é independente de caminhos locais, sistema operacional e ferramenta de IA; adapte transporte e diretórios ao ambiente.
