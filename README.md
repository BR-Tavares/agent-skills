# Agent Skills Multimodelo (Local-First)

Repositório centralizado de skills compartilhadas entre as ferramentas de IA de linha de comando (**Antigravity / Gemini**, **Claude Code** e **OpenAI Codex CLI**).

---

## 🎯 Arquitetura Local-First (Zero Latência)

O repositório funciona com o modelo **Local-First com Espelhamento por Junções NTFS**:
- Os arquivos dentro de `skills/` são a **única fonte da verdade**.
- O script `install.ps1` cria junções nativas do Windows (links simbólicos de diretório) apontando diretamente para as pastas de configuração dos 3 CLIs locais:
  - **Claude Code CLI**: `~/.claude/skills/`
  - **Antigravity / Gemini**: `~/.gemini/antigravity/skills/`
  - **OpenAI Codex CLI**: `~/.codex/skills/` (e compatibilidade universal em `~/.agents/skills/`)
- **Efeito imediato:** Qualquer alteração que você fizer em um `SKILL.md` ou arquivo de referência é lida instantaneamente pelas 3 IAs na próxima execução, **sem necessidade de compilar, baixar pacotes ou fazer push/pull no GitHub**.

---

## 📦 Skills Disponíveis no Catálogo

- **`analista-sistemas-senior`**: Condução de chats de análise de sistemas com especialista de domínio, fixação de goals e exploração de alternativas sem antecipação prematura de código.
- **`mentor_gestao`** *(alias: `mentor-gestao-recursos`)*: Mentoria em gestão estratégica de recursos pessoais e operacionais (tempo, energia, atenção, equipe), com 9 referências baseadas no Sistema Toyota de Produção (Ohno, Kaizen, Jidoka, Poka-Yoke) e cultura brasileira.
- **`poka-yoke-gestao`**: Aplicação de mecanismos à prova de erro ao desenho de processos operacionais e handoffs entre equipes, reduzindo a dependência de memória humana e retrabalho.
- **`processos-previsiveis`**: Desenho e auditoria de processos fundamentados em cognição preditiva e design universal para eliminar ambiguidade em delegações e passagens de bastão.
- **`walkthrough-changelog-sync`**: Governança obrigatória de encerramento de tarefas com registro em `walkthrough.md` e sincronização no padrão *Keep a Changelog* em `CHANGELOG.md`.
- **`xstate-eda-plug-and-play`**: Arquitetura de motores e conectores substituíveis com XState v5 e Event-Driven Architecture (EDA).

---

## ⚡ Como Configurar o Espelhamento Local

Abra o PowerShell neste diretório e execute uma única vez (ou sempre que adicionar uma nova pasta de skill):

```powershell
.\install.ps1
```

O script criará as junções locais automaticamente para todas as IAs instaladas na sua máquina, mapeando tanto o nome da pasta quanto eventuais nomes canônicos do YAML frontmatter.

---

## 💻 Uso nos CLIs

- **OpenAI Codex CLI**: O runtime do Codex lê diretamente a pasta local `~/.codex/skills/`. Ao rodar `codex`, todas as skills espelhadas estão ativas e disponíveis.
- **Claude Code CLI**: Lê nativamente as junções criadas em `~/.claude/skills/`.
- **Antigravity / Gemini**: Lê nativamente as junções criadas em `~/.gemini/antigravity/skills/`.

---

## 💾 GitHub como Backup e Cofre Remoto

O GitHub é utilizado apenas como **repositório seguro de backup e versionamento**:

- **Verificar se há commits para salvar:**
  ```powershell
  .\sync.ps1 -Action status
  ```
- **Fazer backup das alterações locais para o GitHub:**
  ```powershell
  .\sync.ps1 -Action push -Message "feat: novas referencias na skill de processos"
  ```
- **Trazer alterações de outra máquina:**
  ```powershell
  .\sync.ps1 -Action pull
  ```
