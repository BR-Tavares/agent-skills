# Changelog

As alterações relevantes seguem o padrão Keep a Changelog.

## [Unreleased]

### Added

- Skill `Toyota_para_desenvolvimento` (antes `mentor-gestao`, versão local): consultoria do protótipo ao mercado em 6 checkpoints. Faltam ainda as referências que o `SKILL.md` cita.
- Suporte ao diretório de runtime oficial do OpenAI Codex CLI (`~/.codex/skills`) no instalador local.
- Skills poka-yoke-gestao e processos-previsiveis adicionadas ao catálogo compartilhado com suas referências.
- Skill `xstate-eda-plug-and-play` para criar motores e fontes substituíveis com XState v5 e EDA, compartilhada entre computadores e ferramentas de IA.
- Walkthrough com objetivo, plano de implementação e verificações da entrega.

### Changed

- Skill `mentor_gestao` passa a ter foco de mentoria ao líder da equipe; `Readme.txt` substituído por `README.md`.
- Atualização profunda da skill `mentor_gestao` (`SKILL.md` e referências: `ferramentas.md`, `fontes.md`, `mapa-ferramentas.md`, `perspectivas.md`, `premissas.md`, `toyota.md`).
- Arquitetura migrada para modelo **Local-First (Zero Latência)**: a pasta local `skills/` é a fonte da verdade espelhada via NTFS Junctions para os 3 CLIs locais (Codex, Claude Code e Antigravity), eliminando a dependência do GitHub durante a execução e instalação.
- Script `install.ps1` atualizado para mapear nativamente o runtime do OpenAI Codex CLI (`~/.codex/skills`), além de Claude Code (`~/.claude/skills`), Gemini/Antigravity (`~/.gemini/antigravity/skills`) e fallback universal (`~/.agents/skills`), com suporte automático a múltiplos aliases (nome de pasta e nome canônico no YAML).
- Script `sync.ps1` reconfigurado para atuar exclusivamente como utilitário de cofre/backup remoto para o repositório GitHub.
- Documentação do `README.md` reestruturada com foco exclusivo nos 3 CLIs locais e backup seguro no GitHub.
