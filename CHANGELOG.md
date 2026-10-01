# Changelog

As alterações relevantes seguem o padrão Keep a Changelog.

## [Unreleased]

### Added

- Suporte ao diretório de runtime oficial do OpenAI Codex CLI (`~/.codex/skills`) no instalador local.
- Skills poka-yoke-gestao e processos-previsiveis adicionadas ao catálogo compartilhado com suas referências.
- Skill `xstate-eda-plug-and-play` para criar motores e fontes substituíveis com XState v5 e EDA, compartilhada entre computadores e ferramentas de IA.
- Walkthrough com objetivo, plano de implementação e verificações da entrega.

### Changed

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
