# Orientação de Governança: Walkthrough com Objetivo e Changelog Automático

Documento de referência para inclusão em arquivos de regras de agentes (`GEMINI.md`, `CLAUDE.md`, `AGENTS.md` ou `.agent/rules/`).

---

## 1. Estrutura Obrigatória do Walkthrough (`walkthrough.md`)
Sempre que estiver na fase de verificação ou encerramento de tarefas e gerar ou atualizar o artifact `walkthrough.md`:
- **Objetivo do Chat e Plano de Implementação**: O `walkthrough.md` DEVE iniciar obrigatoriamente com uma seção dedicada detalhando o **Objetivo da Sessão / Chat** e as metas definidas no **Plano de Implementação** (problema abordado, contexto de negócio/arquitetura e o escopo executado).
- **Resultados e Verificações**: Relatório de código alterado, testes executados e evidências de validação.

---

## 2. Sincronização Automática com o `CHANGELOG.md` do Workspace
Sempre que gerar ou atualizar o `walkthrough.md` ao concluir uma tarefa:
- **Espelhamento Obrigatório**: Você DEVE refletir e registrar automaticamente as alterações no arquivo `CHANGELOG.md` na raiz do workspace ativo.
- **Padrão Keep a Changelog**:
  - Seguir as convenções do [Keep a Changelog](https://keepachangelog.com/) e versionamento semântico.
  - Registrar o objetivo alcançado e organizar as entregas nas seções: `Adicionado (Added)`, `Modificado (Changed)`, `Corrigido (Fixed)`, `Removido (Removed)`.
  - Registrar sob a seção `[Unreleased]` caso nenhuma versão formal tenha sido especificada para o ciclo.
- **Versionamento no Git**: O `CHANGELOG.md` do workspace é a fonte primária de verdade do histórico de evolução do software e deve ser incluído nos commits junto com o código-fonte.
