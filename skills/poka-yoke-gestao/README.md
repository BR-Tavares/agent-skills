# Poka-Yoke Gestão

Skill para aplicar princípios de **mistake-proofing** à gestão de processos e equipes.

O objetivo é reduzir falhas recorrentes por meio do desenho do sistema de trabalho, em vez de depender exclusivamente de memória, atenção, treinamento ou cobrança.

## Casos de uso

- falhas recorrentes;
- tarefas esquecidas;
- handoffs;
- responsabilidades ambíguas;
- aprovações;
- retrabalho;
- atrasos descobertos tardiamente;
- dependência de pessoas-chave;
- exceções;
- escalonamento;
- gestão de capacidade;
- processos excessivamente manuais.

## Princípio

> Quando um erro previsível continua ocorrendo, procure primeiro o que no processo torna esse erro possível.

## Estrutura

```text
poka-yoke-gestao/
├── SKILL.md
├── references/
│   └── patterns.md
└── README.md
```

## Escopo

Esta skill é voltada a **gestão, operações e trabalho em equipe**.

Para revisão técnica de código, segurança, CI/CD, arquitetura de software ou guardrails de agentes, utilize ferramentas especializadas para engenharia de software.

## Uso com outras skills

Ela funciona especialmente bem em composição com skills de:

```text
mentor-gestao
→ identifica o problema

analise-causal
→ identifica mecanismos causais

poka-yoke-gestao
→ redesenha o processo

gestao-de-execucao
→ acompanha implementação e resultado
```

Também pode atuar após retrospectivas ou análises de incidentes para transformar aprendizados em mecanismos preventivos.
