---
name: walkthrough-changelog-sync
description: Garante a inclusao obrigatoria do objetivo do chat e plano de implementacao em relatorios de walkthrough, alem de espelhar e sincronizar automaticamente as entregas no CHANGELOG.md do workspace ativo seguindo o padrao Keep a Changelog.
---

# Diretrizes de Documentação, Walkthrough e Sincronização de Changelog

Esta skill e diretriz estabelece o padrão obrigatório de encerramento de tarefas e relatórios de execução em qualquer ferramenta de IA (**Antigravity/Gemini**, **Claude Code** ou **Codex**).

---

## 1. Estrutura Obrigatória do Walkthrough (`walkthrough.md`)

Sempre que a IA estiver na fase de verificação, consolidação ou encerramento de tarefas e gerar ou atualizar o artifact ou relatório de `walkthrough.md`:

- **Objetivo do Chat e Plano de Implementação (Seção Inicial Obrigatória)**:
  O `walkthrough.md` DEVE iniciar obrigatoriamente com uma seção dedicada detalhando:
  1. **Problema e Contexto**: O que motivou a sessão, qual o problema de negócio ou desafio arquitetural abordado.
  2. **Objetivo do Chat / Goal**: Qual o produto final esperado e o escopo da intervenção acordado com o usuário.
  3. **Metas do Plano de Implementação**: Lista clara das etapas e entregas planejadas.

- **Resultados e Verificações**:
  Relatório técnico com o código alterado, testes automatizados executados, evidências de validação e builds.

---

## 2. Sincronização Automática com o `CHANGELOG.md` do Workspace

Ao concluir a tarefa e consolidar o `walkthrough.md`:

- **Espelhamento Obrigatório no Workspace**:
  A IA DEVE refletir e registrar automaticamente o sumário das alterações no arquivo `CHANGELOG.md` na raiz do workspace ativo (criando o arquivo caso ainda não exista).

- **Padrão Keep a Changelog**:
  - Seguir estritamente as convenções do [Keep a Changelog](https://keepachangelog.com/) e [Semantic Versioning](https://semver.org/).
  - Registrar o objetivo alcançado e organizar as entregas técnicas nas seções formais:
    - `Adicionado (Added)`: Para novos recursos, endpoints, componentes ou arquivos.
    - `Modificado (Changed)`: Para alterações em funcionalidades existentes ou refatorações.
    - `Corrigido (Fixed)`: Para correções de bugs, ajustes de sintaxe ou alinhamentos.
    - `Removido (Removed)`: Para recursos obsoletos ou código excluído.
  - Registrar sob a seção `[Unreleased]` caso nenhuma versão formal tenha sido especificada para o ciclo.

- **Versionamento no Git**:
  O `CHANGELOG.md` do workspace é a fonte primária de verdade do histórico de evolução do software e deve ser incluído nos commits junto com o código-fonte.
