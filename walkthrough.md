# Objetivo da sessão e plano de implementação — migração para modelo Local-First (3 CLIs) e publicação de melhorias na skill mentor

## Problema e contexto

O usuário relatou perda de tempo e atrito ao tentar gerenciar as skills por fluxos de instalação remota baseados no GitHub. O foco necessário é 100% **Local-First**, usando a pasta local `skills/` como fonte única da verdade espelhada diretamente nas pastas dos 3 CLIs locais (Claude Code, Gemini/Antigravity e OpenAI Codex CLI), mantendo o GitHub estritamente como repositório de backup/cofre.

Adicionalmente, foram aplicadas atualizações e melhorias na skill `mentor_gestao` (`SKILL.md`, `ferramentas.md`, `fontes.md`, `mapa-ferramentas.md`, `perspectivas.md`, `premissas.md` e `toyota.md`), necessitando de verificação e publicação (push) no repositório remoto GitHub.

---

## Metas do plano de implementação

1. **Adequação do Instalador Local (`install.ps1`)**:
   - Integrar o diretório de runtime nativo do **OpenAI Codex CLI** (`~/.codex/skills`), além de Claude Code (`~/.claude/skills`), Gemini/Antigravity (`~/.gemini/antigravity/skills`) e fallback universal (`~/.agents/skills`).
   - Suportar múltiplos aliases automaticamente (nome da pasta física e atributo `name:` do YAML frontmatter de cada `SKILL.md`), garantindo que aliases como `mentor_gestao` e `mentor-gestao-recursos` funcionem simultaneamente sem ambiguidade.
   - Tornar o espelhamento 100% local via NTFS Junctions com zero dependência de rede ou Git.
2. **Refatoração do script de sincronização (`sync.ps1`)**:
   - Remover mensagens hardcoded e direcionar o script para sua real finalidade: cofre/backup remoto no GitHub (`push`, `pull`, `status`).
3. **Limpeza e Padronização Documental**:
   - Manter o repositório enxuto e operacional, sem scripts desnecessários de exportação para chat web.
   - Atualizar `README.md` documentando a arquitetura Local-First e o uso direto pelos 3 CLIs locais.
   - Atualizar `CHANGELOG.md` no padrão Keep a Changelog.
4. **Validação e Envio das Alterações da Skill Mentor ao GitHub**:
   - Verificar status do Git, registrar as entregas e realizar o push para `origin/main`.

---

## Entregas realizadas

1. **Atualizações na Skill `mentor_gestao`**:
   - `SKILL.md` e 6 referências metodológicas atualizadas (`ferramentas.md`, `fontes.md`, `mapa-ferramentas.md`, `perspectivas.md`, `premissas.md` e `toyota.md`).
2. **`install.ps1` Atualizado**:
   - Adicionada detecção e configuração do diretório `~/.codex/skills/`.
   - Implementado suporte resiliente a aliases duplos (`mentor_gestao` e `mentor-gestao-recursos`).
   - Execução validada: junções NTFS ativas e verificadas nos diretórios locais dos 3 CLIs.
3. **`sync.ps1` Otimizado**:
   - Simplificado para atuar estritamente como ferramenta de backup do repositório no GitHub.
4. **`README.md` e `CHANGELOG.md` Atualizados**:
   - Documentação alinhada exclusivamente aos 3 CLIs locais e ao modelo Local-First.

---

## Verificações e Testes

- **Execução do `install.ps1`**:
  - `~/.codex/skills` configurado com junções para todas as skills locais.
  - `~/.claude/skills`, `~/.gemini/antigravity/skills` e `~/.agents/skills` validados com junções ativas e íntegras.
- **Integridade dos links NTFS**:
  - Confirmado acesso imediato aos arquivos `SKILL.md` e referências a partir de qualquer uma das pastas dos CLIs locais.
- **Publicação no GitHub**:
  - `git push origin main` executado com sucesso sincronizando as alterações com o repositório remoto.
