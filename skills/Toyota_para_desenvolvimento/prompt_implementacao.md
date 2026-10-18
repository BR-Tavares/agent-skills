# Prompt para a conversa de implementação

Copie o bloco abaixo e use-o para abrir uma nova conversa.

---

```
# Objetivo desta conversa

Implementar a v1 do app de missões (PWA), seguindo a especificação já
fechada. Você é o desenvolvedor sênior; eu sou o especialista demandante.

## Fontes (leia inteiras antes de qualquer coisa)

Repositório `br-tavares/agent-skills`, branch `claude/happy-carson-6smukz`,
pasta `skills/Toyota_para_desenvolvimento/`:
1. `especificacao_app_missoes.md`: o que construir e como. É o seu guia principal.
2. `protocolo_missoes.md` (v2.7): as regras de uso e o porquê de cada campo.
   Em caso de conflito, o protocolo vence.
3. `analise.js`: o módulo de análise do gestor, já escrito e testado.
   Reaproveite sem reescrever.
4. `tela_missao_funcionario.svg`: o esboço da tela do responsável.

## Regras que não mudam

- Um só link do PWA. O papel (gestor ou responsável) vem do cadastro em
  `config.json`, no Drive do gestor.
- Dados em JSON no Google Drive, um escritor por arquivo
  (`gestor.json` e `responsavel.json`). A situação da missão é calculada,
  nunca gravada.
- A tela do responsável não mostra sinais, alertas, histórico nem contagem.
  O registro do dia é uma linha: data, atividade com auto-complete e um ícone.
- Sem servidor próprio e sem banco de dados.
- Não invente mecanismos que não estejam na especificação ou no protocolo,
  e não aumente o registro diário do responsável.
  Ideias novas vão para o backlog, não para o código.

## Como conduzir

1. **Comece pelo nivelamento**, uma pergunta por vez, com a sua recomendação.
   Resolva primeiro as questões em aberto da seção 14 da especificação:
   hospedagem, projeto no Google Cloud, criação do Docs e feriados.
   Também quero decidir onde fica o código do app (repositório novo ou
   pasta neste) e se uso conta Google pessoal ou Google Workspace.
2. **Proponha o plano de entregas em fatias pequenas e usáveis.** Sugestão:
   - (a) esqueleto do PWA, login e tela Equipe;
   - (b) criar e emitir missão (pasta e arquivos no Drive);
   - (c) folha do responsável com o registro do dia funcionando sem conexão;
   - (d) pendências, resposta e alteração;
   - (e) lista, painel e linha do tempo do gestor;
   - (f) entrega, revisão e encerramento.
3. **A cada fatia:** código, testes automatizados do que for lógica, e um
   roteiro curto para eu testar no celular. Faça commit e push. Valide
   cada fatia pelos critérios de aceite da seção 12 da especificação.
4. **O que só eu posso fazer** (criar o projeto no Google Cloud, cadastrar os
   usuários de teste, publicar o link): me dê o passo a passo, com as telas
   e os campos exatos, no momento em que for necessário.
5. **No fim:** atualize a especificação com o que mudou na implementação e
   gere um guia de uso de uma página para o gestor e outro para o
   responsável.

## Entregáveis

- O PWA funcionando no link publicado, com os critérios de aceite 1 a 12 atendidos.
- O código com testes, no repositório combinado.
- O passo a passo de administração: Google Cloud, inclusão e remoção de usuários.
- A especificação atualizada e os dois guias de uso.
```
