#!/usr/bin/env python3
"""Generate SQL for Portuguese/Brazilian (lang=pt) translations. Batch 1/4 (comparisons 1-30)."""

import json, sys

DATA_PT = {
"chatgpt-vs-claude": {
  "a": "ChatGPT", "b": "Claude",
  "choose_a": ["✅ Você quer o assistente de IA mais popular com o maior ecossistema de plugins e integrações","✅ GPT-4o gera imagens, analisa arquivos e conduz conversas por voz em um único aplicativo","✅ ChatGPT Plus ($20/mês) dá acesso a vários modelos: GPT-4o, o3 e GPTs especializados","✅ A maior comunidade: milhões de prompts prontos, tutoriais e GPTs personalizados"],
  "choose_b": ["✅ Você precisa de uma IA com a melhor compreensão de contexto para tarefas longas e complexas","✅ Claude se destaca na análise profunda de documentos e redação estruturada em comparação com o ChatGPT","✅ Escolha mais segura para conteúdo corporativo: Claude tem menos alucinações","✅ 200 mil tokens de contexto no Claude — ideal para analisar bases de código inteiras ou documentos extensos"],
  "faq": [{"q":"ChatGPT ou Claude — qual é o melhor em 2025?","a":"Depende da tarefa. ChatGPT é melhor para multitarefas, geração de imagens e plugins. Claude é melhor para análise de texto, codificação e documentos longos. A maioria dos usuários avançados usa os dois."},{"q":"Claude é gratuito?","a":"Sim, Claude tem plano gratuito. Claude Pro custa $20/mês, Claude Max — $100 ou $200/mês com limites estendidos. ChatGPT também é gratuito; Plus $20/mês, Pro $200/mês."},{"q":"Qual é a diferença entre Claude e ChatGPT para programação?","a":"Ambos programam bem. Claude costuma entender melhor grandes bases de código e fornece explicações. ChatGPT com Code Interpreter pode executar código diretamente no chat. Cursor e GitHub Copilot (baseado em GPT) são mais populares entre desenvolvedores."},{"q":"Claude consegue gerar imagens?","a":"Claude não gera imagens nativamente, mas consegue analisá-las. ChatGPT com DALL-E 3 gera imagens diretamente. Para geração de imagens, use Midjourney, DALL-E ou Stable Diffusion."}]
},
"gemini-vs-chatgpt": {
  "a": "Gemini", "b": "ChatGPT",
  "choose_a": ["✅ Você usa ativamente o ecossistema Google: Gmail, Docs, Drive, Meet e Calendar","✅ Gemini está profundamente integrado ao Google Workspace — auxilia no Docs, Sheets e Gmail durante o trabalho","✅ Gemini 2.5 Pro com raciocínio estendido apresenta fortes resultados em matemática e programação","✅ Acesso gratuito ao Gemini Advanced incluído no Google One AI Premium ($19,99/mês)"],
  "choose_b": ["✅ Você precisa do maior ecossistema de plugins, GPTs e integrações de terceiros","✅ ChatGPT tem a maior comunidade e mais prompts prontos para qualquer tarefa","✅ GPT-4o lida melhor com tarefas multimodais em comparação com o Gemini Flash","✅ O modo de voz avançado do ChatGPT é mais natural e expressivo"],
  "faq": [{"q":"Gemini ou ChatGPT — qual é o melhor?","a":"Para usuários do Google Workspace, o Gemini está integrado ao Gmail, Docs e Drive. Para uso geral, o ChatGPT tem um ecossistema maior. Para programação, ambos são poderosos; Gemini 2.5 Pro está entre os melhores nos benchmarks."},{"q":"Gemini é gratuito?","a":"Sim, Gemini é gratuito. Gemini Advanced (Gemini 2.5 Pro) está incluído no Google One AI Premium por $19,99/mês. ChatGPT é gratuito; Plus $20/mês."},{"q":"Qual é a diferença entre Gemini e Google Bard?","a":"Bard era o nome antigo. O Google o renomeou para Gemini em fevereiro de 2024 com atualizações de modelo. O Gemini 2.5 Pro é significativamente mais poderoso do que o Bard original."},{"q":"Gemini é adequado para estudantes?","a":"Sim. Gemini é gratuito e se integra bem com o Google Docs para redação e pesquisa. Para estudantes usando o Google Workspace, é uma escolha prática. NotebookLM (também do Google) é excelente para trabalhar com fontes e notas."}]
},
"deepseek-vs-chatgpt": {
  "a": "DeepSeek", "b": "ChatGPT",
  "choose_a": ["✅ Você precisa de um modelo no nível do GPT-4 gratuito sem assinatura mensal","✅ DeepSeek R1 é um dos melhores modelos de raciocínio open-source para matemática e programação","✅ Open-source: pode ser implantado localmente para total privacidade de dados","✅ A API do DeepSeek é muito mais barata que a da OpenAI — ideal para desenvolvedores e projetos B2B"],
  "choose_b": ["✅ Você precisa do modelo mais confiável com atualizações contínuas e segurança comprovada","✅ ChatGPT tem o maior ecossistema de integrações, plugins e GPTs","✅ Modo de voz, geração de imagens e análise de arquivos em um único aplicativo","✅ ChatGPT Plus e Pro oferecem acesso prioritário e os modelos mais recentes sem demora"],
  "faq": [{"q":"DeepSeek vs ChatGPT — qual é a diferença?","a":"DeepSeek é um modelo aberto chinês que compete gratuitamente com o GPT-4 em matemática e programação. ChatGPT é um modelo fechado americano da OpenAI com um ecossistema maior. DeepSeek oferece melhor custo-benefício; ChatGPT para soluções prontas."},{"q":"DeepSeek é seguro?","a":"DeepSeek é uma empresa chinesa, o que levanta questões sobre privacidade de dados. Não é recomendado inserir dados corporativos sensíveis na API do DeepSeek. Para uso privado, implante-o localmente via Ollama."},{"q":"DeepSeek é realmente gratuito?","a":"DeepSeek Chat (chat.deepseek.com) é gratuito. A API é paga, mas muito mais barata que a OpenAI. O modelo open-source pode ser implantado gratuitamente localmente."},{"q":"DeepSeek R1 ou GPT-4 para programação?","a":"DeepSeek R1 apresenta resultados competitivos com o GPT-4 nos benchmarks de programação. Para codificação prática, a diferença é mínima. DeepSeek é mais econômico; ChatGPT é mais conveniente para integração em IDEs via GitHub Copilot."}]
},
"microsoft-copilot-vs-chatgpt": {
  "a": "Microsoft Copilot", "b": "ChatGPT",
  "choose_a": ["✅ Você usa ativamente o Microsoft 365: Word, Excel, Teams, Outlook e PowerPoint","✅ Copilot está integrado nessas aplicações e auxilia diretamente durante o trabalho — sem trocar de aba","✅ Microsoft Copilot é gratuito no Windows 11 e Edge; assinatura Copilot+ disponível por $30/mês","✅ Copilot no Bing fornece resultados da web em tempo real e citações — gratuitamente"],
  "choose_b": ["✅ Você precisa do modelo geral mais poderoso sem dependência do ecossistema Microsoft","✅ ChatGPT oferece mais opções de personalização via Custom GPTs e API","✅ ChatGPT é melhor para tarefas criativas, redação e raciocínio complexo fora do contexto Office","✅ GPT-4o é mais multimodal: imagens, voz, análise de dados em um único chat"],
  "faq": [{"q":"Microsoft Copilot e ChatGPT — qual é a diferença?","a":"Microsoft Copilot é construído sobre os modelos OpenAI (GPT-4) e integrado ao Microsoft 365. ChatGPT é o produto direto da OpenAI com um ecossistema independente maior. Para Microsoft 365, Copilot; para IA geral, ChatGPT."},{"q":"Microsoft Copilot é gratuito?","a":"O Copilot básico no Windows e Edge é gratuito. Microsoft 365 Copilot para empresas custa $30/usuário/mês. Copilot+ PC é um recurso de hardware para novos dispositivos."},{"q":"Microsoft Copilot no Excel — o que ele faz?","a":"Copilot no Excel pode analisar dados, criar fórmulas, gerar tabelas dinâmicas e sugerir gráficos. Ele entende linguagem natural: 'mostre as vendas do T1 por região' — e o Excel gera a análise necessária."},{"q":"ChatGPT ou Copilot para o trabalho?","a":"Se você usa o Microsoft 365, o Copilot ganha pela integração. Caso contrário, o ChatGPT Plus é mais flexível e poderoso para tarefas gerais. Muitas empresas usam os dois para diferentes cenários."}]
},
"meta-ai-vs-chatgpt": {
  "a": "Meta AI", "b": "ChatGPT",
  "choose_a": ["✅ Você quer um assistente de IA diretamente no WhatsApp, Instagram, Facebook ou Messenger","✅ Meta AI é gratuito sem assinatura e acessível diretamente nos aplicativos Meta","✅ Llama 4 é o modelo aberto da Meta, implantável por conta própria para tarefas especializadas","✅ Você explora modelos abertos e quer implantar IA sem restrições de licença"],
  "choose_b": ["✅ Você precisa do assistente de IA mais completo com plugins, análise de arquivos e geração de imagens","✅ ChatGPT tem um ecossistema mais desenvolvido para desenvolvedores e empresas","✅ ChatGPT é mais confiável e estável para projetos complexos","✅ Custom GPTs e o GPT Store permitem personalizar o assistente para qualquer tarefa"],
  "faq": [{"q":"Meta AI vs ChatGPT — qual escolher?","a":"Meta AI é melhor para redes sociais e WhatsApp: gratuito e integrado. ChatGPT é melhor para tarefas complexas, análise de arquivos e trabalho com API. Meta AI é mais acessível; ChatGPT é mais poderoso."},{"q":"Meta AI é gratuito?","a":"Sim, Meta AI é totalmente gratuito no WhatsApp, Instagram, Facebook e meta.ai. ChatGPT também é gratuito, mas Plus a $20/mês e Pro a $200/mês dão acesso aos melhores modelos."},{"q":"O que é Llama e qual sua relação com Meta AI?","a":"Llama é o modelo de linguagem aberto da Meta no qual o Meta AI funciona. Llama 4 é um dos melhores modelos abertos. Desenvolvedores podem baixar o Llama e implantar sua própria IA sem depender da Meta."},{"q":"Meta AI no WhatsApp — o que ele faz?","a":"Meta AI no WhatsApp responde perguntas, ajuda na redação, traduz, gera imagens (em algumas regiões) e pode pesquisar na internet. Disponível em chats normais e grupos."}]
},
"grok-vs-chatgpt": {
  "a": "Grok", "b": "ChatGPT",
  "choose_a": ["✅ Você quer uma IA com acesso em tempo real ao X (Twitter) e eventos recentes","✅ Grok é menos restritivo em certos tópicos — responde algumas perguntas que o ChatGPT recusa","✅ Grok 3 e Grok 3 Thinking estão entre os modelos mais poderosos para tarefas STEM","✅ Incluído no X Premium+ ($50/mês) — se você já paga pelo X"],
  "choose_b": ["✅ Você precisa da plataforma de IA mais confiável e amplamente suportada","✅ ChatGPT tem um melhor ecossistema de plugins, GPTs e integrações de terceiros","✅ ChatGPT Plus ($20/mês) é muito mais barato que X Premium+ com Grok","✅ Maior comunidade, mais tutoriais e comportamento mais previsível"],
  "faq": [{"q":"Grok vs ChatGPT — qual é a diferença?","a":"Grok da xAI tem acesso real ao X e é menos restritivo. ChatGPT da OpenAI tem um ecossistema melhor e é a referência do setor. Para dados do X e menos restrições, Grok; para trabalho e desenvolvimento, ChatGPT."},{"q":"Quanto custa o Grok?","a":"Grok está disponível no X Premium ($8/mês) e Premium+ ($22/mês no iOS, $40 na web). O aplicativo autônomo Grok é gratuito com limites. ChatGPT Plus — $20/mês, Pro — $200/mês."},{"q":"Grok 3 vs GPT-4o — qual é mais poderoso?","a":"Grok 3 Thinking compete com o GPT-4o em matemática e ciências. Ambos os modelos estão na vanguarda. Para a maioria das tarefas práticas, a diferença é mínima. Grok tem vantagem em dados em tempo real do X."},{"q":"Grok não tem censura?","a":"Grok é menos restritivo que o ChatGPT em certos tópicos. Mas não é totalmente sem censura. A xAI tem seus próprios limites de segurança. O 'modo Diversão' permite um humor mais irreverente."}]
},
"mistral-le-chat-vs-chatgpt": {
  "a": "Mistral Le Chat", "b": "ChatGPT",
  "choose_a": ["✅ Você precisa de um modelo de IA poderoso com foco em privacidade, de uma empresa europeia","✅ Mistral Large 2 é um dos melhores modelos abertos para programação e análise","✅ A API da Mistral é mais barata que a OpenAI — ideal para desenvolvedores e soluções B2B","✅ Conformidade com GDPR e sem preocupações com transferência de dados para os EUA — importante para a UE"],
  "choose_b": ["✅ Você precisa da IA mais popular com o maior ecossistema e comunidade","✅ ChatGPT tem mais plugins, Custom GPTs e integrações de terceiros","✅ GPT-4o é melhor para tarefas multimodais: imagens, voz, análise de arquivos","✅ Mais tutoriais, prompts e recursos educacionais disponíveis"],
  "faq": [{"q":"Mistral Le Chat vs ChatGPT — qual é a diferença?","a":"Mistral é uma empresa francesa com modelos abertos e forte privacidade de dados. ChatGPT da OpenAI (EUA) tem um ecossistema maior. Para requisitos GDPR e UE, Mistral; para o maior ecossistema, ChatGPT."},{"q":"Mistral Le Chat é gratuito?","a":"Sim, Le Chat é gratuito. Mistral Pro custa €14,99/mês. A API é cobrada por token, mais barata que a OpenAI. ChatGPT é gratuito; Plus $20/mês."},{"q":"Mistral é realmente open-source?","a":"Alguns modelos Mistral são abertos (Mistral 7B, Mixtral, Mistral NeMo). Mistral Large é um modelo comercial fechado. Os modelos abertos podem ser implantados localmente via Ollama ou HuggingFace."},{"q":"Mistral para programação — é adequado?","a":"Sim. Mistral Large 2 e Codestral (modelo especializado em código) apresentam excelentes resultados. Codestral é suportado no Continue.dev e outros IDEs. Excelente custo-benefício para programação."}]
},
"character-ai-vs-chatgpt": {
  "a": "Character.AI", "b": "ChatGPT",
  "choose_a": ["✅ Você precisa de uma IA para roleplay, entretenimento e conversas com personagens","✅ Milhões de personagens prontos criados pela comunidade — heróis de anime, celebridades, personagens customizados","✅ Character.AI é ideal para habilidades sociais e prática de idiomas via cenários de roleplay","✅ Acesso básico gratuito; Character.AI+ a $9,99/mês para acesso prioritário"],
  "choose_b": ["✅ Você precisa de uma IA produtiva para o trabalho: redação, programação, análise, pesquisa","✅ ChatGPT é mais confiável para tarefas profissionais e geração de conteúdo estruturado","✅ ChatGPT analisa arquivos, gera imagens e se conecta a plugins","✅ Para uso sério, ChatGPT é mais estável e preciso"],
  "faq": [{"q":"Character.AI vs ChatGPT — para que usar cada um?","a":"Character.AI — para entretenimento, roleplay e cenários sociais. ChatGPT — para trabalho, aprendizado e produtividade. Se quer conversar com Hermione Granger, Character.AI; se quer escrever um currículo, ChatGPT."},{"q":"Character.AI é gratuito?","a":"Sim, Character.AI é gratuito com acesso básico. Character.AI+ custa $9,99/mês e oferece acesso prioritário e respostas mais rápidas. ChatGPT é gratuito; Plus $20/mês."},{"q":"É possível criar seu próprio personagem no Character.AI?","a":"Sim. Você pode criar seu próprio personagem com personalidade única, voz e memória. Os personagens podem ser públicos ou privados. É uma das características principais da plataforma."},{"q":"Character.AI é seguro para crianças?","a":"Character.AI tem filtros de segurança para menores. Mas é recomendado que os pais monitorem o uso devido ao caráter aberto da plataforma. Para menores de 13 anos, restrições mais rígidas se aplicam."}]
},
"copilot-studio-vs-manus": {
  "a": "Microsoft Copilot Studio", "b": "Manus",
  "choose_a": ["✅ Você precisa criar chatbots de IA corporativos com integração ao Microsoft 365 e Azure","✅ Copilot Studio permite personalizar o Copilot para processos corporativos sem codificação profunda","✅ Melhor escolha se a infraestrutura da sua empresa está no Azure e Microsoft 365","✅ Governança e segurança de nível empresarial com suporte SOC e GDPR"],
  "choose_b": ["✅ Você precisa de um agente de IA autônomo capaz de realizar tarefas complexas de múltiplas etapas independentemente","✅ Manus pode navegar na internet, executar código e realizar tarefas sem supervisão constante","✅ Você quer delegar tarefas reais: pesquisa, preparação de relatórios, análise de dados","✅ Manus é melhor para tarefas que requerem ações autônomas em vez de interações por chat"],
  "faq": [{"q":"Copilot Studio vs Manus — qual é a diferença?","a":"Copilot Studio é uma ferramenta low-code para criar bots corporativos baseados na Microsoft. Manus é um agente de IA autônomo que executa tarefas independentemente. Copilot Studio para criar bots; Manus para delegar tarefas a um agente."},{"q":"Quanto custa o Copilot Studio?","a":"Copilot Studio começa em $200/mês para 25.000 mensagens ou $0,01 por mensagem no pay-as-you-go. É necessária uma assinatura Microsoft 365. Manus tem acesso por convite; o preço está evoluindo."},{"q":"O que é Manus AI?","a":"Manus é um agente de IA chinês da Monica.im que pode realizar tarefas autonomamente: pesquisar na internet, escrever código, analisar dados e preparar documentos. Ele age como um assistente digital que completa projetos independentemente."},{"q":"Copilot Studio vs Power Virtual Agents — qual é a diferença?","a":"A Microsoft renomeou Power Virtual Agents para Copilot Studio em 2023. É o mesmo produto com nome atualizado e novos recursos para integração com o Microsoft 365 Copilot."}]
},
"n8n-vs-copilot-studio": {
  "a": "n8n", "b": "Microsoft Copilot Studio",
  "choose_a": ["✅ Você precisa de uma plataforma de automação aberta e flexível sem dependência do ecossistema Microsoft","✅ n8n auto-hospedado permite total privacidade de dados e personalizações ilimitadas","✅ Desenvolvedores e equipes técnicas que precisam de máxima flexibilidade e nós JavaScript","✅ n8n Cloud começa em $24/mês — muito mais barato que o Copilot Studio para pequenas empresas"],
  "choose_b": ["✅ Sua empresa já está no Microsoft 365 e Azure e precisa de integração corporativa profunda","✅ Criação de bots no-code para equipes não técnicas com interface intuitiva","✅ Segurança e governança integradas de nível empresarial da Microsoft","✅ Conectores diretos para SharePoint, Teams, Dynamics e toda a pilha Microsoft"],
  "faq": [{"q":"n8n vs Zapier — qual é o melhor?","a":"n8n é mais barato e flexível, especialmente para desenvolvedores e implantação auto-hospedada. Zapier é mais simples para usuários não técnicos e tem mais integrações prontas. n8n para equipes técnicas; Zapier para usuários de negócios."},{"q":"n8n é gratuito?","a":"n8n auto-hospedado é totalmente gratuito e open-source. n8n Cloud a partir de $24/mês. Microsoft Copilot Studio a partir de $200/mês."},{"q":"n8n é difícil de aprender?","a":"n8n é mais simples que escrever código, mas mais complexo que o Zapier. É necessário entender requisições HTTP e JSON. Analistas de negócios técnicos o dominam em algumas horas. A documentação é boa e a comunidade é ativa."},{"q":"n8n vs Make (Integromat) — qual escolher?","a":"n8n e Make têm capacidades similares. n8n é melhor para auto-hospedagem e máxima flexibilidade. Make tem uma interface visual mais bonita e mais modelos prontos. Ambos são mais baratos que o Zapier."}]
},
"make-vs-copilot-studio": {
  "a": "Make", "b": "Microsoft Copilot Studio",
  "choose_a": ["✅ Você precisa de automação visual poderosa entre milhares de aplicativos sem Microsoft","✅ Make tem mais de 2.000 integrações e uma interface bonita mostrando dados em tempo real","✅ O plano gratuito do Make oferece 1.000 operações/mês — ideal para começar","✅ Make é muito mais acessível: planos pagos a partir de $9/mês versus centenas para o Copilot Studio"],
  "choose_b": ["✅ Sua organização está no Microsoft 365 e precisa de integração profunda com Teams, Outlook e SharePoint","✅ Você precisa criar chatbots e assistentes de IA, não apenas automações","✅ Segurança e governança corporativa no nível Microsoft para setores regulamentados","✅ Equipes de RH e operações não técnicas que querem criar soluções sem código"],
  "faq": [{"q":"Make vs Zapier — qual é o melhor?","a":"Make é mais barato e mais poderoso para cenários complexos. Zapier é mais simples para iniciantes e tem mais modelos prontos. Para automações complexas com condições e transformações, Make; para gatilhos-ações simples, Zapier."},{"q":"Make é gratuito?","a":"Make tem plano gratuito com 1.000 operações/mês. Planos pagos a partir de $9/mês (Core). Microsoft Copilot Studio a partir de $200/mês."},{"q":"Make se chamava Integromat?","a":"Sim. O Integromat foi renomeado para Make em 2022. É funcionalmente o mesmo produto, consideravelmente expandido e atualizado."},{"q":"Make ou Zapier para pequenas empresas?","a":"Make é mais barato e mais poderoso pelo mesmo orçamento. Zapier é mais simples para começar. Se sua equipe é técnica, Make oferece mais valor. Se precisar da máxima simplicidade, Zapier."}]
},
"lindy-vs-copilot-studio": {
  "a": "Lindy", "b": "Microsoft Copilot Studio",
  "choose_a": ["✅ Você precisa de um assistente de IA pessoal que automatiza emails, reuniões e tarefas","✅ Lindy cria agentes de IA pessoais sem código para produtividade pessoal e processos de negócios","✅ Configuração mais rápida que o Copilot Studio — Lindy começa em minutos, não semanas","✅ Lindy se integra com Gmail, Calendar, CRM e outras ferramentas pessoais"],
  "choose_b": ["✅ Sua organização está no Microsoft 365 e precisa de bots corporativos com integração profunda","✅ Copilot Studio escala para milhares de funcionários com governança corporativa","✅ Você precisa de conformidade corporativa e controle de dados no nível Microsoft","✅ Equipes que querem construir soluções no ecossistema Microsoft existente"],
  "faq": [{"q":"O que é Lindy AI?","a":"Lindy é uma plataforma para criar agentes de IA pessoais sem código. Os agentes Lindy podem gerenciar emails, agendar reuniões, responder clientes e automatizar tarefas repetitivas. É posicionado como um 'assistente de IA que realmente age'."},{"q":"Lindy AI é gratuito?","a":"Lindy tem um plano gratuito com limites. Os planos pagos dependem do número de ações. Microsoft Copilot Studio a partir de $200/mês."},{"q":"Lindy vs Zapier — qual é a diferença?","a":"Lindy foca em agentes — IAs que tomam decisões e agem autonomamente. Zapier automatiza fluxos determinísticos do tipo se-então. Lindy é mais flexível para tarefas que requerem compreensão; Zapier é mais confiável para fluxos estruturados."},{"q":"Lindy é seguro para uso corporativo?","a":"Lindy fornece proteções padrão, mas não tem as certificações corporativas no nível Microsoft. Para setores regulamentados com requisitos rigorosos, o Copilot Studio com backend Azure é mais seguro."}]
},
"relevance-ai-vs-copilot-studio": {
  "a": "Relevance AI", "b": "Microsoft Copilot Studio",
  "choose_a": ["✅ Você precisa de uma plataforma para criar agentes de IA e ferramentas sem codificação profunda","✅ Relevance AI cria equipes de agentes — várias IAs colaborando para realizar tarefas","✅ Escolha de modelos mais flexível: GPT-4, Claude, Gemini — sem dependência do Microsoft Azure","✅ Melhor para equipes de vendas, suporte ao cliente e conteúdo que querem robôs de IA agênticos"],
  "choose_b": ["✅ Sua organização está no Microsoft 365 e precisa de integração corporativa profunda","✅ Copilot Studio se integra diretamente com Teams, SharePoint e Dynamics 365","✅ Segurança Azure e conformidade corporativa (SOC2, ISO 27001, GDPR)","✅ Equipes não técnicas que querem criar bots no ambiente Microsoft familiar"],
  "faq": [{"q":"O que é Relevance AI?","a":"Relevance AI é uma plataforma no-code/low-code para criar agentes e ferramentas de IA. Você pode criar equipes de agentes onde várias IAs automatizam processos de negócios complexos — vendas, suporte, pesquisa."},{"q":"Relevance AI é gratuito?","a":"Relevance AI tem plano gratuito com limites. Planos pagos a partir de $19/mês. Microsoft Copilot Studio a partir de $200/mês."},{"q":"Relevance AI vs Zapier — qual é a diferença?","a":"Relevance AI cria agentes e ferramentas de IA com lógica de tomada de decisão. Zapier automatiza fluxos determinísticos entre aplicativos. Relevance AI para soluções de IA; Zapier para automação padrão."},{"q":"Relevance AI é adequado para vendas?","a":"Sim. Relevance AI é popular para automação de vendas: qualificação de leads, redação de emails personalizados, pesquisa de prospects. Suas capacidades agênticas são bem adequadas para vendas outbound."}]
},
"devin-vs-copilot-studio": {
  "a": "Devin", "b": "Microsoft Copilot Studio",
  "choose_a": ["✅ Você precisa de um desenvolvedor de IA autônomo que escreve, testa e implanta código independentemente","✅ Devin realiza tarefas de desenvolvimento completas: da tarefa ao Pull Request sem supervisão constante","✅ Para delegar programação real em vez de criar bots ou automações","✅ Equipes que querem escalar o desenvolvimento sem contratar desenvolvedores adicionais"],
  "choose_b": ["✅ Você precisa criar chatbots corporativos e automações no Microsoft 365","✅ Copilot Studio para equipes não técnicas que querem soluções no-code","✅ Integração profunda com Teams, Outlook, SharePoint e Dynamics para processos corporativos","✅ Segurança e conformidade de nível empresarial na plataforma Azure"],
  "faq": [{"q":"O que é Devin AI?","a":"Devin da Cognition é o primeiro desenvolvedor de IA autônomo. Ele pode independentemente ler tarefas, escrever código, executar testes, corrigir bugs e abrir Pull Requests. É posicionado como o primeiro 'programador' de IA, não apenas um assistente."},{"q":"Devin vai substituir os desenvolvedores?","a":"Devin automatiza tarefas rotineiras e pode acelerar o trabalho. Mas para decisões arquiteturais complexas e tarefas atípicas, requer supervisão. Por enquanto, ele complementa os desenvolvedores em vez de substituí-los."},{"q":"Quanto custa o Devin?","a":"Devin da Cognition custa $500/mês em acesso antecipado. É muito mais caro que o GitHub Copilot ($10-19/mês). Copilot Studio a partir de $200/mês para bots corporativos."},{"q":"Devin vs GitHub Copilot — qual é a diferença?","a":"GitHub Copilot é um assistente que ajuda o desenvolvedor a escrever código. Devin é um agente autônomo que executa tarefas independentemente. Copilot requer envolvimento humano; Devin trabalha autonomamente nas tarefas."}]
},
"make-vs-n8n": {
  "a": "Make", "b": "n8n",
  "choose_a": ["✅ Você precisa de melhor ergonomia visual e simplicidade para membros não técnicos da equipe","✅ Make tem mais de 2.000 conectores prontos e uma interface gráfica bonita","✅ O plano gratuito do Make oferece 1.000 operações/mês — suficiente para começar","✅ Mais modelos e comunidade ativa com soluções prontas"],
  "choose_b": ["✅ Você quer uma solução auto-hospedada com controle total sobre seus dados","✅ n8n é open-source e gratuito na auto-hospedagem — sem limites de operações","✅ Equipes técnicas que precisam de nós JavaScript e lógica personalizada","✅ n8n é melhor para cenários complexos com APIs, webhooks e transformações não padrão"],
  "faq": [{"q":"Make ou n8n — qual escolher?","a":"Make é mais simples e adequado para equipes não técnicas. n8n é mais flexível e gratuito na auto-hospedagem. Para automação de negócios sem código, Make; para equipes técnicas com controle de dados, n8n."},{"q":"n8n é realmente gratuito?","a":"n8n auto-hospedado é totalmente gratuito e open-source. n8n Cloud a partir de $24/mês. Make tem plano gratuito; pagos a partir de $9/mês."},{"q":"Make vs Zapier — qual é mais barato?","a":"Make é muito mais barato que o Zapier para os mesmos volumes. Zapier Premium — $69/mês e mais; Make Core — $9/mês. n8n auto-hospedado — gratuito."},{"q":"n8n é difícil de configurar?","a":"n8n auto-hospedado requer Docker ou Node.js. Leva de 30 a 60 minutos para pessoas técnicas. n8n Cloud começa imediatamente sem configuração. Make não requer nenhuma implantação."}]
},
"cursor-vs-copilot": {
  "a": "Cursor", "b": "GitHub Copilot",
  "choose_a": ["✅ Você precisa de um editor de IA com a integração agêntica mais profunda em todo o projeto","✅ Cursor Composer gera e modifica vários arquivos simultaneamente para recursos complexos","✅ Cursor entende toda a base de código: faça perguntas sobre o projeto inteiro, não apenas o arquivo atual","✅ Cursor Agent executa tarefas autonomamente: lê arquivos, executa comandos, corrige erros"],
  "choose_b": ["✅ Você quer um assistente de IA no seu IDE atual (VS Code, JetBrains, Vim, Neovim)","✅ GitHub Copilot se integra em qualquer ambiente sem mudar de editor","✅ Copilot Enterprise com segurança e governança corporativa da base de código","✅ Integração nativa com GitHub: Copilot em pull requests, code review e GitHub Actions"],
  "faq": [{"q":"Cursor ou GitHub Copilot — qual é o melhor?","a":"Cursor é mais poderoso para codificação agêntica: modifica vários arquivos e entende o projeto inteiro. Copilot é mais flexível: funciona no seu IDE atual. Para codificação de IA máxima, Cursor; para conveniência sem mudar de IDE, Copilot."},{"q":"Cursor é gratuito?","a":"Cursor tem plano gratuito com limites. Pro — $20/mês. GitHub Copilot — a partir de $10/mês (Individual) ou $19/mês (Business)."},{"q":"Cursor vs VS Code — qual é a diferença?","a":"Cursor é um fork do VS Code com recursos de IA profundos. Todas as suas extensões e configurações do VS Code funcionam no Cursor. É essencialmente VS Code + um poderoso agente de IA."},{"q":"GitHub Copilot é gratuito para estudantes?","a":"Sim. GitHub Copilot é gratuito para estudantes verificados via GitHub Education. Também é gratuito para mantenedores de projetos open-source populares."}]
},
"windsurf-vs-cursor": {
  "a": "Windsurf", "b": "Cursor",
  "choose_a": ["✅ Você precisa de um editor de IA com o fluxo agêntico mais profundo — Windsurf 'flui' pelas tarefas autonomamente","✅ Windsurf da Codeium oferece limites mais generosos que o Cursor para começar","✅ Cascade — o agente Windsurf que mantém contexto entre sessões e continua tarefas","✅ Interface mais limpa com menos sobrecarga cognitiva que o Cursor para alguns desenvolvedores"],
  "choose_b": ["✅ Cursor é mais maduro com comunidade maior e mais tutoriais","✅ Cursor Agent e Composer são conhecidos pela estabilidade e confiabilidade em grandes projetos","✅ Maior biblioteca de regras em .cursorrules para personalizar o comportamento da IA","✅ Mais integrações e servidores MCP compatíveis com Cursor"],
  "faq": [{"q":"Windsurf vs Cursor — qual é o melhor para programação?","a":"Ambos são poderosos editores de IA. Cursor é mais maduro e tem uma comunidade maior. Windsurf pode ser mais barato e tem o agente Cascade único. Experimente os dois — a maioria tem plano gratuito."},{"q":"Windsurf é gratuito?","a":"Windsurf tem plano gratuito com limites. Pro — a partir de $15/mês. Cursor Free — limitado; Pro — $20/mês."},{"q":"O que é Cascade no Windsurf?","a":"Cascade é o agente Windsurf que entende todo o seu repositório e mantém contexto entre sessões. Ele pode realizar tarefas autonomamente, ler arquivos e fazer alterações em vários arquivos."},{"q":"Windsurf vs GitHub Copilot — qual é a diferença?","a":"Windsurf é um editor de código de IA completo que substitui o VS Code. GitHub Copilot é um plugin para o seu IDE atual. Windsurf é mais poderoso para codificação agêntica; Copilot é mais conveniente se não quiser mudar de editor."}]
},
"claude-code-vs-github-copilot": {
  "a": "Claude Code", "b": "GitHub Copilot",
  "choose_a": ["✅ Você precisa do agente de IA de terminal mais poderoso para grandes refatorações e tarefas complexas","✅ Claude Code entende toda a base de código e executa tarefas via terminal autonomamente","✅ Claude Code está intimamente integrado com Claude Sonnet e Opus para a melhor compreensão de código","✅ Ideal para desenvolvedores sêniors que querem delegar tarefas complexas a um agente de IA"],
  "choose_b": ["✅ Você quer um assistente de IA conveniente no seu IDE sem ir para o terminal","✅ GitHub Copilot se integra ao VS Code, JetBrains, Vim e outros IDEs","✅ Copilot Enterprise com segurança e governança corporativa","✅ Integração nativa com GitHub: auxílio em PRs, code review e Actions"],
  "faq": [{"q":"Claude Code vs GitHub Copilot — qual escolher?","a":"Claude Code é um poderoso agente de terminal para tarefas complexas no nível da base de código. GitHub Copilot é um assistente diário conveniente no IDE. Para grandes refatorações, Claude Code; para programação diária, Copilot."},{"q":"Claude Code é gratuito?","a":"Claude Code CLI é gratuito. Você paga pela API Claude por token. Para uso intensivo, Claude Max ($100/mês) inclui limites de API maiores. GitHub Copilot — a partir de $10/mês."},{"q":"Como instalar o Claude Code?","a":"Claude Code é instalado via npm: npm install -g @anthropic-ai/claude-code. É necessária uma chave de API Anthropic. Em seguida, execute claude no terminal dentro do diretório do projeto."},{"q":"Claude Code vs Cursor — qual é a diferença?","a":"Cursor é um editor de código completo com IA. Claude Code é um agente de terminal. Cursor é mais conveniente para programação diária; Claude Code é mais poderoso para execução autônoma de tarefas complexas sem interface gráfica."}]
},
"replit-vs-github-copilot": {
  "a": "Replit", "b": "GitHub Copilot",
  "choose_a": ["✅ Você precisa de um ambiente de desenvolvimento diretamente no navegador sem instalação local","✅ Replit é um IDE cloud completo + hospedagem + agente de IA em um só lugar","✅ Replit Agent constrói aplicações inteiras do zero a partir de uma descrição em linguagem natural","✅ Ideal para aprendizado, prototipagem e colaboração sem configuração de ambiente"],
  "choose_b": ["✅ Você quer um assistente de IA no seu IDE local (VS Code, JetBrains)","✅ GitHub Copilot funciona com sua infraestrutura existente e projetos locais","✅ Copilot Enterprise com ferramentas de segurança corporativa","✅ Copilot é melhor para grandes bases de código corporativas onde o Replit não é adequado"],
  "faq": [{"q":"Replit vs GitHub Copilot — qual é a diferença?","a":"Replit é um IDE cloud completo com IA. GitHub Copilot é um plugin de IA para IDEs locais. Replit para desenvolvimento cloud e aprendizado; Copilot para complementar o ambiente de desenvolvimento existente."},{"q":"Replit é gratuito?","a":"Replit tem plano gratuito. Planos pagos Core a partir de $20/mês. GitHub Copilot Free permite 2.000 conclusões de código/mês; Copilot Individual — $10/mês."},{"q":"O que é Replit Agent?","a":"Replit Agent é uma IA que constrói aplicações completas a partir de uma descrição em linguagem natural. Você descreve o que quer — ela escreve o código, configura o banco de dados e implanta a aplicação. Similar ao Cursor Composer, mas em um IDE cloud."},{"q":"Replit para aprender programação?","a":"Sim. Replit é excelente para aprendizado: sem necessidade de configurar ambiente local, tudo funciona no navegador. Popular entre estudantes e cursos de programação."}]
},
"bolt-new-vs-cursor": {
  "a": "Bolt.new", "b": "Cursor",
  "choose_a": ["✅ Você quer criar rapidamente uma aplicação web no navegador sem configuração local","✅ Bolt.new gera um frontend+backend completo a partir de uma descrição e implanta imediatamente","✅ Ideal para protótipos, MVPs e demos sem conhecimento da stack completa","✅ Bolt.new é mais rápido para começar — sem IDE, configuração ou dependências"],
  "choose_b": ["✅ Você precisa de um editor de IA sério para trabalhar com uma base de código existente","✅ Cursor entende seu projeto existente e ajuda a refatorar e expandir o código","✅ Cursor é adequado para desenvolvimento profissional com git, testes e CI/CD","✅ Maior flexibilidade de linguagens e frameworks que o Bolt.new"],
  "faq": [{"q":"Bolt.new vs Cursor — qual escolher?","a":"Bolt.new para iniciar rapidamente uma aplicação web do zero sem configuração. Cursor para trabalhar com uma base de código existente e desenvolvimento profissional. Bolt para protótipos; Cursor para projetos reais."},{"q":"Bolt.new é gratuito?","a":"Bolt.new tem plano gratuito com limites de tokens. Planos Pro a partir de $20/mês. Cursor Free — limitado; Pro — $20/mês."},{"q":"O que é possível fazer com o Bolt.new?","a":"Bolt.new gera aplicações web: React, Next.js, Vue, backends Express, integrações Supabase e mais. Tudo diretamente no navegador com implantação com um clique. Perfeito para MVPs e protótipos."},{"q":"Bolt.new vs Replit — qual é a diferença?","a":"Ambos são ferramentas de desenvolvimento cloud. Bolt.new é mais orientado para geração de IA. Replit é um IDE mais completo com mais suporte de linguagens e hospedagem. Bolt para geração; Replit para desenvolvimento cloud completo."}]
},
"v0-by-vercel-vs-cursor": {
  "a": "v0 by Vercel", "b": "Cursor",
  "choose_a": ["✅ Você precisa gerar rapidamente componentes UI React e Tailwind CSS a partir de uma descrição","✅ v0 se especializa em gerar interfaces de qualidade: botões, formulários, dashboards, landing pages","✅ Integração Vercel: implante imediatamente o código gerado na Vercel","✅ v0 é gratuito para uso básico e simples sem configuração de IDE"],
  "choose_b": ["✅ Você precisa de um editor de IA completo para trabalhar com toda a base de código","✅ Cursor entende o projeto inteiro e ajuda com lógica de negócios, backend e banco de dados","✅ Cursor é adequado para todas as linguagens, não apenas React/Tailwind","✅ Desenvolvimento profissional com git, testes e fluxo de trabalho completo"],
  "faq": [{"q":"v0 vs Cursor — qual escolher?","a":"v0 se especializa em geração de UI e componentes. Cursor é um editor de IA completo para todos os aspectos do desenvolvimento. v0 para UI rápida; Cursor para desenvolvimento completo."},{"q":"v0 Vercel é gratuito?","a":"v0 tem plano gratuito com mensagens limitadas. Planos Premium a partir de $10/mês. Cursor Free — limitado; Pro — $20/mês."},{"q":"O que é v0?","a":"v0 da Vercel é um gerador de componentes UI de IA. Você descreve uma interface em linguagem natural e o v0 gera código React+Tailwind pronto para uso. Ideal para designers e desenvolvedores que querem criar interfaces de qualidade rapidamente."},{"q":"v0 vs Bolt.new — qual é a diferença?","a":"v0 se especializa em componentes UI para projetos existentes. Bolt.new constrói aplicações completas do zero. v0 para componentes e UI; Bolt.new para MVPs completos."}]
},
"cline-vs-github-copilot": {
  "a": "Cline", "b": "GitHub Copilot",
  "choose_a": ["✅ Você precisa de um agente de IA open-source gratuito no VS Code com controle máximo","✅ Cline (anteriormente Claude Dev) realiza tarefas autônomas: lê arquivos, escreve código, executa comandos","✅ Suporta qualquer modelo: Claude, GPT-4, DeepSeek, locais — você escolhe","✅ Cline é open-source e gratuito — você paga apenas pela API do modelo que escolher"],
  "choose_b": ["✅ Você precisa do assistente de IA mais conveniente com a melhor integração de IDE","✅ GitHub Copilot é mais estável e maduro para programação diária","✅ Copilot Business com segurança e governança corporativa","✅ Recursos nativos do GitHub: auxílio em PRs, code review, testes"],
  "faq": [{"q":"Cline vs GitHub Copilot — qual é o melhor?","a":"Cline é gratuito e open-source com mais flexibilidade de modelos e capacidades agênticas. Copilot é mais conveniente e maduro. Para flexibilidade open-source, Cline; para um assistente diário estável, Copilot."},{"q":"Cline é gratuito?","a":"A extensão Cline é gratuita. Você paga pela API do modelo: API Claude, API OpenAI ou localmente via Ollama gratuitamente. GitHub Copilot — a partir de $10/mês."},{"q":"O que é Cline?","a":"Cline (anteriormente Claude Dev) é um agente de IA open-source para VS Code. Ele pode ler e escrever arquivos autonomamente, executar comandos de terminal e fazer alterações na base de código. Suporta Claude, GPT-4 e outros modelos."},{"q":"Cline vs Cursor — qual escolher?","a":"Cline é uma extensão do VS Code; você permanece no VS Code. Cursor é um editor separado. Cline é mais barato; Cursor tem integração agêntica mais profunda. Para ficar no VS Code, Cline; para um editor de IA completo, Cursor."}]
},
"aider-vs-github-copilot": {
  "a": "Aider", "b": "GitHub Copilot",
  "choose_a": ["✅ Você precisa de um agente de IA de terminal para programação com controle máximo via linha de comando","✅ Aider é open-source e gratuito — você paga apenas pela API do modelo","✅ Forte integração com git: Aider faz commit automático das alterações com boas mensagens","✅ Excelente para refatorações em lote e grandes mudanças em vários arquivos"],
  "choose_b": ["✅ Você precisa de IA conveniente diretamente no IDE sem trabalhar no terminal","✅ GitHub Copilot é mais conveniente para programação diária com autocompletar","✅ Copilot Business com ferramentas de segurança corporativa para organizações","✅ Experiência mais intuitiva para desenvolvedores não habituados com CLI"],
  "faq": [{"q":"Aider vs GitHub Copilot — qual é a diferença?","a":"Aider é uma ferramenta de terminal que faz alterações autônomas na base de código. Copilot é um plugin de IDE para autocompletar e chat. Aider para tarefas complexas em múltiplos arquivos via CLI; Copilot para escrita diária de código no IDE."},{"q":"Aider é gratuito?","a":"Aider é open-source e gratuito. Você paga pela API: API Claude, API OpenAI ou gratuitamente via DeepSeek ou modelos locais. GitHub Copilot — a partir de $10/mês."},{"q":"Aider para Python — é adequado?","a":"Aider se encaixa perfeitamente com Python. É uma das ferramentas de IA externas mais populares na comunidade Python. Excelente suporte para refatorações, testes e grandes bases de código."},{"q":"Como começar com o Aider?","a":"Instale: pip install aider-chat. Adicione uma chave de API (Anthropic ou OpenAI). Execute aider no diretório do projeto. O Aider vê automaticamente o contexto do git e propõe alterações. Toda a documentação em aider.chat."}]
},
"windsurf-vs-github-copilot": {
  "a": "Windsurf", "b": "GitHub Copilot",
  "choose_a": ["✅ Você precisa de um editor de código de IA completo com capacidades agênticas, não apenas um plugin","✅ Windsurf Cascade entende todo o repositório e mantém contexto entre sessões","✅ Windsurf pode ser mais barato para equipes do que o Copilot Business","✅ Integração agêntica mais profunda: Windsurf realiza tarefas em múltiplas etapas autonomamente"],
  "choose_b": ["✅ Você quer IA no seu IDE atual sem mudar para um novo editor","✅ Copilot tem mais de 1 milhão de desenvolvedores e o maior ecossistema de integrações de IDE","✅ Copilot Enterprise com conformidade SOC2 e GDPR para setores regulamentados","✅ Integração mais profunda com GitHub: assistente de PR, code review, testes e Actions"],
  "faq": [{"q":"Windsurf vs GitHub Copilot — qual é o melhor?","a":"Windsurf é mais poderoso para codificação agêntica e compreensão do projeto inteiro. Copilot é mais conveniente para uso diário no IDE atual. Para capacidades agênticas, Windsurf; para integração sem mudar de IDE, Copilot."},{"q":"Windsurf é gratuito?","a":"Windsurf tem plano gratuito. Pro a partir de $15/mês. GitHub Copilot Free — limitado; Individual $10/mês; Business $19/mês."},{"q":"Windsurf — de qual empresa é?","a":"Windsurf é da Codeium — uma empresa especializada em ferramentas de IA para desenvolvedores. A Codeium também oferece uma extensão Copilot gratuita para VS Code e JetBrains."},{"q":"É possível importar configurações do VS Code no Windsurf?","a":"Sim. Windsurf é compatível com VS Code e você pode importar suas configurações e extensões. O processo é similar à migração para o Cursor."}]
},
"deepl-vs-grammarly": {
  "a": "DeepL", "b": "Grammarly",
  "choose_a": ["✅ Você precisa da tradução automática mais precisa entre 33+ idiomas","✅ A tradução DeepL é muito mais natural e precisa que o Google Tradutor para a maioria dos idiomas","✅ DeepL Write também melhora o estilo do texto no seu idioma nativo — não apenas tradução","✅ A API DeepL é ideal para desenvolvedores criando aplicações multilíngues"],
  "choose_b": ["✅ Você precisa de ajuda completa na escrita: gramática, estilo, tom e clareza em um só lugar","✅ Grammarly se integra ao navegador, Word, Google Docs e todos os campos de texto online","✅ Grammarly Premium verifica plágio e fornece explicações detalhadas para melhorar o estilo","✅ Análise de tom: seu email soa educado, confiante ou condescendente?"],
  "faq": [{"q":"DeepL ou Google Tradutor — qual é mais preciso?","a":"DeepL é geralmente mais preciso, especialmente para idiomas europeus. Google Tradutor cobre mais idiomas (100+) e é melhor para idiomas raros. Para tradução de qualidade de/para os principais idiomas, DeepL; para idiomas raros, Google Tradutor."},{"q":"DeepL é gratuito?","a":"DeepL tem plano gratuito com limites. DeepL Pro a partir de €10,99/mês. Grammarly é gratuito para funções básicas; Premium a partir de $12/mês."},{"q":"DeepL Write vs Grammarly — qual é a diferença?","a":"DeepL Write melhora o texto no mesmo idioma e é muito bom para estilo e fluência. Grammarly é mais poderoso para análise gramatical e estilística completa. Para reformulação natural, DeepL Write; para verificação completa, Grammarly."},{"q":"DeepL suporta português?","a":"Sim. DeepL oferece excelente suporte ao português. A qualidade da tradução para e do português está entre as melhores, especialmente para os pares PT-EN e PT-ES."}]
},
"quillbot-vs-grammarly": {
  "a": "QuillBot", "b": "Grammarly",
  "choose_a": ["✅ Você precisa parafrasear e variar textos com diferentes estilos","✅ QuillBot tem 8 modos de paráfrase: Padrão, Formal, Criativo, Acadêmico","✅ O resumidor do QuillBot condensa documentos e artigos longos em resumos curtos","✅ QuillBot é mais barato que o Grammarly Premium para funcionalidades similares"],
  "choose_b": ["✅ Você precisa de verificação completa de gramática, pontuação e estilo com explicações","✅ Grammarly se integra ao navegador, Word, Google Docs e todos os formulários online","✅ Grammarly Premium verifica plágio e analisa o tom do texto","✅ Para desenvolver habilidades de escrita, Grammarly fornece melhores retornos"],
  "faq": [{"q":"QuillBot ou Grammarly para estudantes?","a":"Ambos são úteis, mas para objetivos diferentes. QuillBot ajuda a parafrasear e variar expressões. Grammarly corrige gramática e estilo. Para redação acadêmica: Grammarly para precisão, QuillBot para variar expressões."},{"q":"QuillBot é gratuito?","a":"QuillBot tem plano gratuito com limites (125 palavras, 3 modos). Premium ($9,99/mês) — ilimitado. Grammarly é gratuito; Premium a partir de $12/mês."},{"q":"É possível usar o QuillBot para trabalhos acadêmicos?","a":"QuillBot pode parafrasear texto, mas submeter texto de outro parafraseado como trabalho próprio viola regras de integridade acadêmica. QuillBot é útil para expressar melhor suas próprias ideias, não para ocultar plágio."},{"q":"Quais modos o QuillBot oferece?","a":"QuillBot oferece 8 modos: Padrão, Formal, Simples (Premium), Criativo (Premium), Expandir (Premium), Encurtar (Premium), Acadêmico (Premium) e Personalizado (Premium)."}]
},
"jasper-vs-writesonic": {
  "a": "Jasper", "b": "Writesonic",
  "choose_a": ["✅ Sua equipe de marketing produz conteúdo em escala com uma voz de marca consistente","✅ Jasper AI é adequado para grandes equipes com fluxos de trabalho de conteúdo avançados e gerenciamento de projetos","✅ Integração com Surfer SEO para conteúdo otimizado para SEO diretamente no editor","✅ Brand Voice: Jasper aprende a voz da sua marca e a mantém em todos os textos"],
  "choose_b": ["✅ Você é uma pequena empresa ou solopreneur buscando geração de texto de IA acessível","✅ Writesonic é mais barato e oferece mais recursos por menos dinheiro que o Jasper","✅ Chatsonic — um chat de IA com pesquisa na web similar ao ChatGPT Plus","✅ Artigos de blog e posts otimizados para SEO com ferramentas de otimização integradas"],
  "faq": [{"q":"Jasper ou Writesonic para um blog?","a":"Ambos geram artigos de blog. Jasper é melhor para consistência de marca e fluxos de trabalho em equipe. Writesonic oferece mais por menos dinheiro. Para blogueiros solo, Writesonic; para equipes de marketing, Jasper."},{"q":"Quanto custa o Jasper?","a":"Jasper a partir de $49/mês (Creator, 1 assento) até $125/mês (Pro, 5 assentos) e Enterprise. Writesonic a partir de $20/mês. Ambos têm testes gratuitos."},{"q":"Jasper suporta português?","a":"Sim. Jasper suporta mais de 30 idiomas incluindo português. A qualidade é melhor para inglês, mas o português é bem suportado. Para conteúdo de marketing em português, Jasper é uma solução viável, mas revisão sempre é recomendada."},{"q":"Conteúdo de IA ranqueia bem no Google?","a":"Sim, se for de alta qualidade, único e escrito para humanos. O Google avalia qualidade e relevância — conteúdo de IA bem pesquisado, verificado e editado pode ranquear bem. O Google deixou claro que conteúdo de IA não viola suas diretrizes por si só."}]
},
"writesonic-vs-grammarly": {
  "a": "Writesonic", "b": "Grammarly",
  "choose_a": ["✅ Você precisa de geração de texto de IA: artigos de blog, textos publicitários, descrições de produtos","✅ Você quer gerar conteúdo do zero sem passar horas escrevendo","✅ Chatsonic — um chat de IA com pesquisa na web similar ao Perplexity ou ChatGPT Plus","✅ Conteúdo otimizado para SEO com integração de palavras-chave diretamente na ferramenta"],
  "choose_b": ["✅ Você já tem um texto escrito e precisa de correções de gramática, estilo e tom","✅ Você quer melhorar progressivamente suas habilidades de escrita através de feedbacks detalhados","✅ Grammarly se integra ao navegador para ajuda na escrita em emails, redes sociais e todos os textos online","✅ Você quer que seu texto seja profissional, claro e sem erros — não gerar novo conteúdo"],
  "faq": [{"q":"Writesonic ou ChatGPT para criação de conteúdo?","a":"Writesonic é otimizado para conteúdo de marketing com modelos para anúncios, artigos de blog e descrições. ChatGPT é mais versátil, mas requer mais trabalho nos prompts. Para conteúdo de marketing estruturado, Writesonic; para uso geral flexível, ChatGPT."},{"q":"Writesonic é gratuito?","a":"Writesonic tem plano gratuito com créditos limitados. Individual a partir de $20/mês. Grammarly é gratuito para funções básicas; Premium a partir de $12/mês."},{"q":"Grammarly consegue gerar texto?","a":"Grammarly tem capacidades de geração limitadas (sugere frases, reescreve parágrafos). Mas é principalmente um assistente de escrita, não um gerador de conteúdo. Para artigos completos, Writesonic, Jasper ou ChatGPT são mais adequados."},{"q":"Writesonic para email marketing — é eficaz?","a":"Sim. Writesonic tem modelos específicos para linhas de assunto de email, newsletters e emails de marketing. Você pode gerar rapidamente variações e escolher a melhor. Para sequências de email marketing em escala, Jasper ou Copy.ai também são boas opções."}]
},
"hemingway-editor-vs-grammarly": {
  "a": "Hemingway Editor", "b": "Grammarly",
  "choose_a": ["✅ Você quer simplificar seu estilo de escrita: frases mais curtas, palavras mais simples, linguagem mais direta","✅ Você escreve para um público amplo e quer maximizar a legibilidade","✅ Você escreve para a web onde um texto claro e conciso converte melhor","✅ Você quer identificar e eliminar a voz passiva e advérbios excessivos"],
  "choose_b": ["✅ Você precisa de verificação completa de gramática e pontuação em todos os seus textos","✅ Você quer sugestões de IA com análise de tom, clareza e engajamento","✅ Você precisa de correções em tempo real no Google Docs, Word, emails e navegador","✅ Você quer verificação de plágio e análise completa de estilo em um só lugar"],
  "faq": [{"q":"Hemingway Editor ou Grammarly — qual é o melhor?","a":"Eles resolvem problemas diferentes. Grammarly encontra erros de gramática e dá conselhos gerais. Hemingway torna seu estilo mais claro e direto. Muitos autores usam os dois: Grammarly para precisão, Hemingway para legibilidade."},{"q":"Hemingway Editor é gratuito?","a":"Hemingway Editor é gratuito em hemingwayapp.com. O aplicativo desktop custa $19,99 (pagamento único, sem assinatura). Grammarly é gratuito; Premium a partir de $12/mês."},{"q":"O que significa o 'nível de legibilidade' no Hemingway?","a":"Hemingway dá um nível de legibilidade baseado na pontuação Flesch-Kincaid. O nível 6-8 é ideal para a maioria dos conteúdos web e um público amplo. O objetivo não é o nível 1, mas o nível certo para seu público-alvo."},{"q":"Hemingway Editor funciona em português?","a":"Hemingway Editor analisa textos em português, mas é principalmente otimizado para inglês. As regras de legibilidade (comprimento das frases, detecção de advérbios) funcionam parcialmente para outros idiomas."}]
},
"semrush-vs-copy-ai": {
  "a": "SEMrush", "b": "Copy.ai",
  "choose_a": ["✅ Você precisa de um conjunto completo de SEO: pesquisa de palavras-chave, análise de backlinks, auditorias técnicas","✅ Você gerencia SEO para vários sites ou clientes e precisa de dados abrangentes","✅ Você quer acompanhar classificações, analisar volumes de busca e identificar lacunas de conteúdo","✅ Você realiza campanhas de PPC e precisa de dados sobre palavras-chave e concorrentes"],
  "choose_b": ["✅ Você precisa de geração de textos de marketing de IA: anúncios, emails, descrições de produtos","✅ Você é solopreneur ou pequena equipe querendo criar conteúdo rapidamente sem grande orçamento","✅ O plano gratuito do Copy.ai é suficiente para geração básica de textos","✅ Você precisa de textos de marketing rápidos para redes sociais ou campanhas de email em minutos"],
  "faq": [{"q":"SEMrush ou Ahrefs — qual é o melhor?","a":"SEMrush e Ahrefs são os dois principais conjuntos de SEO. SEMrush é mais forte em PPC e marketing de conteúdo. Ahrefs é considerado melhor para análise de backlinks. Ambos são excelentes — muitos profissionais de SEO testam os dois antes de escolher."},{"q":"Quanto custa o SEMrush?","a":"SEMrush a partir de $139,95/mês (Pro) até $499,95/mês (Business). Existe uma versão gratuita limitada. Copy.ai tem plano gratuito generoso; planos pagos a partir de $49/mês."},{"q":"SEMrush consegue criar conteúdo?","a":"SEMrush tem ferramentas de escrita de IA (ContentShake AI) para conteúdo otimizado para SEO. Mas é principalmente uma ferramenta de análise de SEO. Copy.ai é mais especializado em redação de textos de marketing."},{"q":"Copy.ai ou ChatGPT para textos de marketing?","a":"Copy.ai tem modelos prontos para marketing (anúncios, emails, descrições) que dão estrutura imediata. ChatGPT é mais flexível, mas requer mais trabalho nos prompts. Para textos de marketing estruturados, Copy.ai; para uso geral flexível, ChatGPT."}]
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
lines.append("-- Portuguese choose_if + faq UPDATE — generated by gen_tool_choose_faq_pt_b1.py (batch 1/4)")
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
comp_lines.append("-- Portuguese choose_a + choose_b + faq INSERT for comparisons table (batch 1/4)")
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
print(f"Batch 1/4 done: {len(DATA_PT)} comparisons, {len(tool_data)} tools")
