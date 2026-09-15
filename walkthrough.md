# Objetivo da sessão e plano de implementação

Disponibilizar a skill `xstate-eda-plug-and-play` no repositório privado central de skills para instalação e atualização em outros computadores e ferramentas de IA.

Plano: ler as orientações existentes, adicionar `skills/xstate-eda-plug-and-play/SKILL.md`, tornar as referências portáveis, atualizar o catálogo e instruções, validar o pacote e publicar por Git.

## Entregas

- Skill com orientação para contratos canônicos, statecharts XState v5, serviços invocados, emissão nativa, adaptadores de tópicos e testes de aceitação.
- Referências a documentação oficial e caminhos relativos no código XState, sem dependência dos diretórios do computador de origem.
- Catálogo e instruções de atualização no README. Novas skills exigem executar o instalador depois de baixar a atualização para criar a junção.
- Histórico em `CHANGELOG.md`. Os scripts de instalação e sincronização foram preservados.

## Verificação

O validador oficial `quick_validate.py` retornou `Skill is valid!`. Conferidos estrutura de diretório, ausência de caminhos absolutos/placeholders e diff na branch `main`. PyYAML foi instalado somente numa pasta temporária fora do repositório para executar a validação. O instalador não foi executado neste computador, pois configura vínculos de todas as skills em três ferramentas. A skill documenta testes para futuras implementações; esta entrega não modifica nem homologa motores de cálculo.
