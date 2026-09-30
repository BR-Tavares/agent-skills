# Objetivo da sessão e plano de implementação — publicação das skills

## Problema e contexto

O workspace contém as skills poka-yoke-gestao e processos-previsiveis, além de atualizações locais pendentes de mentor-gestao-recursos. O clone C:\Users\andre\agent-skills foi conferido contra origin/main; estava no mesmo commit, com quatro alterações locais relacionadas à skill de gestão.

## Objetivo do chat

Publicar as skills de gestão no catálogo skills/ do repositório BR-Tavares/agent-skills, criar uma tag de segurança antes das alterações e instalar as skills nos ambientes CLI do desktop pelo install.ps1.

## Metas do plano de implementação

1. Criar e publicar a tag pre-skills-update-2026-09-30 sobre o commit anterior às alterações.
2. Adicionar poka-yoke-gestao e processos-previsiveis, preservando as atualizações locais existentes de mentor-gestao-recursos.
3. Atualizar o catálogo e o changelog.
4. Publicar as alterações em main.
5. Executar install.ps1 e conferir as junções em Codex, Claude Code e Gemini/Antigravity.

## Entregas publicadas

- Duas skills adicionadas em skills/, com seus arquivos de instrução e referências.
- As quatro alterações locais existentes em mentor_gestao foram preservadas e publicadas.
- Catálogo README e changelog atualizados.
- Tag de segurança publicada: pre-skills-update-2026-09-30.

## Verificações

- sync.ps1 -Action push publicou o commit 594e794 em origin/main.
- A tag pre-skills-update-2026-09-30 aponta para o commit anterior à atualização, d174ad3.
- install.ps1 foi executado com sucesso.
- As junções das três skills foram confirmadas em Codex, Claude Code e Gemini/Antigravity; os nove vínculos apontam para C:\Users\andre\agent-skills\skills\ e cada SKILL.md está acessível.
- Os vínculos preexistentes de mentor-gestao-recursos já apontavam para o clone e foram mantidos.

---
# Objetivo da sessão e plano de implementação

Atualizar a skill `mentor_gestao` no repositório compartilhado de agent skills a partir do arquivo compactado `mentor-gestao-recursos.zip` do workspace, sincronizando os arquivos com as instalações locais em Claude Code, GPT/Codex e Antigravity/Gemini, bem como no repositório remoto GitHub (`https://github.com/BR-Tavares/agent-skills/tree/main/skills/mentor_gestao`).

Plano:
1. Extrair os arquivos atualizados do zip `mentor-gestao-recursos.zip`.
2. Sincronizar o repositório `agent-skills` com o remote `origin/main`.
3. Atualizar a pasta `skills/mentor_gestao/` com o `SKILL.md` atualizado e a nova referência `origens-toyota.md`.
4. Executar `install.ps1` e configurar as junções de diretório em `~/.agents/skills/`, `~/.claude/skills/` e `~/.gemini/antigravity/skills/` para suportar tanto `mentor_gestao` quanto `mentor-gestao-recursos`.
5. Atualizar catálogo no `README.md`, o `CHANGELOG.md` e o `walkthrough.md`.
6. Enviar as alterações para o repositório remoto via `git push origin main`.

## Entregas

- Estrutura completa da skill em `skills/mentor_gestao/`:
  - `SKILL.md` (metadados e diretrizes do mentor de gestão estratégica de recursos, atualizado para referenciar as origens históricas do STP).
  - Pasta `references/` com 8 documentos de referência metodológica: `casos.md`, `contexto-brasileiro.md`, `ferramentas.md`, `fontes.md`, `origens-toyota.md`, `perspectivas.md`, `premissas.md`, `toyota.md` (incluindo nova seção sobre o pensamento prático de Taiichi Ohno e referências a *Gestão do posto de trabalho* e *O nascimento do lean*).
  - `Readme.txt` descritivo.
- Instalações locais sincronizadas:
  - Codex / GPT: `~/.agents/skills/mentor_gestao` e `~/.agents/skills/mentor-gestao-recursos` apontando para o repositório.
  - Claude Code: `~/.claude/skills/mentor_gestao` e `~/.claude/skills/mentor-gestao-recursos` apontando para o repositório.
  - Antigravity: `~/.gemini/antigravity/skills/mentor_gestao` e `~/.gemini/antigravity/skills/mentor-gestao-recursos` apontando para o repositório.
- Atualização do catálogo no `README.md` e histórico no `CHANGELOG.md`.

## Verificação

- Conferida a existência e integridade de todos os 8 arquivos em `references/` e do `SKILL.md` atualizado.
- Verificadas as junções NTFS em todas as 3 plataformas de IA (Codex, Claude, Antigravity) confirmando o acesso imediato ao novo arquivo `origens-toyota.md`.
- Execução com sucesso de `install.ps1`.
- Publicação das alterações no branch `main` do GitHub via `git push origin main`.
