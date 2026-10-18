---
name: poka-yoke-gestao
description: >-
  Refinar processos de trabalho contra falhas relevantes e consolidar um
  Protocolo de execução. Use para analisar um Blueprint ou processo existente
  quanto a omissões, sequência, informação, responsabilidade, exceções e
  dependência de memória ou atenção. Redesenhe etapas e incorpore mecanismos
  proporcionais de prevenção, detecção, interrupção e recuperação. Complementa
  mentor-gestao-recursos e processos-previsiveis, sem exigir seu uso prévio.
  Não use como abordagem principal para revisão de código ou estratégia.
---

# Poka-yoke de gestão: Protocolo de execução

## Propósito e entrada

Redesenhar processos para reduzir erros previsíveis, aproximar a detecção de sua origem e limitar consequências. Examine o que torna uma falha possível antes de recomendar mais atenção, cobrança ou treinamento.

Receba Blueprint operacional, processo existente ou episódio suficientemente descrito. Não exija incidente anterior para analisar risco. Distinga falha observada e potencial; não invente frequência, impacto ou causa.

O produto principal é o **Protocolo de execução**: processo refinado com ações, responsabilidades, condições de passagem e respostas a desvios incorporadas. Lista de riscos ou controles isolados não substitui o protocolo solicitado. Para análise localizada, entregue o refinamento necessário sem reconstruir o processo inteiro.

## Método

1. **Delimitar o resultado protegido.** Identifique objetivo, escopo, decisões vigentes, condições de operação e falhas relevantes. Estratégia ou objetivos ainda abertos voltam ao usuário; não são resolvidos por um gate.
2. **Localizar a origem da falha.** Percorra entrada, preparação, decisão, execução, passagem, verificação e saída conforme o processo real. Determine onde o erro se torna possível e onde seria percebido; esses pontos podem ser diferentes.
3. **Examinar dependência humana e risco.** Identifique o que depende de lembrar, interpretar, avisar, conferir ou conhecer exceção. Considere probabilidade, impacto, dificuldade de detecção e recuperação como critérios, sem multiplicar avaliações qualitativas para fabricar precisão.
4. **Comparar mecanismos.** Considere eliminação da condição, prevenção por desenho, restrição de opções, padrão seguro, detecção na origem, contenção e reversibilidade. Alerta, documentação e treinamento podem ajudar, mas não equivalem a impedir o erro. Consulte [references/patterns.md](references/patterns.md) para os padrões pertinentes.
5. **Avaliar efeitos colaterais.** Examine falsos bloqueios, filas, dependência de aprovadores, contornos, perda de autonomia e custo operacional. Prefira o mecanismo mais forte que seja proporcional e utilizável; pode ser melhor eliminar uma etapa que acrescentar aprovação.
6. **Integrar o refinamento.** Atualize etapas e passagens no Protocolo de execução. Para cada mecanismo crítico, explicite condição, ação, responsável, evidência e tratamento de exceção. Registre mudanças materiais e justificativa, preservando objetivos e decisões confirmadas.
7. **Definir ou realizar a validação solicitada.** Exercite o caminho normal e tente reproduzir ou simular a falha relevante. Verifique uma exceção legítima, quando aplicável, para detectar bloqueios indevidos. Diferencie proposta, revisão documental, simulação e execução real; declare o que continua sem validação.

## Critérios de intervenção

- Gate exige condição crítica: o que verifica, onde atua, quem pode liberar e o que acontece quando não pode passar. Nem todo risco exige bloqueio.
- Alerta precisa de destinatário e resposta. Dashboard sem ação associada é informação, não prevenção.
- Não confunda enviar, receber, aceitar e iniciar. Exija confirmação adicional somente quando o risco justificar seu custo.
- Exceções legítimas precisam de tratamento e autoridade explícitos. Não crie desvios silenciosos nem cadeia universal de aprovações.
- Atraso pode decorrer de capacidade ou prioridade inadequadas. Lembrete não corrige capacidade inexistente; exponha a decisão de gestão necessária.
- Não prometa “erro zero”. Verifique falha tratada, riscos residuais e novos modos de falha.
- O protocolo desenhado não autoriza ações externas nem alterações em produção. Implementação e teste dependem do escopo autorizado.

## Contrato do Protocolo de execução

Use [references/protocolo-execucao.md](references/protocolo-execucao.md) como modelo proporcional. O documento permite reconhecer:

- finalidade, alcance e fonte ou versão do processo refinado;
- sequência e responsabilidades, com insumos e resultados;
- condições de início, passagem e conclusão;
- mecanismos incorporados e como tratam cada falha;
- resposta a bloqueios, desvios, exceções e recuperação;
- decisões pendentes, riscos residuais e evidências de validação.

Não invente responsáveis, limites ou prazos para fechar campos. Propostas podem ser marcadas para decisão; condição crítica pendente impede declarar aquela parte pronta para execução.

## Complementaridade e passagem entre conversas

**mentor-gestao-recursos** conhece o líder, compreende a situação e apoia diagnóstico e escolhas. **processos-previsiveis** detalha o trabalho em Blueprint. **poka-yoke-gestao** refina sua resistência a falhas e consolida o Protocolo de execução.

A sequência é possível, não obrigatória. Use artefatos fornecidos; não presuma acesso ao histórico de outro chat. Exponha decisões de gestão ou especificações essenciais ausentes e avance nas partes independentes. Não refaça o diagnóstico nem carregue outras skills sem necessidade.

Para revisão técnica de código, segurança ou arquitetura de software, use competência especializada; esta skill trata do processo operacional e das pessoas que o executam.
