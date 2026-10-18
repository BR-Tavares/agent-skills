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
- **`mentor_gestao`** *(nome canônico: `mentor-gestao-recursos`)*: Mentoria do líder e consultoria em gestão de equipes, projetos e empresas, com Percepção do Cliente externa e entrega de diagnóstico, orientação ou plano conforme o pedido.
- **`Toyota_para_desenvolvimento`** *(nome canônico: `toyota-para-desenvolvimento`)*: Consultoria que leva produtos (hardware, SaaS, MBSE) do protótipo ao mercado em 6 checkpoints, com cliente preparado, prevenção de erro e programação de tarefas da equipe.
- **`poka-yoke-gestao`**: Refinamento de processos contra falhas relevantes, consolidado em Protocolo de execução com prevenção, detecção, resposta e recuperação proporcionais.
- **`processos-previsiveis`**: Desenho de processos e tarefas compreensíveis, com Blueprint operacional ou especificação localizada, critérios de aceite, tolerâncias e passagens explícitas.
- **`walkthrough-changelog-sync`**: Governança obrigatória de encerramento de tarefas com registro em `walkthrough.md` e sincronização no padrão *Keep a Changelog* em `CHANGELOG.md`.
- **`xstate-eda-plug-and-play`**: Arquitetura de motores e conectores substituíveis com XState v5 e Event-Driven Architecture (EDA).

---

## ⚡ Como Configurar o Espelhamento Local

### Complementaridade das skills de gestão

O encadeamento possível é **diagnóstico/orientação/plano → Blueprint operacional → Protocolo de execução**. Não é uma sequência obrigatória: um diagnóstico pode encerrar a consultoria, e um processo existente pode entrar diretamente no desenho ou refinamento.

Cada `SKILL.md` contém sua própria `description` de seleção e seu contrato de atuação. A complementaridade acompanha as skills instaladas; não depende do `AGENTS.md` deste repositório no workspace do cliente. Conversas separadas usam os artefatos fornecidos, sem presumir acesso ao histórico de outro chat.

A Percepção do Cliente é um arquivo externo no diretório de trabalho do usuário. Não se versionam dados pessoais do cliente neste repositório. Blueprint e Protocolo são desenhos; validação de funcionamento exige evidências de teste ou execução.

As versões desta revisão usam tags com escopo `gestao-v`: `gestao-v0.1.0` preserva a base anterior e `gestao-v0.2.0` identifica os contratos revisados. As demais skills e o instalador não fazem parte dessa revisão.

---

## Instalação das junções

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
