-- Backfill FR + PT for 3 news articles added before FR/PT activation (May 4, 2026)
-- Articles: openai-gpt-55-launch, google-40b-anthropic-investment, mistral-small-4-release
-- Paste into Supabase SQL Editor and Run

-- ── openai-gpt-55-launch ─────────────────────────────────────────────────

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES

('openai-gpt-55-launch', 'fr', 'models', $$Modèles$$, '#7c6af7', $$OpenAI Blog$$, 'Apr 23, 2026',
$$OpenAI lance GPT-5.5 — Le modèle le plus puissant avec codage agentique complet$$,
$$OpenAI a lancé GPT-5.5, son modèle le plus performant à ce jour, avec des améliorations majeures du codage agentique via Codex, de la recherche approfondie et la capacité d'opérer des logiciels de bout en bout. Le déploiement a été effectué auprès des utilisateurs Plus, Pro, Business et Enterprise de ChatGPT et de l'API le 24 avril.$$,
$$<p>OpenAI a lancé <strong>GPT-5.5</strong> — son modèle le plus performant à ce jour — marquant un tournant décisif du Q&R ponctuel vers des workflows agentiques à long horizon.</p>
<h2>Quoi de neuf</h2>
<p>GPT-5.5 intègre <strong>Codex</strong>, une couche de codage agentique dédiée qui peut écrire, tester et déployer du code de manière autonome sur des projets à plusieurs étapes. Il apporte également une recherche approfondie renforcée, l'analyse de données et la capacité d'opérer des logiciels de bureau et web de bout en bout sans intervention humaine.</p>
<h2>Disponibilité</h2>
<p>Le modèle a été déployé auprès des utilisateurs <strong>ChatGPT Plus, Pro, Business et Enterprise</strong> le 24 avril, et est accessible via l'API OpenAI. Par ailleurs, OpenAI a élargi son partenariat AWS — GPT-5.5 et Codex sont désormais disponibles sur <strong>Amazon Bedrock</strong>, offrant aux entreprises un accès cloud géré.</p>
<h2>Pourquoi c'est important</h2>
<p>GPT-5.5 est le premier flagship d'OpenAI explicitement conçu pour des agents travaillant de manière autonome pendant des heures, et non des secondes. Combiné à son accord de distribution AWS, il exerce une pression sérieuse sur Claude d'Anthropic et Gemini de Google sur le marché des agents d'entreprise.</p>$$,
true),

('openai-gpt-55-launch', 'pt', 'models', $$Modelos$$, '#7c6af7', $$OpenAI Blog$$, 'Apr 23, 2026',
$$OpenAI Lança GPT-5.5 — O Modelo Mais Capaz com Codificação Agêntica Completa$$,
$$A OpenAI lançou o GPT-5.5, seu modelo mais avançado até o momento, com melhorias dramáticas na codificação agêntica via Codex, pesquisa profunda e a capacidade de operar software de ponta a ponta. O lançamento foi feito para usuários Plus, Pro, Business e Enterprise do ChatGPT e da API em 24 de abril.$$,
$$<p>A OpenAI lançou o <strong>GPT-5.5</strong> — seu modelo mais avançado até o momento — marcando uma mudança decisiva do Q&A pontual para fluxos de trabalho agênticos de longo horizonte.</p>
<h2>O que há de novo</h2>
<p>O GPT-5.5 vem com o <strong>Codex</strong>, uma camada de codificação agêntica dedicada que pode escrever, testar e implantar código de forma autônoma em projetos de várias etapas. Também traz pesquisa aprofundada mais robusta, análise de dados e a capacidade de operar softwares de desktop e web de ponta a ponta sem orientação humana.</p>
<h2>Disponibilidade</h2>
<p>O modelo foi implementado para usuários do <strong>ChatGPT Plus, Pro, Business e Enterprise</strong> em 24 de abril, e está acessível via API da OpenAI. Separadamente, a OpenAI expandiu sua parceria com a AWS — GPT-5.5 e Codex estão agora disponíveis no <strong>Amazon Bedrock</strong>, oferecendo às empresas um caminho gerenciado na nuvem.</p>
<h2>Por que isso importa</h2>
<p>O GPT-5.5 é o primeiro flagship da OpenAI explicitamente projetado para agentes que trabalham autonomamente por horas, não segundos. Combinado com seu acordo de distribuição AWS, ele pressiona seriamente o Claude da Anthropic e o Gemini do Google no mercado de agentes empresariais.</p>$$,
true);

-- ── google-40b-anthropic-investment ──────────────────────────────────────

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES

('google-40b-anthropic-investment', 'fr', 'industry', $$Industrie$$, '#888', $$TechCrunch$$, 'Apr 24, 2026',
$$Google s'engage à investir jusqu'à 40 milliards de dollars dans Anthropic — Le plus grand investissement en IA de l'histoire$$,
$$Google a annoncé un investissement pouvant atteindre 40 milliards de dollars dans Anthropic, en commençant par 10 milliards à une valorisation de 350 milliards, avec des tranches supplémentaires liées à des jalons. Google Cloud a également engagé 5 gigawatts de capacité de calcul sur cinq ans — le plus grand investissement en IA jamais enregistré.$$,
$$<p>Google a annoncé un investissement pouvant atteindre <strong>40 milliards de dollars</strong> dans Anthropic — le plus grand investissement unique dans l'histoire de l'IA — consolidant sa position de partenaire cloud et compute principal d'Anthropic.</p>
<h2>Structure de l'accord</h2>
<p>L'accord débute avec une première tranche de <strong>10 milliards de dollars</strong> à une <strong>valorisation de 350 milliards de dollars</strong>, avec du capital supplémentaire lié à des jalons. En parallèle, <strong>Google Cloud s'engage à fournir 5 gigawatts de capacité de calcul</strong> sur cinq ans — suffisant pour alimenter une part significative de l'entraînement de modèles et de l'inférence d'Anthropic.</p>
<h2>Ce qu'Anthropic obtient</h2>
<p>Ce capital donne à Anthropic les ressources pour concurrencer directement OpenAI à grande échelle. Anthropic approche déjà les 19 milliards de dollars de revenus annuels, et cette nouvelle capacité de financement lui permet d'accélérer le développement de Claude, d'étendre ses ventes aux entreprises et de financer la prochaine génération de modèles frontières.</p>
<h2>Pourquoi c'est important</h2>
<p>Cet accord signale que la course au compute en IA a désormais une dimension géopolitique. Avec les 40 milliards de Google derrière Anthropic et les liens profonds de Microsoft avec OpenAI, le marché de l'IA frontière se consolide autour de deux grandes coalitions — et le vainqueur pourrait être déterminé autant par l'accès au compute que par la qualité des modèles.</p>$$,
true),

('google-40b-anthropic-investment', 'pt', 'industry', $$Indústria$$, '#888', $$TechCrunch$$, 'Apr 24, 2026',
$$Google Compromete até $40 Bilhões na Anthropic — O Maior Investimento em IA da História$$,
$$O Google anunciou um investimento de até $40 bilhões na Anthropic, começando com $10 bilhões a uma avaliação de $350 bilhões, com parcelas adicionais atreladas a marcos. O Google Cloud também comprometeu 5 gigawatts de capacidade computacional por cinco anos — o maior investimento em IA já registrado.$$,
$$<p>O Google anunciou um investimento de até <strong>$40 bilhões</strong> na Anthropic — o maior investimento único na história da IA — solidificando sua posição como principal parceiro de nuvem e computação da Anthropic.</p>
<h2>Estrutura do acordo</h2>
<p>O acordo começa com uma tranche inicial de <strong>$10 bilhões</strong> a uma <strong>avaliação de $350 bilhões</strong>, com capital adicional vinculado a marcos. Além do investimento em dinheiro, o <strong>Google Cloud está comprometendo 5 gigawatts de capacidade computacional</strong> ao longo de cinco anos — suficiente para alimentar uma parcela significativa do treinamento de modelos e inferência da Anthropic.</p>
<h2>O que a Anthropic ganha</h2>
<p>O capital dá à Anthropic os recursos para competir diretamente com a OpenAI em escala. A Anthropic já está se aproximando de $19 bilhões em receita anual, e o novo prazo de financiamento significa que pode acelerar o desenvolvimento do Claude, expandir suas vendas empresariais e financiar a próxima geração de modelos de fronteira.</p>
<h2>Por que isso importa</h2>
<p>Este acordo sinaliza que a corrida de computação em IA agora tem escala geopolítica. Com os $40B do Google atrás da Anthropic e os laços profundos da Microsoft com a OpenAI, o mercado de IA de fronteira está se consolidando em torno de duas grandes coalizões — e o vencedor pode ser decidido tanto pelo acesso à computação quanto pela qualidade do modelo.</p>$$,
true);

-- ── mistral-small-4-release ───────────────────────────────────────────────

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES

('mistral-small-4-release', 'fr', 'models', $$Modèles$$, '#7c6af7', $$Mistral Blog$$, 'Apr 28, 2026',
$$Mistral publie Small 4 — Modèle open-source de 119 milliards de paramètres avec raisonnement et vision$$,
$$Mistral a publié Small 4, un modèle open-source de 119 milliards de paramètres avec une fenêtre contextuelle de 256k, un raisonnement configurable et des capacités multimodales (vision). Il combine l'exécution d'instructions rapide, le raisonnement approfondi et la compréhension des images dans un seul modèle unifié sous licence ouverte.$$,
$$<p>Mistral a publié <strong>Small 4</strong> — un modèle open-source de 119 milliards de paramètres qui apporte des capacités de niveau frontière aux organisations ne pouvant pas utiliser des API cloud fermées.</p>
<h2>Capacités clés</h2>
<p>Small 4 combine trois fonctionnalités auparavant séparées dans un seul modèle : <strong>l'exécution d'instructions rapide</strong>, <strong>le raisonnement approfondi à la demande</strong> (configurable, afin de ne payer la latence que lorsque nécessaire), et <strong>la compréhension visuelle et multimodale</strong>. La fenêtre contextuelle s'étend à <strong>256k tokens</strong> — suffisant pour des codebases entières ou de longs documents de recherche.</p>
<h2>Licence ouverte</h2>
<p>Le modèle est publié sous une licence ouverte, permettant aux entreprises de l'héberger elles-mêmes, de l'affiner et de le déployer sans frais d'API ni exigences de partage de données. Cela en fait une option particulièrement attrayante pour les entreprises européennes sensibles au RGPD.</p>
<h2>Pourquoi c'est important</h2>
<p>Small 4 représente le rattrapage de l'open-source sur les capacités des modèles fermés. Un modèle de 119 milliards de paramètres avec raisonnement à la demande et vision est désormais une alternative crédible à GPT-5.5 ou Claude pour de nombreux cas d'usage d'entreprise — sans la dépendance à l'API.</p>$$,
true),

('mistral-small-4-release', 'pt', 'models', $$Modelos$$, '#7c6af7', $$Mistral Blog$$, 'Apr 28, 2026',
$$Mistral Lança Small 4 — Modelo Open-Source de 119B com Raciocínio e Visão$$,
$$A Mistral lançou o Small 4, um modelo open-source de 119 bilhões de parâmetros com uma janela de contexto de 256k, raciocínio configurável e capacidades multimodais (visão). Ele combina execução rápida de instruções, raciocínio aprofundado e compreensão de imagens em um único modelo unificado sob licença aberta.$$,
$$<p>A Mistral lançou o <strong>Small 4</strong> — um modelo open-source de 119 bilhões de parâmetros que traz capacidades de nível fronteira para organizações que não podem usar APIs de nuvem fechadas.</p>
<h2>Capacidades principais</h2>
<p>O Small 4 combina três recursos anteriormente separados em um único modelo: <strong>execução rápida de instruções</strong>, <strong>raciocínio aprofundado sob demanda</strong> (configurável, para que você só pague a latência quando precisar), e <strong>compreensão visual e multimodal</strong>. A janela de contexto se estende a <strong>256k tokens</strong> — suficiente para codebases inteiras ou longos documentos de pesquisa.</p>
<h2>Licença aberta</h2>
<p>O modelo é lançado sob uma licença aberta, o que significa que as empresas podem hospedar, ajustar e implantar sem taxas de API ou requisitos de compartilhamento de dados. Isso o torna uma opção especialmente atraente para empresas europeias sensíveis ao RGPD.</p>
<h2>Por que isso importa</h2>
<p>O Small 4 representa o código aberto alcançando as capacidades dos modelos fechados. Um modelo de 119B com raciocínio sob demanda e visão é agora uma alternativa credível ao GPT-5.5 ou Claude para muitos casos de uso empresarial — sem a dependência de API.</p>$$,
true);
