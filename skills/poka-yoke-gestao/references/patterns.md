# Padrões de Poka-Yoke para Processos e Equipes

Use este catálogo como referência durante a análise. Não aplique padrões mecanicamente.

## 1. Definition of Ready

Use quando atividades começam antes de terem condições mínimas para execução.

Estrutura:

```text
Uma atividade pode iniciar somente quando:
- objetivo conhecido;
- responsável definido;
- insumos disponíveis;
- dependências conhecidas;
- prazo ou prioridade definidos.
```

Risco: transformar a entrada em burocracia excessiva.

---

## 2. Definition of Done

Use quando "concluído" possui interpretações diferentes.

Estrutura:

```text
A atividade está concluída quando:
- resultado entregue;
- validação executada;
- registro atualizado;
- próximo responsável informado, se aplicável.
```

---

## 3. Handoff explícito

Use quando trabalho se perde entre pessoas ou departamentos.

Estados possíveis:

```text
preparado
→ enviado
→ recebido
→ aceito
→ iniciado
```

Para atividades críticas, não considere `enviado` equivalente a `recebido`.

---

## 4. Dono único

Use quando existe responsabilidade coletiva sem accountability clara.

Pergunta:

> Quem responde pelo resultado final?

Colaboração pode ser coletiva; accountability crítica deve ser explícita.

---

## 5. Backup de responsabilidade

Use para atividades que dependem de uma pessoa-chave.

Defina:

```text
titular
backup
gatilho de substituição
informações necessárias
acessos necessários
```

---

## 6. Escalonamento pré-definido

Use quando problemas ficam parados porque ninguém sabe quando envolver outra pessoa.

Formato:

```text
SE condição X
E permanecer por Y tempo
ENTÃO informar Z
E executar ação W.
```

---

## 7. Exceção visível

Use quando desvios ficam misturados ao fluxo normal.

Um estado excepcional deve ser:

- identificável;
- atribuído;
- datado;
- acompanhado;
- encerrado explicitamente.

---

## 8. Capacidade antes de compromisso

Use quando equipes assumem mais trabalho do que conseguem executar.

Antes de aceitar nova demanda, verificar:

```text
capacidade disponível
prioridade relativa
dependências
impacto sobre compromissos existentes
```

---

## 9. Limite de WIP

Use quando muitas atividades ficam parcialmente iniciadas.

Defina limite de trabalho simultâneo e política explícita para excedê-lo.

---

## 10. Fonte única da verdade

Use quando decisões são baseadas em versões diferentes da mesma informação.

Defina:

- onde está a informação oficial;
- quem pode alterá-la;
- como alterações ficam visíveis.

---

## 11. Pré-preenchimento seguro

Use quando informações podem ser derivadas com confiabilidade.

Pré-preencha para reduzir erros de digitação ou seleção, mas permita revisão quando apropriado.

---

## 12. Dupla verificação proporcional

Use somente para decisões de alto impacto.

Evite dupla checagem indiscriminada.

Ela faz sentido quando:

```text
impacto alto
+
baixa reversibilidade
+
erro difícil de detectar
```

---

## 13. Pequeno lote

Use quando uma falha poderia atingir muitas unidades.

Em vez de:

```text
mudança → organização inteira
```

prefira:

```text
mudança
→ pequeno grupo
→ observação
→ ajuste
→ expansão
```

---

## 14. Reversibilidade

Pergunte antes de mudanças relevantes:

> Como desfaremos isto se estivermos errados?

Quando possível, preserve:

- versão anterior;
- histórico;
- janela de revisão;
- mecanismo de rollback operacional.

---

## 15. Sinal antes do atraso

Não espere o resultado final falhar.

Defina indicadores antecedentes.

Exemplo:

```text
Entrega final: sexta-feira

Sinais antecedentes:
segunda — briefing validado
terça — insumos disponíveis
quarta — primeira versão
quinta — revisão
```

A ausência de um marco torna o risco visível antes do atraso final.

---

## 16. Checklist no ponto de uso

O checklist deve aparecer onde a ação ocorre.

Evite checklists:

- longos;
- genéricos;
- separados do trabalho;
- preenchidos apenas para compliance.

---

## 17. Escolha limitada

Quando poucas opções são válidas, não apresente dezenas.

Reduza espaço para interpretação.

---

## 18. Template estruturado

Use quando documentos ou solicitações frequentemente chegam incompletos.

Transforme conhecimento implícito em estrutura.

Um bom template:

- guia;
- restringe;
- torna ausência visível;
- reduz variação desnecessária.

---

## 19. Timeout operacional

Use para tarefas que podem permanecer indefinidamente em espera.

Defina:

```text
estado de espera
+
tempo máximo
+
ação após timeout
```

---

## 20. Circuit breaker gerencial

Use quando continuar executando pode ampliar significativamente uma falha.

Defina condição que interrompa temporariamente o processo.

Exemplo:

> Se a taxa de retrabalho ultrapassar determinado limite, interromper novas entradas até identificar a causa.

Use apenas quando a paralisação for proporcional ao risco.

---

# Anti-padrões

Evite tratar como poka-yoke:

## "Mandar um e-mail"

Comunicação não é necessariamente controle.

## "Treinar novamente"

Treinamento não elimina a possibilidade de erro.

## "Criar mais uma reunião"

A reunião pode detectar problemas, mas geralmente não previne sua criação.

## "Adicionar aprovação"

Aprovação indiscriminada gera filas e frequentemente vira ritual.

## "Criar mais um dashboard"

Informação sem responsabilidade e gatilho de ação não constitui mecanismo preventivo.

## "Cobrar mais"

Cobrança pode modificar comportamento temporariamente, mas não altera o processo que permite o erro.

---

# Teste final

Para qualquer solução proposta, responda:

1. Qual erro ela pretende evitar?
2. Em que ponto ela atua?
3. Ela previne ou apenas detecta?
4. Ainda depende de memória humana?
5. Pode ser contornada?
6. Que novo problema pode criar?
7. Como saberemos se funcionou?
8. Podemos testá-la em pequena escala?
