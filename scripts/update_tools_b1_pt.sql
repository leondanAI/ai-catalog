-- ============================================================
-- B1: 10 tools — Portuguese (PT) — May 2026
-- amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin,
-- chatgpt, claude, grok, deepseek, cursor
-- ============================================================

-- 1. AMAZON Q DEVELOPER
UPDATE tools SET
  name        = 'Amazon Q Developer',
  url         = 'https://aws.amazon.com/q/developer/',
  domain      = 'aws.amazon.com',
  badge       = 'freemium',
  best_for    = 'Codificação IA integrada ao AWS, desenvolvimento em nuvem',
  description = $d1p$Amazon Q Developer é o assistente de codificação IA da AWS. O plugin de IDE está sendo substituído pelo Kiro (kiro.dev), um IDE agentivo orientado por especificações que será lançado em 2026.$d1p$,
  description_long = $dl1p$Amazon Q Developer é o assistente de codificação impulsionado por IA da AWS, profundamente integrado ao ecossistema da Amazon Web Services. Ele ajuda desenvolvedores a escrever, depurar e transformar código dentro de sua IDE, no Console AWS, no portal de documentação e em ferramentas de comunicação como Slack e Teams.

A partir de maio de 2026, o Amazon Q Developer está passando por uma transição significativa. O plugin de IDE está sendo retirado e substituído pelo Kiro, um novo IDE agentivo disponível em kiro.dev. Novos registros do plugin de IDE estão bloqueados a partir de 15 de maio de 2026, e o suporte completo ao plugin de IDE termina em 30 de abril de 2027. Todas as outras superfícies — Console AWS, documentação, aplicativo móvel e integrações Slack/Teams — continuam operando normalmente.

O Kiro, o IDE sucessor, introduz dois conceitos fundamentais. As Especificações convertem requisitos em linguagem natural em planos de implementação completos e código funcional, eliminando a lacuna entre especificações de produto e software pronto para produção. Os Hooks são automatizações orientadas por eventos que se acionam em ações do desenvolvedor, como salvar um arquivo ou fazer um commit, executando automaticamente tarefas como geração de testes, atualizações de documentação ou verificações de segurança.

Uma capacidade notável exclusiva do Kiro é o acesso ao Claude Opus 4.7, o modelo mais poderoso da Anthropic no momento do lançamento. Este modelo não está disponível por outros canais AWS, tornando o Kiro a única forma de acessá-lo dentro de um fluxo de trabalho nativo AWS.

O nível gratuito do Amazon Q Developer cobre desenvolvedores individuais com uma cota generosa para completações de código e interações de chat. Os níveis pagos escalam para equipes e empresas com análises de segurança adicionais, recursos de transformação e garantias de SLA.

Ideal para equipes de desenvolvimento focadas em AWS que desejam integração profunda com a nuvem, e para os primeiros adotantes prontos para migrar para o novo fluxo de trabalho do Kiro antes do fim do suporte ao plugin de IDE em abril de 2027.$dl1p$,
  pros = ARRAY[
    'Integração profunda com AWS — Console, documentação, Slack, Teams e aplicativo móvel suportados',
    'O Kiro introduz Especificações: de linguagem natural a implementação completa automaticamente',
    'Os Hooks automatizam tarefas repetitivas ao salvar arquivos e em eventos de git commit',
    'Acesso exclusivo ao Claude Opus 4.7 através da IDE Kiro',
    'Nível gratuito generoso para desenvolvedores individuais com completações de código e chat'
  ],
  cons = ARRAY[
    'Plugin de IDE sendo retirado — novos registros bloqueados em 15 de maio de 2026, suporte termina em abril de 2027',
    'Migração para o Kiro necessária — os fluxos de trabalho existentes do plugin de IDE precisarão ser refeitos',
    'Menos útil fora do ecossistema AWS em comparação ao GitHub Copilot ou Cursor',
    'Kiro é novo e não comprovado — riscos de adoção para equipes no início de 2026'
  ]
WHERE slug = 'amazon-q-developer' AND lang = 'pt';

-- 2. DALL-E 3
UPDATE tools SET
  name        = 'DALL-E 3 (Descontinuado)',
  url         = 'https://openai.com/dall-e-3',
  domain      = 'openai.com',
  badge       = 'freemium',
  best_for    = 'Geração de imagens IA (descontinuado — migrar para gpt-image-2)',
  description = $d2p$DALL-E 3 foi oficialmente descontinuado pela OpenAI em 12 de maio de 2026. Foi substituído pelo gpt-image-2, que alimenta o ChatGPT Images 2.0 com resolução nativa de 2K.$d2p$,
  description_long = $dl2p$DALL-E 3 foi o modelo de geração de imagens de terceira geração da OpenAI, amplamente usado através do ChatGPT e da API da OpenAI desde seu lançamento no final de 2023 até sua descontinuação oficial em 12 de maio de 2026. Ele introduziu a capacidade de renderizar texto preciso dentro de imagens e seguir prompts composicionais complexos com alta fidelidade — um salto significativo em relação ao DALL-E 2.

A OpenAI substituiu o DALL-E 3 pelo gpt-image-2, o modelo que agora alimenta o ChatGPT Images 2.0, lançado em 21 de abril de 2026. Desenvolvedores com integrações de API existentes usando DALL-E 3 devem migrar para o gpt-image-1 (um modelo estável de classe DALL-E 3 mantido para compatibilidade de API) ou gpt-image-2 (o atual carro-chefe). O endpoint de API do DALL-E 3 não está mais disponível.

O ChatGPT Images 2.0, alimentado pelo gpt-image-2, traz várias melhorias importantes. Saída em resolução nativa de 2K está disponível nos planos pagos. Até 8 imagens podem ser geradas por prompt no modo de raciocínio. A renderização de texto multilíngue é significativamente melhorada, com geração precisa de texto em japonês, coreano, chinês e hindi.

A geração padrão de imagens no ChatGPT agora é gratuita para todos os usuários. Assinantes pagos do ChatGPT (Plus, Pro) obtêm resolução mais alta, geração mais rápida e capacidades de geração em lote.

Para usuários que construíram fluxos de trabalho em torno do DALL-E 3 no ChatGPT, a transição para o ChatGPT Images 2.0 é transparente — a mesma interface, mas com o novo modelo por baixo. Usuários de API precisam atualizar explicitamente seu parâmetro de modelo para migrar.$dl2p$,
  pros = ARRAY[
    'O substituto ChatGPT Images 2.0 é gratuito para todos os usuários do ChatGPT',
    'gpt-image-2 oferece resolução nativa de 2K — uma grande melhoria em relação ao DALL-E 3',
    'Até 8 imagens por prompt no modo de raciocínio — geração em lote agora integrada',
    'Renderização de texto multilíngue melhorada para japonês, coreano, chinês e hindi'
  ],
  cons = ARRAY[
    'DALL-E 3 foi descontinuado em 12 de maio de 2026 — endpoint de API não está mais disponível',
    'Integrações de API existentes devem ser atualizadas para gpt-image-1 ou gpt-image-2',
    'A migração requer alterações de código para qualquer aplicativo que use o parâmetro de API DALL-E 3',
    'Recursos de alta resolução e em lote bloqueados atrás dos planos pagos do ChatGPT'
  ]
WHERE slug = 'dall-e-3' AND lang = 'pt';

-- 3. V0 BY VERCEL
UPDATE tools SET
  name        = 'V0 by Vercel',
  url         = 'https://v0.app',
  domain      = 'v0.app',
  badge       = 'freemium',
  best_for    = 'Desenvolvimento full-stack com IA, geração de UI, implantação',
  description = $d3p$V0 é a plataforma de desenvolvimento full-stack com IA da Vercel. Agora em v0.app após mudança de domínio, com integração Git, editor estilo VS Code e implantações em produção na infraestrutura Vercel.$d3p$,
  description_long = $dl3p$V0 é a plataforma de desenvolvimento de IA da Vercel, originalmente lançada como geradora de componentes de UI e agora evoluída para um ambiente de desenvolvimento full-stack completo. No início de 2026, o V0 migrou de v0.dev para v0.app, refletindo seu escopo ampliado além dos componentes individuais.

A atualização de fevereiro de 2026 foi transformadora. O V0 ganhou integração Git que permite criar um novo branch por sessão de chat e abrir pull requests diretamente contra o branch principal de qualquer repositório conectado — transformando conversas com IA em alterações de código rastreáveis em projetos existentes. O editor foi reconstruído com uma interface estilo VS Code com navegação em árvore de arquivos, realce de sintaxe e edição de múltiplos arquivos.

A conectividade de banco de dados foi expandida para incluir fontes de dados Snowflake e AWS ao lado do suporte existente ao Vercel Postgres. O recurso de sandbox de produção permite importar qualquer repositório do GitHub e executá-lo como um ambiente ao vivo e editável.

Fluxos de trabalho agentivos agora são implantáveis na infraestrutura da Vercel, permitindo que pipelines de automação geradas pelo V0 funcionem como funções serverless ou edge workers.

O preço mudou de um modelo mensal baseado em créditos para cobrança por tokens, onde o custo escala com a complexidade de cada geração. Prompts simples custam menos; mudanças arquiteturais em múltiplos arquivos custam mais. Um nível gratuito com tokens limitados permanece disponível.

Ideal para desenvolvedores frontend e full-stack que desejam ir de uma ideia a um aplicativo implantado com boilerplate mínimo, e para equipes que querem alterações de código assistidas por IA rastreadas em seu fluxo Git existente.$dl3p$,
  pros = ARRAY[
    'Integração Git: cria branches por chat e abre PRs contra main — se encaixa nos fluxos existentes',
    'Editor estilo VS Code com árvore de arquivos e edição de múltiplos arquivos — não apenas fragmentos de componentes',
    'O sandbox de produção importa qualquer repositório do GitHub como ambiente ao vivo e editável',
    'Implanta fluxos agentivos na infraestrutura Vercel como funções serverless ou edge',
    'Conectividade com Snowflake, AWS e Vercel Postgres integrada'
  ],
  cons = ARRAY[
    'O preço por tokens torna o custo imprevisível para gerações complexas de múltiplos arquivos',
    'O domínio mudou de v0.dev para v0.app — favoritos e links existentes precisam ser atualizados',
    'Ainda principalmente orientado ao ecossistema Vercel — menos útil ao implantar em AWS ou outros hosts',
    'Curva de aprendizado para os novos recursos de fluxo agentivo em comparação à UI original simples'
  ]
WHERE slug = 'v0-by-vercel' AND lang = 'pt';

-- 4. MANUS
UPDATE tools SET
  name        = 'Manus',
  url         = 'https://manus.im',
  domain      = 'manus.im',
  badge       = 'freemium',
  best_for    = 'Agente IA autônomo, criação de aplicativos móveis/web, automação de tarefas',
  description = $d4p$Manus é um agente IA autônomo adquirido pela Meta no final de 2025. O Manus 1.6 Max conclui tarefas complexas em menos de 4 minutos com desenvolvimento de aplicativos móveis, construtor de aplicativos web e integrações com Slack/WhatsApp/Telegram.$d4p$,
  description_long = $dl4p$Manus é uma plataforma de agente IA autônomo que ganhou ampla atenção no início de 2025 por sua capacidade de concluir tarefas de longa duração sem intervenção humana. Originalmente desenvolvido por uma startup chinesa de IA, o Manus foi adquirido pela Meta no final de 2025 e continua a operar como produto independente.

O Manus 1.6 Max, lançado em 2026, apresenta melhorias de desempenho significativas em relação às versões anteriores. O tempo médio de conclusão de tarefas caiu de aproximadamente 15 minutos para menos de 4 minutos — uma melhoria de velocidade de 4x que torna o agente prático para casos de uso em tempo real. O agente lida com tarefas complexas e de várias etapas, como síntese de pesquisa, coleta de dados, preenchimento de formulários e execução de código.

Os novos recursos do 1.6 Max incluem o Desenvolvimento de Aplicativos Móveis, onde os usuários descrevem um conceito de aplicativo em linguagem natural e o Manus gera aplicativos iOS e Android funcionais. O Construtor de Aplicativos Web permite criar aplicativos web com um banco de dados integrado, integração de pagamento Stripe e configuração de SEO.

O aplicativo de desktop adiciona acesso a arquivos locais, permitindo que o Manus leia, edite e organize arquivos na máquina do usuário em vez de operar exclusivamente em ambientes em nuvem. As integrações de comunicação — Slack, WhatsApp e Telegram — permitem que os usuários atribuam tarefas ao Manus diretamente de aplicativos de mensagens.

A Visualização de Design é um novo modo interativo de criação de imagens onde os usuários podem projetar iterativamente ativos visuais, maquetes e gráficos através de conversa.

Ideal para usuários avançados e pequenas equipes que precisam de um agente IA capaz de concluir tarefas de várias etapas de forma autônoma na web, arquivos locais e serviços de terceiros sem supervisão contínua.$dl4p$,
  pros = ARRAY[
    'Tempo de conclusão reduzido de 15 minutos para menos de 4 minutos no Manus 1.6 Max',
    'Cria aplicativos móveis iOS e Android a partir de descrições em linguagem natural',
    'O Construtor de Aplicativos Web inclui banco de dados, Stripe e configuração de SEO',
    'Integrações com Slack, WhatsApp e Telegram — atribua tarefas de qualquer mensageiro',
    'Aplicativo de desktop com acesso a arquivos locais para automação de tarefas no dispositivo'
  ],
  cons = ARRAY[
    'Adquirido pela Meta — a direção do produto a longo prazo e as políticas de privacidade podem mudar',
    'Agentes autônomos ocasionalmente cometem erros em tarefas ambíguas que requerem revisão humana',
    'Aplicativos móveis gerados podem requerer revisão de desenvolvedor antes do envio à App Store',
    'O consumo de tokens para tarefas longas pode ser significativo em fluxos de trabalho complexos'
  ]
WHERE slug = 'manus' AND lang = 'pt';

-- 5. DEVIN
UPDATE tools SET
  name        = 'Devin',
  url         = 'https://devin.ai',
  domain      = 'devin.ai',
  badge       = 'paid',
  best_for    = 'Engenheiro de software IA autônomo, automação de tarefas de desenvolvedor júnior',
  description = $d5p$Devin 2.0 conclui 83% mais tarefas de desenvolvedor júnior por ACU que o Devin 1.0. Preço reduzido 96% para $20/mês. Planos: Core $20, Team $500, Enterprise personalizado.$d5p$,
  description_long = $dl5p$Devin é um engenheiro de software IA autônomo desenvolvido pela Cognition AI, apresentado em 2024 como o primeiro agente IA capaz de concluir tarefas de engenharia de software de ponta a ponta — incluindo escrever código, executar testes, depurar e implantar alterações — sem orientação humana em cada etapa.

O Devin 2.0, lançado no final de 2025 e amplamente adotado ao longo de 2026, representa um grande salto de capacidade. No benchmark interno ACU (Unidade de Computação do Agente) da Cognition, o Devin 2.0 conclui 83% mais tarefas de desenvolvedor júnior por unidade de computação em comparação ao Devin 1.0. Isso se traduz em significativamente mais trabalho concluído por dólar gasto.

A reestruturação de preços é a mudança mais dramática na história do Devin. O plano original custava $500 por mês, limitando a adoção a equipes de engenharia bem financiadas. O Devin 2.0 introduziu um plano Core a $20 por mês — uma redução de preço de 96% — tornando a engenharia IA autônoma acessível a desenvolvedores individuais e pequenas equipes pela primeira vez. O plano Team a $500 por mês inclui 250 ACUs com ACUs adicionais cobradas a $2 cada. Os preços Enterprise são personalizados.

O Devin se integra ao painel Kanban do Windsurf, permitindo que as equipes gerenciem tarefas de agente IA ao lado de tarefas de desenvolvedores humanos em uma visão unificada do projeto.

O Devin funciona melhor em tarefas bem definidas com critérios de aceitação claros — correções de bugs de issues do GitHub, adicionar testes ao código existente, implementar um endpoint de API especificado ou atualizar dependências.

Ideal para equipes de engenharia que desejam delegar tarefas de rotina de nível júnior a um agente IA, e para desenvolvedores individuais que desejam um assistente autônomo a um preço acessível.$dl5p$,
  pros = ARRAY[
    'Redução de preço de 96% — plano Core agora a $20/mês, antes $500',
    'Devin 2.0 conclui 83% mais tarefas de desenvolvedor júnior por ACU vs Devin 1.0',
    'Totalmente autônomo: escreve, testa, depura e implanta sem orientação passo a passo',
    'Integração Kanban Windsurf — gerencie tarefas de IA ao lado de tarefas de desenvolvimento humano',
    'Plano Team ($500/mês) escala com 250 ACUs incluídos e $2/ACU de excedente'
  ],
  cons = ARRAY[
    'Somente pago — sem nível gratuito mesmo ao novo preço reduzido',
    'Dificuldades com decisões arquiteturais abertas e requisitos ambíguos',
    'Requer bases de código bem documentadas e especificações de tarefas claras para melhores resultados',
    'O consumo de ACU em tarefas complexas pode exceder rapidamente a alocação do plano Core'
  ]
WHERE slug = 'devin' AND lang = 'pt';

-- 6. CHATGPT
UPDATE tools SET
  name        = 'ChatGPT',
  url         = 'https://chatgpt.com',
  domain      = 'chatgpt.com',
  badge       = 'freemium',
  best_for    = 'Assistente IA geral, produtividade, codificação',
  description = $d6p$GPT-5.5 Instant é agora o modelo padrão — 52,5% menos alucinações em prompts de alto risco. A memória puxa contexto de chats anteriores, Gmail e arquivos salvos no Plus/Pro. Mais de 700 milhões de usuários semanais.$d6p$,
  description_long = $dl6p$ChatGPT é o assistente IA principal da OpenAI e o produto de IA mais utilizado do mundo, com mais de 700 milhões de usuários ativos semanais em maio de 2026. O modelo padrão é agora o GPT-5.5 Instant, lançado em 5 de maio de 2026, que entrega 52,5% menos alucinações em prompts de alto risco em comparação ao GPT-5.3 e é visivelmente mais rápido para tarefas cotidianas.

A memória é uma das atualizações mais significativas do ChatGPT em 2026. Os assinantes Plus e Pro agora podem ter o assistente puxando contexto não apenas de conversas passadas, mas também do Gmail e arquivos salvos, dando-lhe uma compreensão persistente e personalizada do usuário e do que está trabalhando.

A integração de voz e hardware se expandiu substancialmente. A integração com CarPlay permite acesso de voz mãos livres ao dirigir, e a integração de planilhas agora cobre tanto o Excel quanto o Google Sheets.

O ChatGPT está disponível em cinco níveis de preço: Gratuito (acesso limitado), Go a $8/mês (mais mensagens diárias), Plus a $20/mês (GPT-5.5 Instant completo, uploads de arquivos, memória), Pro a $100/mês (limites estendidos, acesso prioritário) e Pro a $200/mês (uso máximo com todas as capacidades).

Comparado ao Claude e ao Gemini, o ChatGPT tem a maior superfície de recursos — combina assistente conversacional, interpretador de código, gerador de imagens (DALL-E), criador de vídeo (Sora) e ferramenta de pesquisa profunda em uma única interface.

O ChatGPT é a escolha certa para usuários que desejam uma única ferramenta que cubra a maior variedade de tarefas — escrita, codificação, pesquisa, criação de imagens, voz e planilhas — sem trocar de plataformas.$dl6p$,
  pros = ARRAY[
    'GPT-5.5 Instant padrão — 52,5% menos alucinações em prompts de alto risco vs GPT-5.3',
    'Memória puxa contexto de chats anteriores, Gmail e arquivos salvos (Plus/Pro)',
    'Integração CarPlay para acesso de voz mãos livres ao dirigir',
    'Integração nativa com planilhas Excel e Google Sheets',
    'Maior conjunto de recursos: DALL-E, Sora, interpretador de código, pesquisa profunda, voz — tudo em um lugar'
  ],
  cons = ARRAY[
    'Usuários Plus atingem limites diários de uso regularmente nos horários de pico',
    'Os níveis Gratuito e Go têm restrições de capacidade significativas vs Plus',
    'A amplitude de recursos significa que algumas capacidades são mais rasas que ferramentas dedicadas',
    'Memória e integração com Gmail limitadas ao Plus/Pro — não disponíveis no Gratuito ou Go',
    'Claude e Gemini superam no seguimento de instruções e em tarefas de contexto longo'
  ]
WHERE slug = 'chatgpt' AND lang = 'pt';

-- 7. CLAUDE
UPDATE tools SET
  name        = 'Claude',
  url         = 'https://claude.ai',
  domain      = 'claude.ai',
  badge       = 'freemium',
  best_for    = 'Escrita, codificação, análise, documentos longos',
  description = $d7p$Claude Opus 4.7 oferece codificação aprimorada e visão de maior resolução com preços inalterados. Limites de taxa dobrados para Pro/Max/Team/Enterprise. Aplicativo de desktop Claude Code redesenhado com tarefas paralelas e suporte SSH.$d7p$,
  description_long = $dl7p$Claude é o assistente IA da Anthropic, reconhecido em 2026 pelo melhor seguimento de instruções e qualidade de raciocínio entre os principais assistentes IA. A última versão, Claude Opus 4.7, melhora a precisão de codificação e traz processamento visual de maior resolução — a capacidade de analisar imagens detalhadas, diagramas e documentos com maior precisão — mantendo os preços de API inalterados em $5 por milhão de tokens de entrada e $25 por milhão de tokens de saída.

Uma grande melhoria de qualidade de vida em 2026 é a duplicação dos limites de taxa para todos os níveis pagos: os usuários Pro, Max, Team e Enterprise agora podem enviar o dobro de mensagens por hora, e as reduções de taxa nos horários de pico foram removidas completamente.

O Claude Design, um novo produto do Anthropic Labs, estende as capacidades do Claude para saídas visuais — os usuários podem gerar slides de apresentação, maquetes de design e protótipos interativos diretamente através de conversa com o Claude Opus 4.7. Disponível para assinantes do plano Pro e acima sem custo adicional.

O aplicativo de desktop Claude Code foi redesenhado com execução de tarefas em paralelo, uma barra lateral de sessões para gerenciar vários projetos, suporte SSH integrado para desenvolvimento remoto e um terminal embutido. O Claude Platform agora também está disponível no AWS.

Os preços vão de Gratuito (mensagens diárias limitadas) a Pro a $20/mês, Max a $100/mês e Max a $200/mês.

Claude é a melhor escolha para usuários que precisam de respostas precisas e confiáveis a instruções complexas — escrita técnica, análise de documentos, revisão de código e raciocínio de contexto longo.$dl7p$,
  pros = ARRAY[
    'Claude Opus 4.7 — melhor seguimento de instruções e raciocínio de contexto longo entre os principais assistentes',
    'Limites de taxa dobrados para Pro/Max/Team/Enterprise; reduções nos horários de pico removidas',
    'Claude Design incluído para assinantes Pro+ — gere slides, maquetes e protótipos via conversa',
    'Aplicativo de desktop Claude Code com tarefas paralelas, barra lateral de sessões, suporte SSH e terminal integrado',
    'Preços de API inalterados: $5/$25 por milhão de tokens de entrada/saída — custos previsíveis'
  ],
  cons = ARRAY[
    'O nível gratuito tem limites estritos de mensagens diárias — não é prático para uso diário intenso',
    'Sem geração de imagens nativa (depende do Claude Design para saídas visuais)',
    'Os níveis Max a $100-$200/mês são caros em comparação ao ChatGPT Plus a $20/mês',
    'Menos amplitude de recursos para o consumidor que o ChatGPT — sem vídeo, música ou ferramentas de planilhas integradas',
    'Claude Design ainda em pré-visualização do Labs — não totalmente lançado para todos os usuários'
  ]
WHERE slug = 'claude' AND lang = 'pt';

-- 8. GROK
UPDATE tools SET
  name        = 'Grok',
  url         = 'https://grok.com',
  domain      = 'grok.com',
  badge       = 'freemium',
  best_for    = 'Dados X em tempo real, clonagem de voz, raciocínio',
  description = $d8p$Grok 4.3 traz contexto de 1M tokens, entrada de vídeo nativa e raciocínio integrado a $1,25/M tokens de entrada via API. API Custom Voices, Speech-to-Text GA e geração de imagens no Modo Qualidade adicionados.$d8p$,
  description_long = $dl8p$Grok é o assistente IA da xAI, estreitamente integrado ao X (anteriormente Twitter) e disponível como produto independente em grok.com. Grok 4.3, o lançamento atual, é uma atualização substancial: suporta uma janela de contexto de 1 milhão de tokens, aceita vídeo nativo como entrada para análise e inclui raciocínio passo a passo integrado sem precisar mudar para um modo de raciocínio separado.

A API tem preço de $1,25 por milhão de tokens de entrada, posicionando o Grok 4.3 como uma opção competitiva para desenvolvedores que precisam de acesso a dados sociais em tempo real junto com raciocínio geral sólido. Saídas estruturadas são suportadas.

Três novas APIs significativas expandem os casos de uso do Grok além do chat. A API Custom Voices permite aos desenvolvedores clonar uma voz a partir de apenas alguns segundos de áudio e usá-la para síntese de voz. A API Speech-to-Text, agora disponível ao público geral, adiciona timestamps em nível de palavra e diarização de falantes. O Modo Qualidade para geração de imagens produz saídas de maior fidelidade.

O Grok permanece gratuito no X com limites diários. O SuperGrok, a assinatura independente a $30/mês, desbloqueia limites de uso mais altos, acesso à API e todos os recursos avançados.

O principal diferencial da ferramenta continua sendo sua integração de dados X em tempo real — o Grok pode exibir posts ao vivo, tópicos em alta e informações de última hora que nenhum outro grande assistente IA tem acesso. A contrapartida é um ecossistema de integração de terceiros menor em comparação ao ChatGPT ou Claude.$dl8p$,
  pros = ARRAY[
    'Grok 4.3 — contexto de 1M tokens, entrada de vídeo nativa, raciocínio integrado',
    'Acesso a dados X (Twitter) em tempo real — único entre todos os principais assistentes IA',
    'API Custom Voices: clone uma voz a partir de segundos de áudio',
    'API Speech-to-Text GA com timestamps em nível de palavra e diarização de falantes',
    'API a $1,25/M tokens de entrada — preços competitivos com suporte a saída estruturada'
  ],
  cons = ARRAY[
    'Estreitamente acoplado ao ecossistema X/Twitter — menos útil sem contexto X',
    'SuperGrok a $30/mês oferece menos uso que Claude Pro ou ChatGPT Plus a preços semelhantes',
    'Ecossistema de integração de terceiros menor que ChatGPT ou Claude',
    'Qualidade e consistência em tarefas de raciocínio complexas fica atrás do Claude Opus 4.7',
    'Custom Voices e Modo Qualidade apenas para API/SuperGrok — não disponíveis no nível gratuito'
  ]
WHERE slug = 'grok' AND lang = 'pt';

-- 9. DEEPSEEK
UPDATE tools SET
  name        = 'DeepSeek',
  url         = 'https://chat.deepseek.com',
  domain      = 'deepseek.com',
  badge       = 'free',
  best_for    = 'Raciocínio open source, contexto longo, API de baixo custo',
  description = $d9p$DeepSeek V4 Preview (24 de abril de 2026) oferece dois modelos com até 1,6 trilhão de parâmetros com contexto de 1M. A Atenção Híbrida reduz FLOPs em 73% a 1M tokens. Três modos de raciocínio. Open source.$d9p$,
  description_long = $dl9p$DeepSeek é um laboratório de IA chinês que construiu uma reputação por lançar modelos open source de qualidade de fronteira a um custo notavelmente baixo. DeepSeek V4 Preview, lançado em 24 de abril de 2026, vem em duas variantes: V4-Pro com 1,6 trilhões de parâmetros totais (49 bilhões ativos) e V4-Flash com 284 bilhões de parâmetros (13 bilhões ativos). Ambos suportam uma janela de contexto de 1 milhão de tokens.

A inovação arquitetural no V4 é o sistema de Atenção Híbrida, combinando Atenção Esparsa Comprimida (CSA) e Agregação de Contexto Hierárquica (HCA). A 1 milhão de tokens de contexto, o V4-Pro usa apenas 27% dos FLOPs exigidos pelo DeepSeek V3.2 — uma melhoria dramática de eficiência.

Três modos de esforço de raciocínio — leve, padrão e profundo — permitem aos usuários equilibrar velocidade de resposta com profundidade de raciocínio. O modo leve é rápido e adequado para tarefas simples; o modo profundo engaja raciocínio estendido de cadeia de pensamento para problemas complexos de várias etapas.

O preço é agressivo: V4-Flash custa $0,14 por milhão de tokens de entrada e $0,28 por milhão de tokens de saída. V4-Pro custa $0,145 por milhão de tokens de entrada e $3,48 por milhão de tokens de saída. Ambos os modelos são open source e podem ser auto-hospedados.

A interface de chat web em chat.deepseek.com é gratuita sem necessidade de conta para acesso básico. A principal limitação em comparação ao ChatGPT ou Claude é o ecossistema: sem modo de voz, sem geração de imagens, sem integrações nativas de aplicativos.$dl9p$,
  pros = ARRAY[
    'V4-Pro: 1,6T de parâmetros, 49B ativos, contexto de 1M tokens — desempenho de fronteira a preços open source',
    'Atenção Híbrida (CSA + HCA) — V4-Pro usa apenas 27% dos FLOPs vs V3.2 a 1M tokens de contexto',
    'Três modos de esforço de raciocínio (leve/padrão/profundo) — ajuste velocidade vs profundidade por solicitação',
    'API V4-Flash a $0,14/$0,28 por milhão de tokens — entre os modelos de qualidade de fronteira mais baratos',
    'Totalmente open source — auto-hospedável para privacidade de dados e implantação local'
  ],
  cons = ARRAY[
    'Sem modo de voz, geração de imagens ou integrações de aplicativos para consumidores',
    'Interface web menos refinada que ChatGPT ou Claude — produto orientado ao desenvolvedor',
    'Preocupações de privacidade de dados para usuários que não podem auto-hospedar (empresa chinesa)',
    'Saída do V4-Pro a $3,48/M tokens é cara para cargas de trabalho de saída de alto volume',
    'Ecossistema e suporte a plugins significativamente menores que OpenAI ou Anthropic'
  ]
WHERE slug = 'deepseek' AND lang = 'pt';

-- 10. CURSOR
UPDATE tools SET
  name        = 'Cursor',
  url         = 'https://cursor.com',
  domain      = 'cursor.com',
  badge       = 'paid',
  best_for    = 'Codificação IA, multi-repositório, agentes em nuvem, revisão de segurança',
  description = $d10p$Cursor 3 lança workspace multi-repositório unificado, agentes em nuvem executando em paralelo em VMs, Canvases para saídas visuais, Automations acionadas pelo Slack ou temporizadores, e Security Review sempre ativa para Times.$d10p$,
  description_long = $dl10p$Cursor é um editor de código orientado a IA construído sobre o VS Code, projetado para tornar a assistência de IA a interface principal para o desenvolvimento de software, em vez de um plugin adicionado por cima. Cursor 3, o principal lançamento atual, representa uma expansão arquitetural substancial de um editor de arquivo único para uma plataforma de desenvolvimento completa.

A peça central do Cursor 3 é o workspace multi-repositório unificado: os desenvolvedores podem abrir e navegar em vários repositórios simultaneamente, com o agente de IA mantendo contexto em todos eles. Os agentes em nuvem executam em paralelo em máquinas virtuais dedicadas, cada um capaz de executar tarefas de longa duração de forma autônoma enquanto registra seu trabalho via vídeo e logs para revisão.

Canvases é uma nova camada de saída visual: os agentes podem produzir resumos de revisão de PR, diagramas de arquitetura, painéis de testes e outros artefatos visuais estruturados diretamente dentro do workspace do Cursor. As Cursor Automations permitem acionar tarefas a partir de mensagens do Slack, temporizadores agendados ou eventos específicos da base de código.

A Security Review, disponível nos níveis Times e Enterprise, é um scanner de vulnerabilidades sempre ativo que executa continuamente em segundo plano e exibe problemas de segurança à medida que o código é escrito. O Composer 2 é um modelo desenvolvido internamente pela equipe do Cursor, otimizado para tarefas de edição de código.

O preço usa um modelo de créditos de uso: Pro a $20/mês cobre o uso padrão, Pro+ a $60/mês fornece limites de uso 3x para usuários intensivos. Não há nível gratuito.

Cursor é a melhor escolha para desenvolvedores profissionais e equipes de engenharia que desejam IA profundamente integrada em todo o fluxo de trabalho de desenvolvimento.$dl10p$,
  pros = ARRAY[
    'Workspace multi-repositório unificado — a IA mantém contexto em vários repositórios simultaneamente',
    'Agentes em nuvem executando em paralelo em VMs dedicadas com gravação de vídeo/logs para revisão assíncrona',
    'Recurso Canvases: agentes produzem saídas visuais — revisões de PR, painéis, diagramas de arquitetura',
    'Cursor Automations: acione agentes pelo Slack, temporizadores ou eventos da base de código',
    'Security Review sempre ativa (Times/Enterprise) — varredura contínua de vulnerabilidades enquanto escreve'
  ],
  cons = ARRAY[
    'Sem nível gratuito — produto pago desde o primeiro dia a partir de $20/mês',
    'Pro+ a $60/mês é 3x o preço base do GitHub Copilot para níveis de uso equivalentes',
    'Agentes em nuvem e Canvases são recursos novos — estabilidade e confiabilidade ainda amadurecendo',
    'Cursor Automations e Security Review limitadas aos níveis Times/Enterprise',
    'A migração do VS Code requer reconfiguração de extensões e atalhos de teclado'
  ]
WHERE slug = 'cursor' AND lang = 'pt';
