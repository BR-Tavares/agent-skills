# Prompt para a conversa de implementação

Antes de abrir a conversa, dê ao ambiente acesso ao Firebase (ver "Pré-requisito", abaixo). Depois, copie o bloco e use-o para abrir uma nova conversa.

## Pré-requisito: acesso ao Firebase no ambiente

O agente precisa do Firebase CLI autenticado para criar recursos e publicar.
1. No console do Google Cloud do projeto Firebase, crie uma **conta de serviço** com os papéis *Firebase Admin* e *Cloud Functions Admin*, e gere uma chave JSON.
2. Nas configurações do ambiente do Claude Code (menu do ambiente na barra de título da sessão → Editar), guarde o conteúdo da chave como segredo, na variável `FIREBASE_SERVICE_ACCOUNT`.
3. Libere na rede do ambiente os domínios `*.googleapis.com`, `*.firebaseio.com` e `firebase.google.com`.

Nunca cole a chave no chat.

---

```
# Objetivo desta conversa

Implementar a v1 do app de missões (PWA) no Firebase, seguindo a
especificação já fechada. Você é o desenvolvedor sênior; eu sou o
especialista demandante. O app pode virar produto para outras equipes
no futuro, então a estrutura precisa separar as equipes desde já.

## Fontes (leia inteiras antes de qualquer coisa)

Repositório `br-tavares/agent-skills`, branch `claude/happy-carson-6smukz`,
pasta `skills/Toyota_para_desenvolvimento/`:
1. `especificacao_app_missoes.md` (v1.1): o que construir e como, no Firebase.
   É o seu guia principal.
2. `protocolo_missoes.md` (v2.7): as regras de uso e o porquê de cada campo.
   Em caso de conflito, o protocolo vence.
3. `analise.js`: o módulo de análise do gestor, já escrito e testado.
   Reaproveite sem reescrever: ele roda no app do gestor e na Cloud Function.
4. `tela_missao_funcionario.svg`: o esboço da tela do responsável.

A chave da conta de serviço do Firebase está na variável de ambiente
`FIREBASE_SERVICE_ACCOUNT`. Se ela não estiver lá, pare e me avise.

## Regras que não mudam

- Firebase: Hosting, Authentication (Google), Firestore, Cloud Messaging
  e Cloud Functions, na região southamerica-east1.
- Um só link do PWA. O papel vem do cadastro na equipe
  (`equipes/{id}` e `membros/{email}`), não do endereço.
- Um escritor por documento, garantido por `firestore.rules`.
  A situação da missão é calculada, nunca gravada.
- A tela do responsável não mostra sinais, alertas, histórico nem contagem.
  O registro do dia é uma linha: data, atividade com auto-complete e um ícone.
  O responsável nunca recebe notificação de sinal.
- Não invente mecanismos que não estejam na especificação ou no protocolo,
  e não aumente o registro diário do responsável.
  Ideias novas vão para o backlog, não para o código.

## Como conduzir

1. **Comece pelo nivelamento**, uma pergunta por vez, com a sua recomendação.
   Resolva primeiro as questões em aberto da seção 14 da especificação:
   plano Blaze, projeto novo ou existente, Docs e feriados.
   Também quero decidir onde fica o código do app (repositório novo ou
   pasta neste).
2. **Proponha o plano de entregas em fatias pequenas e usáveis.** Sugestão:
   - (a) projeto, Hosting, login e tela Equipe, com `firestore.rules`
     e os testes das regras no Emulator;
   - (b) criar e emitir missão;
   - (c) folha do responsável, com o registro do dia funcionando sem conexão;
   - (d) pendências, resposta e alteração;
   - (e) lista, painel e linha do tempo do gestor, em tempo real;
   - (f) entrega, revisão e encerramento;
   - (g) notificações (FCM + Cloud Functions).
3. **A cada fatia:** código, testes automatizados das regras e da lógica,
   publicação no Hosting e um roteiro curto para eu testar no celular.
   Faça commit e push. Valide cada fatia pelos critérios de aceite da
   seção 12 da especificação.
4. **O que só eu posso fazer** (ativar o plano Blaze, autorizar o domínio,
   instalar o app no celular): me dê o passo a passo, com as telas
   e os campos exatos, no momento em que for necessário.
5. **No fim:** atualize a especificação com o que mudou na implementação e
   gere um guia de uso de uma página para o gestor e outro para o
   responsável.

## Entregáveis

- O PWA publicado no Firebase Hosting, com os critérios de aceite 1 a 14 atendidos.
- `firestore.rules` com testes no Emulator.
- O código, no repositório combinado.
- O passo a passo de administração: incluir e desativar pessoas, feriados.
- A especificação atualizada e os dois guias de uso.
```
