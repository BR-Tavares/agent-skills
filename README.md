# Agent Skills Multimodelo

Repositório centralizado de skills compartilhadas entre diferentes ambientes e ferramentas de IA (**Antigravity/Gemini**, **Claude Code** e **Codex**).

## Skills Disponíveis

- **`analista-sistemas-senior`**: Condução de chats de análise de sistemas em conjunto com especialista de domínio, com verificação de goals e sem suposição prematura de implementação.
- **`walkthrough-changelog-sync`**: Inclusão obrigatória do objetivo da sessão e plano de implementação no `walkthrough.md`, espelhando e sincronizando automaticamente as entregas no `CHANGELOG.md` do workspace (Keep a Changelog).

## Diretrizes e Regras de Governança

- **`guidelines/walkthrough-e-changelog.md`**: Template em Markdown puro pronto para inclusão em `GEMINI.md`, `CLAUDE.md` ou `AGENTS.md`.

## Como Usar em um Novo Computador (Windows)

1. Clone o repositório:
```powershell
git clone https://github.com/BR-Tavares/agent-skills.git C:\Users\$env:USERNAME\agent-skills
```

2. Execute o instalador para vincular automaticamente a todas as IAs:
```powershell
cd C:\Users\$env:USERNAME\agent-skills
.\install.ps1
```

O script criará junções de diretório apontando as pastas `~/.agents/skills`, `~/.claude/skills` e `~/.gemini/antigravity/skills` para este repositório.

## Sincronização Diária

- **Para verificar atualizações:**
  ```powershell
  .\sync.ps1 -Action status
  ```
- **Para puxar alterações no outro computador:**
  ```powershell
  .\sync.ps1 -Action pull
  ```
- **Para subir melhorias feitas na skill:**
  ```powershell
  .\sync.ps1 -Action push -Message "feat: melhoria na regra X"
  ```
