-- Batch 1 PT: amazon-q-developer, dall-e-3, v0-by-vercel, manus, devin, chatgpt, claude, grok, deepseek, cursor

UPDATE tools SET
  best_for         = $d1p$Desenvolvedores que trabalham no ecossistema AWS$d1p$,
  description      = $d1p$Amazon Q Developer é um assistente de IA para código, profundamente integrado ao ecossistema AWS. Oferece autocompleção de código, geração de funções e análise de segurança diretamente na IDE.$d1p$,
  description_long = $dl1p$Amazon Q Developer foi criado para equipes que trabalham intensamente com AWS. Fornece sugestões de código contextuais, pode gerar funções Lambda completas e analisa automaticamente o código em busca de vulnerabilidades de segurança. Nota: a Amazon está migrando usuários para o Kiro como sucessor desta ferramenta.$dl1p$,
  pros = ARRAY['Integração nativa com AWS', 'Análise de segurança automática', 'Geração de código Lambda', 'Gratuito no nível gratuito da AWS'],
  cons = ARRAY['Limitado fora do ecossistema AWS', 'Migração para o Kiro em andamento', 'Menos versátil que o GitHub Copilot']
WHERE slug = 'amazon-q-developer' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d2p$Criação de imagens a partir de descrições textuais detalhadas$d2p$,
  description      = $d2p$DALL-E 3 é o modelo de geração de imagens da OpenAI, reconhecido por seguir instruções textuais com alta precisão. Está integrado diretamente no ChatGPT e na API da OpenAI.$d2p$,
  description_long = $dl2p$DALL-E 3 destaca-se pela capacidade de interpretar prompts complexos e detalhados, produzindo imagens que correspondem fielmente à descrição do usuário. Ao contrário de versões anteriores, compreende conceitos abstratos e pode representar texto dentro das imagens. Disponível via ChatGPT Plus e API, ideal para designers, criadores de conteúdo e desenvolvedores que precisam de imagens de qualidade profissional.$dl2p$,
  pros = ARRAY['Excelente seguimento de instruções', 'Integrado no ChatGPT', 'Suporte a texto nas imagens', 'API disponível'],
  cons = ARRAY['Moderação de conteúdo rigorosa', 'Sem controle granular de estilo', 'Custo elevado via API']
WHERE slug = 'dall-e-3' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d3p$Geração rápida de componentes de UI com React$d3p$,
  description      = $d3p$O v0 da Vercel é uma ferramenta de IA que gera componentes de UI em React e Tailwind CSS a partir de descrições de texto, permitindo iterar designs visualmente sem codificar manualmente.$d3p$,
  description_long = $dl3p$O v0 é voltado para desenvolvedores frontend e designers que querem criar protótipos de interfaces rapidamente. O modelo gera código React pronto para copiar, usando Shadcn/UI e Tailwind CSS. Você pode descrever o componente em linguagem natural, ver uma prévia em tempo real e iterar com novas instruções. Integra-se diretamente ao ecossistema Vercel para implantações rápidas.$dl3p$,
  pros = ARRAY['Gerador de código React funcional', 'Prévia em tempo real', 'Integração com Vercel', 'Usa Shadcn/UI e Tailwind'],
  cons = ARRAY['Limitado a componentes React/Next.js', 'Créditos gratuitos limitados', 'Revisão manual do código necessária']
WHERE slug = 'v0-by-vercel' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d4p$Agente autônomo para tarefas complexas de pesquisa e desenvolvimento$d4p$,
  description      = $d4p$Manus é um agente de IA autônomo capaz de executar tarefas de múltiplas etapas no navegador, incluindo pesquisa, análise de dados e geração de relatórios sem supervisão constante.$d4p$,
  description_long = $dl4p$Manus se diferencia dos assistentes de chat tradicionais pela capacidade de agir de forma autônoma: pode navegar na web, executar código, analisar arquivos e completar fluxos de trabalho complexos. Especialmente útil para inteligência competitiva, preparação de relatórios e automação de tarefas que normalmente exigiriam várias ferramentas e tempo significativo.$dl4p$,
  pros = ARRAY['Autonomia real em tarefas complexas', 'Navega na web de forma independente', 'Executa código e analisa dados', 'Ideal para pesquisa aprofundada'],
  cons = ARRAY['Acesso limitado — lista de espera', 'Pode cometer erros sem supervisão', 'Custo elevado para uso intensivo']
WHERE slug = 'manus' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d5p$Engenheiros de software que automatizam tarefas de desenvolvimento$d5p$,
  description      = $d5p$Devin é o primeiro agente autônomo de engenharia de software, capaz de planejar e executar tarefas de programação completas. Acessível por $20/mês desde maio de 2026, antes $500.$d5p$,
  description_long = $dl5p$Desenvolvido pela Cognition AI, Devin pode resolver tickets do GitHub, escrever e executar código, depurar erros e fazer deploys de forma autônoma. Trabalha em seu próprio ambiente sandbox com acesso a navegador, terminal e editor de código. Em maio de 2026, a Cognition reduziu o preço de $500 para $20/mês, tornando-o acessível para desenvolvedores individuais.$dl5p$,
  pros = ARRAY['Agente completamente autônomo', 'Preço reduzido para $20/mês', 'Acesso a terminal, navegador e editor', 'Resolve tickets do GitHub'],
  cons = ARRAY['Requer supervisão para tarefas críticas', 'Pode gerar erros em código complexo', 'Ainda em fase inicial de desenvolvimento']
WHERE slug = 'devin' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d6p$Assistente de IA geral para escrita, código e análise$d6p$,
  description      = $d6p$O ChatGPT é o assistente de IA da OpenAI baseado nos modelos GPT. O GPT-5.5, agora o modelo padrão, reduz alucinações em 52% e está disponível em todos os planos.$d6p$,
  description_long = $dl6p$O ChatGPT é o assistente conversacional de IA mais utilizado no mundo. Com a chegada do GPT-5.5 como modelo padrão em maio de 2026, os usuários desfrutam de respostas mais precisas com 52% menos alucinações em comparação ao GPT-4o. Suporta texto, imagens, código, pesquisa na web em tempo real e memória de conversas. Disponível nos planos gratuito, Plus e Team.$dl6p$,
  pros = ARRAY['GPT-5.5 disponível em todos os planos', 'Memória de conversas', 'Pesquisa na web em tempo real', 'Ferramentas integradas: código, imagens, arquivos'],
  cons = ARRAY['Pode alucinar em dados muito específicos', 'Nível gratuito com limites de uso', 'Não ideal para tarefas muito técnicas sem contexto']
WHERE slug = 'chatgpt' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d7p$Redação avançada, análise de documentos e código seguro$d7p$,
  description      = $d7p$Claude é o assistente de IA da Anthropic, projetado com ênfase em segurança, raciocínio profundo e geração de texto de alta qualidade. A família Claude 4 inclui Opus, Sonnet e Haiku.$d7p$,
  description_long = $dl7p$Claude destaca-se pela capacidade de manter conversas longas com alta coerência, analisar documentos extensos e produzir texto que parece autêntico e matizado. Com o Claude 4 Opus, os usuários acessam o modelo mais avançado da Anthropic, capaz de tarefas complexas de raciocínio, codificação e análise. Especialmente valorizado em ambientes profissionais e acadêmicos.$dl7p$,
  pros = ARRAY['Alta coerência em conversas longas', 'Análise de documentos extensos', 'Ênfase em segurança e ética', 'Claude 4 Opus para tarefas complexas'],
  cons = ARRAY['Sem pesquisa na web nativa em alguns planos', 'Menos integrações de terceiros que o ChatGPT', 'Plano Pro é mais caro']
WHERE slug = 'claude' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d8p$Pesquisa e análise em tempo real com integração X (Twitter)$d8p$,
  description      = $d8p$Grok é o assistente de IA da xAI, integrado diretamente na plataforma X. Oferece acesso em tempo real a publicações e tendências com respostas diretas e não filtradas.$d8p$,
  description_long = $dl8p$Desenvolvido pela xAI (Elon Musk), o Grok tem acesso exclusivo ao fluxo de dados do X (antigo Twitter), permitindo responder perguntas sobre tendências atuais e notícias em tempo real. Com o Grok 3, o modelo melhorou significativamente no raciocínio matemático e científico. Inclui o modo Think para problemas complexos e DeepSearch para pesquisa web aprofundada. Disponível com assinatura X Premium.$dl8p$,
  pros = ARRAY['Acesso em tempo real ao X/Twitter', 'Modo Think para raciocínio avançado', 'DeepSearch para pesquisa web', 'Restrições de conteúdo menos rígidas'],
  cons = ARRAY['Requer assinatura X Premium', 'Menos preciso que o GPT-5.5 para tarefas técnicas', 'Integração limitada fora do X']
WHERE slug = 'grok' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d9p$Raciocínio avançado e tarefas técnicas com modelo de código aberto$d9p$,
  description      = $d9p$DeepSeek é um modelo de linguagem de código aberto desenvolvido na China, que compete com os melhores modelos proprietários em benchmarks de raciocínio, matemática e codificação.$d9p$,
  description_long = $dl9p$DeepSeek R1 e suas variantes surpreenderam a comunidade de IA ao oferecer desempenho comparável a modelos como GPT-4o e Claude 3.5, mas de forma gratuita e com código aberto. Particularmente forte em matemática, ciências e programação. Por ser open source, pode ser executado localmente ou implantado em infraestrutura própria. A versão de API é significativamente mais barata que a dos concorrentes.$dl9p$,
  pros = ARRAY['Código aberto e gratuito', 'Excelente em matemática e codificação', 'API muito econômica', 'Pode ser executado localmente'],
  cons = ARRAY['Preocupações de privacidade — dados em servidores chineses', 'Interface menos refinada que o ChatGPT', 'Atualizações menos frequentes']
WHERE slug = 'deepseek' AND lang = 'pt';

UPDATE tools SET
  best_for         = $d10p$Desenvolvimento de software assistido por IA em um editor nativo$d10p$,
  description      = $d10p$Cursor é um editor de código baseado no VS Code com IA profundamente integrada, que permite gerar, editar e refatorar código através de instruções em linguagem natural.$d10p$,
  description_long = $dl10p$O Cursor vai além do autocompletar: você descreve as mudanças em linguagem natural e o editor as aplica diretamente no código. Com o modo Composer, é possível criar arquivos inteiros ou refatorar múltiplos arquivos simultaneamente. Suporta os principais modelos de IA (GPT-4, Claude, etc.) e se tornou a ferramenta favorita de muitos desenvolvedores. Compatível com extensões do VS Code.$dl10p$,
  pros = ARRAY['IA integrada nativamente ao editor', 'Modo Composer para mudanças em múltiplos arquivos', 'Compatível com extensões do VS Code', 'Suporta múltiplos modelos de IA'],
  cons = ARRAY['Versão gratuita com limites de uso', 'Pode sugerir código incorreto sem contexto suficiente', 'Requer boa descrição do problema']
WHERE slug = 'cursor' AND lang = 'pt';
