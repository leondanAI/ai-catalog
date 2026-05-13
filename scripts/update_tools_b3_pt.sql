-- Batch 3 PT: flux, recraft-ai, ideogram, seedance-2-0, pika, luma-ai, heygen, adobe-firefly, canva-ai, krea-ai

UPDATE tools SET
  best_for         = $d21p$Geração de imagens fotorrealistas em alta resolução$d21p$,
  description      = $d21p$FLUX é o modelo de geração de imagens da Black Forest Labs, oferecendo qualidade fotorrealista excepcional e seguimento preciso de instruções, disponível em versão open source.$d21p$,
  description_long = $dl21p$FLUX.1 foi aclamado pela comunidade de IA como um dos melhores modelos de geração de imagens disponíveis. Nas versões dev e schnell é de código aberto, enquanto pro oferece a máxima qualidade. Destaca-se por gerar imagens com texto correto, anatomia precisa e composições complexas. Amplamente usado como base para modelos personalizados com fine-tuning e em plataformas de geração de imagens profissionais.$dl21p$,
  pros = ARRAY['Qualidade fotorrealista excepcional', 'Versão open source disponível', 'Excelente geração de texto nas imagens', 'Base para modelos personalizados'],
  cons = ARRAY['Requer hardware poderoso para uso local', 'A versão Pro é paga', 'Curva de aprendizado para fine-tuning']
WHERE slug = 'flux' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d22p$Design vetorial e geração de imagens para marcas$d22p$,
  description      = $d22p$Recraft AI é uma ferramenta de geração de imagens especializada em design gráfico, com suporte a SVG, ícones vetoriais e estilos de marca consistentes.$d22p$,
  description_long = $dl22p$Recraft se diferencia de outros geradores de imagens pelo foco no design gráfico profissional. Permite gerar imagens no formato SVG (vetorial), o que é único no mercado. A função Brand Kit permite definir cores, estilos e elementos visuais para manter consistência em todas as gerações. Ideal para designers UX/UI, equipes de marketing e criadores de conteúdo que precisam de gráficos consistentes com sua identidade visual.$dl22p$,
  pros = ARRAY['Suporte a SVG e vetoriais', 'Brand Kit para consistência visual', 'Ícones e elementos de UI', 'Alta qualidade em design gráfico'],
  cons = ARRAY['Menos versátil para arte conceitual', 'Interface menos intuitiva para iniciantes', 'Créditos limitados no nível gratuito']
WHERE slug = 'recraft-ai' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d23p$Geração de imagens com texto perfeitamente integrado$d23p$,
  description      = $d23p$Ideogram é o modelo de geração de imagens mais preciso para incluir texto legível e bem projetado dentro das imagens, ideal para pôsteres, cartazes e materiais de marketing.$d23p$,
  description_long = $dl23p$Ideogram resolveu um dos maiores problemas da geração de imagens por IA: o texto ilegível. Seu modelo gera texto perfeitamente integrado nas imagens, com tipografias variadas e ortografia correta. Ideogram 2.0 adiciona controle de paleta de cores e geração de padrões. A ferramenta preferida para criar materiais de marketing, capas, cartazes e qualquer imagem que exija texto visível.$dl23p$,
  pros = ARRAY['Texto legível e bem projetado nas imagens', 'Controle de paleta de cores', 'Ideal para materiais de marketing', 'Interface muito fácil de usar'],
  cons = ARRAY['Menos forte em imagens fotorrealistas complexas', 'Menos opções de estilo que o Midjourney', 'Limites diários no nível gratuito']
WHERE slug = 'ideogram' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d24p$Geração de vídeo criativo de alta qualidade com IA$d24p$,
  description      = $d24p$Seedance 2.0 é o modelo de geração de vídeo da ByteDance, produzindo clipes com movimentos fluidos, coerência visual e alta resolução a partir de texto ou imagem.$d24p$,
  description_long = $dl24p$Seedance 2.0, desenvolvido pela ByteDance (criadores do TikTok), é um dos modelos de vídeo IA mais capazes do mercado. Gera vídeos com movimentos naturais, iluminação cinematográfica e coerência de personagens ao longo do clipe. Especialmente forte em vídeos cinematográficos e conteúdo criativo. Disponível através da plataforma PixelDance e em breve via APIs para desenvolvedores.$dl24p$,
  pros = ARRAY['Alta qualidade cinematográfica', 'Coerência de personagens e cenários', 'Movimentos naturais e fluidos', 'Apoiado pela ByteDance'],
  cons = ARRAY['Acesso limitado atualmente', 'Longos tempos de geração', 'Menos controle criativo granular']
WHERE slug = 'seedance-2-0' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d25p$Edição e geração de vídeo com IA acessível$d25p$,
  description      = $d25p$Pika é uma plataforma de geração e edição de vídeo com IA que permite criar clipes criativos a partir de texto ou imagem, com ferramentas de edição intuitivas e efeitos únicos.$d25p$,
  description_long = $dl25p$Pika Labs construiu uma das interfaces mais acessíveis para geração de vídeo com IA. Permite criar vídeos curtos a partir de texto, imagem ou vídeo existente, com efeitos especiais como squish, inflate e mais. Pika 2.0 melhorou significativamente a qualidade dos movimentos e a coerência visual. Popular entre criadores de conteúdo em redes sociais, especialmente para clipes virais e efeitos criativos.$dl25p$,
  pros = ARRAY['Interface muito acessível', 'Efeitos criativos únicos', 'Geração a partir de texto, imagem e vídeo', 'Popular para conteúdo em redes sociais'],
  cons = ARRAY['Qualidade inferior ao Runway ou Kling em clipes complexos', 'Vídeos limitados a poucos segundos no nível gratuito', 'Menos controle técnico']
WHERE slug = 'pika' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d26p$Geração de vídeo fotorrealista e captura 3D$d26p$,
  description      = $d26p$Luma AI oferece geração de vídeo de alta qualidade com seu modelo Dream Machine, além de capacidades de captura e reconstrução 3D a partir de vídeos de smartphones.$d26p$,
  description_long = $dl26p$Luma AI é conhecida por dois produtos principais: Dream Machine (geração de vídeo com IA) e Luma 3D (captura de cenas 3D a partir de vídeos). Dream Machine produz vídeos com movimentos fluidos e qualidade fotorrealista, especialmente forte em cenas com água, fumaça e outros efeitos físicos complexos. A função 3D permite a designers e desenvolvedores capturar objetos reais e convertê-los em modelos 3D.$dl26p$,
  pros = ARRAY['Vídeos fotorrealistas de alta qualidade', 'Captura e reconstrução 3D', 'Excelente em efeitos físicos complexos', 'API disponível para desenvolvedores'],
  cons = ARRAY['Tempos de geração lentos', 'Créditos gratuitos limitados', 'A função 3D requer boas condições de gravação']
WHERE slug = 'luma-ai' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d27p$Vídeos com avatares de IA para marketing e vendas$d27p$,
  description      = $d27p$HeyGen é uma plataforma de criação de vídeos com avatares de IA personalizáveis, especializada em conteúdo de vendas, marketing e comunicação empresarial.$d27p$,
  description_long = $dl27p$HeyGen permite criar vídeos profissionais com avatares realistas em minutos. Sua função principal é a tradução e dublagem de vídeos com sincronização labial perfeita, disponível em mais de 40 idiomas. Você pode criar um avatar personalizado com sua própria imagem ou usar um dos centenas disponíveis. Muito popular em equipes de vendas para personalizar propostas em vídeo e em marketing para conteúdo localizado.$dl27p$,
  pros = ARRAY['Dublagem e tradução com lip sync', 'Mais de 40 idiomas', 'Avatares personalizados', 'Ideal para vendas e marketing'],
  cons = ARRAY['Custo elevado em planos empresariais', 'Avatares podem perder realismo em movimentos rápidos', 'Requer roteiro bem escrito']
WHERE slug = 'heygen' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d28p$Geração de imagens segura para uso comercial no ecossistema Adobe$d28p$,
  description      = $d28p$Adobe Firefly é o modelo de IA generativa da Adobe, integrado ao Creative Cloud, projetado para uso comercial seguro e fluxos de trabalho de design profissional.$d28p$,
  description_long = $dl28p$Adobe Firefly se distingue por ser treinado exclusivamente com conteúdo licenciado, tornando-o 100% seguro para uso comercial sem risco de violação de direitos autorais. Integra-se perfeitamente ao Photoshop, Illustrator, Express e Premiere Pro, permitindo que designers usem IA diretamente em seus fluxos de trabalho habituais. Funções como Generative Fill no Photoshop revolucionaram a edição de imagens profissional.$dl28p$,
  pros = ARRAY['Seguro para uso comercial', 'Integrado ao Creative Cloud', 'Generative Fill no Photoshop', 'Treinado com conteúdo licenciado'],
  cons = ARRAY['Requer assinatura do Creative Cloud', 'Menos criativo que o Midjourney para arte conceitual', 'Limitado fora do ecossistema Adobe']
WHERE slug = 'adobe-firefly' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d29p$Design gráfico assistido por IA para não-designers$d29p$,
  description      = $d29p$Canva AI integra funções de inteligência artificial na plataforma de design mais popular do mundo, permitindo gerar imagens, textos e designs completos com IA.$d29p$,
  description_long = $dl29p$Canva integrou um conjunto completo de ferramentas de IA em sua plataforma: Magic Design (gera designs completos a partir de uma descrição), Magic Write (redação com IA), Magic Eraser (remove objetos das imagens), Text to Image e mais. Com mais de 150 milhões de usuários, o Canva AI democratiza o design gráfico para equipes de marketing, educadores, empreendedores e criadores de conteúdo sem conhecimentos técnicos de design.$dl29p$,
  pros = ARRAY['Integração perfeita na plataforma Canva', 'Muito fácil de usar', 'Suite completa de ferramentas de IA', '150M+ usuários e imensa biblioteca de templates'],
  cons = ARRAY['Qualidade de imagem inferior ao Midjourney e FLUX', 'As funções de IA requerem plano pago', 'Menos controle criativo para designers avançados']
WHERE slug = 'canva-ai' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d30p$Geração de imagens em tempo real com IA para designers criativos$d30p$,
  description      = $d30p$Krea AI é uma plataforma de geração de imagens com IA que se destaca pela geração em tempo real e seu novo modelo Krea 2 com qualidade de imagem excepcional.$d30p$,
  description_long = $dl30p$Krea AI oferece uma experiência única de geração de imagens: o modelo gera e atualiza a imagem em tempo real enquanto o usuário digita ou desenha, permitindo iteração ultrarrápida. Com o lançamento do Krea 2 em maio de 2026, a qualidade da imagem deu um salto significativo, competindo diretamente com FLUX e Midjourney. Inclui ferramentas de upscaling, aprimoramento de imagem e geração de padrões.$dl30p$,
  pros = ARRAY['Geração em tempo real', 'Krea 2 com qualidade excepcional', 'Upscaling e aprimoramento de imagem', 'Ideal para iteração criativa rápida'],
  cons = ARRAY['Menos opções de controle granular', 'O nível gratuito é limitado', 'Comunidade menor que o Midjourney']
WHERE slug = 'krea-ai' AND lang = 'pt';
