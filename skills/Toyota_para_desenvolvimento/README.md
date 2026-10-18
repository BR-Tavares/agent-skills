# Toyota para Desenvolvimento

Skill de consultoria que leva produtos (hardware, SaaS, MBSE) **do protótipo ao mercado** e programa as tarefas da equipe, para reduzir falhas de uso e de comunicação.

## Método

Seis checkpoints, cada um com uma prova observável antes de seguir: cliente preparado, protótipo em campo, falhas previstas, orientação embutida, passagem para a equipe e mercado. Usa prevenção de erro (poka-yoke), checklists, Seletor de Escopo e Ficha de Tarefa.

## Estrutura e Referências da Skill

- `SKILL.md`: contrato principal da skill (`toyota-para-desenvolvimento`).
- `references/`: conjunto completo de 12 referências (`checkpoints.md`, `prevencao-de-erro.md`, `previsibilidade.md`, `ferramentas.md`, `casos.md`, `toyota.md`, `origens-toyota.md`, `premissas.md`, `perspectivas.md`, `mapa-ferramentas.md`, `contexto-brasileiro.md` e `fontes.md`).
- `template_solicitacao_atividade.md` e `proposta_solicitacao_pesquisa_testes.md`: templates operacionais para delegação de atividades, pesquisas e testes com checkpoints.

## Protocolo e Aplicativo de Missões (PWA no Firebase — v1.0.0)

- **URL de Produção:** `https://tarefas-build.web.app`
- **Repositório de Código do App:** `https://github.com/BR-Tavares/Tarefas-build` (`C:\Users\andre\Tarefas-build`)
- **Documentação e Módulos nesta pasta:**
  - `fundamentos_engenharia_missoes.md`: documento de orientação teórica e argumentativa (espaço semântico para humanos e modelos de IA — DoDAF, NASA/JPL, SpaceX, Mission Command, Toyota e Avaliador JEV).
  - `protocolo_missoes.md` (v2.7): regras de uso, princípios Lean/Toyota e justificativa de cada campo da folha.
  - `especificacao_app_missoes.md` (v1.2): especificação funcional e de arquitetura no Firebase, atualizada com as decisões da v1.
  - `analise.js`: módulo puro de análise do gestor, compartilhado entre o PWA e a Cloud Function agendada.
  - `tela_missao_funcionario.svg`: esboço visual da folha do responsável no celular.
  - `prompt_implementacao.md`: roteiro de implementação em fatias.
  - `HANDOFF_E_OPERACAO.md`: manual de operação, arquitetura, segurança, runbook de manutenção, handoff técnico e status dos 14 critérios de aceite.
  - `BACKLOG.md`: backlog vivo de melhorias identificadas pelo usuário no uso real (ex.: Estilo Black / modo escuro) e roteiro para a v1.1 e v2.0.
  - `guia_uso_gestor.md` e `guia_uso_responsavel.md`: guias rápidos de 1 página para uso diário.

## Skill irmã

Para mentoria ao líder da equipe e consultoria estratégica de gestão, use `mentor_gestao` (`mentor-gestao-recursos`).
