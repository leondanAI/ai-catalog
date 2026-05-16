-- Batch 5 PT: clearscope, perplexity, microsoft-copilot, stable-diffusion, capcut, descript, gamma, leonardo-ai, comfyui, meta-ai

-- ============================================================
-- 41. CLEARSCOPE
-- ============================================================
UPDATE tools SET
  best_for         = $d41p$Otimização de conteúdo SEO, monitoramento de inventário, rastreamento de visibilidade em LLMs$d41p$,
  description      = $d41p$Clearscope 2.0 se reposicionou como plataforma completa de descobribilidade com redação assistida por IA, monitoramento de inventário de conteúdo com visões de Striking Distance e Content Decay, e rastreamento de LLMs. Novo plano Essentials por US$129/mês.$d41p$,
  description_long = $dl41p$Clearscope é uma plataforma de otimização de conteúdo SEO que passou por uma grande reformulação com a versão 2.0, se reposicionando de uma ferramenta de classificação de palavras-chave para uma plataforma completa de descobribilidade. A atualização introduz um conjunto mais amplo de recursos de ciclo de vida do conteúdo, cobrindo não apenas a criação de novos conteúdos, mas também o gerenciamento contínuo do inventário e a visibilidade na busca com IA.

Redigir com IA é uma das principais adições do Clearscope 2.0. Oferece criação de conteúdo otimizado para SEO diretamente na plataforma e está disponível em todos os planos — sem restrição para níveis mais altos. O recurso anteriormente chamado de Relatórios foi renomeado para Rascunhos, alinhando a nomenclatura com o novo fluxo de trabalho de redação assistida por IA.

O Monitoramento de Inventário de Conteúdo adiciona duas visões analíticas para gerenciar conteúdo existente. Striking Distance destaca páginas que ranqueiam entre as posições 8 e 20 para palavras-chave alvo — páginas próximas de entrar na primeira página que podem ser impulsionadas com otimização direcionada. Content Decay identifica páginas cujo tráfego ou posicionamento caiu ao longo de um período definido, sinalizando-as para atualização ou consolidação antes que o declínio se agrave.

O rastreamento de LLMs é um novo recurso que monitora como o conteúdo aparece em respostas geradas por modelos de linguagem como ChatGPT, Perplexity e mecanismos de busca com IA similares. Isso reflete a crescente importância da visibilidade na busca por IA ao lado dos rankings tradicionais do Google. O SEO Local adiciona otimização específica por localização para empresas que visam consultas de busca geográficas.

O preço foi reestruturado com a introdução de um novo plano Essentials por US$129 por mês. O Clearscope eliminou a restrição de funcionalidades nesse nível — todos os recursos estão disponíveis em todos os planos, sendo a distinção baseada em escala e limites de uso, não em restrições de capacidade.

O Clearscope é ideal para equipes de conteúdo SEO e agências que precisam otimizar conteúdo novo e existente, monitorar visibilidade na busca com IA e gerenciar grandes inventários de conteúdo com análises de decay e striking distance.$dl41p$,
  pros = ARRAY['Redigir com IA disponível em todos os planos — criação de conteúdo otimizada para SEO sem restrições', 'Visão Striking Distance identifica conteúdo próximo da primeira página para ganhos rápidos direcionados', 'Monitoramento de Content Decay sinaliza páginas em declínio antes que a perda de tráfego se agrave', 'Rastreamento de LLMs adiciona visibilidade na busca por IA ao lado dos dados tradicionais do Google', 'Novo plano Essentials a US$129/mês sem restrição de funcionalidades — acesso completo desde o nível inicial'],
  cons = ARRAY['Apenas pago a partir de US$129/mês — sem teste gratuito ou nível gratuito significativo', 'O rastreamento de LLMs é um recurso mais novo — cobertura e precisão em mecanismos de IA ainda em maturação', 'Conjunto de recursos focado em equipes de SEO — menos útil para redatores gerais sem contexto de SEO', 'Planos de nível superior necessários para monitoramento de inventário em larga escala em volume empresarial']
WHERE slug = 'clearscope' AND lang = 'pt';

-- ============================================================
-- 42. PERPLEXITY
-- ============================================================
UPDATE tools SET
  best_for         = $d42p$Busca com IA, pesquisa profunda, controle agêntico de computador, ferramentas de finanças e estudo$d42p$,
  description      = $d42p$A Pesquisa Profunda da Perplexity agora roda no Claude Opus 4.6. O Personal Computer para Mac adiciona recursos de controle agêntico para todos os usuários. Kimi K2.5 adicionado à pilha de inferência. Integração com Microsoft Teams e ferramentas de finanças e estudo lançadas.$d42p$,
  description_long = $dl42p$Perplexity é uma plataforma de busca e pesquisa com IA que responde a consultas com fontes citadas em vez de uma lista de links. É usada para pesquisa em tempo real, verificação de fatos, análise competitiva e estudo acadêmico por indivíduos, pesquisadores e equipes de negócios. A pilha de modelos da Perplexity é multi-provedor, utilizando modelos da Anthropic, OpenAI, Mistral e outros.

A Pesquisa Profunda, capacidade de pesquisa de longo prazo da Perplexity, foi atualizada para rodar no Claude Opus 4.6, refletindo melhor desempenho em benchmarks para tarefas de pesquisa complexas e de múltiplas etapas. A Pesquisa Profunda realiza buscas web autônomas, sintetiza descobertas de múltiplas fontes e produz relatórios estruturados com citações embutidas — adequada para tarefas que de outra forma exigiriam horas de pesquisa manual.

O Personal Computer para Mac é um aplicativo Mac nativo que estende a Perplexity além da busca para controle agêntico do computador. Pode interagir com conteúdo na tela, automatizar tarefas na área de trabalho e responder a instruções em linguagem natural que exigem operar o computador em si. O recurso está disponível para todos os usuários — não restrito a assinantes Pro. A Perplexity também ficou disponível como aplicativo do Microsoft Teams, habilitando a mesma capacidade de agente de controle de computador no ambiente empresarial do Teams.

Kimi K2.5, o modelo de código aberto da Moonshot AI, foi adicionado à pilha de inferência da Perplexity como opção de modelo selecionável. Isso amplia as escolhas de modelos disponíveis para usuários que executam consultas na plataforma e introduz uma alternativa de código aberto capaz aos modelos fechados já oferecidos.

As ferramentas de finanças incluem uma aba de composição de ETFs que exibe dados de composição de portfólio diretamente nos resultados de busca da Perplexity, útil para investidores e analistas. As ferramentas de estudo no aplicativo iOS podem gerar questionários e flashcards de qualquer conteúdo — artigos, documentos ou páginas — para aprendizado por repetição espaçada.

Perplexity é gratuita para uso padrão. O plano Pro custa US$20 por mês e adiciona Pesquisa Profunda, seleção de modelo incluindo Claude Opus 4.6 e limites de uso mais altos. A Perplexity é ideal para pesquisadores, estudantes e profissionais que precisam de respostas citadas em tempo real e querem busca com IA com capacidades agênticas além de uma interface de chat padrão.$dl42p$,
  pros = ARRAY['Pesquisa Profunda no Claude Opus 4.6 — relatórios de pesquisa em múltiplas etapas com citações para consultas complexas', 'Personal Computer para Mac: controle agêntico da área de trabalho disponível para todos os usuários, não apenas Pro', 'Modelo de código aberto Kimi K2.5 adicionado à pilha de inferência ao lado de Claude, GPT-4o e outros', 'Aba de ETFs e geração de quiz/flashcards no iOS — integrações práticas de finanças e estudo', 'Aplicativo Microsoft Teams traz o Perplexity Computer para ambientes empresariais'],
  cons = ARRAY['Pesquisa Profunda e seleção de modelo requerem plano Pro a US$20/mês', 'O controle agêntico do computador no Mac é novo — confiabilidade em tarefas complexas de múltiplas etapas varia', 'A busca da Perplexity pode exibir citações imprecisas — verificação de fontes ainda é necessária', 'Dados financeiros (composição de ETFs) são informativos e podem estar atrasados em relação a fontes de dados de mercado em tempo real']
WHERE slug = 'perplexity' AND lang = 'pt';

-- ============================================================
-- 43. MICROSOFT COPILOT
-- ============================================================
UPDATE tools SET
  best_for         = $d43p$Assistente de IA, delegação autônoma de tarefas, integração com M365, IA no Windows$d43p$,
  description      = $d43p$O Copilot Cowork lança delegação agêntica de tarefas no iOS/Android. O Microsoft 365 E7 + Agent 365 agrupa o Copilot em toda a empresa. A atualização do Windows 11 de maio de 2026 adiciona monitoramento de agente IA na barra de tarefas e melhorias no Explorador de Arquivos.$d43p$,
  description_long = $dl43p$O Microsoft Copilot é a plataforma de assistente de IA da Microsoft integrada ao Windows, Microsoft 365, mobile e web. É alimentado por modelos da OpenAI e da Microsoft Research, e serve como a principal interface de IA em todo o ecossistema Microsoft — da barra de tarefas do Windows ao Outlook, Teams, Word, Excel e automação empresarial através da Power Platform.

O Copilot Cowork, parte do programa Frontier, introduz delegação autônoma agêntica de tarefas. Disponível no iOS e Android, permite que os usuários atribuam tarefas reais — agendamento, pesquisa, rascunho, ações baseadas na web — e o Copilot as execute em segundo plano sem supervisão contínua do usuário. Isso move o Copilot de um assistente de chat que responde a consultas para um agente delegado que conclui tarefas de múltiplas etapas de forma independente.

O Microsoft 365 E7 é um novo nível de licenciamento empresarial que agrupa o Microsoft 365 E5, Copilot e Agent 365 em um único plano. O Agent 365 é a camada de agente empresarial que permite às organizações construir, implantar e governar agentes de IA em seus ambientes Microsoft. Essa consolidação simplifica a aquisição para grandes empresas que anteriormente precisavam de SKUs separados para M365, Copilot e capacidades de automação.

O Copilot Insights no Outlook Classic traz inteligência de e-mail gerada por IA para o cliente de desktop tradicional do Outlook. Os usuários podem perguntar ao Copilot sobre texto de e-mail selecionado, receber resumos gerados por IA do histórico de threads e identificar itens de ação sem precisar mudar para o novo aplicativo Outlook ou a versão web.

A atualização do Windows 11 de maio de 2026 incorporou o Copilot mais profundamente no sistema operacional. Um indicador de monitoramento de agente IA aparece na barra de tarefas quando o Copilot está executando ativamente uma tarefa em segundo plano, fornecendo visibilidade de status. O Explorador de Arquivos recebeu busca aprimorada por IA e sugestões de gerenciamento de arquivos. O modo Xbox adiciona uma camada de interface otimizada para jogos acessível diretamente pelo Windows.

O Microsoft Copilot é gratuito com uma conta Microsoft em capacidade básica. Os planos Microsoft 365 Personal e Família incluem o Copilot a partir de US$6 por usuário por mês. Os planos empresariais variam. O Copilot é ideal para organizações já no ecossistema Microsoft que desejam assistência de IA unificada, agentes de tarefas autônomos e integração profunda com aplicativos M365.$dl43p$,
  pros = ARRAY['Copilot Cowork: delegação autônoma de tarefas no iOS/Android — execução real de agente em segundo plano', 'M365 E7 agrupa Copilot + Agent 365 com M365 E5 — aquisição empresarial simplificada', 'Copilot Insights no Outlook Classic — inteligência de e-mail com IA sem mudar para o novo aplicativo', 'Integração com Windows 11: monitoramento de agente na barra de tarefas e melhorias de IA no Explorador de Arquivos', 'Nível gratuito disponível com uma conta Microsoft — menor barreira de entrada entre os principais assistentes de IA'],
  cons = ARRAY['Copilot Cowork (programa Frontier) ainda em acesso antecipado — não amplamente disponível ainda', 'Capacidades empresariais completas requerem M365 E7 ou licenciamento Copilot separado com custo significativo', 'A qualidade varia significativamente entre os aplicativos M365 — mais refinado no Teams e Word do que no Excel', 'Recursos agênticos no mobile são novos — confiabilidade e escopo das tarefas suportadas ainda limitados']
WHERE slug = 'microsoft-copilot' AND lang = 'pt';

-- ============================================================
-- 44. STABLE DIFFUSION
-- ============================================================
UPDATE tools SET
  best_for         = $d44p$Geração de imagens de código aberto, inferência local, vídeo com IA, geração de áudio$d44p$,
  description      = $d44p$A Stability AI quitou suas dívidas e assinou uma parceria com a EA em fevereiro de 2026. O SD3.5 é otimizado para NVIDIA TensorRT/FP8 e AMD ONNX. SV4D 2.0 e Stable Audio Open Small lançados com parceria Arm.$d44p$,
  description_long = $dl44p$Stable Diffusion é a série de modelos de geração de imagens de código aberto da Stability AI, amplamente usada para inferência local, ajuste fino e implantação comercial. Ao contrário dos modelos de código fechado, os pesos do Stable Diffusion são disponibilizados publicamente e podem ser executados em hardware de consumidor, tornando-o a base de um grande ecossistema de ferramentas de terceiros, ajustes finos da comunidade e aplicações comerciais construídas sobre os modelos base.

A Stability AI passou por uma recuperação corporativa significativa no início de 2026. A dívida da empresa foi totalmente eliminada, resolvendo a instabilidade financeira que ameaçou as operações durante 2024 e 2025. Uma parceria estratégica com a Electronic Arts (EA) foi assinada em fevereiro de 2026, fornecendo tanto capital quanto um contexto de implantação comercial de alto perfil para os modelos da Stability AI. James Cameron se juntou como consultor, adicionando credibilidade da indústria ao esforço de geração de vídeo da empresa.

O desempenho do SD3.5 foi melhorado através de otimizações para NVIDIA TensorRT com quantização FP8. Essa combinação oferece velocidades de inferência mais rápidas e requisitos de VRAM significativamente menores em GPUs da série RTX, tornando o SD3.5 mais prático em hardware de consumidor de médio porte do que os modelos grandes anteriores. O suporte à AMD foi expandido através de variantes de modelo otimizadas com ONNX projetadas para GPUs Radeon e aceleradores Ryzen AI, ampliando a base de hardware endereçável além da NVIDIA.

O SV4D 2.0 (Stable Video 4D 2.0) é um novo lançamento de modelo de geração de vídeo focado em saídas de maior qualidade para cenas do mundo real — melhorando a coerência, a qualidade do movimento e a consistência do sujeito em comparação com o lançamento original do SV4D. O Stable Audio Open Small, um modelo compacto de geração de áudio, foi disponibilizado como código aberto em parceria com a Arm e é otimizado para inferência eficiente em hardware baseado em Arm.

Todos os modelos Stable Diffusion permanecem gratuitos e de código aberto. A plataforma Stability AI oferece uma API freemium para inferência hospedada sem configuração local. O Stable Diffusion é ideal para desenvolvedores, pesquisadores e profissionais criativos que precisam de geração de imagens e vídeos de código aberto que podem executar localmente, ajustar ou implantar comercialmente sem taxas por imagem.$dl44p$,
  pros = ARRAY['Totalmente de código aberto — pesos disponíveis gratuitamente para uso local, ajuste fino e implantação comercial', 'SD3.5 otimizado para NVIDIA TensorRT/FP8: inferência mais rápida e menor VRAM em GPUs RTX', 'Variantes ONNX otimizadas para AMD para Radeon e Ryzen AI — não exclusivo para NVIDIA', 'SV4D 2.0 oferece saída de vídeo de maior qualidade para cenas do mundo real em relação ao SV4D original', 'Stable Audio Open Small disponibilizado como código aberto com Arm — geração de áudio disponível em hardware de borda'],
  cons = ARRAY['A configuração local requer conhecimento técnico — não adequada para usuários não técnicos', 'Os melhores resultados no SD3.5 ainda requerem uma GPU capaz; a inferência apenas com CPU é lenta', 'O ecossistema de código aberto é fragmentado — muitos forks, versões e interfaces com qualidade inconsistente', 'Histórico de instabilidade corporativa da Stability AI — a sustentabilidade da parceria ainda precisa ser comprovada']
WHERE slug = 'stable-diffusion' AND lang = 'pt';

-- ============================================================
-- 45. CAPCUT
-- ============================================================
UPDATE tools SET
  best_for         = $d45p$Edição de vídeo com IA, auto-edição, criação de histórias, exportação em 2K/4K$d45p$,
  description      = $d45p$O CapCut retornou aos EUA em janeiro de 2026 via TikTok USDS Joint Venture LLC com participação da Oracle/Silver Lake/MGX. Auto-Edição com IA, AI Story Maker com integração ao Google Veo 3 e exportação em 2K/4K lançados em 2026.$d45p$,
  description_long = $dl45p$CapCut é um aplicativo de edição de vídeo para consumidores e criadores originalmente desenvolvido pela ByteDance. É amplamente usado para produção de vídeos curtos, criação de conteúdo para redes sociais e, cada vez mais, para fluxos de trabalho de edição assistidos por IA. O CapCut conquistou uma grande base de usuários por meio da integração estreita com o ecossistema criativo do TikTok.

A disponibilidade do CapCut nos Estados Unidos foi restaurada em 22 de janeiro de 2026 após uma resolução legal e de propriedade. O aplicativo agora é operado pela TikTok USDS Joint Venture LLC, uma nova estrutura corporativa com a Oracle, Silver Lake e MGX detendo a maioria das ações. Essa estrutura foi estabelecida para satisfazer os requisitos de segurança nacional dos EUA em relação ao tratamento de dados. Todos os usuários americanos foram migrados para o novo aplicativo "CapCut US" até março de 2026, substituindo a versão anterior operada pela ByteDance.

A Auto-Edição com IA é um recurso de 2026 que analisa a filmagem carregada usando reconhecimento de cenas e transcrição de fala, atribui pontuações de qualidade aos clipes e monta automaticamente um corte com base no ritmo e na relevância do conteúdo. Os usuários podem revisar e substituir a edição automática ou usá-la como ponto de partida para refinamento manual. Isso reduz significativamente o tempo necessário para produzir um primeiro corte a partir de filmagens brutas.

O AI Story Maker integra o Google Veo 3 para geração de vídeo com IA diretamente no CapCut. Os usuários descrevem uma cena ou narrativa em texto, e o Story Maker gera segmentos de vídeo correspondentes usando o Veo 3, que podem ser combinados com filmagens capturadas ou publicados como conteúdo gerado por IA independente.

A qualidade de exportação melhorou com a adição de opções de exportação em 2K e 4K, elevando o limite de saída para casos de uso profissionais e semiprofissionais. O CapCut permanece gratuito para os principais recursos de edição. O plano Pro custa US$9,99 por mês e adiciona créditos de IA, armazenamento em nuvem, modelos premium e níveis de qualidade de exportação mais altos.

O CapCut é ideal para criadores de conteúdo para redes sociais, produtores de vídeos curtos e indivíduos que precisam de edição rápida assistida por IA com configuração técnica mínima, e para criadores que desejam acesso à geração de vídeo Google Veo 3 dentro de um ambiente de edição amigável ao consumidor.$dl45p$,
  pros = ARRAY['Auto-Edição com IA: reconhecimento de cenas, transcrição de fala e pontuação de qualidade automatizam os primeiros cortes', 'AI Story Maker com integração ao Google Veo 3 — geração de vídeo com IA dentro do aplicativo de edição', 'Exportação em 2K e 4K agora disponível — maior qualidade de saída para uso semiprofissional', 'Nível gratuito cobre os principais recursos de edição — acessível sem assinatura', 'Status legal nos EUA resolvido — operação estável via TikTok USDS JV com Oracle/Silver Lake/MGX'],
  cons = ARRAY['A estrutura corporativa nos EUA é nova — governança de dados de longo prazo e estabilidade de propriedade não comprovadas', 'A Auto-Edição com IA requer revisão — cortes automatizados frequentemente precisam de ajuste manual para resultados de qualidade', 'Créditos de IA para Story Maker e recursos de IA são consumidos rapidamente no nível gratuito', 'Pro a US$9,99/mês é competitivo, mas acesso completo a 2K/4K e IA requerem o plano pago']
WHERE slug = 'capcut' AND lang = 'pt';

-- ============================================================
-- 46. DESCRIPT
-- ============================================================
UPDATE tools SET
  best_for         = $d46p$Edição de vídeo com IA, clonagem de voz, dublagem, automação com MCP$d46p$,
  description      = $d46p$O Underlord AI do Descript agora usa modelos de raciocínio para edições complexas, com geração de vídeo via Veo 3.1 e Sora 2. A dublagem foi expandida para 45 idiomas com sincronização labial e 21 novas vozes de estoque.$d46p$,
  description_long = $dl46p$Descript é uma plataforma de edição de vídeo e podcast com IA que trata áudio e vídeo como um documento de texto. Os usuários editam a mídia editando uma transcrição — cortar palavras exclui a filmagem correspondente — e o Underlord, a camada de IA integrada do Descript, lida com tarefas complexas de produção automaticamente. É usado por podcasters, criadores de vídeo, profissionais de marketing e equipes de produção.

O Underlord agora roda em modelos de raciocínio, incluindo o Gemini 3 selecionável, permitindo que ele lide com instruções de edição em múltiplas etapas que anteriormente exigiam execução manual. Os usuários podem descrever sequências complexas — cortar todas as pausas acima de um segundo, remover palavras de preenchimento, adicionar uma quebra de capítulo antes de cada mudança de tema — e o Underlord as executa como uma cadeia coordenada em vez de uma série de ações individuais.

A geração de vídeo a partir de prompts de texto agora está disponível via Veo 3.1 e Sora 2 integrados, permitindo que os criadores gerem filmagens B-roll ou de cenas diretamente no Descript sem mudar para uma ferramenta externa. A sincronização labial para vídeo dublado e traduzido foi adicionada junto com os recursos de geração, melhorando o realismo para conteúdo multilíngue.

A tradução de legendas e dublagem expandiu significativamente: 39 idiomas adicionais agora são suportados para legendas, e 6 novos idiomas ganharam suporte completo de dublagem incluindo síntese de voz. O Descript também adicionou 21 novas vozes de estoque para narração com IA, trazendo a biblioteca total para mais de 1.000.

A integração com MCP (Model Context Protocol) permite que o Claude e outros agentes de IA que suportam MCP controlem o Descript via prompts em linguagem natural. Isso permite fluxos de trabalho de edição automatizados onde um agente externo pode emitir comandos de edição, executar exportações ou gerenciar projetos de forma programática.

O Descript é ideal para criadores de vídeo e podcast que desejam edição assistida por IA no nível da transcrição, e para equipes que produzem conteúdo multilíngue ou dublado que precisam de sincronização labial e síntese de voz integradas.$dl46p$,
  pros = ARRAY['Underlord em modelos de raciocínio lida com edições complexas em múltiplas etapas como uma única instrução', 'Integração de Veo 3.1 e Sora 2 para B-roll texto-para-vídeo sem sair do aplicativo', 'Dublagem com sincronização labial agora cobre 45 idiomas — uma das faixas mais amplas disponíveis', 'Integração com MCP: Claude e outros agentes podem controlar o Descript programaticamente', '21 novas vozes de estoque adicionadas; mais de 1.000 no total para narração com IA'],
  cons = ARRAY['Edições com modelos de raciocínio podem ser mais lentas do que a execução manual para tarefas simples de uma única etapa', 'Os créditos de geração de vídeo são separados da assinatura principal e podem gerar custos adicionais', 'A qualidade da sincronização labial varia por idioma — melhores resultados nos 6 idiomas de dublagem totalmente suportados', 'A integração com MCP requer configuração técnica; não acessível para usuários não desenvolvedores']
WHERE slug = 'descript' AND lang = 'pt';

-- ============================================================
-- 47. GAMMA
-- ============================================================
UPDATE tools SET
  best_for         = $d47p$Apresentações com IA, materiais de marketing, infográficos, criação de conteúdo programático$d47p$,
  description      = $d47p$O Gamma lançou uma API de Geração GA para criação de conteúdo programático e o Gamma Imagine para gráficos de marketing com IA. Certificação SOC 2 Tipo II. O plano gratuito inclui 400 créditos; planos pagos a partir de US$8/mês anuais.$d47p$,
  description_long = $dl47p$Gamma é uma plataforma de criação de apresentações e documentos com IA que gera slides estruturados, documentos e páginas web a partir de prompts de texto. É usado por profissionais de marketing, fundadores, educadores e consultores que precisam de conteúdo visual com design profissional sem formatação manual slide a slide. O Gamma lida com layout, design e posicionamento de imagens automaticamente a partir do prompt inicial.

A API de Geração atingiu disponibilidade geral em janeiro de 2026, permitindo criação de conteúdo programático em escala. Desenvolvedores e plataformas de marketing podem agora chamar a API do Gamma para gerar apresentações, documentos ou páginas automaticamente — por exemplo, gerando um deck personalizado para cada prospecto de vendas ou produzindo um modelo de relatório para cada cliente sem intervenção humana por saída.

O Gamma Imagine, lançado em março de 2026, é um novo produto independente de geração de imagens com IA voltado para a criação de ativos de marketing. Ele produz gráficos, infográficos, gráficos para redes sociais e visuais promocionais diretamente dentro da plataforma Gamma. Isso posiciona o Gamma como um concorrente direto dos recursos de imagem com IA do Canva, com foco particular em visualização de dados e gráficos de marketing estruturados em vez de geração artística livre.

Um novo nível Ultra foi introduzido junto com o Gamma Imagine, oferecendo limites de geração mais altos, processamento prioritário e acesso aos recursos de geração de imagens. A plataforma obteve certificação SOC 2 Tipo II, tornando-a adequada para equipes empresariais com requisitos de conformidade sobre segurança de dados e confiança em fornecedores.

Preços em 2026: plano gratuito com 400 créditos, Plus a US$8/mês anual, Pro a US$15/mês anual e Ultra com preço personalizado ou de nível superior. O nível gratuito é generoso para usuários individuais que precisam de decks ocasionais.

O Gamma é ideal para profissionais de marketing, vendedores e fundadores que precisam de apresentações geradas por IA e gráficos de marketing rapidamente, e para equipes de desenvolvimento que desejam automatizar a geração de apresentações via API.$dl47p$,
  pros = ARRAY['API de Geração agora GA — criação de conteúdo programático em escala para qualquer plataforma', 'Gamma Imagine: geração de imagens com IA para gráficos, infográficos e gráficos sociais integrada', 'Certificação SOC 2 Tipo II — adequado para equipes empresariais com requisitos de conformidade', 'Nível gratuito inclui 400 créditos — suficiente para uso individual ocasional', 'Lida com layout e design automaticamente — sem necessidade de formatação slide a slide'],
  cons = ARRAY['O preço do nível Ultra não é divulgado publicamente — requer consulta para planos empresariais', 'A qualidade de imagem do Gamma Imagine é otimizada para gráficos estruturados, não para geração artística', 'O acesso à API requer configuração de desenvolvedor — não é self-service para usuários não técnicos', 'Os créditos do plano gratuito são consumidos rapidamente ao gerar múltiplas apresentações completas']
WHERE slug = 'gamma' AND lang = 'pt';

-- ============================================================
-- 48. LEONARDO AI
-- ============================================================
UPDATE tools SET
  best_for         = $d48p$Geração de imagens com IA, esboço para imagem, imagem para vídeo, API empresarial$d48p$,
  description      = $d48p$O Leonardo AI lançou a Creative Engine API para replicação empresarial, se renomeou como "Yours to Create" e adicionou o Motion 2.0 com sincronização labial aprimorada. A conversão de esboço para imagem em tempo real com atualizações abaixo de um segundo é líder de mercado em maio de 2026.$d48p$,
  description_long = $dl48p$Leonardo AI é uma plataforma de geração de imagens e vídeos com IA usada por desenvolvedores de jogos, artistas conceituais, profissionais de marketing e estúdios criativos. Oferece uma interface web junto com uma API robusta, combinando pipelines de modelos proprietários com integrações de modelos de terceiros. A plataforma é construída para produção criativa de alto volume e fluxos de trabalho de geração de ativos profissionais.

A Creative Engine API, lançada em 14 de abril de 2026, é uma API de nível empresarial que permite extração de código e replicação dos pipelines de geração do Leonardo. As empresas podem usá-la para incorporar as capacidades de geração de imagens e vídeos do Leonardo em ferramentas proprietárias, plataformas internas e fluxos de trabalho de produção sem expor os usuários finais diretamente à interface do Leonardo.

O Leonardo passou por um rebranding completo em abril de 2026, adotando a identidade "Yours to Create" desenvolvida pela agência Koto. O rebranding acompanhou o lançamento do novo pipeline Alchemy v4 e da arquitetura Phoenix — modelos de geração atualizados que melhoram a qualidade em saídas fotorrealistas e estilizadas e reduzem as taxas de artefatos em composições complexas.

As integrações de modelos de terceiros expandiram significativamente: Veo 3, Sora 2, Kling e Seedance agora são acessíveis diretamente através da interface e API do Leonardo, permitindo que os usuários executem múltiplos modelos líderes de geração de vídeo a partir de uma única plataforma sem assinaturas separadas.

O Motion 2.0, o sistema de imagem para vídeo da plataforma, recebeu atualizações melhorando a coerência do movimento em clipes mais longos, permitindo durações de saída mais longas e adicionando sincronização labial aprimorada para casos de uso de animação de personagens e talking heads. A conversão de esboço para imagem atingiu velocidades de atualização em tempo real abaixo de um segundo, tornando-o a implementação mais rápida disponível em maio de 2026.

O Leonardo AI é ideal para profissionais criativos, desenvolvedores de jogos e equipes empresariais que precisam de geração de imagens e vídeos em alto volume com acesso a múltiplos modelos líderes a partir de uma única API e interface.$dl48p$,
  pros = ARRAY['Creative Engine API: extração de código empresarial e replicação de pipelines de geração', 'Alchemy v4 e arquitetura Phoenix reduzem artefatos em saídas fotorrealistas complexas', 'Integra Veo 3, Sora 2, Kling e Seedance — múltiplos modelos top em uma única plataforma', 'Esboço para imagem com atualizações em tempo real abaixo de um segundo — velocidade líder de mercado em maio de 2026', 'Motion 2.0: melhor coerência de movimento, clipes mais longos e sincronização labial aprimorada para vídeo'],
  cons = ARRAY['O preço da Creative Engine API empresarial não está listado publicamente — requer contato de vendas', 'Múltiplas integrações de modelos tornam a plataforma complexa de navegar para novos usuários', 'O consumo de créditos varia por modelo — Veo 3 e Sora 2 são significativamente mais caros por geração', 'O nível gratuito tem alocação diária limitada de tokens — insuficiente para uso em volume profissional']
WHERE slug = 'leonardo-ai' AND lang = 'pt';

-- ============================================================
-- 49. COMFYUI
-- ============================================================
UPDATE tools SET
  best_for         = $d49p$Geração de imagens com IA de código aberto, fluxos de trabalho em nós, GPU local, vídeo em 4K$d49p$,
  description      = $d49p$O ComfyUI adicionou uma Visão de App para iniciantes ao lado do editor de nós, quantização NVFP4 para 2,5x de velocidade em GPUs RTX 50 Series, suporte AMD ROCm e nós para Veo 3/Kling 3.0. Gratuito e de código aberto.$d49p$,
  description_long = $dl49p$ComfyUI é uma interface gratuita e de código aberto baseada em nós para executar modelos de geração de imagens e vídeos com IA localmente. Os usuários constroem fluxos de trabalho conectando nós — cada nó executa uma operação como carregar um modelo, aplicar um amostrador ou codificar um prompt — dando controle preciso sobre cada etapa do processo de geração. É a principal interface para usuários que executam Stable Diffusion e outros modelos de peso aberto em seu próprio hardware.

A Visão de App, uma grande adição de UX, fornece uma interface simplificada que oculta o grafo de nós e apresenta uma interface limpa baseada em formulários para usuários que não precisam modificar o fluxo de trabalho subjacente. A Visão de Nós permanece totalmente disponível para usuários avançados. Essa abordagem de modo duplo torna o ComfyUI acessível para iniciantes sem remover nenhuma capacidade de usuários experientes.

A quantização NVFP4, introduzida para GPUs NVIDIA RTX 50 Series, permite que a geração seja executada 2,5 vezes mais rápida enquanto reduz o consumo de VRAM em aproximadamente 60%. Isso significa que usuários com placas RTX 50 Series podem executar modelos maiores que anteriormente exigiam hardware mais caro, ou executar modelos existentes em velocidades substancialmente mais altas.

O suporte oficial AMD ROCm chegou para o aplicativo Windows Desktop, tornando o ComfyUI totalmente suportado em GPUs AMD no Windows pela primeira vez sem exigir soluções alternativas manuais. Novos nós para Veo 3, Veo 3 Lite e Kling 3.0 foram adicionados, junto com suporte de saída 4K para pipelines de geração de vídeo ByteDance, Veo e Kling. O RTX Video Super Resolution permite upscaling 4K em tempo real de vídeo gerado em hardware NVIDIA suportado.

A compatibilidade com Python 3.13 foi adicionada, mantendo o ComfyUI atualizado com a versão mais recente do Python e garantindo compatibilidade com pacotes mais novos no ecossistema Python.

O ComfyUI é ideal para usuários avançados, pesquisadores e desenvolvedores que desejam controle total sobre fluxos de trabalho de geração de imagens e vídeos com IA, executam modelos localmente em seu próprio hardware e precisam de suporte para os modelos de peso aberto e de terceiros mais recentes.$dl49p$,
  pros = ARRAY['Completamente gratuito e de código aberto — sem assinatura, sem limites de crédito, sem dependência de fornecedor', 'Visão de App: interface de formulário amigável para iniciantes sem remover o grafo de nós completo para usuários avançados', 'Quantização NVFP4: geração 2,5x mais rápida e 60% menos VRAM em GPUs RTX 50 Series', 'Suporte oficial AMD ROCm no Windows — sem soluções alternativas manuais necessárias', 'Nós para Veo 3, Kling 3.0 e suporte a vídeo 4K via pipelines ByteDance/Veo/Kling'],
  cons = ARRAY['A interface baseada em nós tem uma curva de aprendizado acentuada para usuários novos na geração baseada em fluxo de trabalho', 'Requer hardware GPU local — não adequado para usuários sem uma placa gráfica capaz', 'Nós personalizados mantidos pela comunidade variam em qualidade e podem conflitar entre si', 'Sem opção de nuvem — toda computação é local; hardware de alto nível necessário para modelos grandes']
WHERE slug = 'comfyui' AND lang = 'pt';

-- ============================================================
-- 50. META AI
-- ============================================================
UPDATE tools SET
  best_for         = $d50p$Assistente de IA, integração com WhatsApp/Instagram, IA por câmera, chats em grupo$d50p$,
  description      = $d50p$O Meta AI roda no modelo Llama 4 Muse Spark com interrupções naturais e mistura de idiomas. O Live AI usa sua câmera para perguntas em tempo real. Implantado no WhatsApp, Instagram, Facebook, Messenger e Threads.$d50p$,
  description_long = $dl50p$Meta AI é o assistente conversacional de IA da Meta, alimentado pela família Llama 4 e implantado em todo o ecossistema de plataformas da Meta — WhatsApp, Instagram, Facebook, Messenger e Threads. Ao contrário dos assistentes de IA autônomos, o Meta AI está incorporado diretamente nos aplicativos que bilhões de usuários já usam diariamente, aparecendo nas barras de pesquisa, chats em grupo e feeds de publicações sem exigir um aplicativo separado ou assinatura.

O modelo Muse Spark, que alimenta a versão atual do Meta AI, é projetado para comportamento conversacional natural. Suporta interrupções no meio da conversa — os usuários podem interromper uma resposta e redirecionar a conversa sem perder contexto — e lida com mudanças de tema e mistura de idiomas de forma fluida, incluindo a alternância entre idiomas na mesma conversa sem instrução explícita.

O Live AI é um recurso baseado em câmera que permite resposta visual a perguntas em tempo real. Os usuários apontam a câmera do dispositivo para um objeto, cena, texto ou produto e fazem perguntas ao Meta AI sobre o que ele vê. O recurso funciona em tempo real sem exigir uma etapa de captura de tela ou upload, permitindo casos de uso como ler rótulos em uma loja, identificar plantas ou entender sinalização em um idioma estrangeiro.

Os chats paralelos em conversas em grupo oferecem aos usuários um canal privado para fazer perguntas ao Meta AI fundamentadas na discussão do grupo em andamento — por exemplo, pedindo um resumo do que foi decidido, ou obtendo uma recomendação com base em um destino que o grupo está debatendo — sem publicar a resposta da IA para todo o grupo.

O Meta AI está implantado em todas as principais plataformas Meta na barra de pesquisa, em chats em grupo e individuais e no feed. O Hatch, um agente de IA interno, está em testes para tarefas mais agênticas. Recursos de compras agênticas estão planejados para o Instagram, permitindo que os usuários obtenham recomendações de produtos e concluam compras através do Meta AI dentro do aplicativo.

O Meta AI é ideal para usuários já ativos nas plataformas Meta que desejam um assistente de IA integrado aos seus aplicativos de comunicação e redes sociais existentes, sem necessidade de aplicativo adicional ou assinatura.$dl50p$,
  pros = ARRAY['Gratuito sem assinatura — disponível para todos os usuários das plataformas Meta sem necessidade de cadastro', 'Implantado no WhatsApp, Instagram, Facebook, Messenger e Threads em uma conta', 'Live AI: resposta visual a perguntas em tempo real baseada em câmera sem upload de capturas de tela', 'Muse Spark suporta interrupções naturais, mudanças de tema e mistura de idiomas no meio da conversa', 'Chats paralelos em conversas em grupo: respostas privadas de IA fundamentadas na discussão do grupo'],
  cons = ARRAY['Capacidades ficam atrás dos assistentes de IA dedicados como ChatGPT ou Claude para tarefas complexas', 'Os dados estão vinculados à conta Meta — as conversas podem ser usadas para treinar ou melhorar os modelos da Meta', 'Sem experiência prioritária no desktop — principalmente projetado para uso mobile dentro dos aplicativos Meta', 'Recursos agênticos de compras e Hatch ainda em testes — não amplamente disponíveis ainda']
WHERE slug = 'meta-ai' AND lang = 'pt';
