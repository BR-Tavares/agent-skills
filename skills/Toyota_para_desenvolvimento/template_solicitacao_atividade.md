# Solicitação de atividade — modelo de trabalho

> **Uso:** documento único para solicitar, executar, acompanhar e aceitar **uma atividade delimitada**. O solicitante define o trabalho e **escreve o checklist específico daquela atividade** antes de delegá-la; o responsável registra o andamento no próprio documento. Não é um procedimento universal nem um checklist genérico de qualidade.

## 1. Identificação

- **Código / título:** [AT-000 — verbo + objeto]
- **Projeto / frente:**
- **Solicitante:**
- **Responsável:**
- **Data da solicitação:**
- **Prazo ou limite de esforço:**
- **Situação:** [ ] Solicitada  [ ] Em execução  [ ] Impedida  [ ] Submetida  [ ] Aceita  [ ] Devolvida para ajuste

## 2. Solicitação — o trabalho encomendado

- **Problema / necessidade:** [duas ou três linhas; não é necessário explicar o projeto inteiro]
- **Resultado esperado:** [qual produto, informação ou decisão esta atividade deve viabilizar]
- **Escopo — inclui:**
  - ...
- **Fora do escopo:**
  - ...
- **Insumos disponíveis:** [dados, arquivos, links, exemplos, referências, acessos]
- **Entregável e formato:** [arquivo, relatório, tabela, código, análise etc.]
- **Local de entrega:** [URL ou caminho]

## 3. Balizas da atividade

**Deve acontecer:**
- ...
- ...

**Não pode acontecer:**
- ...
- ...

**Pode decidir sem consultar:** [escolhas delegadas ao executor]

**Deve interromper e comunicar se:** [falta de insumos, risco, desvio de escopo, bloqueio técnico etc.]

## 4. Checklist específico desta atividade

> **Preenchimento:** o solicitante substitui as perguntas abaixo por verificações **concretas deste trabalho**, organizadas na sequência de execução. O responsável responde **Sim** ou **Não** ao final de cada período de trabalho ou fase e registra evidência quando couber. **Não** significa que o requisito ainda não foi cumprido ou que existe um desvio; se houver impedimento, aplicar a baliza de interrupção. Não incluir itens irrelevantes nesta atividade.

| Fase | Verificação concreta da atividade | Sim | Não | Evidência / observação |
|---|---|:---:|:---:|---|
| 1. [Nome da fase] | [O produto parcial X foi obtido nas condições Y?] | ☐ | ☐ | |
| 1. [Nome da fase] | [A informação Z foi registrada no arquivo W?] | ☐ | ☐ | |
| 2. [Nome da fase] | [O teste A foi realizado nos casos B e C?] | ☐ | ☐ | |
| 2. [Nome da fase] | [Os resultados, inclusive falhas, foram documentados?] | ☐ | ☐ | |
| 3. [Nome da fase] | [O artefato final previsto foi produzido?] | ☐ | ☐ | |
| 3. [Nome da fase] | [As evidências estão acessíveis no local combinado?] | ☐ | ☐ | |

## 5. Critérios de aceite

> Diferentes do checklist de andamento: estabelecem as condições para o solicitante **aceitar a entrega** sem refazer todo o trabalho.

- **A1:** [critério observável relativo ao entregável]
- **A2:** [critério observável relativo à integridade ou documentação]
- **A3:** [se necessário, teste, comparação ou evidência requerida]

**Observação para pesquisa:** resultado negativo ou hipótese não confirmada pode ser aceito quando a investigação solicitada foi executada e documentada conforme os critérios definidos.

## 6. Registro de execução — preenchido pelo responsável

- **Data da última atualização:**
- **O que avançou desde a atualização anterior:**
- **Pendências / impedimentos:**
- **Arquivos e evidências:**
- **Decisão necessária do solicitante, se houver:**

## 7. Recebimento — preenchido pelo solicitante

- **Data da avaliação:**
- **Decisão:** [ ] Aceita  [ ] Devolvida para ajuste  [ ] Impedida / precisa de decisão
- **Itens a ajustar (indicar checklist ou critério de aceite):**
- **Próxima ação e responsável:**

---

## Exemplo de preenchimento: levantamento técnico delimitado

**Código / título:** AT-014 — Levantar bibliotecas para extrair tabelas de PDFs  
**Problema:** precisamos saber quais bibliotecas merecem um teste posterior; não delegar a decisão de arquitetura.  
**Entregável:** tabela `bibliotecas.csv` e nota de uma página `resultado.md`.  
**Insumos:** três fontes de consulta indicadas pelo solicitante e dois PDFs de referência.  
**Fora do escopo:** integrar bibliotecas, alterar os PDFs e decidir a arquitetura do produto.

**Balizas:** consultar as três fontes definidas; registrar a origem de cada candidata; não enviar PDFs a serviços externos; interromper em caso de licença incompatível ou exposição de dados.

| Fase | Verificação concreta desta atividade | Sim | Não | Evidência / observação |
|---|---|:---:|:---:|---|
| Busca | As três fontes indicadas foram consultadas? | ☑ | ☐ | Links no `resultado.md` |
| Busca | Todas as candidatas encontradas foram registradas, inclusive as descartadas? | ☑ | ☐ | `bibliotecas.csv` |
| Triagem | A licença de cada candidata foi identificada ou registrada como desconhecida? | ☐ | ☑ | Em andamento |
| Triagem | As candidatas foram comparadas pelos três critérios definidos na solicitação? | ☐ | ☑ | Ainda não iniciado |
| Entrega | A tabela e a nota foram disponibilizadas no local combinado? | ☐ | ☑ | Pendente |

**Aceite:** a tabela contém fonte, licença, compatibilidade declarada e restrições de cada candidata; a nota indica quais merecem teste e por quê. Não é obrigatório encontrar uma biblioteca adequada.

---

**Nota de projeto:** este é um formulário operacional **inspirado em princípios de padronização e controle documental**, não uma transcrição de formulário ISO 9001 nem uma declaração de conformidade com essa norma.
