# Changelog

As alterações relevantes seguem o padrão Keep a Changelog.

## [Unreleased]

### Added

- Implementação completa da **v1.0.0 do App de Missões (PWA no Firebase)** publicada em `https://tarefas-build.web.app` e no repositório dedicado `BR-Tavares/Tarefas-build` (`C:\Users\andre\Tarefas-build`), com Hosting, Authentication (Google), Cloud Firestore (`southamerica-east1`), `firestore.rules` testadas no Emulator e 6 Cloud Functions v2 de notificações push (FCM).
- Documentação completa de operação, handoff e uso em `skills/Toyota_para_desenvolvimento/`: `HANDOFF_E_OPERACAO.md` (manual de operação, arquitetura, segurança, manutenção e status dos 14 critérios de aceite), `guia_uso_gestor.md` e `guia_uso_responsavel.md`.
- Skill `Toyota_para_desenvolvimento` (`toyota-para-desenvolvimento`, consolidada a partir de `mentor-gestao-v2`): consultoria do protótipo ao mercado em 6 checkpoints com Seletor de Escopo, 12 referências completas em `references/` (`checkpoints.md`, `prevencao-de-erro.md`, `previsibilidade.md`, etc.) e templates `template_solicitacao_atividade.md` e `proposta_solicitacao_pesquisa_testes.md`.
- Suporte ao diretório de runtime oficial do OpenAI Codex CLI (`~/.codex/skills`) no instalador local.
- Skills poka-yoke-gestao e processos-previsiveis adicionadas ao catálogo compartilhado com suas referências.
- Skill `xstate-eda-plug-and-play` para criar motores e fontes substituíveis com XState v5 e EDA, compartilhada entre computadores e ferramentas de IA.
- Walkthrough com objetivo, plano de implementação e verificações da entrega.

### Changed

- `skills/Toyota_para_desenvolvimento/especificacao_app_missoes.md` atualizada para a versão **1.2**, registrando as decisões fechadas no nivelamento e na implementação (edição de links `Docs` e `Pasta` por ambos os papéis mantendo escritor único via `linksEm`, projeto `tarefas-build` no plano Blaze e pré-carga de feriados 2026/2027).

- Skill `mentor_gestao` unificada com a revisão `gestao-v0.2.1` e foco explícito no líder da equipe; `Readme.txt` substituído por `README.md`.
- Atualização profunda da skill `mentor_gestao` (`SKILL.md` e referências: `ferramentas.md`, `fontes.md`, `mapa-ferramentas.md`, `perspectivas.md`, `premissas.md`, `toyota.md`).
- Arquitetura migrada para modelo **Local-First (Zero Latência)**: a pasta local `skills/` é a fonte da verdade espelhada via NTFS Junctions para os 3 CLIs locais (Codex, Claude Code e Antigravity), eliminando a dependência do GitHub durante a execução e instalação.
- Script `install.ps1` atualizado para mapear nativamente o runtime do OpenAI Codex CLI (`~/.codex/skills`), além de Claude Code (`~/.claude/skills`), Gemini/Antigravity (`~/.gemini/antigravity/skills`) e fallback universal (`~/.agents/skills`), com suporte automático a múltiplos aliases (nome de pasta e nome canônico no YAML).
- Script `sync.ps1` reconfigurado para atuar exclusivamente como utilitário de cofre/backup remoto para o repositório GitHub.
- Documentação do `README.md` reestruturada com foco exclusivo nos 3 CLIs locais e backup seguro no GitHub.

## [gestao-v0.2.1] - 2026-09-30

### Fixed

- Restabelecida a aplicação autônoma de previsibilidade, poka-yoke, jidoka e andon na mentor, sem exigir outras skills, Blueprint ou Protocolo de execução.
- Encaminhamento às especialidades definido por profundidade e entregável, preservando os conceitos compartilhados na mentoria.

### Added

- Obras e conceitos norteadores explícitos no SKILL.md da mentor, com autores, vínculos de aplicação e limites.
- Exemplos de intervenção localizada e distinção entre clareza, prevenção, detecção e lembrete nas referências de delegação e perspectivas.

## [gestao-v0.2.0] - 2026-09-30

### Added

- Contratos de Percepção do Cliente externa, diagnóstico de gestão e planejamento para o mentor do líder e consultor empresarial.
- Blueprint operacional autossuficiente e modelo de Protocolo de execução integrado com mecanismos contra falhas, exceções e validação.
- Registro de revisão por cenários, verificações estruturais e limites no walkthrough.

### Changed

- Descriptions e métodos das três skills de gestão para seleção por responsabilidade e entregável, com passagem entre conversas sem sequência obrigatória.
- Referências consolidadas para reduzir redundância; arquivos principais 54,7% menores em caracteres.
- Mentor preservado como apoio ao líder na gestão da empresa, com saída adequada ao pedido: diagnóstico, orientação ou plano.

### Fixed

- Dependência de modelos de outra skill para especificar tarefas e referências a nomes de skills inexistentes no README de poka-yoke.
- Regras absolutas sobre ênfase, estados de espera, causalidade e custo cognitivo, substituídas por análise contextual e evidências.
- Distinção entre Blueprint desenhado e prova de conceito executada, e entre protocolo proposto e funcionamento validado.

### Removed

- Catálogos e especificações operacionais duplicados nos entrypoints e referências.

Tag gestao-v0.1.0 preserva a base anterior (e63ea55); gestao-v0.2.0 identifica esta revisão das skills de gestão, sem versionar as demais skills.
