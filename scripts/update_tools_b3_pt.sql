-- Batch 3 PT (May 2026): flux, recraft-ai, ideogram, seedance-2-0, pika, luma-ai, heygen, adobe-firefly, canva-ai, krea-ai

-- ============================================================
-- 21. FLUX
-- ============================================================
UPDATE tools SET
  best_for         = $d21p$Geração de imagens IA, velocidade sub-segundo, renderização de texto, multi-referência$d21p$,
  description      = $d21p$FLUX.2 [Klein], lançado em 15 de janeiro de 2026, é o modelo Flux mais rápido até hoje: geração sub-segundo em hardware de consumo, até 4 megapixels com renderização de texto aprimorada.$d21p$,
  description_long = $dl21p$FLUX é uma família de modelos de geração de imagens IA desenvolvida pela Black Forest Labs — a equipa por trás da pesquisa original do Stable Diffusion. Os modelos são conhecidos pela alta qualidade visual, renderização precisa de texto e uma abordagem de licenciamento permissiva que suporta uso comercial. O FLUX é utilizado em publicidade profissional, produção de moda e indústrias criativas em todo o mundo.

A suite FLUX.2, lançada em 15 de janeiro de 2026, introduziu quatro variantes: Pro, Flex, Dev e Klein. Klein é o modelo principal voltado para o consumidor e alcança geração de imagens sub-segundo em hardware de consumo padrão — um salto significativo de velocidade em relação à geração anterior. Ao mesmo tempo, a qualidade de saída e o teto de resolução aumentaram, com suporte para imagens de até 4 megapixels.

A multi-referência é uma nova capacidade fundamental no FLUX.2: os utilizadores podem fornecer dezenas de imagens de referência numa única solicitação de geração, e o modelo sintetiza variações que são consistentes com todas as referências fornecidas simultaneamente. Isso é particularmente útil para campanhas publicitárias consistentes com a marca e catálogos de moda onde a coerência visual num grande lote de imagens é necessária.

A renderização de texto foi substancialmente melhorada no FLUX.2. O modelo pode renderizar com precisão o texto especificado em imagens geradas — rótulos de produtos, sinalização, texto de marca e maquetas de interface — com maior precisão do que seu predecessor e a maioria dos modelos concorrentes. Isso acelerou a adoção em pipelines de produção publicitária e de marketing.

Os modelos FLUX estão disponíveis via API em api.bfl.ml para desenvolvedores que desejam integrar a geração nas suas próprias aplicações. Os modelos também são suportados nativamente no ComfyUI para uso de fluxo de trabalho local e podem ser implementados através do Replicate para acesso API baseado na nuvem. A Black Forest Labs oferece um nível freemium com gerações gratuitas limitadas e planos pagos para maior volume e acesso prioritário.

O FLUX é mais adequado para designers, fotógrafos, anunciantes e desenvolvedores que precisam de geração de imagens rápida e de alta resolução com renderização precisa de texto e a flexibilidade de executar localmente ou via API.$dl21p$,
  pros = ARRAY['FLUX.2 [Klein]: geração sub-segundo em hardware de consumo — o modelo Flux mais rápido lançado até hoje', 'Resolução de saída até 4 megapixels sem uma etapa de escalonamento separada', 'Multi-referência: dezenas de imagens de referência numa geração para variações consistentes', 'Renderização de texto aprimorada — rótulos de produtos, sinalização e texto de marca precisos nas imagens', 'Disponível via API (api.bfl.ml), ComfyUI e Replicate — implementação local e na nuvem flexível'],
  cons = ARRAY['O nível gratuito é limitado — o uso profissional de alto volume requer um plano API pago', 'As variantes FLUX.2 Pro e Flex são apenas via API, sem interface web voltada para o consumidor da Black Forest Labs', 'A qualidade da funcionalidade multi-referência pode degradar-se com imagens de referência muito diferentes ou contraditórias', 'Menos amigável para iniciantes do que ferramentas baseadas na web como Midjourney — configuração de API necessária para acesso completo']
WHERE slug = 'flux' AND lang = 'pt';

-- ============================================================
-- 22. RECRAFT AI
-- ============================================================
UPDATE tools SET
  best_for         = $d22p$Geração de imagens IA, design agentivo, integração MCP, arte vetorial$d22p$,
  description      = $d22p$Recraft V4 (17 de fevereiro de 2026) é uma reconstrução completa com Modo Agentivo para design conversacional numa tela infinita, integração MCP com Claude e Cursor, e geração de vídeo em planos Pro.$d22p$,
  description_long = $dl22p$Recraft é uma plataforma de geração de imagens e design IA construída para designers profissionais e equipas criativas. Centra-se na produção de visuais consistentes e alinhados com a marca — incluindo arte vetorial, ícones, ilustrações e maquetas de interface — com controlo de estilo refinado que a distingue dos geradores de imagens de uso geral. A Recraft ficou em primeiro lugar no benchmark FLUX para qualidade de geração de imagens no final de 2025.

O Recraft V4, lançado em 17 de fevereiro de 2026, é uma reconstrução completa da plataforma do zero. A nova capacidade mais significativa é o Modo Agentivo: os utilizadores descrevem objetivos de design através de conversação natural, e a IA refina e itera autonomamente no design numa tela infinita. Em vez de geração com um único prompt, o Modo Agentivo funciona como um parceiro de design — faz perguntas de esclarecimento, propõe variantes e executa fluxos de trabalho de design em múltiplas etapas em resposta a instruções conversacionais.

A integração MCP (Model Context Protocol) permite chamar o Recraft diretamente do Claude, Cursor e outros agentes IA compatíveis com MCP. Isso permite que desenvolvedores e designers que trabalham nesses ambientes gerem imagens sem mudar de ferramenta — uma melhoria significativa do fluxo de trabalho para equipas que usam o Claude ou Cursor como interface principal.

A geração de vídeo está disponível nos planos Pro, com suporte para até duas gerações de vídeo paralelas simultaneamente. A adição de vídeo traz o Recraft para fluxos de produção multimédia mais amplos, complementando os seus pontos fortes existentes na criação de imagens estáticas e ativos vetoriais.

A Recraft levantou uma rodada Série B de 30 milhões de dólares liderada pela Accel no início de 2026, refletindo forte adoção empresarial e confiança dos investidores na trajetória da plataforma. O nível gratuito fornece acesso às funcionalidades de geração de imagens principais com limites de uso. Os planos Pro desbloqueiam geração de vídeo, saídas de maior resolução, licenças comerciais e acesso prioritário à fila.

O Recraft é mais adequado para designers e equipas criativas que precisam de geração de imagens consistente e alinhada com a marca com capacidades de design agentivo, e para desenvolvedores que desejam integrar a geração de imagens diretamente nos seus fluxos de trabalho de agentes IA via MCP.$dl22p$,
  pros = ARRAY['Modo Agentivo: refinamento de design conversacional em tela infinita — não apenas prompts únicos', 'Integração MCP — gere imagens diretamente do Claude, Cursor e outros agentes IA', 'Planos Pro suportam até 2 gerações de vídeo paralelas ao lado da geração de imagens', 'Forte saída de arte vetorial, ícones e ilustrações — desenvolvido para designers profissionais', 'Série B de 30 M$ liderada pela Accel — bem financiada com forte impulso de adoção empresarial'],
  cons = ARRAY['A geração de vídeo é apenas para planos Pro — o nível gratuito foca em imagens com limites de uso', 'O Modo Agentivo é um novo paradigma — requer adaptação para utilizadores habituados a ferramentas de prompt único', 'A integração MCP requer um ambiente host compatível (Claude, Cursor) — não é autónoma', 'Menos adequado para imagens fotorrealistas de estilo fotográfico em comparação com FLUX ou Midjourney']
WHERE slug = 'recraft-ai' AND lang = 'pt';

-- ============================================================
-- 23. IDEOGRAM
-- ============================================================
UPDATE tools SET
  best_for         = $d23p$Geração de imagens IA, texto na imagem, troca de rostos, edição de tela$d23p$,
  description      = $d23p$Ideogram 3.0 (2026) adiciona Face Swap, ferramentas de tela Magic Fill/Extend e referência de estilo multi-imagem até 3 imagens. Renderização de mãos aprimorada e texto multilingue fiável em 3+ idiomas.$d23p$,
  description_long = $dl23p$O Ideogram é uma plataforma de geração de imagens IA que construiu uma sólida reputação para a renderização precisa de texto em imagens geradas — uma capacidade com a qual a maioria dos modelos concorrentes tem dificuldades. É utilizado por designers, profissionais de marketing e criadores de conteúdo que precisam de visuais com texto, como cartazes, rótulos de produtos, gráficos para redes sociais e maquetas.

O Ideogram 3.0, lançado em 2026, é a versão mais completa da plataforma até hoje. O Face Swap permite que os utilizadores substituam rostos em imagens geradas ou carregadas por um rosto de referência especificado, permitindo imagens personalizadas sem uma ferramenta dedicada separada. O Magic Fill e o Magic Extend adicionam capacidades de edição de tela: o Magic Fill remove objetos indesejados e preenche a área com conteúdo contextualmente adequado, enquanto o Magic Extend expande a tela da imagem em qualquer direção mantendo a consistência visual com o original.

A referência de estilo multi-imagem suporta até três imagens de referência numa única geração, permitindo que o modelo misture elementos estilísticos de múltiplas fontes. Isso é particularmente útil para manter a consistência da marca numa série de imagens ou para iterar numa direção criativa que extrai de várias inspirações simultaneamente.

A renderização de mãos está visivelmente melhorada no Ideogram 3.0, abordando uma das queixas de qualidade mais persistentes sobre os geradores de imagens IA. O suporte a texto longo também melhorou — o modelo pode renderizar cadeias de texto estendidas numa imagem com taxas de erro mais baixas. A renderização de texto multilingue está confirmada como fiável para espanhol, italiano e francês, ampliando a utilidade da plataforma para mercados não anglofonos.

Os preços em 2026 estão estruturados em quatro níveis: Gratuito com 10 gerações lentas por dia sem pagamento necessário, Basic a 8 $/mês, Plus a 20 $/mês e Pro a 48 $/mês. Os níveis superiores desbloqueiam velocidades de geração mais rápidas, acesso prioritário à fila e direitos de uso comercial.

O Ideogram é mais adequado para designers e profissionais de marketing que precisam de geração de texto na imagem fiável, edição de tela para correções de pós-produção e criação de imagens consistente em estilo a partir de múltiplas referências.$dl23p$,
  pros = ARRAY['Renderização de texto em imagens de classe mundial — texto multilingue e de múltiplas palavras preciso', 'Face Swap integrado — nenhuma ferramenta separada necessária para imagens personalizadas', 'Magic Fill e Magic Extend para edição de tela não destrutiva e expansão de imagens', 'Referência de estilo multi-imagem (até 3) para geração mista ou consistente com a marca', 'Nível gratuito generoso: 10 gerações lentas por dia sem cartão de crédito necessário'],
  cons = ARRAY['Gerações lentas no nível gratuito — plano pago necessário para velocidade de produção prática', 'Pro a 48 $/mês tem preço mais alto do que alguns concorrentes com qualidade de saída semelhante', 'Menos adequado para cenas fotorrealistas em comparação com FLUX ou Midjourney V8', 'A fiabilidade do texto multilingue está confirmada para 3 idiomas — outros idiomas ainda podem produzir erros']
WHERE slug = 'ideogram' AND lang = 'pt';

-- ============================================================
-- 24. SEEDANCE 2.0
-- ============================================================
UPDATE tools SET
  best_for         = $d24p$Geração de vídeo IA, entrada multimodal, consistência de personagens, 1080p$d24p$,
  description      = $d24p$Seedance 2.0 da ByteDance (12 de fevereiro de 2026) aceita texto, imagens, áudio e vídeo. Temporal Anchor elimina cintilação, produz clipes 1080p até 60 segundos, 30-40% mais rápido que v1.$d24p$,
  description_long = $dl24p$O Seedance 2.0 é um modelo de geração de vídeo IA desenvolvido pela ByteDance, a empresa-mãe do TikTok. Lançado em 12 de fevereiro de 2026, é um dos modelos de geração de vídeo de acesso aberto mais capazes disponíveis, notável por aceitar uma ampla gama de modalidades de entrada e pela sua tecnologia Temporal Anchor que aborda a consistência de personagens entre fotogramas.

O Seedance 2.0 aceita até 12 ativos por solicitação de geração, abrangendo prompts de texto, imagens de referência, faixas de áudio e clipes de vídeo existentes. Esta capacidade de entrada multimodal permite que os criadores ancore uma geração com referências visuais, adicionem uma faixa de áudio específica e direcionem a narrativa com texto — tudo numa única solicitação. Poucos modelos de geração de vídeo concorrentes suportam esta amplitude de tipos de entrada simultaneamente.

O Temporal Anchor é o principal diferenciador técnico no Seedance 2.0. É uma estrutura para manter a aparência consistente de personagens, a identidade de objetos e a continuidade de cenas ao longo de toda a duração de um clipe gerado. Modelos de geração de vídeo anteriores sofriam de morphing e cintilação — onde o rosto de um personagem ou a aparência de um objeto mudava sutilmente ou abruptamente entre fotogramas. O Temporal Anchor elimina isso, permitindo personagens consistentes em clipes de até 60 segundos de duração.

A saída é nativa 1080p, sem escalonamento necessário. A velocidade de geração é 30-40% mais rápida do que o Seedance 1.0, tornando o modelo mais prático para fluxos de trabalho de produção iterativos. O nível gratuito inclui direitos comerciais e saídas sem marca d'água — uma vantagem significativa sobre os concorrentes que restringem o uso comercial a planos pagos.

O Seedance 2.0 está integrado no Krea AI, HeyGen e ComfyUI, permitindo que os utilizadores acedam às suas capacidades dentro dos próprios fluxos de trabalho e interfaces dessas plataformas sem gerir uma integração API separada.

O Seedance 2.0 é mais adequado para criadores de vídeo, profissionais de marketing e desenvolvedores que precisam de geração de vídeo com personagens consistentes em 1080p sem marca d'água e com direitos comerciais incluídos sem custo, e para equipas que usam Krea AI, HeyGen ou ComfyUI nos seus fluxos de trabalho existentes.$dl24p$,
  pros = ARRAY['Aceita até 12 entradas mistas (texto, imagem, áudio, vídeo) numa única solicitação de geração', 'Temporal Anchor elimina morphing e cintilação — personagens consistentes até 60 segundos', 'Saída nativa 1080p a 30-40% de velocidade superior ao Seedance 1.0', 'O nível gratuito inclui direitos comerciais e sem marca d''água — raro entre geradores de vídeo IA', 'Integrado no Krea AI, HeyGen e ComfyUI — disponível em fluxos de trabalho existentes'],
  cons = ARRAY['Menor reconhecimento de marca em comparação com Kling AI, Runway ou Sora', 'A origem ByteDance pode levantar preocupações de privacidade de dados para alguns utilizadores empresariais', 'Clipes máximos de 60 segundos — não adequado para produção de vídeo longa ou de cenas completas', 'A comunidade e a documentação de terceiros ainda estão a amadurecer em comparação com ferramentas mais estabelecidas']
WHERE slug = 'seedance-2-0' AND lang = 'pt';

-- ============================================================
-- 25. PIKA
-- ============================================================
UPDATE tools SET
  best_for         = $d25p$Geração de vídeo IA, movimento com física, sincronização labial, gémeo digital$d25p$,
  description      = $d25p$Pika 2.5 introduz geração de vídeo com física (peso, fluxo de líquidos), efeitos sonoros integrados, sincronização labial Pikaformance, PikaStream para chamadas de vídeo IA ao vivo e AI Selves personalizados.$d25p$,
  description_long = $dl25p$O Pika é uma plataforma de geração de vídeo IA focada na criação de vídeo expressivo e fisicamente fundamentado com um conjunto de funcionalidades que vão além da simples geração de texto para vídeo. Evoluiu para uma plataforma multi-produto que abrange geração de vídeo, sincronização labial, vídeo IA ao vivo e gémeos digitais personalizados — todos acessíveis a partir de uma única conta.

O Pika 2.5 introduz a geração com consciência física como capacidade principal. O modelo simula propriedades físicas do mundo real — peso dos objetos, amassamento e deformação, e dinâmica de fluxo de líquidos — produzindo vídeo onde o movimento se comporta de acordo com as leis físicas e não apenas padrões estatísticos aprendidos. Um objeto em queda desacelera corretamente, uma bola comprime-se no impacto e a água flui com tensão superficial realista. Este nível de plausibilidade física distingue o Pika 2.5 da maioria dos geradores de vídeo concorrentes.

Os efeitos sonoros integrados são automaticamente combinados com a ação num vídeo gerado. O Pika analisa o conteúdo visual e adiciona áudio contextualmente apropriado — passos, impactos, som ambiente e áudio ambiental — sem requerer produção de áudio separada ou sincronização manual. Isso acelera a produção para conteúdo de redes sociais, publicidade e vídeo de formato curto onde o áudio e o visual devem estar estreitamente alinhados.

O Pikaformance é uma ferramenta de sincronização labial de rosto falante: os utilizadores fornecem um retrato e uma faixa de áudio, e o Pika gera um vídeo realista com sincronização labial do rosto falando o áudio fornecido. O PikaStream 1.0 vai mais longe — é um sistema em tempo real que dá aos agentes IA um rosto e voz para chamadas de vídeo ao vivo, permitindo que apresentadores alimentados por IA ou avatares de atendimento ao cliente participem em interações de vídeo ao vivo.

O Pika AI Selves cria um gémeo digital IA personalizado a partir do rosto, voz e memória do utilizador. O gémeo pode representar o utilizador em interações, gerar mensagens de vídeo personalizadas e manter uma identidade consistente entre sessões. Os preços abrangem quatro níveis: Gratuito com 80 créditos por mês, Standard a 8 $/mês, Pro a 28 $/mês e Fancy a 76 $/mês em faturação anual.

O Pika é mais adequado para criadores de conteúdo, profissionais de marketing e desenvolvedores que precisam de vídeo fisicamente realista com áudio integrado, e para qualquer pessoa que explore vídeo ao vivo alimentado por IA, sincronização labial ou identidade digital personalizada.$dl25p$,
  pros = ARRAY['Geração com consciência física: peso, amassamento, fluxo de líquidos — o movimento segue leis físicas reais', 'Efeitos sonoros integrados automaticamente combinados com a ação do vídeo — sem produção de áudio separada', 'Sincronização labial Pikaformance: vídeo realista de rosto falante a partir de retrato e entrada de áudio', 'PikaStream 1.0: rosto e voz IA em tempo real para chamadas de vídeo ao vivo e interações de agentes IA', 'Pika AI Selves: gémeo digital personalizado com rosto, voz e memória persistente'],
  cons = ARRAY['Nível gratuito limitado a 80 créditos/mês — rapidamente esgotado em uso de produção ativa', 'A qualidade da simulação física varia com cenas complexas de múltiplos objetos', 'PikaStream e AI Selves são novas funcionalidades — casos extremos e estabilidade ainda estão a amadurecer', 'Plano Fancy a 76 $/mês (anual) é caro em comparação com ferramentas de vídeo de uso único', 'Menos adequado para vídeo longo ou cinematográfico em comparação com Kling AI ou Sora']
WHERE slug = 'pika' AND lang = 'pt';

-- ============================================================
-- 26. LUMA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d26p$Geração de vídeo IA, edição por fotogramas-chave, qualidade nativa 1080p$d26p$,
  description      = $d26p$Ray3 entrega vídeo nativo 1080p a 4x maior velocidade e 3x menor custo que Ray2. Ray3 Modify permite edição por fotogramas-chave e referência de personagens; Modify with Instructions aplica alterações em linguagem natural aos clipes.$d26p$,
  description_long = $dl26p$O Luma AI é uma plataforma de geração de vídeo IA conhecida pelo produto Dream Machine e pela série de modelos Ray subjacentes. A plataforma é acessível através de uma aplicação web com um nível gratuito e planos pagos para uso de maior volume, e os seus modelos também são licenciados a outras plataformas via API.

O Ray3, o modelo de geração atual lançado em 2026, é um salto substancial em relação ao seu predecessor. A saída nativa 1080p é agora a resolução padrão — nenhuma passagem de escalonamento separada necessária. A velocidade de geração é quatro vezes mais rápida do que o Ray2, e o custo por geração caiu três vezes, tornando o trabalho criativo de alto volume significativamente mais acessível para utilizadores profissionais.

O Ray3 Modify é um modo de edição que permite aos utilizadores alterar clipes de vídeo existentes em vez de gerar do zero. Os controlos de fotogramas-chave permitem que os criadores especifiquem exatamente o que deve aparecer no início, meio e fim de um clipe, enquanto os controlos de referência de personagens mantêm a identidade e aparência do sujeito em edições e gerações. O controlo de fotograma inicial e final dá autoridade precisa sobre com que um vídeo começa e termina — útil para tomadas de transição e ciclos contínuos.

O Modify with Instructions estende a edição à linguagem natural: os utilizadores descrevem as alterações que desejam num clipe em texto simples, e o modelo aplica-as direcionalmente. Isso reduz o limiar de habilidade para edição de vídeo ao mesmo tempo que dá aos utilizadores experientes um caminho de iteração mais rápido do que o controlo fotograma a fotograma.

O Enterprise Zero-Retention é uma opção de privacidade de dados para clientes empresariais que garante que o conteúdo carregado e as saídas geradas não são armazenados pela infraestrutura do Luma AI após o fim da sessão.

O Luma AI é mais adequado para criadores de vídeo, agências e desenvolvedores que querem geração de vídeo de alta fidelidade 1080p com capacidades de edição, e para empresas que requerem garantias de privacidade de dados em conteúdo gerado por IA.$dl26p$,
  pros = ARRAY['Ray3 entrega 1080p nativo a 4x maior velocidade e 3x menor custo que Ray2', 'Ray3 Modify: controlos de fotogramas-chave e referência de personagens para edição precisa de clipes', 'Controlo de fotograma inicial/final para transições contínuas e ciclos', 'Modify with Instructions: alterações direcionadas em linguagem natural em clipes completos', 'Opção Enterprise Zero-Retention para privacidade de dados em projetos sensíveis'],
  cons = ARRAY['O nível gratuito limita a duração dos clipes e o volume de geração mensal', 'As gerações de alta qualidade 1080p consomem créditos rapidamente nos planos pagos', 'A consistência de referência de personagens pode quebrar em cenas complexas ou com movimento rápido', 'Menos funcionalidades de colaboração integradas do que plataformas de produção de vídeo dedicadas']
WHERE slug = 'luma-ai' AND lang = 'pt';

-- ============================================================
-- 27. HEYGEN
-- ============================================================
UPDATE tools SET
  best_for         = $d27p$Vídeos com avatares IA, escalonamento 4K, conteúdo de marca consistente$d27p$,
  description      = $d27p$Avatar V cria avatares fotorrealistas a partir de uma gravação de webcam de 15 segundos. Escalonamento de vídeo 4K a 120fps, Brand System para extração automática de ativos de marca e Seedance 2.0 para vídeo IA cinematográfico.$d27p$,
  description_long = $dl27p$O HeyGen é uma plataforma de vídeo IA construída em torno da criação de avatares digitais e produção de vídeo de marca. É utilizado principalmente por equipas de marketing, criadores de conteúdo e empresas que precisam de produzir vídeo profissional em escala sem equipamento de estúdio ou talento em frente à câmara.

O Avatar V é o modelo de avatar mais realista na gama do HeyGen até hoje. Uma gravação de webcam de 15 segundos é tudo o que é necessário para gerar um avatar pessoal fotorrealista — reduzindo significativamente a barreira de tempo e equipamento em comparação com os fluxos de trabalho anteriores de criação de avatares. O avatar resultante corresponde à aparência, voz e maneiras do utilizador com alta fidelidade.

A qualidade do vídeo foi atualizada com escalonamento 4K e interpolação de fotogramas que leva as sequências padrão de 24fps para 120fps. O resultado é uma saída suave e de qualidade cinematográfica que aguenta em ecrãs grandes — relevante para sinalização digital, ecrãs de conferência e ativos de marketing de alta resolução.

O Brand System aborda a consistência ao nível organizacional: os utilizadores fornecem o URL do site da empresa e o HeyGen extrai automaticamente o logótipo, a paleta de cores e a tipografia da marca. Esses ativos são então aplicados automaticamente aos vídeos gerados, garantindo que cada saída corresponda aos padrões de marca sem trabalho de design manual.

O Seedance 2.0, integrado na plataforma, é um modelo de geração de vídeo IA focado no movimento cinematográfico e na composição de cenas. O Instant Highlights v2 processa conteúdo de vídeo de longa duração e extrai automaticamente clipes curtos prontos para a plataforma, otimizados para formatos e durações de redes sociais.

O HeyGen usa um sistema de Créditos Premium para faturação, com estimativas de custo exibidas antes da geração para que os utilizadores possam ver exatamente o que um trabalho custará antes de se comprometer. O HeyGen é mais adequado para equipas de marketing, profissionais de L&D e criadores que precisam de vídeo de avatar de marca e alta qualidade em escala.$dl27p$,
  pros = ARRAY['Avatar V: avatar fotorrealista a partir de uma gravação de webcam de 15 segundos', 'Escalonamento de vídeo 4K com interpolação de fotogramas de 24fps para 120fps', 'Brand System extrai automaticamente logótipo, cores e fontes do URL do site da empresa', 'Integração Seedance 2.0 para geração de vídeo IA cinematográfico', 'Estimativas de custo prévias no sistema de Créditos Premium antes de cada geração'],
  cons = ARRAY['Apenas pago — sem nível gratuito significativo para trabalho de produção contínuo', 'Os Créditos Premium podem esgotar-se rapidamente para vídeo de alta resolução ou longa duração', 'O realismo do avatar, embora melhorado, ainda é identificável como IA em planos aproximados', 'A extração automática do Brand System pode requerer correção manual para diretrizes de marca complexas']
WHERE slug = 'heygen' AND lang = 'pt';

-- ============================================================
-- 28. ADOBE FIREFLY
-- ============================================================
UPDATE tools SET
  best_for         = $d28p$Geração de imagens e vídeo IA, integração Creative Cloud, conteúdo seguro para a marca$d28p$,
  description      = $d28p$Firefly AI Assistant (beta pública, abril 2026) permite fluxos de trabalho agentivos conversacionais de múltiplas etapas no Photoshop, Premiere e Lightroom. Geração IA ilimitada para todos os subscritores pagos — limites de crédito removidos.$d28p$,
  description_long = $dl28p$O Adobe Firefly é a família de modelos de IA generativa da Adobe integrada nas aplicações Creative Cloud, incluindo Photoshop, Premiere Pro, Lightroom, Illustrator e Express. É posicionado como a camada de geração IA segura para marcas e com licença comercial para trabalho criativo profissional — todos os modelos são treinados em conteúdo licenciado e Adobe Stock, evitando a ambiguidade de direitos de autor dos modelos treinados em dados web extraídos.

O Firefly AI Assistant, lançado em beta pública em 27 de abril de 2026, é a expansão de capacidades mais significativa até hoje. Introduz fluxos de trabalho agentivos conversacionais e de múltiplas etapas: os utilizadores descrevem uma tarefa criativa em linguagem natural e o assistente executa uma sequência de operações em múltiplas aplicações Creative Cloud sem alteração manual. Um único prompt pode acionar a geração de ativos no Firefly, composição no Photoshop, gradação de cores no Lightroom e montagem no Premiere.

O Precision Flow, atualmente em beta, muda a forma como os resultados de geração são apresentados. Um único prompt gera uma gama de resultados num espectro visual, e os utilizadores navegam entre eles usando um controlo deslizante em vez de regenerar repetidamente. Isso torna mais rápido explorar o espaço de design e chegar à saída que serve.

Os limites de crédito foram removidos inteiramente para todos os subscritores do Creative Cloud pagos, permitindo geração IA ilimitada sem medição. O catálogo de modelos expandiu-se para mais de 30 modelos, adicionando Kling 3.0, Veo 3.1, Runway Gen-4.5 e ElevenLabs Multilingual v2 ao lado dos modelos proprietários da Adobe.

Os Modelos Personalizados, agora em beta pública, permitem que os utilizadores ajustem o Firefly nas suas próprias bibliotecas de imagens, criando um modelo de geração que reflete uma marca visual específica ou direção artística.

O Adobe Firefly é mais adequado para designers profissionais e equipas criativas já no ecossistema Adobe que precisam de geração IA comercialmente segura integrada nos seus fluxos de trabalho de produção existentes.$dl28p$,
  pros = ARRAY['Firefly AI Assistant: fluxos de trabalho agentivos conversacionais no Photoshop, Premiere e Lightroom', 'Geração IA ilimitada para todos os subscritores pagos — sem limites de crédito', 'Precision Flow: explore uma gama de resultados com um controlo deslizante em vez de regenerar repetidamente', 'Mais de 30 modelos incluindo Kling 3.0, Veo 3.1, Runway Gen-4.5, ElevenLabs Multilingual v2', 'Dados de treino com licença comercial — seguro para a marca em uso profissional e empresarial'],
  cons = ARRAY['Requer uma subscrição ativa do Adobe Creative Cloud — sem produto gratuito autónomo', 'Os fluxos de trabalho agentivos e o Precision Flow ainda estão em beta — espere irregularidades', 'Os Modelos Personalizados requerem uma biblioteca de imagens próprias e tempo de ajuste para configuração', 'O valor total só é realizado por utilizadores profundamente incorporados no ecossistema de aplicações da Adobe']
WHERE slug = 'adobe-firefly' AND lang = 'pt';

-- ============================================================
-- 29. CANVA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d29p$Design IA, edição agentiva, consistência de marca, experiências web interativas$d29p$,
  description      = $d29p$Canva AI 2.0 (Canva Create 2026) introduz edição agentiva, prompts de voz, Brand Intelligence e Memory Library. Canva Code 2.0 cria experiências web interativas completas a partir de um único prompt.$d29p$,
  description_long = $dl29p$O Canva AI é a camada de design alimentada por IA integrada em toda a plataforma Canva, que tem mais de 200 milhões de utilizadores em todo o mundo. As funcionalidades IA abrangem geração de imagens, assistência à escrita, edição de vídeo, geração de código e agora fluxos de trabalho de design agentivo completos — todos acessíveis no mesmo editor visual que os não-designers têm usado há anos.

O Canva AI 2.0, lançado no Canva Create 2026, é uma atualização fundamental. A edição agentiva permite que os utilizadores descrevam alterações de design de forma conversacional e que a plataforma execute operações de múltiplas etapas automaticamente — redimensionamento, recoloração, reorganização e reformatação sem interação manual com elementos individuais. Os prompts de voz estendem isso a instruções faladas, removendo a necessidade de escrever para utilizadores que preferem direção verbal.

O Brand Intelligence automatiza a consistência de marca ao nível organizacional: os utilizadores fornecem o URL do site da empresa e o Canva extrai automaticamente fontes, paletas de cores e estilo visual. Estes são aplicados de forma consistente em todos os designs gerados e editados, reduzindo o esforço manual de verificação de conformidade de marca.

A Memory Library é um sistema de memória de estilo entre projetos. As escolhas de design, os layouts preferidos e os elementos de marca feitos num projeto são lembrados e aplicados de forma inteligente a projetos futuros — criando continuidade em todo o histórico de design de um utilizador em vez de começar do zero cada vez.

O Canva Code 2.0 gera experiências web interativas completas a partir de um único prompt, incluindo navegação, animações e elementos funcionais — não apenas maquetas estáticas. Os Connectors integram o Canva diretamente com Slack, Gmail, Google Drive, Notion, Zoom, HubSpot, Linear e ferramentas Atlassian. O modo Offline do Canva permite trabalho de design sem ligação à internet, e a ferramenta de animação Cavalry é agora gratuita para todos os utilizadores.

O Canva AI é mais adequado para profissionais de marketing, pequenos empresários, educadores e não-designers que precisam rapidamente de conteúdo visual polido e consistente com a marca, e para equipas que querem ferramentas de design e comunicação numa única plataforma.$dl29p$,
  pros = ARRAY['Edição agentiva e prompts de voz executam alterações de design de múltiplas etapas de forma conversacional', 'Brand Intelligence extrai automaticamente fontes, cores e estilo do URL do site da empresa', 'Memory Library mantém consistência de estilo entre projetos sem configuração manual', 'Canva Code 2.0 gera experiências web interativas completas a partir de um único prompt', 'Connectors com Slack, Gmail, Notion, Zoom, HubSpot, Linear, Atlassian e mais'],
  cons = ARRAY['As funcionalidades agentivas são novas — instruções complexas de múltiplas etapas podem produzir resultados inconsistentes', 'A forte dependência do ecossistema Canva limita a portabilidade dos designs para outras ferramentas', 'O nível gratuito restringe o acesso a modelos premium, kits de marca e algumas funcionalidades IA', 'As experiências web do Canva Code 2.0 não são um substituto para sites de produção desenvolvidos à medida']
WHERE slug = 'canva-ai' AND lang = 'pt';

-- ============================================================
-- 30. KREA AI
-- ============================================================
UPDATE tools SET
  best_for         = $d30p$Geração de imagens IA, transferência de estilo, fluxos de trabalho em nós, edição por região$d30p$,
  description      = $d30p$O modelo base Krea 2 (12 de maio de 2026) construído do zero para estética e transferência de estilo. Krea Edit adiciona edição por região, reilluminação e mudanças de câmara. Krea Nodes constrói fluxos de trabalho visuais a partir de texto.$d30p$,
  description_long = $dl30p$O Krea AI é uma plataforma de IA generativa focada na criação, edição de imagens e construção de fluxos de trabalho visuais. Desenvolveu uma comunidade fiel entre artistas e designers que priorizam a qualidade estética e a fidelidade de estilo acima do fotorrealismo bruto — os modelos do Krea são ajustados para coerência visual e transferência de estilo artístico em vez de precisão documental.

O Krea 2, o modelo de imagem base lançado em 12 de maio de 2026, foi construído do zero em vez de ser ajustado a partir de um modelo base existente. O foco do desenvolvimento foi a estética e a transferência de estilo: o modelo é projetado para compreender e replicar estilos visuais de imagens de referência com alta precisão, tornando-o particularmente eficaz para artistas que querem saídas IA que correspondam a uma direção artística específica sem engenharia de prompt extensiva.

O Krea Edit, lançado em 9 de março de 2026, é uma ferramenta de edição baseada em regiões que permite alterações direcionadas a áreas específicas de uma imagem. As capacidades incluem edição de região para modificações isoladas, reilluminação para alterar a direção e qualidade das fontes de luz numa cena, mudanças de câmara para simular diferentes distâncias focais e perspetivas, e expansão de imagem para estender a composição além dos seus limites originais — tudo aplicado de forma não destrutiva.

Um grande redesign de interface em março de 2026 unificou a navegação, introduziu gestão de ativos por arrastar e largar e adicionou um modo de voz para entrada de prompts sem mãos. O Krea Nodes permite que os utilizadores construam fluxos de trabalho de geração de múltiplas etapas descrevendo-os em texto — o sistema converte descrições em linguagem natural de um fluxo de trabalho num gráfico de nós funcional.

O Seedance 2.0 está disponível em todos os planos pagos do Krea, adicionando capacidade de geração de vídeo ao lado das ferramentas focadas em imagens da plataforma.

O Krea AI é mais adequado para artistas, designers e tecnólogos criativos que priorizam qualidade estética e controlo de estilo na geração de imagens IA, e para utilizadores que querem construir pipelines de geração personalizados através de um editor de nós visual.$dl30p$,
  pros = ARRAY['Modelo base Krea 2 construído do zero com foco em estética e transferência de estilo', 'Krea Edit: edição por região, reilluminação, mudanças de câmara e expansão de imagem numa única ferramenta', 'Krea Nodes: construir fluxos de trabalho de geração baseados em nós a partir de uma descrição em texto simples', 'Modo de voz e interface unificada redesenhada para iteração criativa mais rápida', 'Geração de vídeo Seedance 2.0 incluída em todos os planos pagos'],
  cons = ARRAY['Comunidade de utilizadores menor e menos recursos de aprendizagem do que Midjourney ou Adobe Firefly', 'O construtor de fluxos de trabalho Krea Nodes tem uma curva de aprendizagem para utilizadores não familiarizados com gráficos de nós', 'O nível gratuito limita a resolução e o volume de geração para trabalho criativo contínuo', 'Menos adequado para saídas fotorrealistas — os pontos fortes são os estilos estéticos e artísticos']
WHERE slug = 'krea-ai' AND lang = 'pt';
