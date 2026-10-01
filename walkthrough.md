# Objetivo do chat e plano de implementação — revisão das skills de gestão

## Objetivo e escopo

Melhorar eficiência, coerência e complementaridade de mentor-gestao-recursos, processos-previsiveis e poka-yoke-gestao, preservando o mentor como apoio ao líder na gestão de equipes, projetos e empresas. A Percepção do Cliente permanece externa à skill e é construída com o usuário. Diagnóstico, orientação e planejamento dependem do pedido; não se impõe Plano como saída única.

Plano executado: preservar base em tag; revisar descriptions e contratos; reduzir repetição nos métodos e referências; explicitar passagem entre conversas por artefatos; validar estrutura e espelhamento; registrar em Git e criar nova tag. Fora do escopo: outras skills, instalador, dados pessoais do cliente, execução de processos de empresa e publicação remota.

## Entregas

- Mentor com contexto externo de Percepção do Cliente, distinção entre líder e unidade analisada, mentoria e consultoria, diagnóstico de gestão e planejamento estratégico ou de processos.
- Processos previsíveis com Blueprint operacional ou especificação localizada, sem exigir skill anterior nem prometer uma PoC validada pelo desenho.
- Poka-yoke com Protocolo de execução integrado, rastreabilidade de falhas e tratamento proporcional de gates, desvios, exceções e recuperação.
- Referências operacionais consolidadas: modelos autossuficientes, catálogo compacto de prevenção e redução de afirmações absolutas.
- Fundamentos históricos preservados; premissas marcadas para leitura crítica, sem definir características do cliente atual.
- Complementaridade incorporada a cada SKILL.md e descriptions. Não foi criado AGENTS.md de seleção nem configuração global.

## Revisão de cenários — análise documental

| Pedido de referência | Entrada e atuação previstas | Critério revisto |
|---|---|---|
| Entender minha atuação como líder | Mentor consulta a Percepção externa e constrói compreensão | Não presume crença nem diagnóstico clínico |
| Diagnosticar a situação da empresa | Mentor examina contexto, relatos e evidências organizacionais | Não reduz a empresa aos hábitos do líder nem força plano |
| Planejar a estratégia da empresa | Mentor compara alternativas, explicita escolhas e hipóteses | Não inventa dados de mercado nem decide pelo usuário |
| Desenhar produção a partir de plano escolhido | Processos previsíveis detalha o Blueprint | Não implementa ou declara PoC validada sem execução |
| Revisar instrução de fornecedor | Processos previsíveis entrega especificação localizada | Não exige diagnóstico empresarial ou todas as skills |
| Refinar processo sem incidente prévio | Poka-yoke trata falhas potenciais e entrega protocolo | Não inventa frequência observada |
| Execução bloqueada por informação ausente | Protocolo indica condição, resposta e decisão pendente | Não completa responsável ou limiar crítico fictício |
| Percepção ausente ou vários arquivos candidatos | Mentor usa contexto disponível e esclarece o necessário | Não bloqueia entrega independente nem escolhe cliente silenciosamente |

Esta tabela é revisão de contratos por cenários, não execução independente com outro agente. A eficácia conversacional precisa ser observada no uso real.

## Verificações

- Git inicial limpo e HEAD sincronizado com origin/main após fetch: e63ea55.
- Tag de base: gestao-v0.1.0. Branch: codex/revisao-skills-gestao. Nova versão: gestao-v0.2.0.
- Verificação estrutural com biblioteca padrão Python: nomes canônicos, formato escalar do cabeçalho utilizado, descriptions abaixo de 1024 caracteres, ausência de BOM e placeholders TODO, blocos de código fechados e referências locais existentes.
- Descriptions: 519, 505 e 515 caracteres. Entrypoints: 46.984 → 21.291 caracteres, redução de 54,7% (não é medição de tokens ou eficácia).
- Leitura pelas junções instaladas em .codex/skills: conteúdo idêntico ao repositório para as três skills. Nenhuma reinstalação necessária para essas junções.
- git diff --check sem erros de whitespace.
- O quick_validate.py oficial não executou: PyYAML ausente tanto no Python do sistema quanto no runtime consultado. A checagem alternativa valida o formato de cabeçalho usado, não é parser YAML geral nem validação comportamental.
- Não foram alterados arquivos de Percepção do cliente, scripts de instalação ou outras skills. Tags e commit desta revisão são locais.

---

# Histórico anterior

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
