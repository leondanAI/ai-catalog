#!/usr/bin/env python3
"""Generate SQL for Portuguese/Brazilian (lang=pt) translations. Batch 3/4 (comparisons 61-90)."""

import json, sys

DATA_PT = {
"descript-vs-adobe-podcast": {
  "a": "Descript", "b": "Adobe Podcast",
  "choose_a": ["✅ Você precisa de edição de podcast e vídeo baseada em texto — edite o áudio editando a transcrição","✅ Descript tem remoção de palavras de preenchimento, overdub e colaboração em equipe","✅ Edição de vídeo integrada: corte, composição e publicação em uma só ferramenta","✅ Melhor para podcasters e criadores de conteúdo que produzem podcasts e vídeos juntos"],
  "choose_b": ["✅ Você precisa de melhoria de qualidade de áudio com IA gratuitamente para gravações de microfone inferior","✅ Adobe Podcast Enhance transforma áudio gravado em casa em som de qualidade de estúdio","✅ Transcrição e busca em episódios de podcast de forma rápida e precisa","✅ Melhor para podcasters que precisam de qualidade de áudio profissional sem equipamento caro"],
  "faq": [{"q":"Descript vs Adobe Podcast — qual escolher?","a":"Descript é mais completo para edição de podcast e vídeo. Adobe Podcast é melhor para melhoria de qualidade de áudio. Para edição completa, Descript; para melhorar qualidade de áudio de gravações domésticas, Adobe Podcast."},{"q":"Descript é gratuito?","a":"Descript tem plano gratuito com 1 hora de transcrição por mês. Planos pagos a partir de $24/mês. Adobe Podcast Enhance é gratuito com uso limitado; o Adobe Podcast completo requer assinatura Creative Cloud."},{"q":"O que é Descript Overdub?","a":"Overdub é uma função do Descript que cria um clone de voz digital do apresentador. Você pode corrigir erros no áudio digitando o texto correto — Descript gera o áudio com sua própria voz."},{"q":"Adobe Podcast realmente melhora o áudio?","a":"Sim, o Adobe Podcast Enhance melhora dramaticamente áudios gravados em ambientes domésticos. Remove ruído de fundo, corrigi reverberação e equaliza o volume. É impressionante para áudios de qualidade média."}]
},
"suno-vs-elevenlabs": {
  "a": "Suno", "b": "ElevenLabs",
  "choose_a": ["✅ Você quer criar músicas completas com vocal, melodia e letra a partir de uma descrição","✅ Suno gera composições musicais inteiras em segundos — não apenas síntese de voz","✅ Experimente como compositor de IA para jingles, trilhas sonoras e música criativa","✅ Melhor para criadores de conteúdo que precisam de músicas originais para projetos"],
  "choose_b": ["✅ Você precisa de síntese de fala de alta qualidade para narração, audiobooks e dublagem","✅ ElevenLabs tem as vozes mais naturais e expressivas disponíveis para texto falado","✅ Clonagem de voz: crie uma voz digital a partir de gravações de amostra","✅ Melhor para conteúdo profissional onde voz humana realista é essencial"],
  "faq": [{"q":"Suno vs ElevenLabs — qual é a diferença?","a":"Suno gera músicas completas com instrumentos e vocal cantado. ElevenLabs gera fala realista para narração e dublagem. São ferramentas de áudio diferentes: Suno para música; ElevenLabs para voz falada."},{"q":"Suno pode criar música em português?","a":"Sim, Suno pode gerar músicas com letras em português. Você pode especificar o idioma e o estilo musical. A qualidade das letras em português é boa, mas pode ter nuances menos precisas que em inglês."},{"q":"ElevenLabs pode cantar?","a":"ElevenLabs é focado em fala, não em canto. Para criar voz cantada, Suno é mais adequado. ElevenLabs tem recursos limitados de entonação que podem simular certo ritmo, mas não é um gerador de música."},{"q":"ElevenLabs tem plano gratuito?","a":"Sim, ElevenLabs tem plano gratuito com 10.000 caracteres por mês — suficiente para testar. Planos pagos a partir de $5/mês para uso comercial."}]
},
"notion-ai-vs-zapier-ai": {
  "a": "Notion AI", "b": "Zapier AI",
  "choose_a": ["✅ Você usa Notion para notas, documentos e wikis e quer IA integrada ao seu espaço de trabalho","✅ Notion AI resume, traduz, melhora textos e gera conteúdo diretamente nos seus documentos","✅ Melhor para equipes que já vivem no Notion e querem IA no contexto dos seus dados","✅ Interface contextual: a IA tem acesso ao conteúdo das suas páginas Notion"],
  "choose_b": ["✅ Você precisa de automação inteligente que conecta diferentes aplicativos com decisões de IA","✅ Zapier AI adiciona inteligência às suas automações: classifica, resume e decide com base em conteúdo","✅ Melhor para automatizar fluxos de trabalho entre ferramentas sem código","✅ Ideal para times de operações que querem automações mais inteligentes e contextuais"],
  "faq": [{"q":"Notion AI vs Zapier AI — qual usar?","a":"Notion AI é para trabalhar com conteúdo e documentos dentro do Notion. Zapier AI é para automação inteligente entre aplicativos. Para criar e editar no Notion, use Notion AI; para automatizar fluxos entre ferramentas, use Zapier AI."},{"q":"Notion AI é gratuito?","a":"Notion AI custa $10/usuário/mês adicionais ao plano Notion. Notion tem plano gratuito, mas Notion AI é pago. Zapier tem plano gratuito com automações limitadas; planos pagos incluem recursos de IA."},{"q":"Zapier AI pode tomar decisões?","a":"Sim, Zapier AI pode classificar conteúdo, resumir emails, extrair informações e tomar decisões baseadas em contexto. Útil para automatizar processos que antes requeriam julgamento humano."},{"q":"Notion AI suporta português?","a":"Sim, Notion AI funciona bem em português. Você pode pedir resumos, melhorias de texto e geração de conteúdo em português diretamente."}]
},
"gamma-vs-notion-ai": {
  "a": "Gamma", "b": "Notion AI",
  "choose_a": ["✅ Você precisa criar apresentações visualmente impressionantes rapidamente a partir de texto","✅ Gamma gera decks completos com design profissional a partir de uma breve descrição","✅ Melhor para apresentações de vendas, pitch decks e conteúdo de slides para compartilhar","✅ Interface mais focada em criação de apresentações com resultados mais polidos"],
  "choose_b": ["✅ Você usa Notion e quer IA integrada para melhorar e criar conteúdo nos seus documentos","✅ Notion AI é mais versátil: resume, traduz, melhora textos e cria diferentes tipos de conteúdo","✅ Melhor quando você precisa de IA dentro do seu espaço de trabalho e base de conhecimento","✅ Mais adequado para criação de documentos, wikis e conteúdo colaborativo de longo prazo"],
  "faq": [{"q":"Gamma vs Notion AI — qual escolher?","a":"Gamma é especializado em criar apresentações belas rapidamente. Notion AI é uma IA integrada ao seu espaço de trabalho para vários tipos de conteúdo. Para slides, Gamma; para documentação e conteúdo geral, Notion AI."},{"q":"Gamma é gratuito?","a":"Gamma tem plano gratuito com créditos de IA limitados e marca d'água. Planos pagos a partir de $8/mês. Notion AI custa $10/usuário/mês adicional ao plano Notion."},{"q":"Gamma exporta para PowerPoint?","a":"Sim, Gamma pode exportar apresentações para formato PowerPoint (PPTX) e PDF. Isso facilita compartilhar com pessoas que não usam Gamma."},{"q":"Notion AI consegue criar apresentações?","a":"Notion AI pode criar estruturas de conteúdo para apresentações, mas não gera slides visuais. Para criar slides bonitos diretamente, Gamma é mais adequado."}]
},
"otter-ai-vs-fireflies-ai": {
  "a": "Otter AI", "b": "Fireflies AI",
  "choose_a": ["✅ Você precisa de transcrição em tempo real durante reuniões no Zoom, Teams e Meet","✅ Otter AI sincroniza com seu calendário e entra automaticamente nas reuniões","✅ Destaque de itens de ação e resumo de reunião compartilhável após cada chamada","✅ Melhor para executivos e equipes que querem capturar reuniões sem esforço"],
  "choose_b": ["✅ Você precisa de um assistente de reunião que pode participar de qualquer reunião de vídeo","✅ Fireflies AI tem análise de sentimento e coaching de conversa para vendas","✅ Busca em transcrições de todas as reuniões anteriores para encontrar informações","✅ Melhor para equipes de vendas e CS que precisam analisar conversas com clientes"],
  "faq": [{"q":"Otter AI vs Fireflies AI — qual é o melhor?","a":"Otter AI é melhor para transcrição individual e reuniões de equipe gerais. Fireflies AI é melhor para equipes de vendas com análise de conversa. Para uso geral, Otter; para vendas e CS, Fireflies."},{"q":"Otter AI é gratuito?","a":"Otter AI tem plano gratuito com 600 minutos de transcrição por mês. Planos pagos a partir de $10/mês. Fireflies AI tem plano gratuito com 800 minutos de armazenamento; pagos a partir de $10/mês."},{"q":"Otter AI funciona em português?","a":"Otter AI transcreve melhor em inglês. O suporte ao português é limitado. Para transcrição em português, considere alternativas como Whisper (OpenAI) ou serviços especializados."},{"q":"Fireflies AI pode participar de reuniões automaticamente?","a":"Sim, Fireflies AI pode ser configurado para entrar automaticamente nas reuniões de acordo com seu calendário. Ele aparece como participante e transcreve a reunião inteira."}]
},
"motion-vs-reclaim-ai": {
  "a": "Motion", "b": "Reclaim AI",
  "choose_a": ["✅ Você precisa de agendamento inteligente que organiza automaticamente suas tarefas e reuniões","✅ Motion usa IA para priorizar e agendar seu trabalho ao longo do dia automaticamente","✅ Replanejamento automático quando prioridades mudam ou reuniões são adicionadas","✅ Melhor para profissionais sobrecarregados que precisam de gestão de tempo automática"],
  "choose_b": ["✅ Você precisa proteger blocos de tempo para trabalho focado, exercícios e hábitos pessoais","✅ Reclaim AI sincroniza hábitos e rotinas com seu Google Calendar automaticamente","✅ Melhor integração com Google Workspace para equipes que usam Google Calendar","✅ Ideal para quem quer equilibrar trabalho focado com reuniões e compromissos pessoais"],
  "faq": [{"q":"Motion vs Reclaim AI — qual escolher?","a":"Motion é mais poderoso para gestão de tarefas e priorização automática. Reclaim AI é melhor para proteger tempo para hábitos e trabalho focado. Para gestão completa de agenda, Motion; para proteger tempo de foco, Reclaim."},{"q":"Motion é gratuito?","a":"Motion não tem plano gratuito. Planos a partir de $19/mês (Individual). Reclaim AI tem plano gratuito; planos pagos a partir de $10/mês."},{"q":"Motion funciona com Google Calendar?","a":"Sim, Motion sincroniza com Google Calendar e Outlook. Ele gerencia seus compromissos existentes e adiciona blocos de tempo para tarefas automaticamente."},{"q":"Reclaim AI pode agendar exercícios?","a":"Sim, este é um dos casos de uso populares do Reclaim. Você define quando quer se exercitar e por quanto tempo, e o Reclaim encontra automaticamente os melhores slots na sua agenda."}]
},
"zapier-ai-vs-make": {
  "a": "Zapier AI", "b": "Make",
  "choose_a": ["✅ Você precisa de automações mais simples com recursos de IA integrados sem configuração técnica","✅ Zapier tem mais de 7.000 integrações — o maior catálogo de aplicativos disponível","✅ Interface mais fácil para usuários não técnicos criar automações rapidamente","✅ Melhor para pequenas equipes que precisam conectar aplicativos sem investir em configuração"],
  "choose_b": ["✅ Você precisa de automações visuais complexas com múltiplas condições e transformações de dados","✅ Make é significativamente mais barato que Zapier para o mesmo volume de automações","✅ Interface visual de fluxo de dados que mostra exatamente o que acontece em cada etapa","✅ Melhor para desenvolvedores e equipes técnicas que precisam de máxima flexibilidade"],
  "faq": [{"q":"Zapier AI vs Make — qual é o melhor?","a":"Zapier é mais fácil e tem mais integrações. Make é mais poderoso e mais barato para automações complexas. Para simplicidade e muitas integrações, Zapier; para flexibilidade e custo-benefício, Make."},{"q":"Zapier é gratuito?","a":"Zapier tem plano gratuito com 100 tarefas por mês e 5 Zaps. Planos pagos a partir de $19,99/mês. Make tem plano gratuito com 1.000 operações; pagos a partir de $9/mês."},{"q":"Zapier AI pode processar emails?","a":"Sim, Zapier AI pode ler emails, extrair informações, classificar por urgência e acionar ações baseadas no conteúdo. Útil para triagem automática de emails e criação de tickets de suporte."},{"q":"Make vs n8n — qual é mais fácil?","a":"Make é geralmente mais fácil que n8n para iniciantes. n8n oferece mais flexibilidade e é gratuito na auto-hospedagem. Para facilidade de uso, Make; para controle máximo e auto-hospedagem, n8n."}]
},
"perplexity-vs-notebooklm": {
  "a": "Perplexity", "b": "NotebookLM",
  "choose_a": ["✅ Você precisa de pesquisa na web em tempo real com respostas citadas e verificáveis","✅ Perplexity busca a web e sintetiza informações atualizadas com referências precisas","✅ Modo de busca profunda para pesquisa abrangente de tópicos complexos","✅ Melhor para pesquisa geral, fact-checking e descoberta de informações atuais"],
  "choose_b": ["✅ Você quer analisar e conversar com seus próprios documentos, PDFs e fontes","✅ NotebookLM cria podcasts de áudio automaticamente a partir dos seus documentos","✅ Respostas 100% baseadas nos documentos que você enviou — sem alucinações externas","✅ Melhor para estudantes, pesquisadores e profissionais que trabalham com muitos documentos"],
  "faq": [{"q":"Perplexity vs NotebookLM — qual usar?","a":"Perplexity é para pesquisa na web em tempo real. NotebookLM é para analisar seus próprios documentos. Para informações atuais da web, Perplexity; para trabalhar com seus documentos e materiais, NotebookLM."},{"q":"Perplexity é gratuito?","a":"Perplexity tem plano gratuito com buscas ilimitadas. Perplexity Pro custa $20/mês com mais pesquisas profundas e acesso a modelos avançados. NotebookLM é gratuito do Google."},{"q":"NotebookLM pode criar podcasts?","a":"Sim, este é um recurso único do NotebookLM. Ele pode gerar um podcast de áudio de dois apresentadores discutindo o conteúdo dos seus documentos. É surpreendentemente natural e informativo."},{"q":"Perplexity cita suas fontes?","a":"Sim, Perplexity cita todas as fontes usadas nas respostas. Você pode verificar cada informação clicando nas referências. Este é um dos diferenciais principais da plataforma."}]
},
"elicit-vs-consensus": {
  "a": "Elicit", "b": "Consensus",
  "choose_a": ["✅ Você precisa extrair dados de papers científicos e criar tabelas de revisão de literatura","✅ Elicit pode processar centenas de papers e extrair campos específicos automaticamente","✅ Melhor para revisões sistemáticas, meta-análises e pesquisa acadêmica avançada","✅ Fluxo de trabalho completo: busca, filtragem, extração de dados e síntese"],
  "choose_b": ["✅ Você quer buscar o consenso científico sobre uma questão específica rapidamente","✅ Consensus analisa papers e indica se a evidência apoia ou contradiz uma afirmação","✅ Interface mais simples para perguntas de sim/não sobre evidência científica","✅ Melhor para profissionais de saúde e estudantes que precisam de respostas baseadas em evidências"],
  "faq": [{"q":"Elicit vs Consensus — qual é a diferença?","a":"Elicit é para extração sistemática de dados de papers — mais técnico e completo. Consensus é para entender rapidamente se a ciência suporta uma afirmação — mais acessível. Para revisões de literatura, Elicit; para verificação de fatos científicos, Consensus."},{"q":"Elicit é gratuito?","a":"Elicit tem plano gratuito com 5.000 créditos. Planos pagos a partir de $10/mês. Consensus tem plano gratuito; planos pagos a partir de $9,99/mês."},{"q":"Consensus funciona com estudos em português?","a":"Consensus foca principalmente em papers em inglês do PubMed e Semantic Scholar. Para literatura científica em português, é necessário usar outras ferramentas."},{"q":"Elicit pode substituir o processo de revisão sistemática?","a":"Elicit automatiza partes do processo mas não substitui completamente. Ele acelera a triagem e extração de dados, mas a interpretação e síntese ainda requerem julgamento especializado humano."}]
},
"consensus-vs-perplexity": {
  "a": "Consensus", "b": "Perplexity",
  "choose_a": ["✅ Você quer respostas baseadas exclusivamente em evidências de papers científicos revisados por pares","✅ Consensus indica o percentual de estudos que suportam ou refutam uma afirmação","✅ Referências verificáveis apenas de fontes acadêmicas confiáveis","✅ Melhor para médicos, cientistas e estudantes que precisam de evidências científicas específicas"],
  "choose_b": ["✅ Você precisa de respostas abrangentes sobre qualquer tópico com informações da web","✅ Perplexity combina fontes acadêmicas, notícias, blogs e sites especializados","✅ Informações mais atualizadas incluindo notícias recentes e desenvolvimentos novos","✅ Melhor para pesquisa geral onde você precisa de uma visão ampla de um tópico"],
  "faq": [{"q":"Consensus vs Perplexity — qual usar?","a":"Consensus é para verificar afirmações com evidência científica peer-reviewed. Perplexity é para pesquisa geral com múltiplas fontes. Para questões científicas, Consensus; para pesquisa abrangente geral, Perplexity."},{"q":"Consensus é gratuito?","a":"Sim, Consensus tem plano gratuito com buscas limitadas. Planos pagos a partir de $9,99/mês. Perplexity também tem plano gratuito; Pro a $20/mês."},{"q":"Consensus suporta português?","a":"Consensus foca em papers em inglês. Para busca de literatura científica em português, são necessárias outras ferramentas como Google Scholar ou Scielo."},{"q":"Perplexity é melhor que o Google para pesquisa?","a":"Para pesquisa com síntese e citações, Perplexity é frequentemente mais eficiente que o Google. Para encontrar sites específicos ou resultados locais, o Google ainda tem vantagem. Muitos pesquisadores usam os dois."}]
},
"notebooklm-vs-humata": {
  "a": "NotebookLM", "b": "Humata",
  "choose_a": ["✅ Você quer analisar múltiplos documentos juntos e criar conexões entre eles","✅ NotebookLM pode gerar podcasts de áudio dos seus documentos automaticamente","✅ É gratuito e desenvolvido pelo Google com excelente qualidade de análise","✅ Melhor para estudantes, pesquisadores e jornalistas que trabalham com muitos documentos"],
  "choose_b": ["✅ Você precisa de chat especializado com PDFs técnicos, contratos e documentos corporativos","✅ Humata tem referências precisas com indicação exata de onde a informação está no documento","✅ Melhor suporte para grandes volumes de documentos corporativos e legais","✅ Interface mais focada para uso corporativo e análise de documentos profissionais"],
  "faq": [{"q":"NotebookLM vs Humata — qual escolher?","a":"NotebookLM é mais versátil e gratuito, ótimo para pesquisa e estudo. Humata é mais focado em documentos corporativos e técnicos com referências precisas. Para uso acadêmico e gratuito, NotebookLM; para análise corporativa de documentos, Humata."},{"q":"NotebookLM é gratuito?","a":"Sim, NotebookLM do Google é gratuito. NotebookLM Plus tem recursos adicionais por $19,99/mês. Humata tem plano gratuito com 5 PDFs; planos pagos a partir de $14,99/mês."},{"q":"NotebookLM pode analisar PDFs grandes?","a":"Sim, NotebookLM pode processar documentos grandes. O limite é de 500.000 palavras por fonte e até 50 fontes por notebook."},{"q":"Humata tem precisão em documentos jurídicos?","a":"Humata é frequentemente usado para análise de contratos e documentos jurídicos. Sempre verifique as referências exatas que ele fornece, pois documentos jurídicos requerem precisão total."}]
},
"scite-vs-semantic-scholar": {
  "a": "Scite", "b": "Semantic Scholar",
  "choose_a": ["✅ Você precisa saber se uma citação suporta, contradiz ou meramente menciona um paper","✅ Scite analisa o contexto de cada citação para indicar seu tipo e relevância","✅ Melhor para avaliar a robustez de afirmações científicas e identificar controvérsias","✅ Ideal para peer review, revisões de literatura e análise crítica de evidências"],
  "choose_b": ["✅ Você precisa encontrar papers relevantes e entender sua influência na área","✅ Semantic Scholar usa IA para recomendar papers relacionados e mapear campos de pesquisa","✅ Gratuito com acesso a mais de 200 milhões de papers acadêmicos","✅ Melhor para descoberta de literatura e exploração de áreas de pesquisa novas"],
  "faq": [{"q":"Scite vs Semantic Scholar — qual usar?","a":"Scite é para análise qualitativa de citações — entender como papers são citados. Semantic Scholar é para descoberta e recomendação de papers. Para análise de evidências, Scite; para descoberta de literatura, Semantic Scholar."},{"q":"Scite é gratuito?","a":"Scite tem plano gratuito limitado. Planos pagos a partir de $15/mês. Semantic Scholar é totalmente gratuito."},{"q":"Semantic Scholar é confiável?","a":"Sim, Semantic Scholar é desenvolvido pelo Allen Institute for AI e é amplamente usado por pesquisadores. Cobre mais de 200 milhões de papers com dados de citações precisos."},{"q":"Scite funciona com papers em português?","a":"Scite analisa papers em múltiplos idiomas, mas o corpus principal é em inglês. Para literatura científica em português, a cobertura é menor."}]
},
"looker-studio-vs-tableau-ai": {
  "a": "Looker Studio", "b": "Tableau AI",
  "choose_a": ["✅ Você precisa de visualização de dados gratuita integrada ao Google Analytics e outras fontes Google","✅ Looker Studio se conecta ao Google Ads, Search Console, BigQuery e Sheets gratuitamente","✅ Melhor para agências de marketing digital e equipes que trabalham com dados do Google","✅ Compartilhamento fácil de dashboards via links sem necessidade de licença paga"],
  "choose_b": ["✅ Você precisa de análise de dados avançada com IA para grandes volumes de dados corporativos","✅ Tableau AI tem recursos de análise explicável e recomendações automáticas de insights","✅ Melhor para analistas de dados e times de BI que precisam de explorações complexas","✅ Suporte superior a fontes de dados diversas incluindo bancos de dados empresariais"],
  "faq": [{"q":"Looker Studio vs Tableau — qual escolher?","a":"Looker Studio é gratuito e ótimo para dados Google. Tableau é mais poderoso para análise complexa de dados corporativos. Para dashboards de marketing Google, Looker Studio; para BI corporativo avançado, Tableau."},{"q":"Looker Studio é realmente gratuito?","a":"Sim, Looker Studio é totalmente gratuito para uso. Looker Studio Pro custa $9/usuário/mês para recursos extras corporativos. Tableau começa em $15/usuário/mês."},{"q":"Tableau AI faz o que exatamente?","a":"Tableau AI inclui Tableau Pulse (insights automáticos), geração de cálculos com linguagem natural e recomendações de visualização. Integrado com Einstein AI da Salesforce."},{"q":"Looker Studio pode substituir o Tableau?","a":"Para casos de uso de marketing digital e relatórios Google, sim. Para análise complexa de grandes volumes de dados corporativos com múltiplas fontes, Tableau ainda oferece mais capacidade."}]
},
"julius-ai-vs-looker-studio": {
  "a": "Julius AI", "b": "Looker Studio",
  "choose_a": ["✅ Você quer analisar dados em linguagem natural — faça perguntas e receba análises e gráficos","✅ Julius AI não requer conhecimento de SQL ou configuração de dashboard — apenas suba seus dados","✅ Melhor para analistas de negócios que precisam de insights rápidos sem expertise técnica","✅ Ótimo para análise exploratória de dados de forma conversacional"],
  "choose_b": ["✅ Você precisa de dashboards persistentes e compartilháveis para toda a equipe","✅ Looker Studio se conecta automaticamente ao Google Analytics, Ads e outras fontes em tempo real","✅ Gratuito e com suporte nativo a fontes de dados do Google sem upload manual","✅ Melhor para relatórios recorrentes que precisam atualizar automaticamente"],
  "faq": [{"q":"Julius AI vs Looker Studio — qual usar?","a":"Julius AI é para análise conversacional de dados — pergunte e obtenha gráficos. Looker Studio é para dashboards persistentes conectados a fontes de dados automáticas. Para exploração rápida, Julius; para dashboards recorrentes, Looker Studio."},{"q":"Julius AI é gratuito?","a":"Julius AI tem plano gratuito com análises limitadas. Planos pagos a partir de $19/mês. Looker Studio é completamente gratuito."},{"q":"Julius AI pode analisar planilhas Excel?","a":"Sim, Julius AI aceita uploads de arquivos CSV, Excel e outros formatos. Você sobe os dados e começa a fazer perguntas em linguagem natural imediatamente."},{"q":"Looker Studio funciona sem Google Analytics?","a":"Sim, Looker Studio tem mais de 1.000 conectores. Funciona com PostgreSQL, MySQL, Salesforce, HubSpot e muitas outras fontes além do ecossistema Google."}]
},
"hex-vs-looker-studio": {
  "a": "Hex", "b": "Looker Studio",
  "choose_a": ["✅ Você precisa de notebooks de dados colaborativos que combinam código Python/SQL e visualizações","✅ Hex é ideal para data scientists e analistas que precisam de análise exploratória rica","✅ Colaboração em tempo real em notebooks — similar ao Google Docs mas para análise de dados","✅ Melhor para equipes técnicas que combinam análise e apresentação de resultados"],
  "choose_b": ["✅ Você precisa de dashboards de negócios sem código para relatórios de marketing e operações","✅ Looker Studio é gratuito e se conecta automaticamente ao Google Analytics e outras fontes","✅ Mais fácil de usar para não-técnicos que precisam de dashboards recorrentes","✅ Melhor para compartilhamento amplo de relatórios com stakeholders não técnicos"],
  "faq": [{"q":"Hex vs Looker Studio — qual escolher?","a":"Hex é para equipes técnicas de dados que precisam de análise exploratória com código. Looker Studio é para dashboards de negócios sem código. Para data science e análise técnica, Hex; para relatórios de negócios, Looker Studio."},{"q":"Hex é gratuito?","a":"Hex tem plano gratuito para uso individual com projetos limitados. Planos de equipe a partir de $24/mês por usuário. Looker Studio é completamente gratuito."},{"q":"Hex suporta Python?","a":"Sim, Hex suporta Python e SQL. Você pode misturar células Python e SQL em um mesmo notebook, o que é muito útil para análises que combinam transformações de dados e visualizações."},{"q":"Looker Studio vs Power BI — qual é mais fácil?","a":"Looker Studio é geralmente considerado mais simples para começar, especialmente para dados Google. Power BI é mais poderoso para análises complexas mas tem curva de aprendizado maior."}]
},
"rows-vs-hex": {
  "a": "Rows", "b": "Hex",
  "choose_a": ["✅ Você quer planilhas mais inteligentes com conexões diretas a APIs e automações","✅ Rows é uma planilha moderna com funções de IA integradas para análise e resumos","✅ Interface familiar de planilha — equipes não técnicas se adaptam rapidamente","✅ Melhor para equipes de negócios que querem automação sem sair do formato planilha"],
  "choose_b": ["✅ Você precisa de análise de dados mais avançada combinando código Python/SQL e visualizações","✅ Hex é melhor para data scientists que precisam de análise exploratória rica e colaborativa","✅ Mais poderoso para transformações de dados complexas e modelos estatísticos","✅ Melhor para equipes técnicas de dados com experiência em programação"],
  "faq": [{"q":"Rows vs Hex — qual usar?","a":"Rows é para equipes de negócios que querem planilhas mais inteligentes. Hex é para equipes de dados técnicas que precisam de notebooks analíticos. Para análise sem código, Rows; para análise técnica com Python/SQL, Hex."},{"q":"Rows é gratuito?","a":"Rows tem plano gratuito com recursos básicos. Planos pagos a partir de $59/mês por workspace. Hex tem plano gratuito individual; planos de equipe a partir de $24/mês por usuário."},{"q":"Rows pode substituir o Google Sheets?","a":"Para casos de uso que precisam de conexões a APIs e automações, Rows é superior. Para colaboração simples e compatibilidade ampla, Google Sheets ainda tem vantagem. Para necessidades avançadas, Rows vale a pena."},{"q":"Hex vs Jupyter Notebook — qual é a diferença?","a":"Hex é uma versão cloud-native e colaborativa do Jupyter. Hex tem melhor colaboração em tempo real, compartilhamento mais fácil e integração com mais fontes de dados. Para trabalho de equipe, Hex; para uso local individual, Jupyter."}]
},
"retool-ai-vs-looker-studio": {
  "a": "Retool AI", "b": "Looker Studio",
  "choose_a": ["✅ Você precisa criar ferramentas internas e dashboards interativos com lógica de negócios complexa","✅ Retool AI gera interfaces de admin, formulários e ferramentas internas com IA","✅ Conexão direta a bancos de dados e APIs — perfeito para ferramentas de operações internas","✅ Melhor para equipes de engenharia que precisam de ferramentas internas rapidamente"],
  "choose_b": ["✅ Você precisa de dashboards de visualização de dados gratuitos conectados ao Google Analytics","✅ Looker Studio é mais simples para criar relatórios de marketing sem código","✅ Melhor para compartilhar relatórios com clientes e stakeholders externos","✅ Sem custo e sem necessidade de desenvolvimento técnico para relatórios padrão"],
  "faq": [{"q":"Retool vs Looker Studio — qual usar?","a":"Retool é para ferramentas internas interativas com lógica de negócios. Looker Studio é para dashboards de visualização de dados de marketing. São ferramentas diferentes: Retool para apps internos; Looker para relatórios."},{"q":"Retool AI é gratuito?","a":"Retool tem plano gratuito para até 5 usuários. Planos pagos a partir de $10/usuário/mês. Looker Studio é completamente gratuito."},{"q":"O que Retool AI pode construir?","a":"Retool AI pode gerar painéis de administração, ferramentas de CRUD, formulários internos e dashboards interativos. Você descreve o que precisa e o Retool gera uma interface inicial que você pode personalizar."},{"q":"Retool é bom para startups?","a":"Sim, Retool é muito popular em startups. Permite criar ferramentas internas em horas em vez de semanas. O plano gratuito é generoso para equipes pequenas."}]
},
"bubble-vs-webflow": {
  "a": "Bubble", "b": "Webflow",
  "choose_a": ["✅ Você quer criar aplicativos web completos com banco de dados e lógica backend sem código","✅ Bubble é a plataforma no-code mais poderosa para criar SaaS e aplicativos complexos","✅ Banco de dados integrado, autenticação de usuários e pagamentos sem plugins externos","✅ Melhor para founders não técnicos que querem lançar produtos reais de software"],
  "choose_b": ["✅ Você precisa de sites e landing pages visualmente impressionantes com design pixel-perfect","✅ Webflow oferece controle total sobre HTML/CSS sem escrever código","✅ CMS poderoso para sites com muito conteúdo: blogs, portfólios e sites corporativos","✅ Melhor para agências de web design e designers que querem sites de alta qualidade"],
  "faq": [{"q":"Bubble vs Webflow — qual escolher?","a":"Bubble é para construir aplicativos com lógica de negócios complexa. Webflow é para criar sites belos com CMS. Para apps SaaS, Bubble; para sites de marketing de alta qualidade, Webflow."},{"q":"Bubble é gratuito?","a":"Bubble tem plano gratuito para desenvolvimento e testes. Planos de produção a partir de $29/mês. Webflow tem plano gratuito limitado; planos de site a partir de $14/mês."},{"q":"Posso criar um marketplace no Bubble?","a":"Sim, Bubble é frequentemente usado para criar marketplaces, plataformas de aluguel e outros modelos de negócios complexos. Tem integrações com Stripe para pagamentos e suporte a multiusuários."},{"q":"Webflow é bom para e-commerce?","a":"Webflow tem funcionalidades básicas de e-commerce. Para lojas menores, funciona bem. Para e-commerce complexo com muitos produtos, Shopify pode ser mais adequado."}]
},
"lovable-vs-bubble": {
  "a": "Lovable", "b": "Bubble",
  "choose_a": ["✅ Você quer criar um app web completo descrevendo-o em linguagem natural com IA","✅ Lovable gera código React real que você pode exportar e hospedar em qualquer lugar","✅ Mais rápido para criar protótipos e MVPs do que configurar o Bubble","✅ Melhor para desenvolvedores que querem aceleração com IA e código exportável"],
  "choose_b": ["✅ Você precisa de uma plataforma no-code madura para apps complexos sem escrever código","✅ Bubble tem mais 10 anos de desenvolvimento e uma comunidade enorme de recursos","✅ Plugins e integrações extensas para qualquer funcionalidade que você precisar","✅ Melhor para founders não técnicos que nunca vão precisar exportar código"],
  "faq": [{"q":"Lovable vs Bubble — qual escolher?","a":"Lovable é melhor para criar apps rapidamente com IA, gerando código real. Bubble é melhor para founders não técnicos que querem uma plataforma matura sem código. Para código real, Lovable; para no-code maduro, Bubble."},{"q":"Lovable é gratuito?","a":"Lovable tem plano gratuito com mensagens limitadas. Planos pagos a partir de $25/mês. Bubble tem plano gratuito para desenvolvimento; produção a partir de $29/mês."},{"q":"Lovable gera código limpo?","a":"Lovable gera código React/TypeScript funcional. A qualidade pode variar, mas geralmente é código usável que você pode continuar desenvolvendo manualmente."},{"q":"Lovable vs Bolt.new — qual é a diferença?","a":"Ambos geram aplicativos com IA. Lovable tem foco em apps mais complexos com autenticação e banco de dados. Bolt.new é melhor para prototipagem rápida de UI. Para apps mais completos, Lovable; para protótipos de UI, Bolt.new."}]
},
"flutterflow-vs-bubble": {
  "a": "FlutterFlow", "b": "Bubble",
  "choose_a": ["✅ Você precisa criar aplicativos móveis nativos (iOS e Android) com uma única base de código","✅ FlutterFlow gera código Flutter real que pode ser publicado nas lojas de apps","✅ Performance superior em mobile — apps nativos são mais rápidos que web apps","✅ Melhor para criar apps móveis sem experiência em Swift ou Kotlin"],
  "choose_b": ["✅ Você quer criar aplicativos web sem código com banco de dados e lógica de negócios completos","✅ Bubble tem um ecossistema maior com mais plugins e uma comunidade mais ativa","✅ Mais fácil para usuários sem experiência técnica criar apps web complexos","✅ Melhor para lançar rapidamente produtos SaaS web sem necessidade de apps de loja"],
  "faq": [{"q":"FlutterFlow vs Bubble — qual escolher?","a":"FlutterFlow é para apps móveis nativos. Bubble é para aplicativos web. Se precisa de um app nas lojas, FlutterFlow; se precisa de um produto web, Bubble."},{"q":"FlutterFlow é gratuito?","a":"FlutterFlow tem plano gratuito com funcionalidades limitadas. Planos pagos a partir de $30/mês. Bubble tem plano gratuito para desenvolvimento; produção a partir de $29/mês."},{"q":"FlutterFlow gera código Flutter real?","a":"Sim, FlutterFlow gera código Dart/Flutter que você pode exportar e continuar desenvolvendo no seu IDE favorito. Esta é uma grande vantagem — você não fica preso na plataforma."},{"q":"FlutterFlow pode criar apps para web também?","a":"Sim, Flutter e FlutterFlow podem criar apps para web, iOS, Android e desktop. No entanto, para sites de marketing e web apps complexos, Webflow ou Bubble podem ser mais adequados."}]
},
"glide-vs-bubble": {
  "a": "Glide", "b": "Bubble",
  "choose_a": ["✅ Você quer criar apps simples a partir de dados do Google Sheets ou Airtable rapidamente","✅ Glide é extremamente fácil — crie um app em horas a partir de uma planilha","✅ Sem configuração de banco de dados — suas planilhas já são o banco de dados","✅ Melhor para apps internos simples: catálogos, diretórios e ferramentas de equipe"],
  "choose_b": ["✅ Você precisa de apps com lógica de negócios complexa que vai além de exibir dados de planilhas","✅ Bubble tem banco de dados nativo e autenticação de usuários mais robustos","✅ Mais escalável para produtos que crescem com mais funcionalidades e usuários","✅ Melhor para criar produtos de software real com requisitos complexos"],
  "faq": [{"q":"Glide vs Bubble — qual usar?","a":"Glide é para apps simples a partir de planilhas — rápido e fácil. Bubble é para apps com lógica complexa e banco de dados robusto. Para apps internos simples, Glide; para produtos de software complexos, Bubble."},{"q":"Glide é gratuito?","a":"Glide tem plano gratuito para apps básicos. Planos pagos a partir de $49/mês para uso comercial. Bubble tem plano gratuito para desenvolvimento; produção a partir de $29/mês."},{"q":"Glide funciona com Google Sheets?","a":"Sim, esta é a principal proposta de valor do Glide. Você cria uma planilha Google Sheets com seus dados e o Glide a transforma em um aplicativo móvel ou web automaticamente."},{"q":"Glide vs Softr — qual é a diferença?","a":"Ambos criam apps a partir de planilhas. Glide é focado em apps móveis e tem interface de design mais rico. Softr é melhor para portais web e memberships. Escolha baseado no tipo de app que quer criar."}]
},
"softr-vs-bubble": {
  "a": "Softr", "b": "Bubble",
  "choose_a": ["✅ Você quer criar portais de clientes, intranets e apps de membership a partir do Airtable ou Sheets","✅ Softr é extremamente simples — crie portais com autenticação de usuários em horas","✅ Melhor para portais de membros, diretórios e comunidades com acesso controlado","✅ Templates prontos para casos de uso comuns: portais de clientes, intranets e marketplaces simples"],
  "choose_b": ["✅ Você precisa de aplicativos web com lógica de negócios complexa e banco de dados nativo","✅ Bubble é mais poderoso para criar SaaS com funcionalidades avançadas","✅ Mais controle sobre o design e a experiência do usuário final","✅ Melhor para founders que querem criar produtos de software escaláveis"],
  "faq": [{"q":"Softr vs Bubble — qual escolher?","a":"Softr é melhor para portais simples com autenticação a partir de dados existentes. Bubble é melhor para apps mais complexos com lógica de negócios avançada. Para portais de clientes, Softr; para SaaS complexo, Bubble."},{"q":"Softr é gratuito?","a":"Softr tem plano gratuito com 5 usuários de app. Planos pagos a partir de $59/mês. Bubble tem plano gratuito para desenvolvimento; produção a partir de $29/mês."},{"q":"Softr funciona com Airtable?","a":"Sim, Softr tem integração nativa com Airtable. É um dos melhores complementos para Airtable, permitindo criar portais bonitos e funcionais em cima dos dados do Airtable."},{"q":"Softr vs Glide — qual é melhor para portais de clientes?","a":"Softr é geralmente melhor para portais de clientes e memberships com design mais sofisticado. Glide é melhor para apps móveis internos simples. Para portais de clientes, Softr tem vantagem."}]
},
"webflow-vs-framer-ai": {
  "a": "Webflow", "b": "Framer AI",
  "choose_a": ["✅ Você precisa de um site com CMS robusto para blogs, portfólios e sites corporativos","✅ Webflow oferece controle total sobre HTML/CSS sem escrever código","✅ Melhor para agências que precisam de escalabilidade e gerenciamento de múltiplos sites","✅ Maior comunidade, mais recursos e maior número de designers especializados disponíveis"],
  "choose_b": ["✅ Você quer criar sites com animações sofisticadas e interações impressionantes mais rapidamente","✅ Framer AI gera sites completos e animados a partir de uma descrição de texto","✅ Melhor para portfolios de design, landing pages e projetos que priorizam visual","✅ Mais fácil e rápido para criar protótipos interativos de alta fidelidade"],
  "faq": [{"q":"Webflow vs Framer — qual escolher?","a":"Webflow é melhor para sites corporativos com CMS complexo. Framer é melhor para sites de design impressionantes e portfolios. Para sites de conteúdo e CMS, Webflow; para design e animações, Framer."},{"q":"Webflow é gratuito?","a":"Webflow tem plano gratuito para desenvolvimento. Planos de site a partir de $14/mês. Framer tem plano gratuito com 1 site; pagos a partir de $5/mês."},{"q":"Framer AI gera o site todo?","a":"Sim, Framer tem IA que gera o layout e conteúdo inicial do site a partir de uma descrição. O resultado é um ponto de partida que você personaliza completamente."},{"q":"Webflow é bom para e-commerce?","a":"Webflow tem e-commerce para lojas menores. Para lojas grandes ou com muitas integrações, Shopify pode ser preferível. Para sites de marca com e-commerce secundário, Webflow funciona muito bem."}]
},
"photomath-vs-duolingo-max": {
  "a": "Photomath", "b": "Duolingo Max",
  "choose_a": ["✅ Você precisa de ajuda para resolver problemas de matemática com explicações passo a passo","✅ Photomath escaneia problemas de matemática e explica cada etapa da solução","✅ Gratuito para a maioria dos recursos — excelente custo-benefício para estudantes","✅ Melhor para estudantes do ensino médio e universitários com dificuldades em matemática"],
  "choose_b": ["✅ Você quer aprender um novo idioma com exercícios gamificados e conversação com IA","✅ Duolingo Max tem roleplay com IA para praticar conversas reais no idioma","✅ Feedback personalizado sobre seus erros de gramática e pronúncia","✅ Melhor para quem quer aprender idiomas de forma divertida e consistente"],
  "faq": [{"q":"Photomath vs Duolingo Max — qual usar?","a":"São ferramentas para fins diferentes. Photomath é para resolver problemas de matemática. Duolingo Max é para aprender idiomas. Use ambos se precisar das duas coisas."},{"q":"Photomath é gratuito?","a":"Photomath tem recursos gratuitos robustos. Photomath Plus custa $9,99/mês ou $29,99/ano para recursos avançados como animações e dicas adicionais. Duolingo Max custa $29,99/mês ou $167,99/ano."},{"q":"Duolingo Max em português?","a":"Duolingo Max (com recursos de IA) está disponível para aprender inglês e espanhol a partir do português, entre outros idiomas. Verifique a disponibilidade dos cursos específicos no aplicativo."},{"q":"Photomath funciona com qualquer tipo de matemática?","a":"Photomath funciona com álgebra, geometria, cálculo, trigonometria e mais. Para matemática muito avançada do nível universitário, pode ter limitações, mas cobre bem o currículo até o ensino médio."}]
},
"khanmigo-vs-photomath": {
  "a": "Khanmigo", "b": "Photomath",
  "choose_a": ["✅ Você quer um tutor de IA que ensina com perguntas socráticas em vez de dar as respostas","✅ Khanmigo abrange todas as matérias: matemática, ciências, história, escrita e mais","✅ Conexão com o conteúdo completo da Khan Academy para aprendizado abrangente","✅ Melhor para estudantes que querem aprender a pensar, não apenas copiar respostas"],
  "choose_b": ["✅ Você precisa de ajuda imediata para resolver problemas de matemática específicos","✅ Photomath é mais rápido para verificar respostas e entender soluções passo a passo","✅ Gratuito para uso básico — acessível para todos os estudantes","✅ Melhor quando você precisa de uma solução rápida para um problema específico"],
  "faq": [{"q":"Khanmigo vs Photomath — qual é o melhor para estudantes?","a":"Khanmigo ensina com perguntas que desenvolvem o raciocínio. Photomath resolve e explica problemas de matemática rapidamente. Para desenvolver habilidades, Khanmigo; para ajuda imediata com problemas, Photomath."},{"q":"Khanmigo é gratuito?","a":"Khanmigo custa $44/ano para usuários individuais nos EUA. É gratuito para alguns distritos escolares parceiros. Photomath tem versão gratuita robusta."},{"q":"Khanmigo fala português?","a":"Khanmigo está disponível principalmente em inglês. O conteúdo da Khan Academy tem versões em português, mas o tutor de IA Khanmigo tem suporte limitado para outros idiomas."},{"q":"Photomath cola nas provas?","a":"Photomath é uma ferramenta de aprendizado legítima quando usada corretamente. Usar em provas onde não é permitido seria trapaça. O uso adequado é para aprender e verificar o próprio trabalho."}]
},
"duolingo-max-vs-khanmigo": {
  "a": "Duolingo Max", "b": "Khanmigo",
  "choose_a": ["✅ Você quer aprender um idioma de forma gamificada e consistente no celular","✅ Duolingo Max tem conversação com IA para praticar idiomas em situações reais","✅ A gamificação do Duolingo cria hábitos de aprendizado mais consistentes","✅ Melhor para aprendizado de idiomas diário e desenvolvimento de fluência"],
  "choose_b": ["✅ Você precisa de tutoria em múltiplas disciplinas: matemática, ciências, história e escrita","✅ Khanmigo usa método socrático que desenvolve pensamento crítico, não apenas respostas","✅ Integrado ao currículo completo da Khan Academy com exercícios estruturados","✅ Melhor para estudantes que precisam de apoio em disciplinas escolares variadas"],
  "faq": [{"q":"Duolingo Max vs Khanmigo — qual escolher?","a":"Duolingo Max é focado exclusivamente em idiomas de forma gamificada. Khanmigo é um tutor geral para múltiplas disciplinas escolares. Para idiomas, Duolingo Max; para ajuda escolar geral, Khanmigo."},{"q":"Duolingo Max vale a pena?","a":"Duolingo Max adiciona conversação com IA e explicações de erros ao Duolingo padrão. Se você já usa o Duolingo e quer praticar conversação, vale a pena considerar. O custo é alto ($30/mês) em comparação com outras opções."},{"q":"Duolingo é bom para inglês para brasileiros?","a":"Sim, Duolingo tem um dos melhores cursos de inglês para falantes de português. Funciona bem para iniciantes e intermediários. Para nível avançado, é recomendável complementar com outras fontes."},{"q":"Khanmigo está disponível no Brasil?","a":"Khanmigo está disponível nos EUA e tem disponibilidade limitada internacionalmente. A Khan Academy em português existe, mas o tutor de IA Khanmigo tem suporte limitado fora dos EUA."}]
},
"youlearn-vs-notebooklm": {
  "a": "YouLearn", "b": "NotebookLM",
  "choose_a": ["✅ Você quer aprender a partir de vídeos do YouTube com notas automáticas e quizzes","✅ YouLearn transforma vídeos em materiais de estudo interativos com resumos e flashcards","✅ Melhor para estudantes que aprendem principalmente através de conteúdo em vídeo","✅ Crie quizzes e resumos de qualquer vídeo do YouTube automaticamente"],
  "choose_b": ["✅ Você precisa analisar seus próprios documentos, PDFs e artigos de pesquisa","✅ NotebookLM pode criar podcasts de áudio dos seus materiais automaticamente","✅ Melhor suporte para múltiplas fontes de documentos em um único notebook","✅ Gratuito e desenvolvido pelo Google com excelente qualidade de análise"],
  "faq": [{"q":"YouLearn vs NotebookLM — qual usar?","a":"YouLearn é para aprender a partir de vídeos do YouTube. NotebookLM é para analisar documentos e PDFs. Para conteúdo em vídeo, YouLearn; para documentos e pesquisa, NotebookLM."},{"q":"YouLearn é gratuito?","a":"YouLearn tem plano gratuito com uso limitado. Planos pagos a partir de $12/mês. NotebookLM do Google é gratuito."},{"q":"YouLearn funciona com vídeos em português?","a":"Sim, YouLearn funciona com vídeos em português no YouTube. A transcrição e análise funcionam para vídeos em múltiplos idiomas."},{"q":"NotebookLM tem limite de documentos?","a":"NotebookLM permite até 50 fontes por notebook e 500.000 palavras por fonte. Para a maioria dos casos de uso acadêmico e profissional, esses limites são suficientes."}]
},
"synthesis-vs-khanmigo": {
  "a": "Synthesis", "b": "Khanmigo",
  "choose_a": ["✅ Você tem filhos de 5-14 anos e quer desenvolver pensamento matemático e raciocínio lógico","✅ Synthesis usa simulações e desafios gamificados para ensinar de forma colaborativa","✅ Desenvolvido originalmente para filhos de funcionários da SpaceX — excelência comprovada","✅ Melhor para crianças que se entediam com a educação tradicional e precisam de desafios"],
  "choose_b": ["✅ Você precisa de um tutor de IA que apoia o currículo escolar padrão em múltiplas disciplinas","✅ Khanmigo cobre matemática, ciências, história e escrita alinhado ao conteúdo da Khan Academy","✅ Método socrático que desenvolve pensamento crítico através de perguntas orientadoras","✅ Mais acessível economicamente e disponível para estudantes mais velhos também"],
  "faq": [{"q":"Synthesis vs Khanmigo — qual é melhor para crianças?","a":"Synthesis é mais voltado para pensamento matemático e lógico através de jogos para crianças. Khanmigo é um tutor geral mais alinhado ao currículo escolar. Para pensamento criativo e matemático, Synthesis; para apoio escolar geral, Khanmigo."},{"q":"Synthesis é gratuito?","a":"Synthesis custa $35/mês por aluno. Não tem plano gratuito permanente. Khanmigo custa $44/ano. Khan Academy é gratuita."},{"q":"Synthesis é adequado para crianças brasileiras?","a":"Synthesis está disponível internacionalmente mas o conteúdo é principalmente em inglês. Para crianças que estudam em inglês ou aprendem o idioma, pode ser valioso. Para currículo brasileiro em português, pode não ser ideal."},{"q":"A Khan Academy é boa para o Brasil?","a":"Sim, Khan Academy tem uma versão completa em português (pt.khanacademy.org) com conteúdo alinhado ao currículo brasileiro. É amplamente usada por estudantes e professores no Brasil."}]
},
"gamma-vs-beautiful-ai": {
  "a": "Gamma", "b": "Beautiful.AI",
  "choose_a": ["✅ Você quer criar apresentações completas rapidamente a partir de uma descrição de texto com IA","✅ Gamma gera o conteúdo E o design automaticamente — muito mais rápido que ferramentas tradicionais","✅ Plano gratuito generoso para experimentar antes de comprometer com uma assinatura","✅ Melhor para criar pitches rápidos, atualizações de projeto e conteúdo de apresentação para web"],
  "choose_b": ["✅ Você quer slides com design profissional que se ajustam automaticamente enquanto edita","✅ Beautiful.AI tem templates inteligentes que evitam slides mal formatados automaticamente","✅ Melhor controle sobre o resultado final mantendo a consistência visual dos slides","✅ Melhor para apresentações corporativas que precisam de design polido sem muito esforço"],
  "faq": [{"q":"Gamma vs Beautiful.AI — qual escolher?","a":"Gamma é melhor para criar apresentações rapidamente a partir de texto com IA. Beautiful.AI é melhor para slides corporativos com design inteligente que se ajusta automaticamente. Para velocidade, Gamma; para design corporativo polido, Beautiful.AI."},{"q":"Gamma é gratuito?","a":"Gamma tem plano gratuito com créditos de IA limitados e marca d'água. Planos pagos a partir de $8/mês. Beautiful.AI tem teste gratuito; planos pagos a partir de $12/mês."},{"q":"Gamma exporta para PowerPoint?","a":"Sim, Gamma pode exportar para PPTX e PDF. Beautiful.AI também exporta para PowerPoint."},{"q":"Beautiful.AI tem IA?","a":"Sim, Beautiful.AI usa IA para sugerir layouts e ajustar automaticamente o design dos slides. Não gera conteúdo como o Gamma, mas é inteligente no design."}]
},
"gamma-vs-pitch": {
  "a": "Gamma", "b": "Pitch",
  "choose_a": ["✅ Você quer criar apresentações rapidamente com conteúdo gerado por IA","✅ Gamma é melhor para criar apresentações do zero em minutos com ajuda de IA","✅ Plano gratuito generoso para uso pessoal e pequenas equipes","✅ Melhor para apresentações de conteúdo: relatórios, atualizações e explicações"],
  "choose_b": ["✅ Você precisa de uma ferramenta de apresentação colaborativa para equipes de design e marketing","✅ Pitch tem templates premium e design mais sofisticado para pitch decks de alto nível","✅ Melhor colaboração em tempo real para equipes que trabalham juntas nos slides","✅ Melhor para startups que precisam de pitch decks de investidores com design impressionante"],
  "faq": [{"q":"Gamma vs Pitch — qual é o melhor?","a":"Gamma é melhor para criação rápida com IA. Pitch é melhor para apresentações colaborativas com design premium. Para velocidade com IA, Gamma; para pitch decks de investidores, Pitch."},{"q":"Pitch é gratuito?","a":"Pitch tem plano gratuito. Planos pagos a partir de $8/usuário/mês. Gamma tem plano gratuito; pagos a partir de $8/mês."},{"q":"Pitch é bom para pitch decks de investidores?","a":"Sim, Pitch é muito popular para pitch decks de startups. Tem templates específicos para pitch de investidores com design profissional e impactante."},{"q":"Gamma vs PowerPoint — qual é mais fácil?","a":"Gamma é muito mais fácil e rápido para criar apresentações, especialmente com IA. PowerPoint oferece mais controle e é universalmente aceito. Para criação rápida, Gamma; para compatibilidade máxima, PowerPoint."}]
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
lines.append("-- Portuguese choose_if + faq UPDATE — generated by gen_tool_choose_faq_pt_b3.py (batch 3/4)")
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
comp_lines.append("-- Portuguese choose_a + choose_b + faq INSERT for comparisons table (batch 3/4)")
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
print(f"Batch 3/4 done: {len(DATA_PT)} comparisons, {len(tool_data)} tools")
