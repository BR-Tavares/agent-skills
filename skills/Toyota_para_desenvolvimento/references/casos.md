# Casos ilustrativos

Leia cada caso por uma pergunta: que falha de uso ou de comunicação o método evitou, e o que equivale a isso no produto do usuário? Os casos ilustram; não são regra universal. Casos 1 a 3 vêm da experiência do usuário; 4 a 8 são externos, com fonte em `fontes.md`.

## Caso 1 — As 80 roscas (jidoka, TWI, premissa 27)

Numa instalação de irrigação, um ajudante recebeu demonstração do protocolo de rosqueamento dos canos, foi observado duas vezes e então trabalhou sozinho enquanto o responsável técnico cuidava da hidráulica. Ao ligar o sistema, 80 roscas estavam danificadas ao longo da plantação.

**Leitura:** o problema central não foi o erro do ajudante, mas o tempo entre o primeiro erro e sua descoberta. O dano se acumulou porque o processo não revelava o defeito. A pessoa atuava numa condição que nunca havia enfrentado.
**Contramedidas possíveis:** verificação da primeira peça e amostragem crescente; teste de pressão por trecho logo após as primeiras conexões (jidoka); gabarito ou marcação visual de rosca correta (poka-yoke); andon combinado para dúvidas; repetir a etapa de teste do TWI sempre que a condição for nova.

## Caso 2 — Pluviômetros em triplicata (poka-yoke da credibilidade, premissas 22 e 27)

Um sistema de alertas de chuva usa três pluviômetros com três coletores em vez de um, porque o alerta gerado por um único instrumento não é crível o bastante para quem vai agir com base nele.

**Leitura:** o critério de qualidade está embutido no produto. A redundância não pede que ninguém confie no fabricante: o próprio produto demonstra consistência e revela quando um instrumento diverge. É a solução mais garantida para ganhar credibilidade no início, não necessariamente a mais econômica para sempre; otimizações vêm depois, por kaizen.

## Caso 3 — Coerência vivida em um lugar e não nos outros (premissas 24, 26 e 23)

Um profissional altamente qualificado, com vocação clara (testemunhar a abundância e a coerência dos sistemas vivos), vive essa coerência plenamente no próprio jardim, mas encontra conformismo e travamento no trabalho com outras pessoas. Compensa com jornadas extremas por anos e cai em tarefas falsas, compromissos incompletos e mudanças de prioridade. Sua ideia correta (por exemplo, recuperar pastagem para infiltração de água, ou plantar sem máquinas) é rejeitada em reuniões apesar da autoridade técnica.

**Leitura:** o problema não é falta de propósito nem de recurso. É a passagem da coerência pelas pessoas (premissa 23), agravada pela lucidez que convoca para todas as frentes (premissa 26) e pela falta de folga (premissa 22). No lugar onde ele é o único agente, a coerência se executa; onde depende de outros, perde-se.
**Direções:** usar o lugar de coerência como padrão de referência; transformar convicção em protocolo e produto que provem o critério por si (casos 1 e 2); escolher poucas frentes; tratar a jornada extrema como risco, não como virtude; diante do conformismo, mostrar resultado medido em vez de argumentar.

## Caso 4 — NUMMI: as mesmas pessoas em outro sistema

A fábrica da GM em Fremont fechou em 1982, com falta ao trabalho tão alta que a linha às vezes não partia e defeitos consertados só no fim. Reabriu em 1984 como NUMMI, sob o sistema Toyota, e mais de 85% da equipe inicial vinha dos demitidos de Fremont. Os Corollas feitos ali tiveram número de defeitos por 100 veículos semelhante ao dos feitos no Japão.

**Leitura:** o atrito com a equipe estava no sistema, não nas pessoas. Mudaram a qualidade embutida no processo, o direito de parar a linha e a garantia de emprego. Antes de concluir que uma equipe não dá continuidade, verifique o que o sistema torna fácil e o que ele pune.

## Caso 5 — Boeing 737: produto complexo feito por especialistas

A Boeing trabalhou com a Toyota de Kentucky e a Universidade de Kentucky a partir de 2000. Em Renton, a montagem final do 737 caiu de 23 para 11 dias entre o fim de 1999 e 2005, e o estoque em processo caiu 55%. As mudanças: linha em movimento, kits de peças e ferramentas entregues no ponto de uso, trabalho padronizado, controle visual e o direito de o mecânico parar a linha.

**Leitura:** o kit no ponto de uso é uma tarefa que chega com tudo de que precisa, e evita a falha de comunicação "faltou a peça, faltou a informação". O gestor passa a ensinar em vez de controlar. Vale para produto de baixo volume e alta complexidade.

## Caso 6 — Desenvolvimento de produto na Toyota: divisão entre especialistas

O engenheiro-chefe é a voz do cliente e responde pelo produto inteiro, do conceito à produção. Os especialistas aprofundam uma função cada um, e os gerentes funcionais desenvolvem essas pessoas. Uma sala com quadros visuais (obeya) alinha o time, uma folha A3 registra cada problema, e listas de verificação guardam o que já foi aprendido (Morgan e Liker, 2006).

**Leitura:** com vários protótipos, o criador é o engenheiro-chefe: guarda a voz do cliente e a visão do todo, e não executa cada tarefa. Cada especialista recebe uma função com critério de aceite. O quadro visível substitui a reunião que reconstrói o andamento de memória. Ver `previsibilidade.md`, seção 8.

## Caso 7 — Intel e o Copy Exactly!

A Intel replica uma fábrica que funciona em todos os níveis: configuração de equipamentos, pureza dos químicos, instalações e conexões. É um método próprio da Intel; não há aqui fonte de que ela tenha adotado o método Toyota. O caso entra como exemplo de trabalho padronizado.

**Leitura:** ao passar de um protótipo para várias unidades ou instalações, copie exatamente a condição que funcionou antes de melhorar qualquer coisa. Cada variação não declarada entre instalações é uma falha de uso esperando o cliente.

## Caso 8 — O automóvel e o cliente preparado

O automóvel só funciona como produto porque o cliente chega preparado e cercado de apoio: carteira, seguro, estradas, combustível padronizado, sinais de trânsito e fiscalização. Mesmo assim, o uso do veículo mata milhares de pessoas por ano. O caso veio de um mentor do usuário, com o conselho: é melhor preparar o produto para o cliente que já sabe do que precisa, e procurar esse cliente, do que convencer quem não está pronto.

**Leitura:** para cada protótipo, liste o que equivale à carteira, à estrada e à sinalização. O que couber no produto vira orientação embutida. O que não couber define o cliente a procurar: o que já tem essas condições.

## Caso 9 — A lista de segurança cirúrgica

A lista da OMS (2008) tem 19 itens em três pausas: antes da anestesia, antes da incisão e antes de o paciente sair da sala. No estudo de 2009 em oito hospitais, as complicações caíram de 11,0% para 7,0% e as mortes de 1,5% para 0,8%. Hospitais que a adotaram sem explicar o porquê nem definir quem marca os itens não repetiram o resultado.

**Leitura:** o checklist funciona em pontos de pausa, com poucos itens e com o porquê compreendido. Imposto como regra, vira ritual. É a mesma razão pela qual regra sem compreensão não se mantém na equipe.
