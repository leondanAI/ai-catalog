-- Batch 2 PT: zed, replit, lovable, bolt-new, github-copilot, midjourney, kling-ai, synthesia, suno, elevenlabs

UPDATE tools SET
  best_for         = $d11p$Desenvolvimento colaborativo em tempo real com editor ultrarrápido$d11p$,
  description      = $d11p$Zed é um editor de código de alto desempenho escrito em Rust, com colaboração em tempo real integrada e funções de IA. Projetado para velocidade e eficiência máximas.$d11p$,
  description_long = $dl11p$Zed é um editor moderno que prioriza a velocidade: escrito em Rust, oferece desempenho significativamente superior ao VS Code em arquivos grandes e projetos complexos. A colaboração em tempo real permite que vários desenvolvedores editem o mesmo arquivo simultaneamente, como o Google Docs mas para código. Integra modelos de IA para autocompleção, com suporte nativo para macOS e Linux.$dl11p$,
  pros = ARRAY['Desempenho excepcional — escrito em Rust', 'Colaboração em tempo real', 'IA integrada', 'Interface limpa e minimalista'],
  cons = ARRAY['Disponível apenas para macOS e Linux', 'Ecossistema de extensões limitado', 'Curva de aprendizado para usuários do VS Code']
WHERE slug = 'zed' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d12p$Desenvolvimento e implantação em nuvem sem configuração local$d12p$,
  description      = $d12p$Replit é um ambiente de desenvolvimento integrado em nuvem que permite programar, executar e implantar aplicações diretamente do navegador, com IA integrada para auxiliar no desenvolvimento.$d12p$,
  description_long = $dl12p$Replit elimina a fricção da configuração local: qualquer pessoa pode abrir um projeto, escolher uma linguagem de programação e começar a codificar em segundos. Com Replit AI, o assistente pode gerar aplicações completas, depurar erros e explicar o código. Especialmente popular na educação e para protótipos rápidos. Os projetos podem ser implantados com um clique na infraestrutura do Replit.$dl12p$,
  pros = ARRAY['Sem configuração local', 'Implantação com um clique', 'IA para geração de código', 'Ideal para aprendizado e protótipos'],
  cons = ARRAY['Desempenho limitado em projetos grandes', 'Nível gratuito com recursos restritos', 'Dependência de conexão à internet']
WHERE slug = 'replit' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d13p$Criação de aplicações web completas a partir de uma descrição$d13p$,
  description      = $d13p$Lovable é uma plataforma de desenvolvimento com IA que permite criar aplicações web funcionais descrevendo o que você precisa em linguagem natural, sem conhecimentos prévios de programação.$d13p$,
  description_long = $dl13p$Lovable (antes GPT Engineer) gera aplicações web completas — frontend e backend — a partir de uma descrição em texto. O usuário pode iterar o design e as funcionalidades através de instruções conversacionais. Integra bancos de dados, autenticação e implantação automática. Uma das ferramentas favoritas de fundadores não técnicos, designers querendo lançar MVPs rapidamente e desenvolvedores acelerando a fase de prototipagem.$dl13p$,
  pros = ARRAY['Gera apps completas a partir de texto', 'Inclui backend e banco de dados', 'Implantação automática', 'Iteração conversacional'],
  cons = ARRAY['Código gerado pode precisar de refatoração', 'Limitações para lógica de negócio complexa', 'Planos pagos para projetos sérios']
WHERE slug = 'lovable' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d14p$Prototipagem ultrarrápida de aplicações web com IA$d14p$,
  description      = $d14p$Bolt.new é uma plataforma de desenvolvimento impulsionada por IA que gera aplicações web completas em minutos, com código visível e editável em tempo real no navegador.$d14p$,
  description_long = $dl14p$Bolt.new, desenvolvido pelo StackBlitz, permite descrever uma aplicação e ver o código gerado em tempo real em um ambiente de desenvolvimento completo no navegador. Suporta frameworks populares como React, Vue, Svelte e Next.js. Ao contrário de outros geradores, o Bolt.new exibe o código-fonte e permite editá-lo diretamente. Especialmente útil para hackathons, MVPs e demonstrações técnicas rápidas.$dl14p$,
  pros = ARRAY['Geração de código em tempo real', 'Suporta múltiplos frameworks', 'Ambiente de desenvolvimento completo no navegador', 'Implantação instantânea'],
  cons = ARRAY['Projetos complexos podem falhar', 'Revisão do código gerado necessária', 'Créditos limitados no nível gratuito']
WHERE slug = 'bolt-new' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d15p$Autocompleção inteligente de código integrada na IDE$d15p$,
  description      = $d15p$GitHub Copilot é o assistente de programação do GitHub/Microsoft com sugestões de código em tempo real no editor. A partir de junho de 2026, muda para cobrança por uso.$d15p$,
  description_long = $dl15p$GitHub Copilot se tornou o padrão de fato para assistência de código com IA na IDE. Integrado ao VS Code, JetBrains, Neovim e outros, sugere linhas, funções e blocos de código completos com base no contexto do projeto. Com o Copilot Chat, os desenvolvedores podem fazer perguntas sobre o código diretamente no editor. Importante: a partir de junho de 2026, o GitHub introduz cobrança baseada em uso.$dl15p$,
  pros = ARRAY['Integração nativa VS Code e JetBrains', 'Copilot Chat para perguntas sobre código', 'Suporte a todas as principais linguagens', 'Nível gratuito disponível'],
  cons = ARRAY['Mudança para cobrança por uso em junho de 2026', 'Pode sugerir código com vulnerabilidades', 'Requer conexão à internet']
WHERE slug = 'github-copilot' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d16p$Geração de imagens artísticas de alta qualidade$d16p$,
  description      = $d16p$Midjourney é o modelo de geração de imagens preferido de artistas e designers, conhecido por sua estética distintiva e qualidade artística superior dos resultados.$d16p$,
  description_long = $dl16p$Midjourney v7 estabeleceu um novo padrão na geração de imagens artísticas, com melhorias significativas em coerência, composição e detalhamento. Opera principalmente pelo Discord, embora também tenha uma interface web. A ferramenta preferida de ilustradores, designers de conceito e criadores de conteúdo visual que buscam resultados com alta qualidade estética. Requer assinatura mensal sem nível gratuito permanente.$dl16p$,
  pros = ARRAY['Qualidade artística excepcional', 'Grande comunidade e galeria de inspiração', 'Midjourney v7 com melhorias significativas', 'Ideal para concept art e design'],
  cons = ARRAY['Sem nível gratuito permanente', 'Interface principalmente pelo Discord', 'Menos controle técnico que o Stable Diffusion']
WHERE slug = 'midjourney' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d17p$Geração de vídeo de alta qualidade a partir de texto e imagem$d17p$,
  description      = $d17p$Kling AI é uma plataforma de geração de vídeo com IA que produz clipes de até 2 minutos com física realista e movimentos fluidos de pessoas e objetos.$d17p$,
  description_long = $dl17p$Desenvolvido pela Kuaishou, o Kling AI emergiu como um dos concorrentes mais sérios em geração de vídeo com IA. Seu modelo é capaz de gerar vídeos de até 2 minutos em resolução 1080p, com física de movimento muito realista. Inclui funções de image-to-video e sincronização labial. Especialmente forte em vídeos com pessoas, superando em alguns benchmarks concorrentes como Sora e Runway.$dl17p$,
  pros = ARRAY['Vídeos de até 2 minutos', 'Física de movimento realista', 'Sincronização labial integrada', 'Preço competitivo'],
  cons = ARRAY['Interface principalmente em chinês', 'Tempos de geração variáveis', 'Menos controle criativo que o Runway']
WHERE slug = 'kling-ai' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d18p$Criação de vídeos corporativos com avatares de IA$d18p$,
  description      = $d18p$Synthesia é a plataforma líder para criar vídeos profissionais com apresentadores de IA (avatares), sem necessidade de câmera, atores ou produção de vídeo tradicional.$d18p$,
  description_long = $dl18p$Synthesia permite que equipes de comunicação, treinamento e marketing criem vídeos de alta qualidade em mais de 130 idiomas usando avatares de IA realistas. O processo é simples: escreva o roteiro, escolha um avatar e o vídeo é gerado em minutos. Especialmente popular em empresas para treinamento corporativo, onboarding de funcionários e comunicação interna. Os avatares podem ser personalizados com a imagem da empresa.$dl18p$,
  pros = ARRAY['Mais de 130 idiomas disponíveis', 'Avatares realistas e personalizáveis', 'Sem necessidade de produção de vídeo', 'Ideal para treinamento corporativo'],
  cons = ARRAY['Custo elevado para equipes grandes', 'Avatares podem parecer artificiais nos detalhes', 'Limitado para conteúdo criativo não corporativo']
WHERE slug = 'synthesia' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d19p$Composição musical completa com IA a partir de uma descrição$d19p$,
  description      = $d19p$Suno é a plataforma de geração de música com IA mais avançada, capaz de criar músicas completas com letra e melodia a partir de uma simples descrição de estilo ou tema. Rodada Série D de $5 bilhões em maio de 2026.$d19p$,
  description_long = $dl19p$Suno v4 redefiniu o que é possível com a geração de música por IA: produz músicas com estrutura completa (intro, verso, refrão, ponte), vocais naturais e produção musical de alta qualidade. Em maio de 2026, o Suno fechou uma rodada Série D de $5 bilhões, consolidando-se como líder do mercado de música gerada por IA. Ideal para criadores de conteúdo, podcasters, youtubers e músicos.$dl19p$,
  pros = ARRAY['Músicas completas com letra e melodia', 'Múltiplos gêneros e estilos', 'Interface muito intuitiva', 'Líder do mercado com $5 bi de financiamento'],
  cons = ARRAY['Controvérsia sobre direitos autorais', 'Controle limitado sobre detalhes musicais', 'Músicas podem soar similares entre si']
WHERE slug = 'suno' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d20p$Síntese de voz realista e clonagem de voz com IA$d20p$,
  description      = $d20p$ElevenLabs é a plataforma líder em síntese de voz com IA, com vozes ultra-realistas em mais de 30 idiomas e a capacidade de clonar qualquer voz com apenas alguns segundos de áudio.$d20p$,
  description_long = $dl20p$ElevenLabs oferece a qualidade de voz mais natural disponível atualmente em IA, com entonação, emoção e ritmo que se aproximam da fala humana. Sua função de clonagem de voz permite replicar uma voz com apenas 1 minuto de áudio de amostra. Amplamente usado em podcasting, dublagem de vídeos, criação de audiolivros e acessibilidade. A API permite integrar síntese de voz em qualquer aplicação.$dl20p$,
  pros = ARRAY['Qualidade de voz ultra-realista', 'Clonagem de voz com pouco áudio', 'Mais de 30 idiomas', 'API robusta para desenvolvedores'],
  cons = ARRAY['Nível gratuito com limite de caracteres', 'Preocupações éticas sobre clonagem de voz', 'Custo elevado para uso intensivo']
WHERE slug = 'elevenlabs' AND lang = 'pt';
