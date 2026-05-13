#!/usr/bin/env python3
"""Generate SQL for Portuguese/Brazilian (lang=pt) translations. Batch 4/4 (comparisons 91-117)."""

import json, sys

DATA_PT = {
"gamma-vs-prezi": {
  "a": "Gamma", "b": "Prezi",
  "choose_a": ["✅ Você quer gerar uma apresentação a partir de um prompt de IA em minutos","✅ Apresentação linear moderna com belo design sem conhecimentos de PowerPoint","✅ As apresentações do Gamma funcionam como links web interativos com mídia incorporada","✅ Mais acessível: o plano gratuito do Gamma é mais generoso que o do Prezi"],
  "choose_b": ["✅ Você quer apresentações não-lineares com zoom que parecem mais dinâmicas que slides tradicionais","✅ A interface com zoom do Prezi é única e fica na memória do público","✅ Você apresenta ao vivo e quer navegar para qualquer parte espontaneamente","✅ Você quer o padrão para storytelling não-linear em apresentações"],
  "faq": [{"q":"Gamma vs Prezi — qual é o melhor?","a":"Gamma é melhor para apresentações geradas rapidamente por IA com design moderno. Prezi é único com sua abordagem de canvas com zoom que ilustra conexões visualmente. Gamma para rapidez; Prezi para storytelling não-linear."},{"q":"Prezi é gratuito?","a":"Prezi tem plano gratuito com 5 apresentações. Premium a partir de $7/mês. Gamma tem plano gratuito com 400 créditos de IA; Plus a partir de $10/mês."},{"q":"Gamma consegue criar apresentações em português?","a":"Sim. Gamma entende prompts em português e cria apresentações em português. Digite seu prompt em português e o Gamma gera slides com conteúdo em português."},{"q":"Prezi para educação — é eficaz?","a":"Prezi é popular no ensino pois permite mostrar conexões entre conceitos de forma visual. O plano Education oferece preços reduzidos. Para aulas e palestras, a abordagem não-linear do Prezi pode reforçar a compreensão."}]
},
"beautiful-ai-vs-pitch": {
  "a": "Beautiful.ai", "b": "Pitch",
  "choose_a": ["✅ Você quer apresentações que se adaptam automaticamente ao conteúdo sem habilidades de design","✅ Smart Slides ajustam automaticamente quando você adiciona ou modifica conteúdo","✅ Equipes que criam muitas apresentações e precisam de design de marca consistente","✅ Menos tempo em formatação e mais tempo no conteúdo"],
  "choose_b": ["✅ Você cria pitch decks para investidores e apresentações comerciais com colaboração","✅ Pitch Analytics: veja quem abriu seu deck e quanto tempo ficou em cada slide","✅ Templates mais sofisticados especialmente para startups e pitches de negócios","✅ Recursos de colaboração mais avançados: edição ao vivo, comentários, histórico de versões"],
  "faq": [{"q":"Beautiful.ai vs Pitch — qual é o melhor para startups?","a":"Pitch é mais popular para pitch decks de investidores: melhores templates para fundraising e colaboração mais forte. Beautiful.ai é bom para apresentações corporativas regulares onde a consistência importa. Para pitches de investidores → Pitch; para apresentações regulares → Beautiful.ai."},{"q":"Beautiful.ai é gratuito?","a":"Beautiful.ai não tem plano gratuito permanente. Pro a partir de $12/mês (anual). Pitch tem plano gratuito até 3 membros; Pro a partir de $8/membro/mês."},{"q":"Beautiful.ai pode usar fontes e cores da marca?","a":"Sim. Beautiful.ai suporta branding: cores, fontes e logos personalizados. Você pode criar templates de marca que toda a equipe usa para apresentações consistentes. É uma das principais vantagens para equipes de marketing."},{"q":"Pitch vs PowerPoint — qual é o melhor?","a":"Pitch tem templates mais modernos e melhor colaboração online que o PowerPoint. PowerPoint é mais universal e funciona offline. Para apresentações de equipe modernas → Pitch; para compatibilidade máxima e uso offline → PowerPoint."}]
},
"slidesgo-vs-gamma": {
  "a": "Slidesgo", "b": "Gamma",
  "choose_a": ["✅ Você quer baixar templates profissionais para PowerPoint ou Google Slides gratuitamente","✅ Biblioteca enorme com milhares de templates temáticos para todas as ocasiões","✅ Você trabalha no PowerPoint ou Google Slides e precisa apenas de templates de qualidade","✅ Slidesgo AI cria apresentações personalizadas diretamente no Google Slides ou PowerPoint"],
  "choose_b": ["✅ Você quer gerar uma apresentação inteira a partir de um prompt de IA","✅ Gamma gera também o conteúdo, não apenas o design — criação completa com IA","✅ Formato web: os decks do Gamma são links web interativos, não arquivos para download","✅ Você quer sair do ecossistema PowerPoint/Google Slides"],
  "faq": [{"q":"O que é o Slidesgo?","a":"Slidesgo é uma plataforma com templates de apresentação gratuitos e pagos para PowerPoint e Google Slides. Slidesgo AI pode gerar apresentações a partir de descrições e abri-las diretamente no Google Slides ou PowerPoint."},{"q":"Slidesgo é gratuito?","a":"Slidesgo tem muitos templates gratuitos. Premium a partir de $8,25/mês para todos os templates sem restrições. Gamma tem plano gratuito com 400 créditos de IA; Plus a partir de $10/mês."},{"q":"Slidesgo AI vs Gamma — qual é o melhor?","a":"Gamma é melhor se você não tem conteúdo e está começando do zero. Slidesgo AI é melhor se você já sabe o que quer apresentar e quer um belo template no Google Slides ou PowerPoint. Gamma é uma ferramenta de geração; Slidesgo é baseado em templates."},{"q":"Slidesgo para Google Slides — como funciona?","a":"Os templates do Slidesgo podem ser abertos diretamente no Google Slides. Você clica em 'Use as Google Slides theme' e o template abre na sua conta. Slidesgo AI gera diretamente no Google Slides sem download intermediário."}]
},
"tradingview-vs-fiscal-ai": {
  "a": "TradingView", "b": "Finchat",
  "choose_a": ["✅ Você é trader técnico e precisa de gráficos avançados, indicadores e Pine Script","✅ Comunidade enorme com milhares de ideias de trading e scripts compartilhados","✅ Você opera ativamente e precisa de dados em tempo real e integração direta com corretora","✅ Ampla cobertura de ativos: ações, crypto, forex, futuros e índices globais"],
  "choose_b": ["✅ Você quer análise financeira com IA: fazer perguntas sobre relatórios de empresas e dados financeiros","✅ Finchat analisa 10-Ks, earnings calls e dados financeiros com perguntas em linguagem natural","✅ Você é investidor fundamentalista buscando compreensão profunda de empresas em vez de gráficos","✅ Due diligence rápida sem analisar manualmente centenas de páginas de relatórios anuais"],
  "faq": [{"q":"TradingView vs Finchat — qual é a diferença?","a":"TradingView é para análise técnica: gráficos, indicadores, ideias de trading. Finchat é para análise fundamentalista com IA: faça perguntas sobre relatórios de empresas. TradingView para traders; Finchat para investidores de longo prazo."},{"q":"TradingView é gratuito?","a":"TradingView tem plano gratuito com 3 indicadores e delay nos dados. Essential a partir de $14,95/mês. Finchat tem plano gratuito; Pro a partir de $30/mês."},{"q":"O que é Pine Script?","a":"Pine Script é a linguagem de programação proprietária do TradingView para criar indicadores e sistemas de trading personalizados. Você pode escrever e fazer backtest dos seus próprios indicadores técnicos. A comunidade compartilha milhares de indicadores Pine Script gratuitamente."},{"q":"Finchat para ações brasileiras — é eficaz?","a":"Finchat cobre mercados internacionais incluindo ações da B3. A profundidade da análise com IA pode ser menor para pequenas empresas brasileiras que para grandes empresas americanas onde mais documentação está disponível."}]
},
"koyfin-vs-tradingview": {
  "a": "Koyfin", "b": "TradingView",
  "choose_a": ["✅ Você precisa de dados fundamentalistas estilo Bloomberg e macro-dashboards a uma fração do preço","✅ Koyfin é mais forte para análise fundamentalista: dados financeiros, métricas de crescimento, comparações de valuation","✅ Você gerencia uma carteira de investimentos e precisa de ferramentas completas de screening e análise","✅ Alternativa acessível ao Bloomberg para investidores profissionais e analistas"],
  "choose_b": ["✅ Você é trader técnico que precisa dos melhores gráficos e indicadores técnicos","✅ Comunidade de trading social enorme com ideias, análises e comentários compartilhados","✅ Integração direta com corretoras para operar diretamente pelo TradingView","✅ Plano gratuito com boas funcionalidades suficiente para iniciantes"],
  "faq": [{"q":"Koyfin vs Bloomberg — qual é a diferença?","a":"Bloomberg Terminal custa cerca de $25.000/ano e é o padrão profissional no setor financeiro. Koyfin oferece dados fundamentalistas e macro-dashboards similares a partir de $59/mês. Para investidores profissionais sem orçamento para Bloomberg, Koyfin é uma excelente alternativa."},{"q":"Koyfin é gratuito?","a":"Koyfin tem plano gratuito com funcionalidades limitadas. Plus a partir de $59/mês, Pro a partir de $199/mês. TradingView tem plano gratuito; Essential a partir de $14,95/mês."},{"q":"Koyfin para screening de ações — é bom?","a":"Sim. Koyfin tem um poderoso screener de ações com centenas de filtros fundamentalistas e técnicos. Você pode filtrar ações por P/L, taxa de crescimento, dividendo, região geográfica e muitos outros critérios."},{"q":"TradingView para investidores de longo prazo — é adequado?","a":"TradingView é focado em análise técnica e projetado principalmente para traders. Para investidores fundamentalistas de longo prazo, Koyfin ou Finchat são mais adequados. TradingView pode ser usado como complemento para análise gráfica."}]
},
"fiscal-ai-vs-koyfin": {
  "a": "Finchat", "b": "Koyfin",
  "choose_a": ["✅ Você quer fazer perguntas de IA sobre relatórios de empresas, earnings calls e dados financeiros","✅ A IA do Finchat analisa documentos SEC e documentação de empresas em linguagem natural","✅ Due diligence rápida por conversa em vez de análise manual de centenas de páginas","✅ Você quer respostas a perguntas específicas sobre uma empresa em linguagem natural"],
  "choose_b": ["✅ Você precisa de dados fundamentalistas completos, screening e dashboards para muitas empresas","✅ Koyfin é mais forte para análise de carteira e criação de macro-dashboards","✅ Melhor cobertura de ações internacionais e mercados não-americanos","✅ Você compara muitas empresas simultaneamente em tabelas de screener estruturadas"],
  "faq": [{"q":"O que é o Finchat?","a":"Finchat é uma ferramenta de análise financeira com IA que permite fazer perguntas sobre relatórios de empresas, earnings calls e dados financeiros em linguagem natural. Ele analisa 10-Ks, 10-Qs e transcrições de earnings de milhares de empresas."},{"q":"Finchat vs Koyfin — para quem?","a":"Finchat é melhor para análise profunda de uma empresa por conversa: 'O que o CFO disse sobre margens no T3?' Koyfin é melhor para screening amplo e comparação de muitas empresas em tabela. Os dois se complementam bem para investidores fundamentalistas."},{"q":"Finchat é gratuito?","a":"Finchat tem plano gratuito com consultas limitadas. Pro a partir de $30/mês. Koyfin tem plano gratuito; Plus a partir de $59/mês."},{"q":"Finchat pode analisar empresas brasileiras?","a":"Finchat tem dados para empresas internacionais incluindo ações da B3. A profundidade pode ser menor para empresas brasileiras menores. Para grandes grupos brasileiros (Petrobras, Vale, Itaú), bons dados e análises estão disponíveis."}]
},
"tickeron-vs-tradingview": {
  "a": "Tickeron", "b": "TradingView",
  "choose_a": ["✅ Você quer sinais de trading com IA e reconhecimento automático de padrões","✅ Os AI Robots do Tickeron geram sinais de compra e venda automáticos","✅ Você busca uma abordagem baseada em IA em vez de análise técnica manual","✅ Iniciantes que preferem orientação de IA para decisões de trading sem analisar por conta própria"],
  "choose_b": ["✅ Você é trader experiente que analisa por conta própria e precisa de ferramentas gráficas avançadas","✅ Personalização ilimitada: Pine Script para seus próprios indicadores e estratégias","✅ Maior comunidade de trading do mundo para ideias, estratégias e scripts compartilhados","✅ Ampla integração com corretoras para operar diretamente pela plataforma TradingView"],
  "faq": [{"q":"O que é o Tickeron?","a":"Tickeron é uma plataforma de trading com IA que reconhece padrões de mercado automaticamente, gera sinais e oferece AI Robots para trading automatizado. Combina análise técnica com IA para identificar sinais de compra e venda."},{"q":"Tickeron vs TradingView — qual é melhor para iniciantes?","a":"Tickeron é mais acessível para iniciantes que querem sinais de IA sem conhecimentos avançados em gráficos. TradingView tem curva de aprendizado maior para análise técnica. Mas TradingView é gratuito e fácil para leitura básica de gráficos."},{"q":"Os sinais do Tickeron são confiáveis?","a":"Sinais de trading com IA não têm precisão garantida. Tickeron mostra o desempenho histórico de seus padrões. Como todas as ferramentas de trading, deve ser usado como um entre vários recursos, não como base única de decisão."},{"q":"Quanto custa o Tickeron?","a":"Tickeron começa a partir de $90/mês para funcionalidades básicas. Planos superiores para mais AI Robots e sinais. TradingView tem plano gratuito; Essential a partir de $14,95/mês."}]
},
"uptrends-ai-vs-koyfin": {
  "a": "Uptrends AI", "b": "Koyfin",
  "choose_a": ["✅ Você quer análise de tendências com IA e reconhecimento automático de padrões de mercado","✅ Uptrends AI identifica automaticamente tendências emergentes em ações e mercados","✅ Você busca sinais de IA sem precisar construir conhecimento em análise técnica por conta própria","✅ Alertas automáticos quando o Uptrends AI detecta reversões ou confirmações potenciais"],
  "choose_b": ["✅ Você precisa de dados fundamentalistas completos, comparações de valuation e screening de carteira","✅ Cobertura de dados estilo Bloomberg a uma fração do preço","✅ Você gerencia uma carteira de investimentos com macro-dashboards estruturados","✅ Koyfin é mais maduro com banco de dados mais profundo para investidores profissionais"],
  "faq": [{"q":"O que é o Uptrends AI?","a":"Uptrends AI é uma ferramenta de investimento com IA que analisa tendências de mercado e identifica sinais de movimentos de preço emergentes. Usa machine learning para reconhecer padrões nos dados de mercado."},{"q":"Uptrends AI vs Koyfin — qual é o melhor?","a":"Koyfin é mais maduro e reconhecido para análise fundamentalista e gestão de carteira. Uptrends AI é mais especializado em análise de tendências com IA e sinais. Para investidores fundamentalistas → Koyfin; para sinais de tendência → Uptrends AI."},{"q":"Uptrends AI cobre criptomoedas?","a":"Uptrends AI cobre diferentes classes de ativos. Verifique a plataforma atual para a cobertura exata dos ativos suportados."},{"q":"Koyfin para ações brasileiras — é bom?","a":"Koyfin cobre mercados internacionais incluindo a B3 (bolsa brasileira). Para as principais ações do Ibovespa, bons dados fundamentalistas estão disponíveis. A cobertura pode ser menos profunda para pequenas empresas brasileiras."}]
},
"amazon-q-developer-vs-github-copilot": {
  "a": "Amazon Q Developer", "b": "GitHub Copilot",
  "choose_a": ["✅ Você desenvolve no ambiente AWS e quer codificação com IA com integração profunda dos serviços AWS","✅ Amazon Q tem conhecimento específico de AWS: CloudFormation, Lambda, EC2, S3 — melhor que Copilot para AWS","✅ Início gratuito: Amazon Q Developer Free Tier para desenvolvedores individuais","✅ Scans de segurança automáticos e remediação de código para projetos AWS"],
  "choose_b": ["✅ Você não trabalha exclusivamente no AWS e precisa de um assistente de codificação universal","✅ GitHub Copilot é mais profundamente integrado ao VS Code, JetBrains e outros IDEs","✅ Comunidade de desenvolvedores maior e mais integrações em workflows de CI/CD","✅ Você usa o GitHub para seus repositórios e quer integração transparente com o Copilot"],
  "faq": [{"q":"Amazon Q Developer vs GitHub Copilot — qual é o melhor?","a":"Para desenvolvedores AWS, Amazon Q Developer é superior: conhece profundamente os serviços AWS, CloudFormation e boas práticas. Para desenvolvimento geral, GitHub Copilot é mais amplamente utilizável. Equipes AWS → Amazon Q; desenvolvimento geral → Copilot."},{"q":"Amazon Q Developer é gratuito?","a":"Amazon Q Developer tem plano gratuito com 50 conversas e 1.000 sugestões de código/mês. Pro a partir de $19/usuário/mês. GitHub Copilot Individual a partir de $10/mês; Business a partir de $19/usuário/mês."},{"q":"O que o Amazon Q Developer pode fazer?","a":"Amazon Q Developer pode completar código, depurar erros, explicar código, gerar infraestrutura AWS (CloudFormation, CDK), escanear falhas de segurança e corrigi-las, e ajudar com boas práticas AWS."},{"q":"GitHub Copilot e conformidade com LGPD?","a":"GitHub Copilot Business e Enterprise têm configurações avançadas de privacidade: trechos de código não são usados para treinamento e não há compartilhamento com terceiros. Para conformidade com LGPD, a versão Enterprise com controles específicos de privacidade é recomendada."}]
},
"continue-dev-vs-github-copilot": {
  "a": "Continue.dev", "b": "GitHub Copilot",
  "choose_a": ["✅ Você quer uma ferramenta de codificação com IA open-source sem custos de assinatura e com livre escolha de modelos","✅ Continue.dev suporta modelos locais (Ollama), Claude, GPT-4 e outros — você escolhe","✅ Privacidade: seu código fica local se você usar modelos locais como Codestral ou DeepSeek","✅ Extensão para VS Code e JetBrains que funciona como o Copilot mas mais flexível e gratuita"],
  "choose_b": ["✅ Você quer o assistente de codificação com IA mais maduro e bem integrado","✅ GitHub Copilot tem a integração IDE mais profunda e melhor desempenho estável","✅ Funcionalidades Enterprise: políticas de código, auditoria e controles de admin para equipes","✅ Você quer usar Copilot Chat, Copilot Workspace e outras funcionalidades nativas do GitHub"],
  "faq": [{"q":"O que é o Continue.dev?","a":"Continue.dev é um assistente de codificação com IA open-source para VS Code e JetBrains. Funciona como o GitHub Copilot mas você escolhe o modelo — OpenAI, Anthropic, modelos locais Ollama ou outros provedores. A ferramenta em si é gratuita."},{"q":"Continue.dev é realmente gratuito?","a":"Continue.dev é gratuito e open-source. Você paga apenas pelo modelo de IA usado — APIs OpenAI, Anthropic ou nada se usar modelos locais como Ollama. Para equipes que querem reduzir os custos elevados do Copilot, é atraente."},{"q":"Continue.dev com modelos locais — qual é a qualidade?","a":"Continue.dev com modelos locais como DeepSeek Coder ou Codestral via Ollama é bom para completar código e explicações simples. Para geração de código complexo, modelos em nuvem (Claude, GPT-4) ainda são superiores. Mas para privacidade e economia, é excelente."},{"q":"GitHub Copilot vs Continue.dev — qual ganha?","a":"Copilot é mais maduro com melhor integração IDE e desempenho mais consistente. Continue.dev é mais flexível, gratuito e mais respeitoso com a privacidade. Para desempenho máximo → Copilot; para open-source e privacidade → Continue.dev."}]
},
"opencode-vs-claude-code": {
  "a": "OpenCode", "b": "Claude Code",
  "choose_a": ["✅ Você quer uma ferramenta de IA no terminal open-source que funciona com diferentes modelos","✅ OpenCode suporta OpenAI, Anthropic, modelos locais — não vinculado a um único ecossistema","✅ Gratuito e open-source — sem assinatura necessária para a ferramenta em si","✅ Você quer uma experiência similar ao Claude Code sem estar exclusivamente vinculado à Anthropic"],
  "choose_b": ["✅ Você quer o agente de codificação com IA mais poderoso com a integração Claude da Anthropic","✅ Claude Code é especialmente projetado para refatorações multi-arquivo complexas e tarefas agênticas","✅ Melhor desempenho para bases de código grandes e tarefas de desenvolvimento complexas","✅ Desenvolvido diretamente pela Anthropic com o mais recente modelo Claude e integração otimizada"],
  "faq": [{"q":"O que é o OpenCode?","a":"OpenCode é um assistente de codificação com IA no terminal open-source similar ao Claude Code ou Aider. Suporta múltiplos modelos (OpenAI, Anthropic, Ollama) e trabalha diretamente no terminal para tarefas de codificação agênticas."},{"q":"OpenCode vs Claude Code — qual é o melhor?","a":"Claude Code é mais poderoso para tarefas complexas pois é otimizado pela Anthropic com melhor acesso aos modelos Claude. OpenCode é mais flexível e gratuito — ideal para testar diferentes modelos ou reduzir custos."},{"q":"Claude Code é gratuito?","a":"Claude Code CLI é gratuito como ferramenta. Você paga pelo uso da API Claude baseado nos tokens processados. Para uso intensivo, um plano Claude Max ($100/mês) inclui maior uso de API."},{"q":"OpenCode para modelos locais — é possível?","a":"Sim. OpenCode suporta modelos locais via Ollama. Isso permite assistência de codificação totalmente privada sem enviar dados para a nuvem. A qualidade depende do modelo local — para melhores resultados, modelos grandes (70B+) são recomendados."}]
},
"zed-vs-cursor": {
  "a": "Zed", "b": "Cursor",
  "choose_a": ["✅ Você prioriza velocidade: Zed é escrito em Rust e permanece rápido mesmo em projetos grandes","✅ Colaboração multiplayer nativa: vários desenvolvedores no mesmo editor em tempo real","✅ Funcionalidades de IA com integração Claude para compreensão e geração de código","✅ Editor mais simples e enxuto para desenvolvedores que preferem minimalismo e desempenho"],
  "choose_b": ["✅ Você quer o editor de código com IA com as capacidades agênticas mais profundas","✅ Cursor Composer gera e modifica múltiplos arquivos simultaneamente para funcionalidades complexas","✅ Compatível com VS Code: todas as suas extensões e configurações funcionam diretamente","✅ O editor de código com IA mais utilizado com a comunidade mais ativa e mais recursos"],
  "faq": [{"q":"Zed vs Cursor — qual é o melhor?","a":"Cursor é mais maduro para codificação com IA: melhores funcionalidades agênticas, edição multi-arquivo e melhor integração de chat. Zed é mais rápido e tem colaboração multiplayer nativa única. Para codificação com IA → Cursor; para desempenho e colaboração → Zed."},{"q":"Zed é gratuito?","a":"Zed é gratuito e open-source. As funcionalidades de IA no Zed usam Claude e podem ter custos de API. Cursor tem plano gratuito com consultas limitadas; Pro a partir de $20/mês."},{"q":"Zed pode usar extensões do VS Code?","a":"Não. Zed não é um fork do VS Code e não usa extensões do VS Code. Zed tem seu próprio sistema de extensões que está crescendo mas ainda é muito menor que o ecossistema VS Code."},{"q":"Zed é otimizado para macOS?","a":"Zed foi desenvolvido originalmente para macOS e está melhor otimizado lá. Usa as APIs nativas do macOS para desempenho máximo. Suporte ao Linux está disponível; suporte ao Windows está em desenvolvimento."}]
},
"comfyui-vs-stable-diffusion": {
  "a": "ComfyUI", "b": "Stable Diffusion (Automatic1111)",
  "choose_a": ["✅ Você quer o controle mais granular sobre o pipeline de geração de imagens com workflows visuais","✅ ComfyUI usa uma interface de fluxo de nós para workflows personalizados muito avançados","✅ Mais eficiente em memória e mais rápido que Automatic1111 para usuários avançados","✅ Melhor para workflows complexos: ControlNet, IP-Adapter, AnimateDiff"],
  "choose_b": ["✅ Você quer a interface mais fácil de usar para Stable Diffusion com uma grande comunidade","✅ Automatic1111 (A1111) é a interface SD mais utilizada com mais tutoriais disponíveis","✅ Mais fácil de começar para iniciantes no Stable Diffusion","✅ Biblioteca de extensões maior e melhor documentada para A1111"],
  "faq": [{"q":"ComfyUI vs Automatic1111 — qual escolher?","a":"ComfyUI é para usuários avançados que querem controle máximo via workflows em nós. Automatic1111 é mais fácil para iniciantes e a comunidade é maior. Iniciantes → Automatic1111; usuários avançados com workflows complexos → ComfyUI."},{"q":"ComfyUI é gratuito?","a":"Sim. ComfyUI é totalmente gratuito e open-source. Você precisa de uma GPU compatível e um modelo Stable Diffusion. Automatic1111 também é gratuito e open-source."},{"q":"ComfyUI pode funcionar sem GPU?","a":"ComfyUI pode funcionar em CPU mas muito lentamente. Para uso prático, uma GPU NVIDIA com 6+ GB VRAM é recomendada. Serviços em nuvem como Google Colab permitem usar o ComfyUI sem GPU local."},{"q":"Qual é a diferença entre ComfyUI e Stable Diffusion?","a":"Stable Diffusion é o modelo de IA. ComfyUI e Automatic1111 são interfaces para usar esse modelo. ComfyUI usa uma abordagem de nós visuais; Automatic1111 usa uma interface web tradicional."}]
},
"krea-ai-vs-midjourney": {
  "a": "Krea AI", "b": "Midjourney",
  "choose_a": ["✅ Você quer geração de imagens com IA em tempo real que aparece enquanto você desenha","✅ Krea AI oferece geração em tempo real única: veja a imagem de IA evoluir ao vivo","✅ Excelente para ideação criativa rápida e exploração de conceitos visuais","✅ Krea também oferece vídeo com IA e aprimoramento de imagens além da geração"],
  "choose_b": ["✅ Você quer a melhor qualidade artística e consistência estética para arte criativa","✅ Midjourney é o padrão da indústria para arte de IA de alta qualidade","✅ Comunidade enorme com prompts compartilhados e inspiração criativa","✅ Melhor para retratos, paisagens e ilustrações artísticas estilizadas de alta qualidade"],
  "faq": [{"q":"Krea AI vs Midjourney — qual é a diferença?","a":"Krea AI se destaca pela geração em tempo real e funcionalidades de ideação criativa. Midjourney é o padrão para arte de IA de alta qualidade com comunidade enorme. Para exploração criativa em tempo real → Krea; para qualidade artística final → Midjourney."},{"q":"Krea AI é gratuito?","a":"Krea AI tem plano gratuito com créditos limitados. Planos pagos a partir de $10/mês. Midjourney a partir de $10/mês sem plano gratuito permanente."},{"q":"Krea AI pode aprimorar imagens existentes?","a":"Sim. Krea AI tem ferramentas de upscaling e aprimoramento que aumentam a resolução e melhoram a qualidade de imagens existentes. É uma funcionalidade útil para melhorar imagens geradas ou fotos."},{"q":"Krea AI Real-Time — como funciona?","a":"Krea AI Real-Time mostra a geração de IA ao vivo enquanto você desenha ou modifica seu prompt. A imagem se atualiza em segundos a cada modificação. É revolucionário para ideação criativa rápida."}]
},
"nano-banana-vs-leonardo-ai": {
  "a": "Nano Banana", "b": "Leonardo AI",
  "choose_a": ["✅ Você precisa de uma ferramenta de geração de imagens focada em casos de uso específicos e rapidez","✅ Nano Banana oferece geração de imagens otimizada para certos casos de uso criativos","✅ Interface simples e acessível para gerações rápidas","✅ Alternativa menos conhecida a explorar se você busca estilos diferentes"],
  "choose_b": ["✅ Você precisa de uma plataforma completa com geração de imagens, assets de jogos e fine-tuning","✅ Leonardo AI é popular no desenvolvimento de jogos por seus assets consistentes","✅ Plano gratuito generoso com 150 tokens por dia — perfeito para começar","✅ Fine-tuning disponível: treine modelos personalizados no seu estilo ou personagens"],
  "faq": [{"q":"Nano Banana vs Leonardo AI — qual é o melhor?","a":"Leonardo AI é mais estabelecido com mais funcionalidades, comunidade maior e plano gratuito generoso. Nano Banana é uma alternativa mais recente. Para uma plataforma consolidada → Leonardo AI."},{"q":"Nano Banana é gratuito?","a":"Verifique o site atual do Nano Banana para preços atualizados. Leonardo AI tem plano gratuito com 150 tokens por dia; pagos a partir de $12/mês."},{"q":"Leonardo AI é bom para ilustrações de jogos?","a":"Sim. Leonardo AI é particularmente apreciado para assets de jogos: personagens consistentes, texturas, ícones e ambientes. O fine-tuning permite manter um estilo visual consistente em múltiplas gerações."},{"q":"Nano Banana para que tipos de imagens?","a":"Nano Banana se especializa em certos tipos de geração criativa. Visite o site para ver casos de uso e exemplos atuais a fim de determinar se atende às suas necessidades."}]
},
"chatgpt-images-vs-adobe-firefly": {
  "a": "ChatGPT Images (DALL-E 3)", "b": "Adobe Firefly",
  "choose_a": ["✅ Você já assina o ChatGPT Plus e quer gerar imagens diretamente no chat","✅ DALL-E 3 segue perfeitamente instruções textuais detalhadas para máxima precisão","✅ Integração no workflow de chat: gere imagens no contexto de uma conversa","✅ Acessível imediatamente sem ferramenta adicional se você tem ChatGPT Plus"],
  "choose_b": ["✅ Você trabalha no ecossistema Adobe e quer geração de IA integrada no Photoshop","✅ Adobe Firefly é treinado em conteúdo licenciado — seguro comercialmente sem problemas de direitos","✅ Generative Fill no Photoshop expande imagens e remove objetos com IA","✅ Ideal para profissionais criativos que já têm assinatura Creative Cloud"],
  "faq": [{"q":"DALL-E 3 vs Adobe Firefly — qual é o melhor?","a":"DALL-E 3 segue melhor instruções textuais precisas. Firefly é melhor para integração profissional no Photoshop e segurança comercial. Para geração no ChatGPT → DALL-E 3; para profissionais Adobe → Firefly."},{"q":"ChatGPT Images está incluído no plano gratuito?","a":"A geração de imagens no ChatGPT está disponível no plano gratuito com limites. ChatGPT Plus ($20/mês) oferece mais gerações e prioridade de acesso. Adobe Firefly está incluído no Creative Cloud."},{"q":"Adobe Firefly pode modificar fotos existentes?","a":"Sim. Via Generative Fill no Photoshop, Firefly pode expandir, remover ou substituir elementos em fotos existentes. É uma das funcionalidades mais poderosas para edição de fotos profissional."},{"q":"DALL-E 3 é seguro para uso comercial?","a":"DALL-E 3 via ChatGPT permite uso comercial do conteúdo gerado conforme os termos da OpenAI. Adobe Firefly oferece garantias de indenização comercial mais explícitas pois é especificamente treinado em conteúdo licenciado."}]
},
"claude-design-vs-figma-ai": {
  "a": "Claude (design)", "b": "Figma AI",
  "choose_a": ["✅ Você quer usar Claude para gerar código de componentes React, CSS e HTML diretamente","✅ Claude pode gerar designs completos em código a partir de descrições detalhadas","✅ Melhor para desenvolvedores criando interfaces programaticamente em vez de visualmente","✅ Claude também pode raciocinar sobre decisões de design UX e dar recomendações"],
  "choose_b": ["✅ Você é designer profissional que precisa de IA diretamente na sua ferramenta de trabalho Figma","✅ Figma AI gera layouts e componentes no ambiente de design visual","✅ Melhor para colaboração de equipe em designs UX/UI com workflow visual","✅ Figma permanece o padrão da indústria para design UX/UI profissional"],
  "faq": [{"q":"Claude vs Figma AI para design — qual é a diferença?","a":"Claude gera código de design (React, CSS) a partir de descrições. Figma AI gera componentes visuais diretamente no Figma. Para desenvolvedores criando interfaces em código → Claude; para designers trabalhando visualmente → Figma AI."},{"q":"Claude pode gerar mockups completos?","a":"Claude pode gerar HTML/CSS/React para mockups funcionais mas não arquivos Figma. Para mockups visuais interativos, Figma, Uizard ou v0 são mais adequados."},{"q":"Figma AI está incluído no Figma?","a":"Sim. As funcionalidades de IA do Figma são integradas ao aplicativo. Algumas funcionalidades avançadas podem exigir plano pago. Figma tem plano gratuito; Professional a partir de $15/editor/mês."},{"q":"Claude pode ajudar com decisões de design UX?","a":"Sim. Claude é excelente para raciocinar sobre decisões UX: arquitetura de navegação, hierarquia de informação, melhores práticas de acessibilidade. Pode ser um consultor de UX valioso mesmo sem gerar arquivos Figma."}]
},
"google-stitch-vs-figma-ai": {
  "a": "Google Stitch", "b": "Figma AI",
  "choose_a": ["✅ Você quer gerar designs de interface a partir de descrições ou screenshots com a IA do Google","✅ Google Stitch gera mockups e protótipos de aplicativos diretamente a partir de prompts","✅ Integração com o ecossistema Google para equipes Android e Material Design","✅ Geração rápida de protótipos para testar ideias de interface sem habilidades de design"],
  "choose_b": ["✅ Você é designer profissional que precisa das ferramentas mais avançadas para design UX/UI","✅ Figma é o padrão da indústria com o maior ecossistema de plugins e recursos","✅ Melhor colaboração para grandes equipes de design com workflows profissionais","✅ Figma AI está integrado na sua ferramenta de trabalho diário — sem mudança de contexto"],
  "faq": [{"q":"Google Stitch vs Figma AI — qual é a diferença?","a":"Google Stitch é uma ferramenta de prototipagem rápida do Google para gerar mockups com IA. Figma AI é IA integrada no padrão da indústria para design profissional. Para protótipos rápidos → Stitch; para design profissional → Figma."},{"q":"Google Stitch está disponível para todos?","a":"Google Stitch está em acesso limitado/preview. Verifique a disponibilidade atual no site do Google Labs. Figma está amplamente disponível com plano gratuito."},{"q":"Google Stitch gera código?","a":"Google Stitch se concentra na geração visual de mockups. Para geração de código a partir de designs, ferramentas como v0 ou as funcionalidades de desenvolvimento do Figma são mais adequadas."},{"q":"Figma AI pode substituir designers?","a":"Não. Figma AI ajuda designers a serem mais produtivos — gera conteúdo de rascunho, sugere layouts. Mas estratégia, criatividade, pesquisa de usuário e julgamento de design permanecem humanos. É uma ferramenta de aumento, não substituição."}]
},
"recraft-vs-canva-ai": {
  "a": "Recraft AI", "b": "Canva AI",
  "choose_a": ["✅ Você precisa gerar ilustrações vetoriais, ícones e assets SVG com IA","✅ Recraft se destaca na geração de estilos visuais consistentes para marcas inteiras","✅ Melhor para designers criando sistemas de ilustração e assets de marca originais","✅ Plano gratuito generoso com créditos mensais para começar"],
  "choose_b": ["✅ Você precisa de uma ferramenta versátil para criar todos os tipos de visuais de marketing","✅ Canva AI gera imagens, textos, apresentações e todos os tipos de conteúdo de marketing","✅ Interface muito mais simples e biblioteca de templates enorme para não-designers","✅ Plano gratuito do Canva muito generoso com milhares de templates disponíveis"],
  "faq": [{"q":"Recraft vs Canva AI — qual é o melhor?","a":"Recraft é especializado em ilustrações vetoriais e assets de marca originais. Canva AI é versátil para todo o conteúdo de marketing. Para ilustrações de marca únicas → Recraft; para conteúdo de marketing geral → Canva."},{"q":"Recraft pode gerar SVGs?","a":"Sim. A geração de SVG é a funcionalidade principal do Recraft. Isso é único entre os geradores de imagens com IA. Você obtém arquivos vetoriais escaláveis diretamente utilizáveis nos seus projetos de design."},{"q":"Canva AI pode substituir um designer gráfico?","a":"Canva AI pode ajudar não-designers a criar conteúdo de marketing decente rapidamente. Mas para uma identidade de marca forte, designs complexos e trabalho criativo avançado, um designer profissional ainda é necessário."},{"q":"Recraft AI é adequado para logos?","a":"Recraft é excelente para criar conceitos de logos pois gera estilos consistentes. Para logos vetoriais finais utilizáveis em todos os formatos, a saída SVG do Recraft é diretamente utilizável ou editável no Illustrator."}]
},
"remove-bg-vs-canva-ai": {
  "a": "Remove.bg", "b": "Canva AI",
  "choose_a": ["✅ Você precisa remover o fundo de imagens rapidamente e com a melhor precisão","✅ Remove.bg é especialista em remoção de fundo — resultados mais precisos que o Canva","✅ API do Remove.bg para integrar remoção de fundo em seus aplicativos","✅ Processamento em lote de imagens em uma única operação"],
  "choose_b": ["✅ Você precisa de uma ferramenta versátil que remove fundos E cria conteúdo de marketing","✅ Canva tem função de remoção de fundo integrada — suficiente para a maioria dos casos","✅ Interface tudo-em-um: remova o fundo e depois componha seu design sem trocar de ferramenta","✅ Plano gratuito do Canva muito generoso para começar sem custos"],
  "faq": [{"q":"Remove.bg vs Canva — qual é o melhor para remover fundos?","a":"Remove.bg é mais preciso para sujeitos complexos (cabelos finos, transparências). Canva é suficiente para a maioria dos casos comuns. Para precisão máxima → Remove.bg; para workflow integrado → Canva."},{"q":"Remove.bg é gratuito?","a":"Remove.bg permite algumas visualizações gratuitas. Downloads em alta resolução são pagos: cerca de $0,20 por imagem ou assinatura a partir de $9/mês. Canva tem ferramenta de remoção de fundo no plano gratuito (com limites)."},{"q":"Remove.bg funciona para animais?","a":"Sim. Remove.bg funciona bem para humanos, animais, produtos e a maioria dos sujeitos. A precisão pode variar para sujeitos com bordas muito complexas ou cores similares ao fundo."},{"q":"Canva pode remover fundos gratuitamente?","a":"Canva tem remoção de fundo no plano gratuito com limites. Canva Pro ($15/mês) oferece remoção ilimitada. Para uso intensivo, Remove.bg ou uma assinatura Canva Pro são mais adequados."}]
},
"seedance-vs-runway": {
  "a": "Seedance 2.0", "b": "Runway",
  "choose_a": ["✅ Você quer geração de vídeo com IA com qualidade e consistência de personagens excepcionais","✅ Seedance 2.0 é particularmente apreciado pela consistência de personagens em vídeos","✅ Alternativa competitiva ao Runway com potencialmente melhor desempenho para certos casos","✅ Interface acessível para gerar vídeos de alta qualidade com IA"],
  "choose_b": ["✅ Você precisa da plataforma de vídeo com IA mais estabelecida e completa","✅ Runway Gen-3 é o padrão da indústria para produção de vídeo com IA profissional","✅ Suite completa: geração, edição, inpainting, motion brush e controle de câmera","✅ Melhor integração em workflows de produção profissional existentes"],
  "faq": [{"q":"Seedance 2.0 vs Runway — qual é o melhor?","a":"Runway é mais estabelecido com mais funcionalidades de edição avançadas. Seedance 2.0 é apreciado pela consistência de personagens. Experimente os dois com seus planos de avaliação para ver qual atende melhor às suas necessidades."},{"q":"Seedance 2.0 é gratuito?","a":"Verifique os preços atuais do Seedance no site deles. Runway tem plano gratuito com créditos limitados; Standard a partir de $15/mês."},{"q":"Runway pode gerar vídeos longos?","a":"Runway gera vídeos de até 10 segundos por geração com Gen-3. Para vídeos mais longos, você encadeia várias gerações. Outras ferramentas como Google Veo 3 permitem vídeos mais longos em uma única geração."},{"q":"Qual é a melhor alternativa ao Runway?","a":"As melhores alternativas ao Runway incluem Kling AI (melhor custo-benefício), Luma Dream Machine (realismo), Pika (criatividade) e Seedance (consistência de personagens). Cada um tem seus pontos fortes — teste vários conforme seu caso de uso."}]
},
"whisper-vs-otter-ai": {
  "a": "Whisper", "b": "Otter.ai",
  "choose_a": ["✅ Você precisa de transcrição de áudio de alta qualidade open-source para integrar em seus aplicativos","✅ Whisper da OpenAI é gratuito e pode ser executado localmente para privacidade total","✅ Excelente precisão de transcrição em muitos idiomas incluindo português","✅ API Whisper disponível via OpenAI para integrar em seus produtos e workflows"],
  "choose_b": ["✅ Você precisa de transcrição em tempo real durante reuniões com resumos automáticos","✅ Otter.ai se integra com Zoom, Teams e Google Meet para notas em tempo real","✅ Interface completa com organização de transcrições, busca e compartilhamento de equipe","✅ Aplicativo mobile do Otter para transcrever conversas presenciais"],
  "faq": [{"q":"Whisper vs Otter.ai — qual é a diferença?","a":"Whisper é um modelo de transcrição open-source para integrar em suas próprias ferramentas. Otter.ai é um serviço completo de notas de reunião com interface pronta. Para desenvolvedores integrando transcrição → Whisper; para notas de reunião prontas para uso → Otter.ai."},{"q":"Whisper é gratuito?","a":"O modelo Whisper é open-source e gratuito para usar localmente. A API Whisper via OpenAI é paga (cerca de $0,006/minuto). Otter.ai tem plano gratuito com 300 minutos/mês."},{"q":"Whisper transcreve bem o português?","a":"Sim. Whisper é excelente para português — um dos melhores modelos de transcrição open-source para idiomas ibéricos. Lida bem com sotaques regionais e português coloquial."},{"q":"Otter.ai funciona em português?","a":"Otter.ai é focado principalmente em inglês. O suporte ao português é limitado. Para transcrição em português, considere alternativas como Whisper ou serviços especializados."}]
},
"adcreative-ai-vs-canva-ai": {
  "a": "AdCreative.ai", "b": "Canva AI",
  "choose_a": ["✅ Você precisa gerar criativos publicitários otimizados para performance","✅ AdCreative.ai gera banners e visuais para Facebook, Instagram, Google Ads otimizados por IA","✅ Score de performance com IA: prevê quais criativos performarão melhor antes de publicar","✅ Melhor para equipes de marketing e agências gerenciando campanhas publicitárias em grande escala"],
  "choose_b": ["✅ Você precisa de uma ferramenta versátil para todos os tipos de conteúdo visual além de anúncios","✅ Canva é muito mais acessível e tem plano gratuito generoso","✅ Interface mais simples para não-designers com curva de aprendizado mínima","✅ Canva AI também gera imagens, textos e apresentações — não apenas anúncios"],
  "faq": [{"q":"AdCreative.ai vs Canva — qual é o melhor para anúncios?","a":"AdCreative.ai é especializado em criativos publicitários com scoring de performance por IA. Canva é versátil mas menos otimizado para performance publicitária. Para campanhas publicitárias em grande escala → AdCreative.ai; para conteúdo de marketing geral → Canva."},{"q":"AdCreative.ai é caro?","a":"AdCreative.ai começa a partir de $29/mês para uso básico. Planos para agências são mais altos. Canva é gratuito; Pro a partir de $15/mês."},{"q":"AdCreative.ai gera anúncios em português?","a":"Sim. AdCreative.ai pode gerar criativos em português. Você especifica o idioma e o texto alvo em português, e a ferramenta gera visuais adaptados."},{"q":"O score de performance do AdCreative.ai é confiável?","a":"O score é baseado em dados históricos de campanhas publicitárias. É uma indicação útil mas não uma garantia. O desempenho real depende do seu público-alvo, oferta e muitos outros fatores."}]
},
"akkio-vs-julius-ai": {
  "a": "Akkio", "b": "Julius AI",
  "choose_a": ["✅ Você precisa de uma plataforma no-code para criar modelos de machine learning sem programar","✅ Akkio prevê resultados de negócio: churn de clientes, conversão de leads, previsões de vendas","✅ Melhor para equipes de negócios que querem insights preditivos sem cientistas de dados","✅ Akkio se conecta diretamente com CRMs, Google Sheets e fontes de dados de negócio"],
  "choose_b": ["✅ Você precisa analisar dados fazendo perguntas em linguagem natural","✅ Julius AI explora CSVs e bancos de dados e gera visualizações automaticamente","✅ Melhor para análise exploratória de dados e criação de gráficos sem código","✅ Interface conversacional simples para qualquer pessoa que queira entender seus dados"],
  "faq": [{"q":"Akkio vs Julius AI — qual é a diferença?","a":"Akkio cria modelos preditivos de ML no-code. Julius AI responde perguntas sobre seus dados e gera visualizações. Akkio para previsões automatizadas; Julius AI para exploração e visualização de dados ad hoc."},{"q":"Akkio é gratuito?","a":"Akkio tem plano gratuito com limites. Planos pagos a partir de $49/mês. Julius AI tem plano gratuito; Pro a partir de $28/mês."},{"q":"Akkio pode prever churn de clientes?","a":"Sim. A previsão de churn é um dos principais casos de uso do Akkio. Você importa seus dados históricos de clientes e o Akkio cria um modelo que identifica clientes em risco de churn, sem conhecimento em machine learning."},{"q":"Julius AI pode analisar dados em português?","a":"Sim. Julius AI entende perguntas em português e pode analisar dados com colunas e valores em português. Os gráficos gerados refletem seus dados como estão."}]
},
"autogpt-vs-manus": {
  "a": "AutoGPT", "b": "Manus",
  "choose_a": ["✅ Você quer explorar agentes de IA autônomos open-source e personalizá-los","✅ AutoGPT é um dos primeiros frameworks de agentes de IA — bem documentado e open-source","✅ Você é desenvolvedor que quer construir e personalizar agentes de IA autônomos","✅ AutoGPT pode ser auto-hospedado para privacidade e controle total"],
  "choose_b": ["✅ Você quer um agente de IA autônomo comercial pronto para usar para delegar tarefas reais","✅ Manus realiza tarefas reais: pesquisa na web, código, preparação de documentos de forma autônoma","✅ Experiência mais polida e confiável para tarefas de negócio reais sem configuração técnica","✅ Manus é mais acessível para não-técnicos que querem delegar tarefas a um agente"],
  "faq": [{"q":"AutoGPT vs Manus — qual é a diferença?","a":"AutoGPT é um framework open-source para construir agentes de IA — mais técnico. Manus é um agente de IA comercial pronto para usar — mais acessível. Desenvolvedores que querem personalizar agentes → AutoGPT; usuários que querem delegar tarefas → Manus."},{"q":"AutoGPT ainda é relevante?","a":"AutoGPT foi pioneiro em agentes de IA mas o espaço evoluiu muito. Alternativas mais recentes como LangChain, CrewAI e AutoGen são frequentemente preferidas por desenvolvedores. Para usuários finais, agentes comerciais como Manus são mais práticos."},{"q":"Manus AI está disponível no Brasil?","a":"Manus é acessível globalmente. A interface é principalmente em inglês. Para usá-lo com conteúdo em português, ele entende português mas os resultados podem variar conforme as tarefas."},{"q":"AutoGPT é gratuito?","a":"AutoGPT é open-source e gratuito. Você paga pelas APIs de IA usadas (OpenAI, Anthropic). Manus tem um modelo de acesso por convite com preços em evolução."}]
},
"coursera-coach-vs-khanmigo": {
  "a": "Coursera Coach", "b": "Khanmigo",
  "choose_a": ["✅ Você faz cursos no Coursera e quer um assistente de IA integrado para ajudá-lo","✅ Coursera Coach ajuda a entender o conteúdo dos cursos, responde perguntas e resume aulas","✅ Melhor para adultos fazendo formação profissional e cursos universitários online","✅ Acesso a milhares de cursos de grandes universidades e empresas mundiais"],
  "choose_b": ["✅ Você precisa de um tutor de IA socrático que guia em direção à compreensão nas matérias escolares","✅ Khanmigo cobre todas as matérias acadêmicas: matemática, ciências, história, literatura","✅ Desenvolvido pela Khan Academy com pedagogia comprovada focada no aprendizado profundo","✅ Melhor para alunos do ensino fundamental e médio fazendo tarefas escolares"],
  "faq": [{"q":"Coursera Coach vs Khanmigo — qual é o melhor?","a":"Coursera Coach é melhor para aprendizado profissional e cursos universitários online. Khanmigo é melhor para ajuda com tarefas escolares com pedagogia socrática. Formação profissional → Coursera Coach; ajuda com tarefas escolares → Khanmigo."},{"q":"Coursera Coach está disponível para todos os cursos?","a":"Coursera Coach está disponível em muitos cursos no Coursera. A disponibilidade pode variar por curso. Consulte o curso específico para ver se o Coach está integrado."},{"q":"Khanmigo está disponível em português?","a":"Khanmigo está principalmente disponível em inglês. Khan Academy tem conteúdo em português mas o Khanmigo em si é limitado para o português. Para ajuda com tarefas em português, alternativas como Claude ou ChatGPT podem ser usadas diretamente."},{"q":"Coursera é gratuito com o Coursera Coach?","a":"Coursera tem cursos gratuitos com auditoria, mas as funcionalidades completas incluindo Coursera Coach geralmente requerem assinatura paga. Coursera Plus a partir de $59/mês dá acesso à maioria dos cursos e funcionalidades."}]
},
"socratic-vs-khanmigo": {
  "a": "Socratic by Google", "b": "Khanmigo",
  "choose_a": ["✅ Você precisa de um aplicativo móvel gratuito para ajuda com tarefas — fotografe e obtenha explicações","✅ Socratic identifica o assunto da pergunta automaticamente e fornece explicações visuais","✅ Gratuito e desenvolvido pelo Google — sem assinatura necessária","✅ Melhor para alunos do ensino médio que buscam ajuda rápida no celular"],
  "choose_b": ["✅ Você precisa de um tutor de IA interativo que engaja numa conversa pedagógica","✅ Khanmigo guia em direção à compreensão em vez de dar diretamente as respostas","✅ Cobre todas as matérias acadêmicas com alinhamento aos currículos escolares","✅ Pedagogia da Khan Academy: socrática, guiada e focada no aprendizado profundo"],
  "faq": [{"q":"Socratic vs Khanmigo — qual é o melhor?","a":"Socratic é melhor para ajuda rápida e gratuita no celular via foto. Khanmigo é melhor para aprendizado profundo guiado por tutor de IA interativo. Ajuda rápida no celular → Socratic; aprendizado profundo → Khanmigo."},{"q":"Socratic é gratuito?","a":"Sim. Socratic é completamente gratuito. Khanmigo custa $4/mês."},{"q":"Socratic funciona em português?","a":"Socratic funciona para matérias em português. Você pode fotografar exercícios em português e obter explicações. A qualidade pode variar por matéria e complexidade das perguntas."},{"q":"Khanmigo dá diretamente as respostas?","a":"Não, esta é sua abordagem distintiva. Khanmigo guia o aluno em direção à compreensão fazendo perguntas socráticas. Ele não dá diretamente as respostas para encorajar a reflexão e compreensão real."}]
},
}

COMPARISONS = [
    {'slug': 'chatgpt-vs-claude',                    'a': 'chatgpt',                'b': 'claude'},
    {'slug': 'gemini-vs-chatgpt',                    'a': 'gemini',                 'b': 'chatgpt'},
    {'slug': 'deepseek-vs-chatgpt',                  'a': 'deepseek',               'b': 'chatgpt'},
    {'slug': 'microsoft-copilot-vs-chatgpt',         'a': 'microsoft-copilot',      'b': 'chatgpt'},
    {'slug': 'meta-ai-vs-chatgpt',                   'a': 'meta-ai',                'b': 'chatgpt'},
    {'slug': 'grok-vs-chatgpt',                      'a': 'grok',                   'b': 'chatgpt'},
    {'slug': 'mistral-le-chat-vs-chatgpt',           'a': 'mistral-le-chat',        'b': 'chatgpt'},
    {'slug': 'character-ai-vs-chatgpt',              'a': 'character-ai',           'b': 'chatgpt'},
    {'slug': 'copilot-studio-vs-manus',              'a': 'copilot-studio',         'b': 'manus'},
    {'slug': 'n8n-vs-copilot-studio',                'a': 'n8n',                    'b': 'copilot-studio'},
    {'slug': 'make-vs-copilot-studio',               'a': 'make',                   'b': 'copilot-studio'},
    {'slug': 'lindy-vs-copilot-studio',              'a': 'lindy',                  'b': 'copilot-studio'},
    {'slug': 'relevance-ai-vs-copilot-studio',       'a': 'relevance-ai',           'b': 'copilot-studio'},
    {'slug': 'devin-vs-copilot-studio',              'a': 'devin',                  'b': 'copilot-studio'},
    {'slug': 'make-vs-n8n',                          'a': 'make',                   'b': 'n8n'},
    {'slug': 'cursor-vs-copilot',                    'a': 'cursor',                 'b': 'github-copilot'},
    {'slug': 'windsurf-vs-cursor',                   'a': 'windsurf',               'b': 'cursor'},
    {'slug': 'claude-code-vs-github-copilot',        'a': 'claude-code',            'b': 'github-copilot'},
    {'slug': 'replit-vs-github-copilot',             'a': 'replit',                 'b': 'github-copilot'},
    {'slug': 'bolt-new-vs-cursor',                   'a': 'bolt-new',               'b': 'cursor'},
    {'slug': 'v0-by-vercel-vs-cursor',               'a': 'v0-by-vercel',           'b': 'cursor'},
    {'slug': 'cline-vs-github-copilot',              'a': 'cline',                  'b': 'github-copilot'},
    {'slug': 'aider-vs-github-copilot',              'a': 'aider',                  'b': 'github-copilot'},
    {'slug': 'windsurf-vs-github-copilot',           'a': 'windsurf',               'b': 'github-copilot'},
    {'slug': 'deepl-vs-grammarly',                   'a': 'deepl',                  'b': 'grammarly'},
    {'slug': 'quillbot-vs-grammarly',                'a': 'quillbot',               'b': 'grammarly'},
    {'slug': 'jasper-vs-writesonic',                 'a': 'jasper',                 'b': 'writesonic'},
    {'slug': 'writesonic-vs-grammarly',              'a': 'writesonic',             'b': 'grammarly'},
    {'slug': 'hemingway-editor-vs-grammarly',        'a': 'hemingway-editor',       'b': 'grammarly'},
    {'slug': 'semrush-vs-copy-ai',                   'a': 'semrush',                'b': 'copy-ai'},
    {'slug': 'surferseo-vs-semrush',                 'a': 'surferseo',              'b': 'semrush'},
    {'slug': 'frase-vs-semrush',                     'a': 'frase',                  'b': 'semrush'},
    {'slug': 'clearscope-vs-surferseo',              'a': 'clearscope',             'b': 'surferseo'},
    {'slug': 'copy-ai-vs-jasper',                    'a': 'copy-ai',                'b': 'jasper'},
    {'slug': 'midjourney-vs-flux',                   'a': 'midjourney',             'b': 'flux'},
    {'slug': 'midjourney-vs-stable-diffusion',       'a': 'midjourney',             'b': 'stable-diffusion'},
    {'slug': 'ideogram-vs-midjourney',               'a': 'ideogram',               'b': 'midjourney'},
    {'slug': 'adobe-firefly-vs-midjourney',          'a': 'adobe-firefly',          'b': 'midjourney'},
    {'slug': 'recraft-ai-vs-midjourney',             'a': 'recraft-ai',             'b': 'midjourney'},
    {'slug': 'flux-vs-stable-diffusion',             'a': 'flux',                   'b': 'stable-diffusion'},
    {'slug': 'leonardo-ai-vs-midjourney',            'a': 'leonardo-ai',            'b': 'midjourney'},
    {'slug': 'kling-vs-runway',                      'a': 'kling-ai',               'b': 'runway'},
    {'slug': 'capcut-vs-kling-ai',                   'a': 'capcut',                 'b': 'kling-ai'},
    {'slug': 'runway-vs-capcut',                     'a': 'runway',                 'b': 'capcut'},
    {'slug': 'heygen-vs-synthesia',                  'a': 'heygen',                 'b': 'synthesia'},
    {'slug': 'pika-vs-kling-ai',                     'a': 'pika',                   'b': 'kling-ai'},
    {'slug': 'luma-ai-vs-runway',                    'a': 'luma-ai',                'b': 'runway'},
    {'slug': 'google-veo-3-vs-runway',               'a': 'google-veo-3',           'b': 'runway'},
    {'slug': 'canva-ai-vs-figma-ai',                 'a': 'canva-ai',               'b': 'figma-ai'},
    {'slug': 'figma-ai-vs-canva-ai',                 'a': 'figma-ai',               'b': 'canva-ai'},
    {'slug': 'framer-ai-vs-canva-ai',                'a': 'framer-ai',              'b': 'canva-ai'},
    {'slug': 'looka-vs-canva-ai',                    'a': 'looka',                  'b': 'canva-ai'},
    {'slug': 'uizard-vs-figma-ai',                   'a': 'uizard',                 'b': 'figma-ai'},
    {'slug': 'uxpilot-vs-figma-ai',                  'a': 'uxpilot',                'b': 'figma-ai'},
    {'slug': 'relume-vs-framer-ai',                  'a': 'relume',                 'b': 'framer-ai'},
    {'slug': 'whimsical-ai-vs-figma-ai',             'a': 'whimsical-ai',           'b': 'figma-ai'},
    {'slug': 'suno-vs-udio',                         'a': 'suno',                   'b': 'udio'},
    {'slug': 'speechify-vs-elevenlabs',              'a': 'speechify',              'b': 'elevenlabs'},
    {'slug': 'elevenlabs-vs-murf-ai',                'a': 'elevenlabs',             'b': 'murf-ai'},
    {'slug': 'elevenlabs-vs-playht',                 'a': 'elevenlabs',             'b': 'playht'},
    {'slug': 'descript-vs-adobe-podcast',            'a': 'descript',               'b': 'adobe-podcast'},
    {'slug': 'suno-vs-elevenlabs',                   'a': 'suno',                   'b': 'elevenlabs'},
    {'slug': 'notion-ai-vs-zapier-ai',               'a': 'notion-ai',              'b': 'zapier-ai'},
    {'slug': 'gamma-vs-notion-ai',                   'a': 'gamma',                  'b': 'notion-ai'},
    {'slug': 'otter-ai-vs-fireflies-ai',             'a': 'otter-ai',               'b': 'fireflies-ai'},
    {'slug': 'motion-vs-reclaim-ai',                 'a': 'motion',                 'b': 'reclaim-ai'},
    {'slug': 'zapier-ai-vs-make',                    'a': 'zapier-ai',              'b': 'make'},
    {'slug': 'perplexity-vs-notebooklm',             'a': 'perplexity',             'b': 'notebooklm'},
    {'slug': 'elicit-vs-consensus',                  'a': 'elicit',                 'b': 'consensus'},
    {'slug': 'consensus-vs-perplexity',              'a': 'consensus',              'b': 'perplexity'},
    {'slug': 'notebooklm-vs-humata',                 'a': 'notebooklm',             'b': 'humata'},
    {'slug': 'scite-vs-semantic-scholar',            'a': 'scite',                  'b': 'semantic-scholar'},
    {'slug': 'looker-studio-vs-tableau-ai',          'a': 'looker-studio',          'b': 'tableau-ai'},
    {'slug': 'julius-ai-vs-looker-studio',           'a': 'julius-ai',              'b': 'looker-studio'},
    {'slug': 'hex-vs-looker-studio',                 'a': 'hex',                    'b': 'looker-studio'},
    {'slug': 'rows-vs-hex',                          'a': 'rows',                   'b': 'hex'},
    {'slug': 'retool-ai-vs-looker-studio',           'a': 'retool-ai',              'b': 'looker-studio'},
    {'slug': 'bubble-vs-webflow',                    'a': 'bubble',                 'b': 'webflow'},
    {'slug': 'lovable-vs-bubble',                    'a': 'lovable',                'b': 'bubble'},
    {'slug': 'flutterflow-vs-bubble',                'a': 'flutterflow',            'b': 'bubble'},
    {'slug': 'glide-vs-bubble',                      'a': 'glide',                  'b': 'bubble'},
    {'slug': 'softr-vs-bubble',                      'a': 'softr',                  'b': 'bubble'},
    {'slug': 'webflow-vs-framer-ai',                 'a': 'webflow',                'b': 'framer-ai'},
    {'slug': 'photomath-vs-duolingo-max',            'a': 'photomath',              'b': 'duolingo-max'},
    {'slug': 'khanmigo-vs-photomath',                'a': 'khanmigo',               'b': 'photomath'},
    {'slug': 'duolingo-max-vs-khanmigo',             'a': 'duolingo-max',           'b': 'khanmigo'},
    {'slug': 'youlearn-vs-notebooklm',               'a': 'youlearn',               'b': 'notebooklm'},
    {'slug': 'synthesis-vs-khanmigo',                'a': 'synthesis',              'b': 'khanmigo'},
    {'slug': 'gamma-vs-beautiful-ai',                'a': 'gamma',                  'b': 'beautiful-ai'},
    {'slug': 'gamma-vs-pitch',                       'a': 'gamma',                  'b': 'pitch'},
    {'slug': 'gamma-vs-prezi',                       'a': 'gamma',                  'b': 'prezi'},
    {'slug': 'beautiful-ai-vs-pitch',                'a': 'beautiful-ai',           'b': 'pitch'},
    {'slug': 'slidesgo-vs-gamma',                    'a': 'slidesgo',               'b': 'gamma'},
    {'slug': 'tradingview-vs-fiscal-ai',             'a': 'tradingview',            'b': 'fiscal-ai'},
    {'slug': 'koyfin-vs-tradingview',                'a': 'koyfin',                 'b': 'tradingview'},
    {'slug': 'fiscal-ai-vs-koyfin',                  'a': 'fiscal-ai',              'b': 'koyfin'},
    {'slug': 'tickeron-vs-tradingview',              'a': 'tickeron',               'b': 'tradingview'},
    {'slug': 'uptrends-ai-vs-koyfin',               'a': 'uptrends-ai',            'b': 'koyfin'},
    {'slug': 'amazon-q-developer-vs-github-copilot', 'a': 'amazon-q-developer',    'b': 'github-copilot'},
    {'slug': 'continue-dev-vs-github-copilot',       'a': 'continue-dev',           'b': 'github-copilot'},
    {'slug': 'opencode-vs-claude-code',              'a': 'opencode',               'b': 'claude-code'},
    {'slug': 'zed-vs-cursor',                        'a': 'zed',                    'b': 'cursor'},
    {'slug': 'comfyui-vs-stable-diffusion',          'a': 'comfyui',                'b': 'stable-diffusion'},
    {'slug': 'krea-ai-vs-midjourney',                'a': 'krea-ai',                'b': 'midjourney'},
    {'slug': 'nano-banana-vs-leonardo-ai',           'a': 'nano-banana',            'b': 'leonardo-ai'},
    {'slug': 'chatgpt-images-vs-adobe-firefly',      'a': 'chatgpt-images',         'b': 'adobe-firefly'},
    {'slug': 'claude-design-vs-figma-ai',            'a': 'claude-design',          'b': 'figma-ai'},
    {'slug': 'google-stitch-vs-figma-ai',            'a': 'google-stitch',          'b': 'figma-ai'},
    {'slug': 'recraft-vs-canva-ai',                  'a': 'recraft-ai',             'b': 'canva-ai'},
    {'slug': 'remove-bg-vs-canva-ai',                'a': 'remove-bg',              'b': 'canva-ai'},
    {'slug': 'seedance-vs-runway',                   'a': 'seedance-2-0',           'b': 'runway'},
    {'slug': 'whisper-vs-otter-ai',                  'a': 'whisper',                'b': 'otter-ai'},
    {'slug': 'adcreative-ai-vs-canva-ai',            'a': 'adcreative-ai',          'b': 'canva-ai'},
    {'slug': 'akkio-vs-julius-ai',                   'a': 'akkio',                  'b': 'julius-ai'},
    {'slug': 'autogpt-vs-manus',                     'a': 'autogpt',                'b': 'manus'},
    {'slug': 'coursera-coach-vs-khanmigo',           'a': 'coursera-coach',         'b': 'khanmigo'},
    {'slug': 'socratic-vs-khanmigo',                 'a': 'socratic-by-google',     'b': 'khanmigo'},
]

# ── Build tool_slug → {choose_if, faq} ──────────────────────────────────────
tool_data = {}
for comp in COMPARISONS:
    slug_a = comp['a']
    slug_b = comp['b']
    key    = comp['slug']
    if key not in DATA_PT:
        continue
    d = DATA_PT[key]
    if slug_a not in tool_data:
        tool_data[slug_a] = {'choose_if': d['choose_a'], 'faq': d['faq']}
    if slug_b not in tool_data:
        tool_data[slug_b] = {'choose_if': d['choose_b'], 'faq': d['faq']}

# ── Generate SQL for tools table ─────────────────────────────────────────────
lines = []
lines.append("-- Portuguese/BR choose_if + faq UPDATE — generated by gen_tool_choose_faq_pt_b4.py (batch 4/4)")
lines.append("BEGIN;")
for i, (tool_slug, td) in enumerate(sorted(tool_data.items()), start=1):
    ci_json = json.dumps(td['choose_if'], ensure_ascii=False)
    fq_json = json.dumps(td['faq'],       ensure_ascii=False)
    tag_ci  = f't{i}ci'
    tag_fq  = f't{i}fq'
    lines.append(
        f"UPDATE tools SET"
        f" choose_if = ${tag_ci}${ci_json}${tag_ci}$::JSONB,"
        f" faq = ${tag_fq}${fq_json}${tag_fq}$::JSONB"
        f" WHERE slug = '{tool_slug}' AND lang = 'pt';"
    )
lines.append("COMMIT;")
sql = "\n".join(lines)
out_path = __file__.replace('.py', '.sql')
with open(out_path, 'w', encoding='utf-8') as f:
    f.write(sql)
print(f"-- Tools SQL written to {out_path}", file=sys.stderr)

# ── Generate SQL for comparisons table ───────────────────────────────────────
comp_lines = []
comp_lines.append("-- Portuguese/BR choose_a + choose_b + faq INSERT for comparisons table (batch 4/4)")
comp_lines.append("BEGIN;")
for i, comp in enumerate(COMPARISONS, start=1):
    key = comp['slug']
    if key not in DATA_PT:
        continue
    d = DATA_PT[key]
    ca_json  = json.dumps(d['choose_a'], ensure_ascii=False)
    cb_json  = json.dumps(d['choose_b'], ensure_ascii=False)
    faq_json = json.dumps(d['faq'],      ensure_ascii=False)
    tag_a = f'c{i}a'; tag_b = f'c{i}b'; tag_f = f'c{i}f'
    comp_lines.append(
        f"INSERT INTO comparisons "
        f"(slug,lang,tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,choose_a,choose_b,faq)"
        f" SELECT slug,'pt',tool_a,tool_b,tool_a_slug,tool_b_slug,tool_a_url,tool_b_url,"
        f"title,meta_desc,intro,table_data,best_a,best_b,verdict_a,verdict_b,"
        f"${tag_a}${ca_json}${tag_a}$::JSONB,"
        f"${tag_b}${cb_json}${tag_b}$::JSONB,"
        f"${tag_f}${faq_json}${tag_f}$::JSONB"
        f" FROM comparisons WHERE slug='{key}' AND lang='en'"
        f" ON CONFLICT (slug,lang) DO UPDATE SET"
        f" choose_a=EXCLUDED.choose_a, choose_b=EXCLUDED.choose_b, faq=EXCLUDED.faq;"
    )
comp_lines.append("COMMIT;")
comp_sql = "\n".join(comp_lines)
comp_out = __file__.replace('.py', '_comparisons.sql')
with open(comp_out, 'w', encoding='utf-8') as f:
    f.write(comp_sql)
print(f"-- Comparisons SQL written to {comp_out}", file=sys.stderr)
print(f"Batch 4/4 done: {len(DATA_PT)} comparisons, {len(tool_data)} tools")
