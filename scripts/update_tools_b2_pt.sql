-- Batch 2 PT (May 2026): zed, replit, lovable, bolt-new, github-copilot, midjourney, kling-ai, synthesia, suno, elevenlabs

UPDATE tools SET
  best_for         = $d11p$Editor de código IA com agentes paralelos e velocidade Rust$d11p$,
  description      = $d11p$Zed 1.0 foi lançado em 29 de abril de 2026 após cinco anos de desenvolvimento. Executa múltiplos agentes IA em paralelo em diferentes seções do código, com plano Business para governança de IA organizacional.$d11p$,
  description_long = $dl11p$Zed é um editor de código desenvolvido inteiramente em Rust, projetado para performance e baixa latência. A versão 1.0, lançada em 29 de abril de 2026, marca um marco de cinco anos de desenvolvimento e a primeira versão estável adequada para equipes em produção. O editor é rápido por design: Rust elimina a sobrecarga que desacelera editores baseados em Electron como VS Code e Cursor sob carga pesada.

O recurso principal do Zed 1.0 são os Agentes Paralelos: os usuários podem executar múltiplos agentes IA simultaneamente, cada um trabalhando de forma independente em uma parte diferente do código. Um agente pode refatorar um módulo enquanto outro escreve testes e um terceiro lida com a documentação, tudo ao mesmo tempo. Isso representa um ganho de produtividade significativo em relação a workflows de agente único.

Em janeiro de 2026, a Zed co-criou o Agent Client Protocol (ACP) com a JetBrains, estabelecendo um padrão entre editores para comunicação de agentes IA com ambientes de desenvolvimento. Agentes criados para o Zed também podem ser executados nas IDEs da JetBrains e vice-versa, reduzindo a dependência de fornecedor.

O suporte a modelos no Zed 1.0 inclui GPT-5.5, DeepSeek V4 e MiMo V2.5, dando aos desenvolvedores acesso a modelos frontier diretamente no editor. Visualização de gráfico Git e diffs divididos são novos recursos de interface para melhorar os fluxos de revisão de código.

O Zed é gratuito para desenvolvedores individuais. O plano Business adiciona aplicação de políticas de IA em nível organizacional, faturamento centralizado e controles de governança de IA.

O Zed é ideal para desenvolvedores que querem um editor rápido e eficiente com capacidade séria de agentes IA paralelos, e para equipes que precisam de governança de IA centralizada sem adotar uma ferramenta empresarial pesada.$dl11p$,
  pros = ARRAY['Desenvolvido em Rust — significativamente mais rápido e leve que editores baseados em Electron como VS Code', 'Agentes Paralelos: executa múltiplos agentes IA simultaneamente em diferentes seções do código', 'Agent Client Protocol (ACP) com JetBrains — agentes compatíveis entre editores sem dependência de fornecedor', 'Suporta GPT-5.5, DeepSeek V4, MiMo V2.5 — acesso integrado a modelos frontier', 'Gratuito para indivíduos; plano Business adiciona políticas de IA e faturamento centralizado'],
  cons = ARRAY['Versão 1.0 — ecossistema de extensões menor que VS Code ou JetBrains', 'Recursos de governança do plano Business requerem assinatura paga — preço não anunciado publicamente', 'A arquitetura nativa Rust torna algumas extensões do VS Code incompatíveis', 'O recurso de agentes paralelos é novo — coordenação complexa de múltiplos agentes pode gerar conflitos']
WHERE slug = 'zed' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d12p$Desenvolvimento de apps com IA, IDE na nuvem, scaffolding de apps móveis$d12p$,
  description      = $d12p$Replit Agent 4 executa agentes paralelos para autenticação, banco de dados, backend e frontend simultaneamente. O Security Agent revisa codebases completos em menos de uma hora. Nomeado Parceiro Google Cloud de Ferramentas de IA 2026.$d12p$,
  description_long = $dl12p$Replit é uma plataforma de desenvolvimento no navegador que combina uma IDE na nuvem, agente de código com IA e implantação instantânea em um único ambiente. Nenhuma configuração local necessária: os usuários escrevem, executam e publicam código inteiramente no navegador, tornando-o uma das plataformas mais acessíveis para iniciantes e a opção mais rápida para protótipos.

O Replit Agent 4 introduz paralelismo multitarefa: em vez de construir um aplicativo sequencialmente, o agente lança agentes paralelos que lidam com autenticação, configuração de banco de dados, lógica de backend e código frontend simultaneamente. O progresso em cada tarefa é sempre visível em um painel dedicado. Essa abordagem reduz substancialmente o tempo de geração de aplicativos full-stack.

O Security Agent é um revisor autônomo que realiza modelagem completa de ameaças e análise de segurança do codebase. Ele identifica vulnerabilidades, gera um relatório priorizado e pode aplicar correções, completando uma revisão de segurança em menos de uma hora em projetos típicos.

O suporte ao desenvolvimento móvel agora gera scaffoldings de projetos React Native e Expo com estrutura, dependências e configuração funcionais. O Replit recebeu o prêmio de Parceiro Google Cloud de Ferramentas de IA do Ano 2026.

Os preços têm três níveis: Gratuito com uso limitado de agente, Core a $25/mês ($20/mês anual) incluindo $25 em créditos mensais, e Pro a $100/mês ($95/mês anual) com $100 em créditos, modo Turbo e suporte para até 15 colaboradores.

O Replit é ideal para desenvolvedores que querem ir de ideia a app implantado rapidamente, estudantes aprendendo desenvolvimento full-stack e pequenas equipes que precisam de colaboração integrada e revisão de segurança assistida por IA.$dl12p$,
  pros = ARRAY['Agent 4 executa agentes paralelos para auth, banco de dados, backend e frontend simultaneamente', 'Security Agent: modelagem completa de ameaças do codebase e correções em menos de uma hora', 'Gera scaffoldings React Native e Expo com estrutura completa e funcional', 'Sem configuração local — escreva, execute e implante inteiramente no navegador', 'Parceiro Google Cloud de Ferramentas de IA 2026 — forte respaldo de infraestrutura cloud'],
  cons = ARRAY['O nível gratuito tem limites significativos no uso de agente e tempo de computação', 'O plano Pro a $100/mês é caro para desenvolvedores individuais que não esgotam os créditos mensalmente', 'O ambiente no navegador é mais lento para projetos grandes que editores locais como Cursor ou Zed', 'O código gerado frequentemente requer revisão e limpeza antes da implantação em produção', 'A colaboração é limitada a 15 usuários no Pro — não adequado para grandes equipes de engenharia']
WHERE slug = 'replit' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d13p$Construtor de apps com IA, sem código, testes visuais, entrada de voz$d13p$,
  description      = $d13p$Lovable adiciona o Plan Mode, uma fila de 50 prompts e um navegador virtual que testa automaticamente os apps em busca de bugs visuais e de interação. Voice Mode e um app móvel para iOS e Android foram lançados em abril de 2026.$d13p$,
  description_long = $dl13p$Lovable é um construtor de aplicativos impulsionado por IA que gera aplicativos web full-stack a partir de descrições em linguagem natural. Ele se posiciona entre uma ferramenta no-code e um ambiente de desenvolvimento tradicional: os usuários descrevem o que querem, e o Lovable escreve e implanta o aplicativo. Nenhuma experiência em programação é necessária.

O Plan Mode, introduzido em fevereiro de 2026, muda o funcionamento da geração: em vez de escrever código imediatamente, o Lovable primeiro mostra um plano completo do que pretende construir. O usuário revisa e aprova o plano antes que qualquer código seja gerado, reduzindo iterações desperdiçadas quando a IA interpreta mal um prompt ambíguo.

A Fila de Prompts permite aos usuários enfileirar até 50 prompts sequenciais que são executados um após o outro sem intervenção manual. Em vez de esperar cada mudança terminar antes de digitar a próxima instrução, os usuários podem pré-carregar uma sessão completa de melhorias incrementais.

O Browser Testing adiciona um navegador virtual que testa automaticamente o aplicativo gerado em busca de bugs visuais e falhas de interação, verificando que os botões funcionam, os layouts são renderizados corretamente e os formulários são enviados sem erros.

O Voice Mode permite descrever mudanças verbalmente. O app móvel para iOS e Android, lançado em abril de 2026, traz a experiência completa do Lovable para o mobile com notificações push para conclusões de build.

Os preços começam em $25/mês. O Lovable é ideal para fundadores, designers e usuários não técnicos que querem lançar rapidamente um aplicativo web funcional sem escrever código.$dl13p$,
  pros = ARRAY['Plan Mode: a IA mostra o plano completo de construção para aprovação antes de escrever código', 'Fila de Prompts: empilha até 50 prompts sequenciais para sessões de geração ininterruptas', 'Browser Testing: navegador virtual testa apps automaticamente em busca de bugs visuais e de interação', 'Voice Mode — descreva mudanças verbalmente em vez de digitar', 'App móvel para iOS e Android com notificações push para conclusões de build'],
  cons = ARRAY['Sem nível gratuito — somente pago a partir de $25/mês', 'Os apps gerados podem precisar de revisão de um desenvolvedor para segurança e desempenho em produção', 'Menos adequado para lógica de backend complexa em comparação com agentes de código dedicados como Devin', 'O compartilhamento de componentes entre projetos requer configuração manual de bibliotecas compartilhadas']
WHERE slug = 'lovable' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d14p$Construtor full-stack com IA, hospedagem e auth integrados, workspaces de equipe$d14p$,
  description      = $d14p$Bolt V2 inclui banco de dados, auth, armazenamento de arquivos, funções edge e hospedagem — sem serviços de terceiros. Lida com projetos 1.000 vezes maiores que o original, com builds 40% mais rápidos e Claude Opus 4.6 com raciocínio ajustável.$d14p$,
  description_long = $dl14p$Bolt.new é um construtor de apps com IA no navegador que gera e implanta aplicativos web full-stack a partir de prompts em linguagem natural. Bolt V2, também chamado de Bolt Cloud, é uma plataforma substancialmente mais profunda com infraestrutura integrada que elimina a necessidade de configurar serviços de terceiros.

O Bolt Cloud inclui tudo o que é necessário para um app web em produção: banco de dados integrado, sistema de autenticação, armazenamento de arquivos, funções edge, analytics e hospedagem, tudo gerenciado dentro da plataforma Bolt. Os usuários não precisam configurar Supabase, Firebase ou qualquer serviço de backend separado. Essa stack integrada é a diferença arquitetural mais significativa entre o Bolt e concorrentes como Lovable ou Replit.

O suporte MCP (Model Context Protocol) permite ao Bolt conectar ferramentas externas — Notion, Linear, repositórios Git e outros serviços compatíveis com MCP — diretamente no fluxo de geração. Isso torna possível construir apps que leem de um banco de dados do Notion ou fazem commit do código gerado em um repositório Git automaticamente.

A geração de imagens com IA está integrada na interface de chat, com exportação WebP para uso nos aplicativos gerados. A performance de build melhorou 40% em relação à versão de 2024, e o Bolt agora lida com projetos aproximadamente 1.000 vezes maiores que o original.

Os recursos de equipe incluem workspaces compartilhados, templates de equipe, controles de administração e edição colaborativa. O Claude Opus 4.6 está disponível como opção de modelo com intensidade de raciocínio ajustável.

O Bolt.new é ideal para desenvolvedores e fundadores que querem construir e lançar aplicativos full-stack sem gerenciar serviços separados de hospedagem, auth e banco de dados, e para equipes que precisam de desenvolvimento de apps com IA colaborativo em uma única plataforma.$dl14p$,
  pros = ARRAY['Banco de dados, auth, armazenamento, funções edge, analytics e hospedagem integrados — sem serviços de terceiros', 'Suporte MCP conecta Notion, Linear, Git e outras ferramentas externas ao fluxo de construção', 'Lida com projetos 1.000x maiores que o Bolt original com builds 40% mais rápidos', 'Geração de imagens IA no chat com exportação WebP para uso imediato nos apps', 'Workspaces de equipe com templates compartilhados, controles de administração e edição colaborativa'],
  cons = ARRAY['Risco de dependência de fornecedor — a stack integrada vincula projetos à plataforma Bolt Cloud', 'Recursos avançados de equipe e limites de uso mais altos requerem planos pagos', 'Menos adequado para projetos que requerem controle fino de infraestrutura ou hospedagem personalizada', 'As integrações MCP requerem serviços externos compatíveis já configurados', 'Plataforma relativamente nova — confiabilidade a longo prazo e portabilidade de dados não comprovadas em escala']
WHERE slug = 'bolt-new' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d15p$Código com IA no VS Code, agentes na nuvem, métricas de revisão de código$d15p$,
  description      = $d15p$GitHub Copilot muda para faturamento por uso a partir de 1º de junho de 2026. Os agentes na nuvem são lançados diretamente do VS Code e Visual Studio, direcionados a partir de issues e quadros de projetos, agora 20% mais rápidos.$d15p$,
  description_long = $dl15p$GitHub Copilot é o assistente de código com IA da Microsoft, profundamente integrado ao Visual Studio Code, Visual Studio e GitHub. É a ferramenta de código com IA mais amplamente implantada em ambientes corporativos, se beneficiando da integração com repositórios GitHub, Actions, Issues e recursos de gerenciamento de projetos que nenhuma ferramenta de terceiros consegue replicar nativamente.

A partir de 1º de junho de 2026, o modelo de preços muda de planos mensais fixos para faturamento por uso. Um novo plano Max de nível superior é introduzido ao lado dos níveis Individual e Business existentes, para usuários que excedem os limites de uso padrão.

Os agentes na nuvem agora podem ser lançados diretamente do VS Code e Visual Studio sem mudar para a interface web do GitHub. Os agentes podem ser direcionados de Issues e quadros de projetos do GitHub — atribua uma issue ao Copilot e ele assume a tarefa de forma autônoma. O tempo de inicialização do agente melhorou 20%. Um Agente de Depuração valida as correções propostas em relação ao comportamento real em tempo de execução em vez de análise de código estático.

Instruções personalizadas e arquivos de prompt permitem aos usuários salvar contexto reutilizável — padrões de código, preferências arquiteturais, regras específicas do projeto — e aplicá-los consistentemente nas sessões do Copilot.

O CLI do Copilot agora suporta um comando /fork e comandos slash no meio da entrada. As métricas de revisão de código foram expandidas para incluir um detalhamento dos comentários de revisão por tipo: problemas de segurança, risco de bugs, estilo.

O GitHub Copilot é ideal para desenvolvedores individuais e equipes de engenharia que já usam o GitHub e querem assistência de IA profundamente integrada em seus fluxos de trabalho existentes.$dl15p$,
  pros = ARRAY['Agentes na nuvem a partir do VS Code/Visual Studio, direcionados por Issues e quadros de projetos', 'Agente de Depuração valida correções em relação ao comportamento real em tempo de execução — não apenas análise estática', 'Instruções personalizadas e arquivos de prompt salvam contexto reutilizável para respostas consistentes', 'Métricas de revisão de código detalhadas por tipo: segurança, risco de bugs, estilo', 'Integração GitHub mais profunda disponível — nenhuma ferramenta de terceiros iguala o acesso nativo a repos/Actions/Issues'],
  cons = ARRAY['Faturamento por uso desde junho de 2026 — os custos podem ser imprevisíveis para usuários intensivos', 'Preços do plano Max não anunciados publicamente — compradores empresariais não podem planejar o orçamento sem contato', 'Menos capaz para geração de apps full-stack comparado ao Bolt.new, Lovable ou Replit', 'Instruções personalizadas e arquivos de prompt requerem investimento inicial de configuração por projeto', 'Comandos slash do CLI do Copilot são novos — documentação e cobertura de casos extremos ainda em maturação']
WHERE slug = 'github-copilot' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d16p$Geração de imagens com IA, estilos artísticos, renderização de texto$d16p$,
  description      = $d16p$Midjourney V8.1 (abril de 2026) oferece resolução 2K nativa, geração ~5x mais rápida que o V7 e renderização de texto drasticamente melhorada. O Niji 7 foi lançado em janeiro de 2026 para imagens estilo anime.$d16p$,
  description_long = $dl16p$Midjourney é uma das principais plataformas de geração de imagens com IA, conhecida por produzir imagens altamente artísticas e estilisticamente coerentes por meio de uma interface baseada em prompts. Funciona principalmente por meio de um app web e um bot do Discord, sem instalação local.

O V8 Alpha foi lançado em 17 de março de 2026, e o V8.1 seguiu em 30 de abril de 2026. A melhoria mais significativa é a resolução 2K (HD) nativa sem requerer uma etapa adicional de upscaling. A velocidade de geração é aproximadamente cinco vezes mais rápida que o V7, tornando a iteração e a exploração significativamente mais práticas para fluxos de trabalho profissionais.

A renderização de texto está drasticamente melhorada no V8.1. Os usuários podem especificar texto para aparecer em uma imagem colocando-o entre aspas no prompt, e o modelo o renderiza com alto grau de precisão. Isso abre casos de uso em design de pôsteres, maquetes e imagens de marca.

O Niji 7, o modelo especializado do Midjourney para estilos anime e ilustrativos, foi lançado em 9 de janeiro de 2026 com importantes melhorias de coerência: os personagens mantêm proporções e estilo consistentes entre composições.

Os recursos sociais adicionados em 2026 incluem nome de usuário personalizado, bio e banner nos perfis, um sistema de seguidores e um feed Explore. Os preços não mudaram: Basic a $10/mês, Standard a $30/mês, Pro a $60/mês, Mega a $120/mês. Sem nível gratuito.

Ideal para designers, ilustradores e profissionais criativos que precisam de imagens artísticas de alta qualidade com velocidade, e para aqueles que querem texto preciso renderizado em visuais gerados por IA.$dl16p$,
  pros = ARRAY['V8.1 oferece resolução 2K nativa sem etapa adicional de upscaling', '~5x mais rápido que o V7 — prático para iteração rápida e fluxos de trabalho profissionais', 'Renderização de texto drasticamente melhorada — especifique texto entre aspas diretamente nos prompts', 'Modelo Niji 7 para estilos anime e ilustrativos com melhor coerência de personagens', 'Recursos sociais: perfis personalizados, sistema de seguidores e feed Explore'],
  cons = ARRAY['Sem nível gratuito — todos os planos começam em $10/mês (Basic)', 'Principalmente Discord e web — sem app desktop nativo ou processamento local', 'Menos controlável que o Stable Diffusion para usuários que precisam de controle fino de parâmetros', 'O plano Mega a $120/mês é caro comparado a concorrentes de qualidade de saída similar']
WHERE slug = 'midjourney' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d17p$Geração de vídeo com IA, 4K 60fps, storyboard multi-planos$d17p$,
  description      = $d17p$Kling 3.0 (fevereiro de 2026) gera 4K nativo a 60fps com arquitetura multimodal unificada Omni One. Suporta storyboard multi-planos, movimento fisicamente preciso, áudio multilíngue e Motion Brush. Nº 1 nos benchmarks ELO (abril de 2026).$d17p$,
  description_long = $dl17p$Kling AI é uma plataforma de geração de vídeo desenvolvida pela Kuaishou Technology, focada em produzir vídeo de alta fidelidade a partir de prompts de texto e imagem. Desde seu lançamento inicial, o Kling iterou rapidamente em qualidade e capacidades, alcançando o primeiro lugar nos benchmarks de geração de vídeo baseados em ELO em abril de 2026.

O Kling 3.0, lançado em 4 de fevereiro de 2026, é o primeiro modelo de geração de vídeo a produzir resolução 4K nativa a 60 quadros por segundo sem depender de upscaling em pós-processamento. A arquitetura subjacente chamada Omni One é um sistema multimodal unificado que lida com vídeo, áudio e geração de imagens dentro de um único modelo.

O movimento fisicamente preciso é uma capacidade principal: objetos, fluidos e personagens se movem de acordo com dinâmicas fisicamente plausíveis. O storyboard multi-planos permite aos usuários encadear até seis planos conectados em uma única sessão de geração, mantendo a consistência de personagens e cenas entre os cortes.

Motion Brush permite aos usuários aplicar o padrão de movimento de um clipe de vídeo de referência a uma nova cena, dando aos criadores controle direcional sobre como os sujeitos e fundos se movem sem precisar descrever o movimento em texto.

A geração de áudio multilíngue está integrada no modelo, suportando narração e áudio ambiente em múltiplos idiomas. O Kling AI oferece um modelo freemium com créditos gratuitos diários para gerações curtas e planos pagos para maior resolução e clipes mais longos.

Ideal para criadores de vídeo, profissionais de marketing e estúdios que precisam de vídeo com IA de qualidade cinematográfica com realismo físico, continuidade multi-planos e áudio integrado.$dl17p$,
  pros = ARRAY['4K nativo a 60fps — sem upscaling necessário, primeiro modelo a alcançar isso nativamente', 'Arquitetura unificada Omni One lida com vídeo, áudio e imagens em um único modelo', 'Movimento fisicamente preciso para dinâmicas realistas de objetos, fluidos e personagens', 'Storyboard multi-planos: até 6 planos conectados com personagens e cenas consistentes', 'Motion Brush: aplique o movimento de um vídeo de referência a qualquer nova cena para controle direcional'],
  cons = ARRAY['Nível gratuito limitado a clipes curtos com marcas d''água — plano pago necessário para resolução completa', 'Os tempos de geração para clipes 4K 60fps podem ser significativos mesmo nos níveis pagos', 'Menos documentação e comunidade ocidental comparado ao Runway ou Sora', 'A qualidade do áudio multilíngue varia por idioma — melhores resultados em chinês e inglês']
WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d18p$Vídeo com IA e avatares, vídeos de treinamento, comunicações corporativas$d18p$,
  description      = $d18p$Synthesia 3.0 apresenta avatares de corpo inteiro com gestos naturais e sincronização labial via o motor diffusion transformer Express-2. Cria Avatares Pessoais a partir de uma única foto. Suporta mais de 160 idiomas.$d18p$,
  description_long = $dl18p$Synthesia é uma plataforma de geração de vídeo com IA construída em torno de avatares humanos digitais, principalmente usada para treinamento corporativo, comunicações internas, marketing e e-learning. Permite aos usuários criar conteúdo de vídeo com aparência profissional sem câmeras, estúdios ou sessões de gravação.

O Synthesia 3.0 introduz o motor Express-2, construído sobre uma arquitetura diffusion transformer. A mudança mais visível são os avatares de corpo inteiro: versões anteriores produziam vídeos de cabeça falante onde apenas o rosto e o torso superior eram animados. O Express-2 gera animações corporais completas com gestos naturais das mãos, mudanças de postura e sincronização labial fisicamente coerente.

Avatares baseados em ações são uma nova capacidade no 3.0: em vez de simplesmente falar para a câmera, os avatares podem realizar ações específicas indicadas no prompt — gesticular para uma tela, virar-se para encarar um gráfico ou apontar para um elemento em um slide.

A criação de Avatares Pessoais foi simplificada para exigir apenas uma única fotografia. O sistema gera um avatar totalmente animado a partir da foto em minutos.

Copilot, um assistente de escrita e produção, está planejado para 2026. Ele auxiliará na elaboração de scripts, conectará a uma base de conhecimento da empresa e sugerirá elementos visuais e transições.

O Synthesia suporta mais de 160 idiomas com sincronização labial sincronizada em todos eles. É um produto somente pago. Ideal para equipes de L&D, RH e profissionais de marketing que produzem grandes volumes de vídeo explicativo ou de treinamento.$dl18p$,
  pros = ARRAY['O motor Express-2 produz avatares de corpo inteiro com gestos naturais — não apenas cabeças falantes', 'Avatares baseados em ações realizam ações específicas indicadas para vídeo mais dinâmico', 'Avatar Pessoal a partir de uma única foto — sem sessão de gravação de vídeo necessária', 'Mais de 160 idiomas com sincronização labial integrada', 'Copilot (2026) auxiliará em scripts, conexões com base de conhecimento e sugestões visuais'],
  cons = ARRAY['Somente pago sem nível gratuito — preços baseados em minutos de vídeo por mês', 'O realismo dos avatares ainda é identificável como IA — não adequado para cenários que requerem vídeo humano natural', 'O recurso Copilot ainda não foi lançado (maio de 2026)', 'Menos flexível do que ferramentas de edição de vídeo brutas — melhor para conteúdo estruturado baseado em script']
WHERE slug = 'synthesia' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d19p$Geração de música com IA, clonagem de voz, fine-tuning de modelos personalizados$d19p$,
  description      = $d19p$Suno V5.5 (março de 2026) adiciona clonagem de voz, Modelos Personalizados ajustados em suas próprias faixas e um DAW completo com separação de stems. 2M de assinantes pagos, 7M de faixas geradas por dia.$d19p$,
  description_long = $dl19p$Suno é uma plataforma de geração de música com IA que permite aos usuários criar músicas completas — incluindo letra, vocais, melodia e instrumentação — a partir de prompts de texto. Cresceu para se tornar uma das ferramentas de música com IA mais utilizadas, com 2 milhões de assinantes pagos e aproximadamente 7 milhões de faixas geradas por dia em maio de 2026.

O V5.5, lançado em 25 de março de 2026, é a atualização mais significativa desde o lançamento da plataforma. A clonagem de voz permite aos usuários fazer upload de gravações de seus próprios vocais, que o modelo então usa para cantar as músicas geradas com sua voz real, não uma aproximação sintética. Isso é uma mudança importante para músicos independentes.

Os Modelos Personalizados permitem aos usuários fazer fine-tuning do Suno em uma biblioteca de suas próprias faixas. Cada usuário pode treinar até três modelos personalizados, exigindo um mínimo de seis faixas sobre as quais possuem direitos. O modelo resultante reflete o estilo musical, timbre e tendências composicionais do material de treinamento.

My Taste é um sistema de personalização mais leve que aprende com o histórico de geração e os padrões de audição de um usuário para direcionar gerações futuras em direção a estilos preferidos sem fine-tuning explícito.

Suno Studio é um DAW digital completo integrado diretamente na plataforma. Inclui separação de stems e ferramentas Cover e Extend para remixar e estender composições geradas.

Um acordo de licença com a Warner Music Group, anunciado em novembro de 2025, introduziu limites mensais de download para o nível de assinatura comercial. O Suno está levantando uma Série D com uma valoração reportada de US$ 5 bilhões em maio de 2026.$dl19p$,
  pros = ARRAY['Clonagem de voz a partir de gravações enviadas — músicas geradas cantam com sua voz real', 'Modelos Personalizados ajustados em suas próprias faixas — até 3 modelos, mínimo 6 faixas', 'DAW Suno Studio com separação de stems, ferramentas Cover e Extend integradas', 'My Taste aprende com o histórico de geração sem fine-tuning manual', '2M assinantes pagos e 7M faixas/dia — grande comunidade e escala comprovada'],
  cons = ARRAY['O acordo com a Warner Music introduz limites mensais de download no nível comercial', 'O treinamento de Modelos Personalizados requer no mínimo 6 faixas próprias — não acessível a todos', 'Os direitos de uso comercial variam por plano — verifique os termos de licença antes de monetizar', 'A qualidade da clonagem de voz depende da qualidade e duração da amostra vocal enviada']
WHERE slug = 'suno' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d20p$Síntese de voz com IA, TTS multilíngue, transcrição de voz para texto$d20p$,
  description      = $d20p$O modelo Eleven v3 suporta mais de 70 idiomas com 68% menos erros e Audio Tags para direção emocional. Oficialmente fora da Beta (março de 2026). Agora integrado ao Adobe Firefly. SDK v1.0.0 lançado.$d20p$,
  description_long = $dl20p$ElevenLabs é uma plataforma de voz com IA que oferece síntese de texto para voz, clonagem de voz, transcrição de voz para texto e geração de áudio. É usada por podcasters, desenvolvedores de jogos, editoras de audiolivros e equipes empresariais que precisam de síntese de voz de alta qualidade em escala.

O modelo principal Eleven v3, que saiu oficialmente da Beta em março de 2026, suporta mais de 70 idiomas e entrega uma redução de 68% nos erros de pronúncia e fluência em comparação com a versão anterior. Os Audio Tags são um novo mecanismo de prompts que permite aos usuários direcionar a performance emocional inline dentro de um script: tags como [sussurra], [grita], [ri] e [pausa] são colocadas diretamente no texto e o modelo as interpreta como indicações de performance.

Scribe, o produto de voz para texto do ElevenLabs, recebeu duas atualizações significativas. O viés de termos-chave permite aos usuários especificar vocabulário específico do domínio — nomes de produtos, termos técnicos, nomes próprios — que o modelo deve priorizar durante a transcrição. O sinalizador no_verbatim produz transcrições limpas removendo automaticamente palavras de preenchimento e repetições.

O ElevenLabs agora está integrado ao catálogo de modelos do Adobe Firefly, dando aos usuários do Adobe Creative Cloud acesso direto ao Eleven v3 dentro do fluxo de trabalho do Firefly.

O SDK v1.0.0 foi lançado com melhorias importantes na API. Os preços vão de Gratuito ao Starter a $5/mês, Creator a $22/mês, Pro a $99/mês, Scale a $330/mês e Business a $1.320/mês.

Ideal para desenvolvedores, criadores de conteúdo e editoras que precisam de síntese de voz multilíngue, expressiva e confiável em qualquer escala.$dl20p$,
  pros = ARRAY['Eleven v3: 70+ idiomas, 68% menos erros, oficialmente fora da Beta (março de 2026)', 'Audio Tags permitem direção emocional inline — [sussurra], [grita], [ri] — para controle preciso da performance', 'Scribe STT: viés de termos-chave para vocabulário especializado e no_verbatim para transcrições limpas', 'Integrado ao Adobe Firefly — acessível diretamente nos fluxos de trabalho do Creative Cloud', 'SDK v1.0.0 estabiliza a API com melhorias importantes para desenvolvedores'],
  cons = ARRAY['Os limites de caracteres do nível gratuito são baixos — o uso profissional rapidamente requer um plano pago', 'Pro a $99/mês e Scale a $330/mês são caros para criadores individuais', 'A qualidade da clonagem de voz varia para idiomas fora do inglês e idiomas europeus principais', 'Os Audio Tags requerem posicionamento cuidadoso — uso incorreto pode produzir resultados não naturais']
WHERE slug = 'elevenlabs' AND lang = 'pt';
