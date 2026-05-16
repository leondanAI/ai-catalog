-- Batch 4 PT: google-veo-3, continue-dev, surferseo, frase, notion-ai, jasper, otter-ai, writesonic, n8n, runway

-- ============================================================
-- 31. GOOGLE VEO 3
-- ============================================================
UPDATE tools SET
  best_for         = $d31p$Geração de vídeo com IA, áudio nativo, imagem para vídeo, upscaling 4K$d31p$,
  description      = $d31p$O Veo 3.1 adiciona áudio nativo mais rico e melhor compreensão cinematográfica. Acesso gratuito via Google Vids para todos os titulares de conta Google; o Veo 3.1 Lite no Vertex AI oferece uma variante econômica com upscaling 4K independente.$d31p$,
  description_long = $dl31p$O Google Veo é o modelo principal de geração de vídeo com IA do Google DeepMind, projetado para vídeos de qualidade cinematográfica com síntese de áudio nativa. Está disponível por múltiplos pontos de acesso — Google Vids (consumidor), Vertex AI (empresarial) e Google AI Studio — tornando-o um dos sistemas de geração de vídeo profissional mais amplamente distribuídos disponíveis.

O Veo 3.1, lançado em janeiro de 2026, introduziu geração de áudio nativo mais rico, o que significa que o modelo produz som sincronizado diretamente junto com o vídeo sem exigir um pipeline de áudio separado. A compreensão de estilo cinematográfico melhorou substancialmente nesta versão: o modelo interpreta e replica termos de direção como rack focus, push-in e Dutch angle com maior precisão. A capacidade de imagem para vídeo também foi aprimorada, produzindo movimentos mais fluidos e melhor coerência ao animar imagens estáticas.

O Veo 3.1 Lite, lançado em 4 de abril de 2026 no Vertex AI, é uma variante otimizada em custo destinada a empresas que executam cargas de trabalho de geração em alto volume. Junto com o modelo Lite, o Google lançou um serviço independente de upscaling Veo que pega vídeos existentes — gerados por IA ou não — e os converte para 1080p ou 4K sem exigir uma regeneração completa.

Em abril de 2026, o Google estendeu a geração gratuita de vídeo Veo 3.1 a todos os titulares de conta Google pelo Google Vids, reduzindo drasticamente a barreira de acesso. A plataforma Google Vids ganhou simultaneamente geração de música de IA personalizada Lyria 3 e avatares de IA direcionáveis, permitindo que criadores construam segmentos de vídeo totalmente produzidos com música sincronizada e avatares de apresentador em uma única ferramenta.

As capacidades de saída incluem vídeo vertical nativo para plataformas sociais em modo retrato, upscaling para 1080p e 4K, e áudio nativo. O preço é freemium: acesso gratuito pelo Google Vids para uso básico, com preços Vertex AI aplicados para uso de API empresarial dos modelos padrão e Lite.

O Veo é ideal para criadores de conteúdo, cineastas e empresas que precisam de vídeo IA cinematográfico com áudio nativo, entrega flexível por canais de consumo e empresariais, e integração profunda com o ecossistema Google.$dl31p$,
  pros = ARRAY['Síntese de áudio nativa — som sincronizado gerado junto com o vídeo sem pipeline separado', 'Acesso gratuito via Google Vids para todos os titulares de conta Google — menor barreira entre os grandes modelos', 'Veo 3.1 Lite no Vertex AI oferece acesso API de alto volume econômico para empresas', 'Serviço independente de upscaling 4K para vídeos existentes — sem necessidade de regeneração completa', 'Saída vertical nativa e música de IA personalizada Lyria 3 dentro do Google Vids'],
  cons = ARRAY['Preços Vertex AI empresariais se acumulam rapidamente para cargas de trabalho de produção em grande escala', 'Nível gratuito pelo Google Vids tem limites de geração e menos controles que o acesso via API', 'Recursos cinematográficos exigem familiaridade com terminologia de direção de cinema para uso eficaz', 'Menos integrações de terceiros em comparação com Runway ou Kling AI']
WHERE slug = 'google-veo-3' AND lang = 'pt';

-- ============================================================
-- 32. CONTINUE DEV
-- ============================================================
UPDATE tools SET
  best_for         = $d32p$Agentes de codificação IA, automação CI/CD, revisão de PR, CLI open-source$d32p$,
  description      = $d32p$O Continue mudou de foco em 2026, de extensão de IDE para CLI open-source para agentes de IA assíncronos. O modo headless executa agentes em pipelines CI/CD; o sistema Checks impõe automaticamente políticas de revisão de equipe em cada pull request.$d32p$,
  description_long = $dl32p$O Continue é uma ferramenta de codificação IA open-source que passou por uma grande mudança de produto em 2026. Migrou de sua identidade original como extensão de IDE para autocomplete e chat para uma plataforma CLI-first focada em agentes de IA assíncronos projetados para pipelines CI/CD e revisão automatizada de pull requests. O projeto continua totalmente gratuito e open-source sob licença Apache 2.0.

O sistema Checks é o centro da mudança de 2026. As equipes definem políticas de revisão em arquivos Markdown simples usando linguagem natural — por exemplo, especificando que todos os PRs devem incluir cobertura de testes para novas funções, seguir uma convenção de nomenclatura específica ou evitar certos antipadrões. Agentes de IA executam automaticamente essas verificações em cada pull request recebido, fornecendo feedback automatizado sem exigir revisão humana para problemas de conformidade rotineiros.

O modo headless permite que agentes Continue sejam executados em ambientes CI/CD na nuvem sem interface de usuário. Isso permite integração com GitHub Actions, GitLab CI e outras ferramentas de pipeline, para que agentes de revisão sejam executados automaticamente em cada push de código ou evento de abertura de PR. O modo TUI fornece uma interface de terminal interativa para usuários que preferem um fluxo de trabalho orientado por teclado, enquanto o modo Shell permite que agentes executem comandos de terminal arbitrários como parte de sua execução de tarefas.

O contexto de URL é um recurso prático de conveniência: os desenvolvedores podem colar qualquer URL diretamente na interface de chat, e o Continue busca e incorpora o conteúdo da página como contexto para a tarefa atual. Isso é útil para referenciar documentação, rastreadores de issues ou referências de API de terceiros sem copiar e colar conteúdo manualmente.

O suporte ao Devstral adiciona capacidades de chamada de ferramentas por meio do modelo Mistral Devstral, permitindo que agentes invoquem ferramentas e APIs externas como parte de fluxos de trabalho automatizados. O Continue suporta todos os principais provedores de LLM e modelos locais via Ollama, preservando sua filosofia de design agnóstica de modelos.

O Continue é ideal para equipes de engenharia que desejam automatizar revisões de código e verificações de qualidade CI/CD com políticas em linguagem natural, e para desenvolvedores que preferem uma alternativa open-source e agnóstica de modelos a agentes de codificação proprietários.$dl32p$,
  pros = ARRAY['Totalmente gratuito e open-source — sem nível pago, sem limites de uso, licença Apache 2.0', 'Sistema Checks: agentes de IA aplicam políticas de revisão de equipe escritas em Markdown simples em cada PR', 'Modo headless integra agentes diretamente no GitHub Actions e outros pipelines CI/CD', 'Agnóstico de modelos: suporta todos os principais provedores de LLM mais modelos locais via Ollama', 'Contexto de URL: cole qualquer URL no chat para incluir conteúdo da página como contexto do agente'],
  cons = ARRAY['Interface focada em CLI e terminal — não adequada para usuários não técnicos', 'Exige configuração pela equipe de arquivos de política de revisão Markdown antes que as verificações automatizadas funcionem', 'Apenas suporte da comunidade — sem SLA empresarial ou canal de suporte dedicado', 'Chamada de ferramentas Devstral e modo headless são relativamente novos — documentação ainda em maturação']
WHERE slug = 'continue-dev' AND lang = 'pt';

-- ============================================================
-- 33. SURFER SEO
-- ============================================================
UPDATE tools SET
  best_for         = $d33p$Otimização de busca com IA, monitoramento de marca em IA, atualização de conteúdo$d33p$,
  description      = $d33p$O Surfer migrou para AI Search Optimization em 2026, adicionando um AI Tracker que monitora menções de marca no ChatGPT, Perplexity, Google AI Overview e Gemini. Planos a partir de $49/mês; teste gratuito removido.$d33p$,
  description_long = $dl33p$O Surfer SEO é uma plataforma de otimização de conteúdo que reformulou seu posicionamento em 2026 de otimização tradicional para mecanismos de busca para AI Search Optimization (AISO). A mudança reflete a crescente importância de aparecer em respostas geradas por IA — não apenas nas páginas de resultados padrão do Google, mas em respostas do ChatGPT, respostas do Perplexity, snippets do Google AI Overview e saídas do Gemini.

O AI Tracker é o novo recurso principal para 2026. Ele monitora menções de marca e palavras-chave no ChatGPT, Perplexity, Google AI Mode, Google AI Overview e Gemini, dando aos usuários visibilidade sobre como sua marca e conteúdo aparecem em respostas geradas por IA. Isso é distinto do rastreamento de posição tradicional, que mede posições em uma página de resultados de mecanismo de busca — o AI Tracker mede presença em saídas de IA conversacional.

O Rank Tracker cobre o monitoramento tradicional de posição SERP junto com os novos recursos de visibilidade de IA. O Surfer Recommendations é um motor de sugestões automatizado que identifica lacunas de conteúdo, oportunidades de otimização e problemas de atualização no conteúdo existente de um site. O Custom Tone Humanizer ajusta o conteúdo gerado por IA para corresponder a um estilo de escrita específico ou voz de marca, reduzindo a qualidade genérica que muitos escritores de IA produzem.

A atualização automática de artigos escaneia o conteúdo publicado em busca de desatualização factual, quedas de posicionamento ou lacunas de otimização e aplica atualizações automaticamente — reduzindo o esforço manual necessário para manter o desempenho de uma grande biblioteca de conteúdo ao longo do tempo.

Os preços foram reestruturados em 2026 para quatro níveis apenas anuais: Discovery a $49/mês, Standard a $99/mês, Pro a $182/mês e Peace of Mind a $299/mês. O teste gratuito foi eliminado e substituído por uma garantia de devolução de dinheiro de 7 dias. O faturamento mensal não está mais disponível em nenhum plano.

O Surfer SEO é ideal para profissionais de marketing de conteúdo e equipes de SEO que desejam uma plataforma combinada de SEO tradicional e visibilidade em busca de IA, especialmente aqueles que publicam em volume e precisam de manutenção automatizada de conteúdo junto com monitoramento de marca em respostas geradas por IA.$dl33p$,
  pros = ARRAY['AI Tracker monitora menções de marca no ChatGPT, Perplexity, Google AI Overview e Gemini', 'Atualização automática de artigos mantém desempenho de conteúdo sem auditorias manuais', 'Custom Tone Humanizer adapta conteúdo gerado por IA para corresponder a uma voz de marca específica', 'Cobre rastreamento de posição SERP tradicional e visibilidade em busca de IA em uma plataforma', 'Surfer Recommendations automatiza identificação de lacunas de conteúdo e oportunidades de otimização'],
  cons = ARRAY['Preços apenas anuais — sem opção de faturamento mensal em nenhum plano', 'Teste gratuito eliminado — apenas garantia de devolução de dinheiro de 7 dias', 'Plano de entrada a $49/mês é limitado — recursos mais úteis exigem Standard ($99/mês) ou acima', 'Cobertura do AI Tracker depende da disponibilidade da API do motor de IA e pode perder algumas menções', 'Foco pesado em conteúdo em inglês — suporte a mercados não anglófonos é menos desenvolvido']
WHERE slug = 'surferseo' AND lang = 'pt';

-- ============================================================
-- 34. FRASE
-- ============================================================
UPDATE tools SET
  best_for         = $d34p$Conteúdo SEO, otimização GEO, rastreamento de citações IA, agentes de conteúdo$d34p$,
  description      = $d34p$O Frase 2.0 adiciona pontuação dupla SEO + GEO para otimizar tanto o ranking no Google quanto citações de IA do ChatGPT, Perplexity, Claude e Gemini. Agente IA com mais de 80 habilidades e acesso API/MCP incluído em todos os planos.$d34p$,
  description_long = $dl34p$O Frase é uma plataforma de otimização de conteúdo e escrita com IA que passou por uma reformulação completa com o Frase 2.0. A expansão central do produto é a pontuação dupla — o conteúdo agora é avaliado simultaneamente para desempenho SEO tradicional (rankings do Google) e Generative Engine Optimization (GEO), que mede o quão bem o conteúdo está posicionado para ser citado por motores de IA incluindo ChatGPT, Perplexity, Claude e Gemini.

O GEO é a adição estratégica central em 2026. À medida que respostas geradas por IA cada vez mais servem como a primeira resposta que os usuários recebem a consultas, aparecer como fonte citada dentro dessas respostas torna-se tão importante quanto aparecer na primeira página do Google. O Frase 2.0 analisa o conteúdo em relação aos padrões que os motores de IA citam, e sua orientação de pontuação ajuda os escritores a otimizar para ambas as superfícies simultaneamente, em vez de tratá-las como disciplinas separadas.

O rastreamento de visibilidade de IA monitora como o conteúdo e as menções de marca aparecem nos motores de IA ao longo do tempo — fornecendo o ciclo de dados que torna a otimização GEO mensurável em vez de especulativa. Os usuários podem rastrear se os esforços de otimização estão se traduzindo em maior frequência de citações de IA.

O Agente IA do Frase inclui mais de 80 habilidades cobrindo pesquisa, geração de briefings, criação de esboços, redação completa de rascunhos, otimização e verificações de prontidão para publicação. O agente está incluído em todos os planos pagos sem custo adicional. O acesso a API e MCP (Model Context Protocol) também está incluído em todos os níveis, permitindo que as equipes integrem as capacidades do Frase em seus próprios fluxos de trabalho e sistemas de IA.

Documentos Rank-Ready — peças de conteúdo totalmente pesquisadas, otimizadas e formatadas prontas para publicar — estão disponíveis como complementos a $3,50 cada. Os planos começam a partir de $39/mês. A plataforma é voltada para equipes de conteúdo que precisam produzir conteúdo otimizado em escala, mantendo visibilidade em superfícies de busca tradicionais e orientadas por IA.

O Frase é ideal para profissionais de marketing de conteúdo e equipes de SEO que desejam uma plataforma integrada para otimizar conteúdo tanto para rankings de busca do Google quanto para posicionamento de citações de IA, com pesquisa e redação orientadas por agentes integradas.$dl34p$,
  pros = ARRAY['Pontuação dupla SEO + GEO otimiza conteúdo para rankings do Google e citações de IA simultaneamente', 'Rastreamento de visibilidade de IA mede frequência de citações de marca e conteúdo nos motores de IA', 'Agente IA Frase com mais de 80 habilidades incluído em todos os planos — sem taxa adicional de agente', 'Acesso API e MCP em todos os níveis — integra com fluxos de trabalho de IA externos sem configuração extra', 'Documentos Rank-Ready disponíveis a $3,50 cada para equipes que precisam de conteúdo totalmente produzido'],
  cons = ARRAY['Planos a partir de $39/mês — sem nível gratuito ou teste disponível', 'Metodologia de pontuação GEO ainda está evoluindo à medida que padrões de citação de motores de IA mudam rapidamente', 'Qualidade de documentos Rank-Ready exige revisão — rascunhos gerados por IA precisam de edição humana', 'Integração MCP exige configuração técnica — não é plug-and-play para equipes não desenvolvedoras', 'Conjunto extenso de recursos tem curva de aprendizado para usuários vindos de ferramentas de conteúdo mais simples']
WHERE slug = 'frase' AND lang = 'pt';

-- ============================================================
-- 35. NOTION AI
-- ============================================================
UPDATE tools SET
  best_for         = $d35p$Agentes de workspace IA, automação customizada, integração Slack, geração de imagens$d35p$,
  description      = $d35p$O Notion AI atingiu 1 milhão de Agentes Personalizados em maio de 2026. A v3.4 torna os agentes 35–50% mais baratos e adiciona o Modo Plano. Geração de imagens com IA, acesso a canais Slack e janela de contexto de 50 páginas estão disponíveis em todos os planos.$d35p$,
  description_long = $dl35p$O Notion AI é a camada de IA incorporada em toda a plataforma de workspace Notion, usada por milhões de equipes em todo o mundo para anotações, documentos, wikis e gestão de projetos. Os recursos de IA evoluíram significativamente além da assistência de escrita para um sistema completo de agentes personalizados que automatiza tarefas de várias etapas em todo o workspace e aplicações conectadas.

Em maio de 2026, o Notion anunciou que mais de um milhão de Agentes Personalizados foram criados por usuários — um marco que reflete a adoção rápida das ferramentas de construção de agentes. Agentes Personalizados são automações de fluxo de trabalho alimentadas por IA que podem ler conteúdo do workspace, executar tarefas de várias etapas, conectar a serviços externos e agora interagir com canais Slack privados, incluindo a capacidade de ler mensagens e publicar respostas.

A versão 3.2, lançada em janeiro de 2026, expandiu a janela de contexto de IA de 20 para 50 páginas, permitindo que os agentes considerem substancialmente mais conteúdo do workspace ao gerar respostas ou executar tarefas. O suporte a IA móvel foi introduzido nesta versão, trazendo o conjunto completo de recursos de IA para iOS e Android. O preenchimento automático de IA — que preenche propriedades de banco de dados automaticamente com base no conteúdo da página — tornou-se três vezes mais rápido.

A versão 3.4, lançada em abril de 2026, reduziu o custo de crédito para executar Agentes Personalizados em 35–50%, tornando o uso frequente de agentes significativamente mais acessível. O Modo Plano é um novo modelo de interação com agentes: antes de executar uma tarefa, o agente faz perguntas de esclarecimento para confirmar escopo e abordagem, reduzindo instâncias de agentes agindo com base em instruções ambíguas. Controles de crédito por agente permitem que administradores do workspace definam limites de gastos em agentes individuais, evitando custos de automação descontrolados.

A geração de imagens com IA foi lançada em março de 2026, permitindo que os usuários gerem imagens diretamente dentro de páginas Notion sem mudar para uma ferramenta externa. O recurso está disponível em todos os planos pagos.

O Notion AI é ideal para equipes que já usam o Notion e desejam adicionar automação orientada por IA, agentes personalizados e capacidades de geração de IA em seu workspace existente, em vez de adotar uma ferramenta de IA separada.$dl35p$,
  pros = ARRAY['Mais de 1 milhão de Agentes Personalizados criados — adoção em larga escala comprovada de automação de workspace', 'Agentes Personalizados leem e respondem em canais Slack privados — estende automação além do Notion', 'v3.4: agentes 35-50% mais baratos de executar + Modo Plano reduz erros de instruções ambíguas', 'Janela de contexto de 50 páginas e preenchimento automático de IA 3x mais rápido para fluxos de trabalho com banco de dados', 'Geração de imagens com IA integrada diretamente nas páginas — sem ferramenta externa necessária'],
  cons = ARRAY['Recursos de IA exigem plano Notion pago — não disponível no nível gratuito', 'Custos de crédito de Agentes Personalizados podem se acumular rapidamente para equipes executando muitos agentes em volume', 'Modo Plano adiciona uma etapa de confirmação — mais lento para usuários experientes que conhecem o escopo do agente', 'Qualidade de geração de imagens com IA fica atrás de ferramentas dedicadas como Midjourney ou Ideogram', 'Capacidades de agente estão fortemente acopladas ao Notion — utilidade limitada fora do ecossistema Notion']
WHERE slug = 'notion-ai' AND lang = 'pt';

-- ============================================================
-- 36. JASPER
-- ============================================================
UPDATE tools SET
  best_for         = $d36p$Copywriting de marketing com IA, voz de marca, conteúdo de campanha, agentes sem código$d36p$,
  description      = $d36p$O Jasper simplificou para três planos (Creator $39/mês, Pro $59/mês, Business personalizado), todos com palavras ilimitadas. O AI Studio permite que equipes criem fluxos de trabalho de agentes sem código; os Jasper Agents lidam com pesquisa e personalização.$d36p$,
  description_long = $dl36p$O Jasper é uma plataforma de escrita com IA e marketing de conteúdo construída para equipes de marketing empresarial. Foca em produzir copy alinhado com a marca em escala — posts de blog, copy de anúncios, campanhas de email, conteúdo de redes sociais e descrições de produtos — com consistência de voz de marca aplicada em cada saída. O Jasper é usado por equipes de marketing em empresas incluindo Morningstar, Anthropologie e Bloomingdale's.

O Jasper reestruturou sua linha de planos para três níveis: Creator a $39/mês (anual), Pro a $59/mês (anual) e Business com preço personalizado. Todos os planos agora incluem palavras ilimitadas — removendo os limites anteriores por palavra ou baseados em créditos que restringiam o uso intenso. Essa mudança torna o Jasper mais previsível para equipes que produzem grandes volumes de conteúdo regularmente.

O AI Studio (anteriormente chamado de Studio) é o construtor de fluxos de trabalho de agentes sem código do Jasper. Equipes de marketing o usam para construir pipelines de IA de várias etapas — por exemplo, buscar um briefing de produto, gerar múltiplas variantes de copy de anúncio, executar verificações de voz de marca e gerar saída para um calendário de conteúdo — sem escrever nenhum código. Os Jasper Agents, uma camada de capacidade distinta, lidam com tarefas de pesquisa (buscando dados de concorrentes, resumindo tendências de mercado) e tarefas de personalização (adaptando copy para diferentes segmentos de público ou geografias) de forma autônoma nesses fluxos de trabalho.

A consistência de voz de marca é aplicada no nível do modelo: o Jasper é treinado no guia de estilo de cada equipe, copy aprovado e diretrizes de marca. A geração de imagens de campanha está integrada, usando os parâmetros de voz de marca para manter o conteúdo visual consistente com as mensagens escritas em um conjunto completo de campanha.

O Jasper se integra com Google Docs, Chrome, Salesforce, HubSpot, Webflow e WordPress. O acesso à API está disponível nos planos Business para integrações personalizadas. O Jasper é ideal para equipes de marketing empresarial que precisam de conteúdo consistente e alinhado com a marca em volume, e para equipes que desejam construir fluxos de trabalho de conteúdo automatizados sem recursos de engenharia.$dl36p$,
  pros = ARRAY['Palavras ilimitadas em todos os planos — sem limites de crédito ou cobrança por palavra', 'AI Studio: construa fluxos de trabalho de agentes sem código para pipelines de marketing de várias etapas', 'Jasper Agents lidam com pesquisa e tarefas de personalização de público de forma autônoma', 'Aplicação de voz de marca treinada em guias de estilo e copy aprovado da equipe', 'Integra com Salesforce, HubSpot, Google Docs, Webflow e WordPress'],
  cons = ARRAY['Apenas pago — Creator começa a $39/mês anual, sem nível gratuito significativo', 'Preço do plano Business é personalizado e não divulgado publicamente — requer contato com vendas', 'Construtor de fluxos de trabalho AI Studio tem curva de aprendizado para profissionais de marketing não técnicos', 'Qualidade da saída depende fortemente da qualidade dos dados de treinamento de voz de marca fornecidos']
WHERE slug = 'jasper' AND lang = 'pt';

-- ============================================================
-- 37. OTTER AI
-- ============================================================
UPDATE tools SET
  best_for         = $d37p$Transcrição de reuniões com IA, replay de vídeo, inteligência de vendas, sincronização CRM$d37p$,
  description      = $d37p$O Otter.ai adicionou Video Replay para Zoom, Meet e Teams. A transcrição do plano Pro foi reduzida de 6.000 para 1.200 minutos/mês sem alteração de preço. O OtterPilot para Vendas com sincronização Salesforce/HubSpot agora é apenas para Enterprise.$d37p$,
  description_long = $dl37p$O Otter.ai é uma plataforma de transcrição de reuniões e notas com IA que grava, transcreve e resume reuniões em tempo real no Zoom, Google Meet e Microsoft Teams. É usado por equipes de vendas, executivos, estudantes, jornalistas e equipes remotas para capturar e pesquisar conteúdo falado sem anotações manuais.

O Video Replay é uma capacidade adicionada recentemente que vincula a transcrição à gravação da reunião: os usuários podem clicar em qualquer linha da transcrição e pular diretamente para aquele momento no vídeo. Isso torna mais rápido revisitar pontos de discussão específicos, decisões ou itens de ação sem percorrer toda a gravação.

O OtterPilot para Vendas, que fornece insights de negócios gerados por IA, sugestões de acompanhamento automatizadas e sincronização bidirecional com Salesforce e HubSpot, foi movido para planos apenas Enterprise. Equipes que dependiam desse recurso nos planos Business precisarão fazer upgrade para manter o acesso.

Uma mudança negativa significativa: os minutos de transcrição do plano Pro foram silenciosamente reduzidos de 6.000 para 1.200 por mês sem redução correspondente de preço. Para usuários no plano Pro anual de $8,33/mês que anteriormente dependiam do limite mais alto, essa é uma redução substancial de valor sem compensação.

Preços em 2026: Gratuito com 300 minutos por mês, Pro a $8,33/usuário/mês (anual) com 1.200 minutos, Business a $19,99/usuário/mês (anual) com limites mais altos e recursos para equipes, e Enterprise com preço personalizado com OtterPilot para Vendas e sincronização CRM incluídos.

O Otter.ai é ideal para indivíduos e pequenas equipes que precisam de transcrição confiável de reuniões e notas pesquisáveis, e para equipes de vendas empresariais que exigem inteligência de reuniões integrada ao CRM.$dl37p$,
  pros = ARRAY['Video Replay: clique em qualquer linha da transcrição para pular para aquele momento na gravação', 'Transcrição em tempo real no Zoom, Google Meet e Microsoft Teams', 'Resumos automáticos de reuniões e extração de itens de ação', 'Nível gratuito disponível com 300 minutos por mês — sem necessidade de cartão de crédito', 'OtterPilot para Vendas: insights de negócios e sincronização Salesforce/HubSpot (Enterprise)'],
  cons = ARRAY['Transcrição do plano Pro silenciosamente reduzida de 6.000 para 1.200 min/mês sem redução de preço', 'OtterPilot para Vendas movido para apenas Enterprise — não mais disponível nos planos Business', 'Precisão da transcrição cai com sotaques fortes, sobreposição de falas ou qualidade de áudio ruim', 'Plano Business a $19,99/usuário/mês é caro para equipes menores com orçamentos apertados']
WHERE slug = 'otter-ai' AND lang = 'pt';

-- ============================================================
-- 38. WRITESONIC
-- ============================================================
UPDATE tools SET
  best_for         = $d38p$Escrita de conteúdo com IA, artigos SEO, análise de concorrentes, visibilidade em busca$d38p$,
  description      = $d38p$O Writesonic se reposicionou como Plataforma de Visibilidade em Busca com IA. O Article Writer 6.0 produz artigos de até 5.000 palavras com pesquisa em tempo real e análise de concorrentes. O Chatsonic agora usa GPT-4o, Claude 3.7 e Gemini 1.5 Pro.$d38p$,
  description_long = $dl38p$O Writesonic é uma plataforma de escrita de conteúdo com IA que se reposicionou como Plataforma de Visibilidade em Busca com IA — expandindo seu foco de geração geral de conteúdo para ajudar marcas a posicionarem-se em mecanismos de busca alimentados por IA e resultados de busca tradicionais. É usado por equipes de SEO, profissionais de marketing de conteúdo e agências que produzem grandes volumes de posts de blog, páginas de destino e conteúdo de produtos.

O AI Article Writer 6.0 é o recurso principal da plataforma atual. Ele gera artigos de até 5.000 palavras usando pesquisa web em tempo real para obter dados e estatísticas atuais, em vez de depender apenas dos dados de treinamento. A análise de concorrentes está integrada ao processo de geração de artigos: a ferramenta identifica as páginas de concorrentes com melhor posicionamento para uma determinada palavra-chave e incorpora lacunas estruturais e temáticas na saída. A vinculação interna automatizada sugere e insere links para conteúdo existente do site, e a verificação de fatos é executada antes que o artigo seja finalizado para reduzir erros factuais.

O Chatsonic, a interface de IA conversacional do Writesonic, agora suporta troca de modelos dentro de uma única sessão: os usuários podem executar prompts contra GPT-4o, Claude 3.7 e Gemini 1.5 Pro na mesma janela e comparar saídas. Isso é útil para equipes que desejam avaliar qual modelo produz a melhor saída para um tipo específico de conteúdo sem gerenciar várias assinaturas.

A publicação com um clique no WordPress conecta o Writesonic diretamente a um site WordPress, permitindo que artigos finalizados sejam enviados ao CMS como rascunhos ou posts publicados sem copiar e colar. O Writesonic também gera meta títulos otimizados, meta descrições e marcação de dados estruturados para cada artigo.

Os preços começam a $39/mês no faturamento anual para o plano Lite. Planos de nível superior desbloqueiam créditos de IA adicionais, recursos de colaboração em equipe e acesso à API.

O Writesonic é ideal para equipes de conteúdo SEO e agências que precisam de produção escalável de artigos com pesquisa integrada, análise de concorrentes e publicação direta no CMS.$dl38p$,
  pros = ARRAY['Article Writer 6.0: até 5.000 palavras com pesquisa em tempo real e análise de concorrentes', 'Vinculação interna automatizada e verificação de fatos integradas ao fluxo de geração de artigos', 'Chatsonic: alterne entre GPT-4o, Claude 3.7 e Gemini 1.5 Pro em uma janela', 'Publicação com um clique no WordPress — sem necessidade de copiar e colar manualmente para o CMS', 'Meta títulos, descrições e dados estruturados otimizados para SEO gerados com cada artigo'],
  cons = ARRAY['Sem nível gratuito significativo — plano Lite começa a $39/mês anual', 'Qualidade da pesquisa em tempo real varia — verificação de fatos ainda requer revisão humana', 'Posicionamento de Visibilidade em Busca com IA é mais recente e menos comprovado que a geração central de artigos', 'Uso em alto volume nos planos de nível inferior pode esgotar créditos de IA rapidamente']
WHERE slug = 'writesonic' AND lang = 'pt';

-- ============================================================
-- 39. N8N
-- ============================================================
UPDATE tools SET
  best_for         = $d39p$Automação de fluxos de trabalho com IA, self-hosted, editor de nodes, human-in-the-loop$d39p$,
  description      = $d39p$O n8n v2.0 introduz Task Runners para execução isolada de fluxos de trabalho, separação de Salvar vs. Publicar, diffs de versão visuais e carregamento 30–80% mais rápido. Ações de nó de chat habilitam aprovações human-in-the-loop.$d39p$,
  description_long = $dl39p$O n8n é uma plataforma de automação de fluxos de trabalho open-source que permite que desenvolvedores e equipes técnicas conectem aplicações, APIs e fontes de dados por meio de um editor visual de nodes. Ao contrário de muitas ferramentas de automação sem código, o n8n pode ser hospedado autonomamente, dando às organizações controle total de dados e sem dependência de fornecedor. É usado por equipes de engenharia, profissionais de DevOps e equipes de operações técnicas para automação interna, pipelines de dados e fluxos de trabalho de agentes de IA.

O n8n v2.0, uma versão principal no final de 2025 e início de 2026, introduziu várias melhorias arquiteturais e de UX. Os Task Runners fornecem ambientes de execução isolados para tarefas de fluxo de trabalho individuais, melhorando a estabilidade e evitando que uma etapa com falha corrompa o estado de outras em execução paralela. Isso é particularmente importante para fluxos de trabalho de agentes de IA de longa duração ou com múltiplos ramos.

O paradigma Salvar vs. Publicar muda como as alterações de fluxo de trabalho chegam à produção: as edições em um fluxo de trabalho são salvas localmente, mas não entram em vigor até que o usuário publique explicitamente. Isso espelha práticas de implantação de software e evita que alterações acidentais afetem imediatamente as automações em execução — um recurso muito solicitado por equipes que usam o n8n em ambientes de produção.

O diff de versão visual mostra exatamente o que mudou entre versões de fluxo de trabalho com um emblema de contagem de alterações, facilitando a revisão de modificações antes de publicar ou identificar quando uma regressão foi introduzida. O desempenho de carregamento melhorou 30–80% em instâncias de fluxo de trabalho grandes, abordando uma reclamação comum de equipes com centenas de fluxos de trabalho complexos.

Múltiplas conexões de provedor de segredos externos permitem que credenciais do Vault, AWS Secrets Manager e outros provedores sejam conectados simultaneamente. As Ações de nó de chat adicionam pontos de verificação human-in-the-loop: um fluxo de trabalho pode pausar e enviar uma mensagem a um aprovador humano, que pode aprovar, rejeitar ou modificar a próxima etapa antes que a execução continue. A integração com a SAP Business AI Platform foi anunciada para casos de uso empresarial.

O n8n hospedado autonomamente é gratuito. Os planos em nuvem começam a $20/mês. O n8n é ideal para desenvolvedores e equipes técnicas que precisam de automação de fluxo de trabalho flexível e hospedada autonomamente com capacidades de agentes de IA e sem dependência de fornecedor.$dl39p$,
  pros = ARRAY['Opção self-hosted é gratuita com acesso completo a recursos — sem dependência de fornecedor', 'Task Runners: execução isolada por tarefa de fluxo de trabalho para estabilidade em pipelines complexos', 'Separação Salvar vs. Publicar evita que alterações acidentais cheguem à produção', 'Diff de versão visual com emblemas de contagem de alterações para revisão segura de fluxo de trabalho antes de publicar', 'Ações de nó de chat: pause fluxos de trabalho para aprovações human-in-the-loop durante a execução'],
  cons = ARRAY['Exige configuração de self-hosting e manutenção de infraestrutura para o nível gratuito', 'Curva de aprendizado mais íngreme que ferramentas sem código como Zapier ou Make para usuários não técnicos', 'Plano em nuvem começa a $20/mês — adiciona custo para equipes que preferem hospedagem gerenciada', 'Grandes bibliotecas de fluxo de trabalho ainda exigem organização cuidadosa — sem hierarquia de pastas integrada']
WHERE slug = 'n8n' AND lang = 'pt';

-- ============================================================
-- 40. RUNWAY
-- ============================================================
UPDATE tools SET
  best_for         = $d40p$Geração de vídeo com IA, consistência temporal, acesso API, fluxos de trabalho criativos$d40p$,
  description      = $d40p$O Gen-4.5 (janeiro de 2026) roda em hardware NVIDIA Vera Rubin NVL72 e atingiu disponibilidade de API em fevereiro de 2026 com consistência temporal líder no mercado. Runway Characters, Labs, Builders e Fund foram todos lançados em março de 2026.$d40p$,
  description_long = $dl40p$O Runway é uma plataforma criativa de IA construída em torno da geração de vídeo, com um conjunto de ferramentas de produção abrangendo edição vídeo para vídeo, geração de imagens, geração de áudio e fluxos de trabalho multimodais. É usado por cineastas, estúdios, anunciantes e tecnólogos criativos que precisam de vídeo IA de qualidade cinematográfica para produção profissional. A série Gen de modelos do Runway tornou-se um benchmark para qualidade de geração de vídeo em toda a indústria.

O Gen-4.5 foi lançado em janeiro de 2026 e portado para a plataforma NVIDIA Vera Rubin NVL72 — um dos sistemas de inferência de IA de maior desempenho da NVIDIA. A implantação NVL72 permite as velocidades de inferência mais rápidas e maior throughput que eram necessários para tornar o Gen-4.5 disponível via API. O acesso à API foi aberto em fevereiro de 2026, permitindo que desenvolvedores e estúdios integrem o Gen-4.5 diretamente em seus próprios pipelines de produção e aplicações.

Os principais avanços técnicos do Gen-4.5 são consistência temporal e controle de ação. Consistência temporal refere-se a quão bem um modelo de vídeo mantém aparência, iluminação e física coerentes entre frames — uma fraqueza persistente de gerações anteriores de modelos de vídeo. O Gen-4.5 é classificado como líder no mercado nessa dimensão no início de 2026. O controle de ação permite que os usuários direcionem movimentos e interações específicos dentro de uma cena gerada com maior precisão do que a geração apenas com prompt.

Março de 2026 viu um conjunto de lançamentos de produto e ecossistema: Runway Characters (9 de março) habilita identidades de personagens consistentes em múltiplos clipes gerados; Runway Labs (11 de março) é um ambiente de pré-visualização de pesquisa e acesso antecipado para recursos experimentais; Runway Builders (31 de março) é uma camada de comunidade e ferramentas para desenvolvedores construindo na API do Runway; e Runway Fund (31 de março) é um programa de investimento que apoia startups de IA criativa.

Nodes de áudio de fluxo de trabalho, nodes de upscaling de vídeo e aplicativos de fluxo de trabalho publicáveis também foram adicionados, permitindo que os usuários construam pipelines de produção completos dentro da plataforma e os compartilhem como aplicativos utilizáveis. Os planos do Runway são apenas pagos, a partir de $15/mês para o Standard. O Runway é ideal para criadores de vídeo profissional e estúdios que precisam de consistência temporal líder no mercado e geração de vídeo acessível via API para integração em fluxos de trabalho de produção personalizados.$dl40p$,
  pros = ARRAY['Gen-4.5: consistência temporal líder no mercado e controle de ação para geração de vídeo com IA', 'Acesso API (a partir de fevereiro de 2026) para integração direta em pipelines de produção personalizados', 'Runway Characters: identidade de personagem consistente em múltiplos clipes gerados', 'Nodes de áudio de fluxo de trabalho, nodes de upscaling de vídeo e aplicativos de fluxo de trabalho publicáveis', 'Runway Fund e ecossistema Builders para desenvolvedores construindo na API do Runway'],
  cons = ARRAY['Apenas pago — sem nível gratuito para uso de produção contínuo', 'Acesso API e Gen-4.5 consomem créditos rapidamente em altos volumes de geração', 'API Gen-4.5 lançada em fevereiro de 2026 — ferramentas de integração de terceiros ainda em maturação', 'Menos amigável para iniciantes do que ferramentas voltadas ao consumidor como Pika ou CapCut AI']
WHERE slug = 'runway' AND lang = 'pt';
