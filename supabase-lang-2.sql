-- Translations: Portuguese (pt), Italian (it), Dutch (nl), Polish (pl), Romanian (ro), Ukrainian (uk)

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES

-- ═══════════════════════════════════════════════════════
-- PORTUGUESE (pt)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','pt','models','Modelos','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 bate recorde no SWE-bench com 87,6%',
'O Claude Opus 4.7 da Anthropic estabeleceu um novo recorde no SWE-bench Verified com 87,6% — a pontuação mais alta de qualquer modelo disponível publicamente. A $5/$25 por milhão de tokens, marca um avanço qualitativo na engenharia de software agêntica.',
'<p>O novo modelo carro-chefe da Anthropic, <strong>Claude Opus 4.7</strong>, estabeleceu um recorde no SWE-bench Verified com uma pontuação de <strong>87,6%</strong>, superando todos os resultados publicados de modelos disponíveis publicamente.</p>
<h2>O que o SWE-bench mede</h2>
<p>O SWE-bench Verified testa se uma IA consegue resolver problemas reais do GitHub em repositórios open-source populares, exigindo que o modelo leia um relatório de bug, entenda o código, escreva uma correção e passe nos testes existentes sem orientação humana.</p>
<h2>Preço e disponibilidade</h2>
<p>O Claude Opus 4.7 tem preço de <strong>$5 por milhão de tokens de entrada e $25 por milhão de tokens de saída</strong>. Está disponível via API da Anthropic e Claude.ai Pro.</p>
<h3>O que isso significa para desenvolvedores</h3>
<p>Com 87,6%, o modelo pode corrigir de forma confiável a maioria dos bugs do mundo real sem intervenção humana — uma capacidade considerada fora de alcance há apenas 18 meses.</p>',
true),

('gpt-54-three-variants-1m-context','pt','models','Modelos','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 é lançado em três variantes com contexto de 1M de tokens',
'A OpenAI lançou o GPT-5.4 nas variantes Standard, Thinking e Pro. As três compartilham uma janela de contexto de 1,05 milhão de tokens — a maior já oferecida comercialmente pela OpenAI. O modelo recupera dinamicamente especificações de ferramentas.',
'<p>A OpenAI expandiu sua linha de modelos com o lançamento do <strong>GPT-5.4</strong> em três variantes: Standard, Thinking e Pro. As três compartilham a mesma arquitetura e uma <strong>janela de contexto de 1,05 milhão de tokens</strong>.</p>
<h2>As três variantes</h2>
<p><strong>Standard</strong> é otimizado para velocidade e custo. <strong>Thinking</strong> adiciona raciocínio estendido para problemas complexos. <strong>Pro</strong> combina máxima capacidade com o maior contexto.</p>
<h2>Recuperação dinâmica de ferramentas</h2>
<p>Em vez de carregar todas as definições de ferramentas no início, o modelo recupera apenas as especificações necessárias conforme as tarefas surgem, reduzindo o tamanho do prompt e melhorando a qualidade das respostas.</p>',
true),

('apple-rebuilds-siri-google-gemini','pt','business','Negócios','#f5a623','9to5Mac','2026-04-16',
'Apple reconstrói a Siri com Google Gemini via nuvem privada',
'A Apple anunciou uma Siri completamente reconstruída, alimentada pelo modelo Gemini do Google rodando na infraestrutura Private Cloud Compute da Apple. A nova Siri realiza tarefas em várias etapas no dispositivo pela primeira vez.',
'<p>A Apple anunciou uma reconstrução completa da Siri, alimentada pelo <strong>modelo Gemini do Google</strong> rodando na infraestrutura Private Cloud Compute da Apple. É a mudança mais significativa na Siri desde sua introdução em 2011.</p>
<h2>Private Cloud Compute</h2>
<p>A nova Siri processa consultas complexas na nuvem mantendo as garantias de privacidade da Apple. A arquitetura garante que nem mesmo funcionários da Apple possam acessar dados dos usuários.</p>
<h2>O que a nova Siri pode fazer</h2>
<p>A Siri reformulada realiza <strong>tarefas em várias etapas no dispositivo pela primeira vez</strong>, combinando ações em múltiplos aplicativos sem enviar dados a servidores externos. A nova Siri deve chegar com o iOS 20.</p>',
true),

('stanford-ai-index-2026','pt','research','Pesquisa','#4aaef5','Stanford HAI','2026-04-15',
'Índice de IA de Stanford 2026: adoção da IA supera a do PC ou da internet',
'O Índice de IA anual de Stanford revela que a Anthropic lidera o ranking geral de modelos em março de 2026, à frente de xAI, Google e OpenAI. As pessoas adotam IA mais rapidamente do que adotaram o PC ou a internet.',
'<p>O Instituto de IA Centrado no Ser Humano da Universidade de Stanford publicou o <strong>Índice de IA 2026</strong>, o panorama mais abrangente do progresso e impacto social da inteligência artificial.</p>
<h2>Anthropic lidera o ranking geral</h2>
<p>Pela primeira vez, a <strong>Anthropic</strong> lidera o ranking geral de desempenho de modelos da Stanford, ligeiramente à frente de xAI, Google e OpenAI.</p>
<h2>Adoção mais rápida que qualquer tecnologia anterior</h2>
<p>As ferramentas de IA atingiram <strong>500 milhões de usuários regulares mais rápido do que o PC, a internet ou o smartphone</strong>. Em início de 2026, 67% dos trabalhadores do conhecimento usam ferramentas de IA pelo menos semanalmente.</p>',
true),

('pwc-top-companies-ai-economic-gains','pt','research','Pesquisa','#4aaef5','PwC','2026-04-14',
'PwC: top 20% das empresas capturam 75% dos ganhos econômicos da IA',
'O estudo de desempenho em IA 2026 da PwC encontra uma divisão marcada: um pequeno grupo de empresas focadas em crescimento está muito à frente. O relatório alerta que a maioria das empresas ainda está em modo experimental.',
'<p>O estudo da PwC sobre desempenho em IA 2026, baseado em dados de 5.000 empresas de 22 setores, revela uma divisão crescente entre líderes em IA e o restante do mercado.</p>
<h2>A divisão 20/75</h2>
<p>Os 20% superiores das empresas capturam <strong>75% do valor econômico gerado pela IA</strong>. O fator diferenciador é a orientação estratégica: empresas líderes usam a IA para <strong>criar novas fontes de receita</strong>.</p>
<h3>O perigo do modo experimental</h3>
<p>A PwC alerta que 60% das empresas ainda estão em modo experimental, executando pilotos sem escalar para produção e perdendo os retornos cumulativos.</p>',
true),

('openai-acquires-tbpn','pt','business','Negócios','#f5a623','The Verge','2026-04-14',
'OpenAI adquire programa de mídia do Vale do Silício TBPN',
'A OpenAI anunciou a aquisição do TBPN, a Technology Business Programming Network — um programa diário ao vivo de tecnologia e negócios que se tornou um fenômeno cult no Vale do Silício. É a primeira aquisição de uma empresa de mídia pela OpenAI.',
'<p>A OpenAI adquiriu o <strong>TBPN (Technology Business Programming Network)</strong>, um programa diário de streaming ao vivo sobre tecnologia, IA e negócios que se tornou um dos mais assistidos no Vale do Silício.</p>
<h2>O que é o TBPN?</h2>
<p>O TBPN transmite ao vivo nos dias úteis com entrevistas de fundadores, investidores e tecnólogos, ganhando reputação por conversas francas e sem roteiro.</p>
<h2>Primeira aquisição de mídia da OpenAI</h2>
<p>Esta é a <strong>primeira aquisição de uma empresa de mídia</strong> pela OpenAI. A empresa afirma que o TBPN continuará operando de forma independente. Os termos financeiros não foram divulgados.</p>',
true),

('anthropic-confirms-claude-mythos','pt','models','Modelos','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic confirma Claude Mythos, mas não vai lançá-lo publicamente',
'A Anthropic confirmou a existência do Claude Mythos, descrito como o modelo mais capaz já construído pela empresa. Não haverá lançamento público. O acesso é limitado a cerca de 50 organizações parceiras através do Projeto Glasswing.',
'<p>A Anthropic confirmou oficialmente a existência do <strong>Claude Mythos</strong>, um modelo que descreve como o mais capaz já construído, sem planos de lançamento público.</p>
<h2>Projeto Glasswing</h2>
<p>O acesso ao Claude Mythos é gerenciado pelo <strong>Projeto Glasswing</strong>, um programa restrito para aproximadamente 50 organizações parceiras focadas em pesquisa avançada de cibersegurança e raciocínio complexo.</p>
<h3>Capacidades conhecidas</h3>
<p>A Anthropic não publicou resultados de benchmarks para o Mythos. Organizações parceiras o descrevem como capaz de operação autônoma sustentada em tarefas complexas de vários dias.</p>',
true),

('openai-25b-revenue-ipo-2026','pt','business','Negócios','#f5a623','Bloomberg','2026-04-13',
'OpenAI supera $25 bilhões em receita anual e mira IPO em 2026',
'A OpenAI superou $25 bilhões em receita anualizada e está dando os primeiros passos em direção a uma oferta pública inicial, potencialmente no final de 2026. A Anthropic está próxima, se aproximando de $19 bilhões.',
'<p>A OpenAI superou a marca de <strong>$25 bilhões em receita anualizada</strong> e está dando os primeiros passos em direção a uma oferta pública inicial potencialmente no final de 2026.</p>
<h2>Composição da receita</h2>
<p>A maior parte da receita vem de assinaturas do ChatGPT e uso da API. Contratos empresariais representam cerca de 40% da receita total e são o segmento de crescimento mais rápido.</p>
<h2>Anthropic logo atrás</h2>
<p>A <strong>Anthropic se aproxima de $19 bilhões</strong> em receita anualizada. A OpenAI concluiu uma reestruturação em 2026 que a converteu em uma corporação de benefício público mais convencional, eliminando um obstáculo chave para o IPO.</p>',
true),

('meta-llama-4-scout-10m-context','pt','models','Modelos','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: contexto de 10M de tokens com arquitetura MoE',
'A Meta lançou Llama 4 Scout e Maverick — os primeiros modelos Llama com arquitetura Mixture-of-Experts. O Scout tem 17B parâmetros ativos em 16 especialistas (109B no total) e uma janela de contexto de 10 milhões de tokens. Disponíveis para uso comercial.',
'<p>A Meta lançou <strong>Llama 4 Scout e Maverick</strong> — os primeiros modelos da família Llama a usar uma <strong>arquitetura Mixture-of-Experts (MoE)</strong> que ativa apenas um subconjunto de parâmetros por consulta.</p>
<h2>Scout: construído para contexto longo</h2>
<p>O Llama 4 Scout tem <strong>17 bilhões de parâmetros ativos</strong> em 16 especialistas (109 bilhões no total) e uma <strong>janela de contexto de 10 milhões de tokens</strong> — a maior de qualquer modelo aberto.</p>
<h2>Uso comercial</h2>
<p>Ambos os modelos estão disponíveis para uso comercial sob a licença Llama atualizada da Meta. A arquitetura MoE reduz os custos de inferência em aproximadamente 60% em comparação com um modelo denso de qualidade equivalente.</p>',
true),

('google-gemma-4-31b-open-model','pt','models','Modelos','#7c6af7','Google Blog','2026-04-10',
'Google lança Gemma 4: modelo aberto de 31B ocupa 3º lugar mundial',
'O Google lançou o Gemma 4 em quatro variantes de 2,3B a 31B parâmetros. O modelo 31B Dense ocupa o 3º lugar mundial no Arena AI entre modelos abertos — o modelo open-source mais forte já lançado pelo Google.',
'<p>O Google lançou o <strong>Gemma 4</strong>, a última geração de sua família de modelos open-weight, em quatro variantes de <strong>2,3 a 31 bilhões de parâmetros</strong>.</p>
<h2>Gemma 4 31B: #3 mundial</h2>
<p>O modelo principal <strong>Gemma 4 31B Dense ocupa o terceiro lugar mundial</strong> no ranking Arena AI entre modelos abertos. As variantes de 14B e 31B incluem capacidades de visão nativas pela primeira vez na série Gemma.</p>
<p>Todos os pesos do Gemma 4 estão disponíveis no Hugging Face e Google AI Studio sob uma licença aberta que permite uso comercial.</p>',
true),

('eu-ai-act-full-enforcement','pt','regulation','Regulação','#f56565','Wired','2026-04-09',
'Lei de IA da UE em plena vigência: grandes provedores publicam documentos de conformidade',
'A Lei de IA da UE entrou em plena vigência em março de 2026, exigindo que todos os sistemas de IA na UE cumpram requisitos de transparência, segurança e classificação de risco. OpenAI, Anthropic e Google publicaram sua documentação de conformidade GPAI.',
'<p>A Lei de IA da UE entrou em <strong>plena vigência em março de 2026</strong>, aplicando-se a todos os sistemas de IA implantados na UE, independentemente de onde o desenvolvedor esteja localizado.</p>
<h2>O que a Lei exige</h2>
<p>A Lei estabelece um quadro baseado em riscos. <strong>Sistemas de alto risco</strong> devem concluir avaliações formais de conformidade, registrar-se em um banco de dados central da UE e implementar monitoramento contínuo.</p>
<h3>Sanções</h3>
<p>As infrações podem resultar em multas de até <strong>€35 milhões ou 7% do volume de negócios anual global</strong>. O recém-criado Escritório Europeu de IA em Bruxelas já abriu investigações preliminares contra várias empresas.</p>',
true),

('zhipu-glm-51-744b-open-source','pt','models','Modelos','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI abre código do GLM-5.1: modelo MoE com 744B parâmetros',
'O laboratório chinês Zhipu AI lançou o GLM-5.1 sob licença MIT — um modelo mixture-of-experts de 744 bilhões de parâmetros com 40B parâmetros ativos por passagem e janela de contexto de 200K tokens. O lançamento totalmente aberto pressiona os concorrentes de código fechado.',
'<p>O laboratório de IA chinês Zhipu AI lançou o <strong>GLM-5.1</strong> sob a licença MIT, tornando-o livre para qualquer uso incluindo implantação comercial sem restrições.</p>
<h2>Escala e arquitetura</h2>
<p>O GLM-5.1 é um <strong>modelo Mixture-of-Experts de 744 bilhões de parâmetros</strong> com 40 bilhões de parâmetros ativos por passagem e uma <strong>janela de contexto de 200.000 tokens</strong>.</p>
<h3>Por que isso importa</h3>
<p>A licença MIT não impõe restrições sobre como o modelo é usado, modificado ou redistribuído. Ao contrário da família Llama da Meta, que possui licenças personalizadas, o GLM-5.1 é o modelo de escala fronteira mais livremente disponível até hoje.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- ITALIAN (it)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','it','models','Modelli','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 stabilisce un record su SWE-bench con l''87,6%',
'Claude Opus 4.7 di Anthropic ha stabilito un nuovo record su SWE-bench Verified con l''87,6% — il punteggio più alto di qualsiasi modello disponibile pubblicamente. A $5/$25 per milione di token, segna un salto qualitativo nell''ingegneria del software agentiva.',
'<p>Il nuovo modello di punta di Anthropic, <strong>Claude Opus 4.7</strong>, ha stabilito un record di settore su SWE-bench Verified con un punteggio dell''<strong>87,6%</strong>, superando tutti i risultati pubblicati per modelli disponibili pubblicamente.</p>
<h2>Cosa misura SWE-bench</h2>
<p>SWE-bench Verified testa se un''IA riesce a risolvere problemi reali di GitHub in repository open-source popolari, richiedendo che il modello legga un bug report, comprenda il codice, scriva una correzione e superi i test esistenti senza guida umana.</p>
<h2>Prezzi e disponibilità</h2>
<p>Claude Opus 4.7 ha un prezzo di <strong>$5 per milione di token in ingresso e $25 per milione di token in uscita</strong>. È disponibile tramite API Anthropic e Claude.ai Pro.</p>
<h3>Cosa significa per gli sviluppatori</h3>
<p>Con l''87,6%, il modello può correggere in modo affidabile la maggior parte dei bug reali senza intervento umano — una capacità considerata irraggiungibile solo 18 mesi fa.</p>',
true),

('gpt-54-three-variants-1m-context','it','models','Modelli','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 disponibile in tre varianti con contesto da 1M di token',
'OpenAI ha lanciato GPT-5.4 nelle varianti Standard, Thinking e Pro. Tutte e tre condividono una finestra di contesto di 1,05 milioni di token — la più grande mai offerta commercialmente da OpenAI. Il modello recupera dinamicamente le specifiche degli strumenti.',
'<p>OpenAI ha ampliato la sua gamma con il lancio di <strong>GPT-5.4</strong> in tre varianti: Standard, Thinking e Pro. Tutte condividono la stessa architettura e una <strong>finestra di contesto di 1,05 milioni di token</strong>.</p>
<h2>Le tre varianti</h2>
<p><strong>Standard</strong> è ottimizzato per velocità e costo. <strong>Thinking</strong> aggiunge ragionamento esteso per problemi complessi. <strong>Pro</strong> combina la massima capacità con il contesto più ampio.</p>
<h2>Recupero dinamico degli strumenti</h2>
<p>Invece di caricare tutte le definizioni degli strumenti all''inizio, il modello recupera solo le specifiche necessarie, riducendo la dimensione del prompt e migliorando la qualità delle risposte nei workflow agentivi.</p>',
true),

('apple-rebuilds-siri-google-gemini','it','business','Business','#f5a623','9to5Mac','2026-04-16',
'Apple ricostruisce Siri su Google Gemini tramite cloud privato',
'Apple ha annunciato una Siri completamente ricostruita, alimentata dal modello Gemini di Google in esecuzione sull''infrastruttura Private Cloud Compute di Apple. La nuova Siri gestisce per la prima volta attività in più fasi sul dispositivo.',
'<p>Apple ha annunciato una ricostruzione completa di Siri, alimentata dal <strong>modello Gemini di Google</strong> in esecuzione sull''infrastruttura Private Cloud Compute di Apple. È il cambiamento più significativo apportato a Siri dalla sua introduzione nel 2011.</p>
<h2>Private Cloud Compute</h2>
<p>La nuova Siri elabora query complesse nel cloud mantenendo le garanzie di privacy di Apple. L''architettura garantisce che nemmeno i dipendenti Apple possano accedere ai dati degli utenti.</p>
<h2>Cosa sa fare la nuova Siri</h2>
<p>La Siri rinnovata gestisce <strong>attività in più fasi sul dispositivo per la prima volta</strong>, combinando azioni su più app senza inviare dati a server esterni. La nuova Siri dovrebbe arrivare con iOS 20.</p>',
true),

('stanford-ai-index-2026','it','research','Ricerca','#4aaef5','Stanford HAI','2026-04-15',
'Indice AI di Stanford 2026: l''adozione dell''AI supera quella del PC o di Internet',
'L''Indice AI annuale di Stanford rivela che Anthropic guida la classifica generale dei modelli a marzo 2026, davanti a xAI, Google e OpenAI. Le persone adottano l''AI più velocemente di quanto abbiano adottato il PC o Internet.',
'<p>L''Istituto di AI Centrata sull''Uomo dell''Università di Stanford ha pubblicato l''<strong>Indice AI 2026</strong>, il quadro più completo del progresso dell''intelligenza artificiale e del suo impatto sociale.</p>
<h2>Anthropic guida la classifica generale</h2>
<p>Per la prima volta, <strong>Anthropic</strong> guida la classifica generale delle performance dei modelli di Stanford, leggermente davanti a xAI, Google e OpenAI.</p>
<h2>Adozione più rapida di qualsiasi tecnologia precedente</h2>
<p>Gli strumenti AI hanno raggiunto <strong>500 milioni di utenti abituali più velocemente del PC, di Internet o dello smartphone</strong>. Il 67% dei lavoratori della conoscenza usa strumenti AI almeno settimanalmente.</p>',
true),

('pwc-top-companies-ai-economic-gains','it','research','Ricerca','#4aaef5','PwC','2026-04-14',
'PwC: il top 20% delle aziende cattura il 75% dei guadagni economici dell''AI',
'Lo studio sulle performance AI 2026 di PwC rileva una divisione marcata: un piccolo gruppo di aziende focalizzate sulla crescita è molto avanti. Il rapporto avverte che la maggior parte delle aziende è ancora in modalità sperimentazione.',
'<p>Lo studio PwC sulle performance AI 2026, basato su dati di 5.000 aziende in 22 settori, rivela un divario crescente tra leader nell''AI e il resto del mercato.</p>
<h2>La divisione 20/75</h2>
<p>Il top 20% delle aziende cattura il <strong>75% del valore economico generato dall''AI</strong>. Il fattore distintivo è l''orientamento strategico: le aziende leader usano l''AI per <strong>creare nuove fonti di ricavi</strong>.</p>
<h3>Il pericolo della modalità sperimentazione</h3>
<p>PwC avverte che il 60% delle aziende è ancora in modalità sperimentazione, eseguendo piloti senza scalare alla produzione e perdendo i ritorni cumulativi.</p>',
true),

('openai-acquires-tbpn','it','business','Business','#f5a623','The Verge','2026-04-14',
'OpenAI acquisisce il programma mediatico di Silicon Valley TBPN',
'OpenAI ha annunciato l''acquisizione di TBPN, la Technology Business Programming Network — un programma quotidiano in diretta su tecnologia e business diventato un fenomeno cult nella Silicon Valley. È la prima acquisizione di una società mediatica da parte di OpenAI.',
'<p>OpenAI ha acquisito <strong>TBPN (Technology Business Programming Network)</strong>, un programma quotidiano in streaming live su tecnologia, AI e business, diventato uno dei più visti nella Silicon Valley.</p>
<h2>Cos''è TBPN?</h2>
<p>TBPN trasmette in diretta nei giorni feriali con interviste a fondatori, investitori e tecnologi, guadagnando una reputazione per conversazioni schiette e non sceneggiate.</p>
<h2>Prima acquisizione mediatica di OpenAI</h2>
<p>Questa è la <strong>prima acquisizione di una società mediatica</strong> da parte di OpenAI. La società afferma che TBPN continuerà a operare in modo indipendente. I termini finanziari non sono stati divulgati.</p>',
true),

('anthropic-confirms-claude-mythos','it','models','Modelli','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic conferma Claude Mythos, ma non lo rilascerà pubblicamente',
'Anthropic ha confermato l''esistenza di Claude Mythos, descritto come il modello più capace mai costruito dalla società. Non è previsto alcun rilascio pubblico. L''accesso è limitato a circa 50 organizzazioni partner attraverso il Progetto Glasswing.',
'<p>Anthropic ha ufficialmente confermato l''esistenza di <strong>Claude Mythos</strong>, un modello che descrive come il più capace mai costruito, senza piani per un rilascio pubblico.</p>
<h2>Progetto Glasswing</h2>
<p>L''accesso a Claude Mythos è gestito tramite il <strong>Progetto Glasswing</strong>, un programma ristretto per circa 50 organizzazioni partner focalizzate sulla ricerca avanzata in cybersecurity e sul ragionamento complesso.</p>
<h3>Capacità note</h3>
<p>Anthropic non ha pubblicato risultati di benchmark per Mythos. Le organizzazioni partner lo descrivono come capace di operazione autonoma sostenuta su compiti complessi di più giorni.</p>',
true),

('openai-25b-revenue-ipo-2026','it','business','Business','#f5a623','Bloomberg','2026-04-13',
'OpenAI supera i $25 miliardi di fatturato annuo e punta a un''IPO nel 2026',
'OpenAI ha superato i $25 miliardi di ricavi annualizzati e sta facendo i primi passi verso un''offerta pubblica iniziale, potenzialmente entro la fine del 2026. Anthropic è vicina, avvicinandosi ai $19 miliardi.',
'<p>OpenAI ha superato la soglia dei <strong>$25 miliardi di ricavi annualizzati</strong> e sta compiendo i primi passi verso un''IPO potenzialmente entro la fine del 2026.</p>
<h2>Composizione dei ricavi</h2>
<p>La maggior parte dei ricavi proviene dagli abbonamenti a ChatGPT e dall''utilizzo delle API. I contratti aziendali rappresentano circa il 40% del fatturato totale e sono il segmento in più rapida crescita.</p>
<h2>Anthropic al suo seguito</h2>
<p><strong>Anthropic si avvicina ai $19 miliardi</strong> di ricavi annualizzati. OpenAI ha completato una ristrutturazione all''inizio del 2026 convertendosi in una società di pubblica utilità più convenzionale, rimuovendo un ostacolo chiave per l''IPO.</p>',
true),

('meta-llama-4-scout-10m-context','it','models','Modelli','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: contesto da 10M di token con architettura MoE',
'Meta ha lanciato Llama 4 Scout e Maverick — i primi modelli Llama con architettura Mixture-of-Experts. Scout ha 17 miliardi di parametri attivi su 16 esperti (109 miliardi in totale) e una finestra di contesto da 10 milioni di token. Disponibili per uso commerciale.',
'<p>Meta ha lanciato <strong>Llama 4 Scout e Maverick</strong> — i primi modelli della famiglia Llama a utilizzare un''<strong>architettura Mixture-of-Experts (MoE)</strong> che attiva solo un sottoinsieme di parametri per ogni query.</p>
<h2>Scout: progettato per contesti lunghi</h2>
<p>Llama 4 Scout ha <strong>17 miliardi di parametri attivi</strong> su 16 esperti (109 miliardi in totale) e una <strong>finestra di contesto da 10 milioni di token</strong> — la più grande tra i modelli open.</p>
<h2>Uso commerciale</h2>
<p>Entrambi i modelli sono disponibili per uso commerciale con la licenza Llama aggiornata di Meta. L''architettura MoE riduce i costi di inferenza di circa il 60% rispetto a un modello denso di qualità equivalente.</p>',
true),

('google-gemma-4-31b-open-model','it','models','Modelli','#7c6af7','Google Blog','2026-04-10',
'Google lancia Gemma 4: modello aperto da 31B al 3° posto mondiale',
'Google ha lanciato Gemma 4 in quattro varianti da 2,3 a 31 miliardi di parametri. Il modello 31B Dense si posiziona al 3° posto mondiale su Arena AI tra i modelli open — il modello open-source più potente mai rilasciato da Google.',
'<p>Google ha lanciato <strong>Gemma 4</strong>, l''ultima generazione della sua famiglia di modelli open-weight, in quattro varianti da <strong>2,3 a 31 miliardi di parametri</strong>.</p>
<h2>Gemma 4 31B: #3 mondiale</h2>
<p>Il modello principale <strong>Gemma 4 31B Dense si posiziona al terzo posto mondiale</strong> nel ranking Arena AI tra i modelli open. Le varianti 14B e 31B includono per la prima volta capacità di visione native nella serie Gemma.</p>
<p>Tutti i pesi di Gemma 4 sono disponibili su Hugging Face e Google AI Studio con una licenza aperta che consente l''uso commerciale.</p>',
true),

('eu-ai-act-full-enforcement','it','regulation','Regolazione','#f56565','Wired','2026-04-09',
'Regolamento UE sull''AI in piena vigenza: i grandi provider pubblicano i documenti di conformità',
'Il Regolamento UE sull''AI è entrato in piena vigenza nel marzo 2026, richiedendo a tutti i sistemi AI nell''UE di soddisfare i requisiti di trasparenza, sicurezza e classificazione del rischio. OpenAI, Anthropic e Google hanno pubblicato la documentazione di conformità GPAI.',
'<p>Il Regolamento UE sull''AI è entrato in <strong>piena vigenza nel marzo 2026</strong>, applicandosi a tutti i sistemi AI distribuiti nell''UE indipendentemente da dove si trova lo sviluppatore.</p>
<h2>Cosa richiede il Regolamento</h2>
<p>Il Regolamento stabilisce un quadro basato sul rischio. I <strong>sistemi ad alto rischio</strong> devono completare valutazioni di conformità formali, registrarsi in un database centrale UE e implementare un monitoraggio continuo.</p>
<h3>Sanzioni</h3>
<p>Le violazioni possono comportare sanzioni fino a <strong>€35 milioni o il 7% del fatturato annuo globale</strong>. L''Ufficio Europeo per l''AI a Bruxelles ha già aperto indagini preliminari su diverse aziende.</p>',
true),

('zhipu-glm-51-744b-open-source','it','models','Modelli','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI rilascia GLM-5.1 open source: modello MoE da 744 miliardi di parametri',
'Il laboratorio cinese Zhipu AI ha rilasciato GLM-5.1 sotto licenza MIT — un modello mixture-of-experts da 744 miliardi di parametri con 40 miliardi di parametri attivi per passaggio e finestra di contesto da 200K token. Il rilascio completamente aperto fa pressione sui concorrenti proprietari.',
'<p>Il laboratorio di AI cinese Zhipu AI ha rilasciato <strong>GLM-5.1</strong> sotto licenza MIT, rendendolo libero per qualsiasi uso incluso il deployment commerciale senza restrizioni.</p>
<h2>Scala e architettura</h2>
<p>GLM-5.1 è un <strong>modello Mixture-of-Experts da 744 miliardi di parametri</strong> con 40 miliardi di parametri attivi per passaggio e una <strong>finestra di contesto da 200.000 token</strong>.</p>
<h3>Perché è importante</h3>
<p>La licenza MIT non impone restrizioni su come il modello viene utilizzato, modificato o ridistribuito. A differenza della famiglia Llama di Meta, GLM-5.1 è il modello a scala frontier più liberamente disponibile ad oggi.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- DUTCH (nl)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','nl','models','Modellen','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 vestigt record op SWE-bench met 87,6%',
'Claude Opus 4.7 van Anthropic heeft een nieuw record gevestigd op SWE-bench Verified met 87,6% — de hoogste score van elk publiek beschikbaar model. Voor $5/$25 per miljoen tokens markeert het een kwalitatieve sprong in agentische software-engineering.',
'<p>Anthropics nieuwste vlaggenschipmodel, <strong>Claude Opus 4.7</strong>, heeft een brancherecord gevestigd op SWE-bench Verified met een score van <strong>87,6%</strong>, waarmee alle eerder gepubliceerde resultaten voor publiek beschikbare modellen worden overtroffen.</p>
<h2>Wat SWE-bench meet</h2>
<p>SWE-bench Verified test of een AI echte GitHub-problemen kan oplossen in populaire open-source repositories, waarbij het model een bugreport moet lezen, de codebase moet begrijpen, een oplossing moet schrijven en de bestaande tests moet doorstaan zonder menselijke hulp.</p>
<h2>Prijzen en beschikbaarheid</h2>
<p>Claude Opus 4.7 kost <strong>$5 per miljoen invoertokens en $25 per miljoen uitvoertokens</strong>. Beschikbaar via de Anthropic API en Claude.ai Pro.</p>',
true),

('gpt-54-three-variants-1m-context','nl','models','Modellen','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 verschijnt in drie varianten met 1M token context',
'OpenAI heeft GPT-5.4 uitgebracht in Standard-, Thinking- en Pro-varianten. Alle drie delen een contextvenster van 1,05 miljoen tokens — het grootste dat OpenAI ooit commercieel heeft aangeboden.',
'<p>OpenAI breidde zijn modellenportfolio uit met de release van <strong>GPT-5.4</strong> in drie varianten: Standard, Thinking en Pro. Alle drie delen dezelfde architectuur en een <strong>contextvenster van 1,05 miljoen tokens</strong>.</p>
<h2>De drie varianten</h2>
<p><strong>Standard</strong> is geoptimaliseerd voor snelheid en kosten. <strong>Thinking</strong> voegt uitgebreid redeneren toe voor complexe problemen. <strong>Pro</strong> combineert maximale capaciteit met het grootste contextvenster.</p>
<h2>Dynamisch ophalen van tools</h2>
<p>In plaats van alle tooldefinities vooraf te laden, haalt het model alleen de benodigde specificaties op wanneer taken zich voordoen, waardoor de promptgrootte afneemt en de antwoordkwaliteit verbetert.</p>',
true),

('apple-rebuilds-siri-google-gemini','nl','business','Business','#f5a623','9to5Mac','2026-04-16',
'Apple herbouwt Siri op Google Gemini via privécloud',
'Apple heeft een volledig herbouwde Siri aangekondigd, aangedreven door het Gemini-model van Google op Apples Private Cloud Compute-infrastructuur. De nieuwe Siri verwerkt voor het eerst meerstappentaken op het apparaat.',
'<p>Apple kondigde een complete herbouw van Siri aan, aangedreven door het <strong>Gemini-model van Google</strong> op Apples Private Cloud Compute-infrastructuur. Dit is de meest ingrijpende wijziging aan Siri sinds de introductie in 2011.</p>
<h2>Wat de nieuwe Siri kan</h2>
<p>De vernieuwde Siri verwerkt voor het eerst <strong>meerstappentaken op het apparaat</strong>, waarbij acties in meerdere apps worden gecombineerd zonder gegevens naar externe servers te sturen. De nieuwe Siri wordt verwacht met iOS 20.</p>',
true),

('stanford-ai-index-2026','nl','research','Onderzoek','#4aaef5','Stanford HAI','2026-04-15',
'Stanford AI Index 2026: AI-adoptie overtreft die van de pc of het internet',
'De jaarlijkse AI Index van Stanford toont dat Anthropic in maart 2026 de algehele modelranking aanvoert, voor xAI, Google en OpenAI. Mensen adopteren AI sneller dan ze ooit de pc of het internet adopteerden.',
'<p>Het Human-Centered AI Institute van Stanford University publiceerde de <strong>AI Index 2026</strong>, het meest uitgebreide overzicht van AI-vooruitgang en maatschappelijke impact.</p>
<h2>Anthropic leidt algemene ranking</h2>
<p>Voor het eerst staat <strong>Anthropic</strong> bovenaan de algemene modelprestatie-ranking van Stanford, net voor xAI, Google en OpenAI.</p>
<h2>Adoptie sneller dan eerdere technologieën</h2>
<p>AI-tools bereikten <strong>500 miljoen vaste gebruikers sneller dan de pc, het internet of de smartphone</strong>. 67% van de kenniswerkers gebruikt AI-tools minstens wekelijks.</p>',
true),

('pwc-top-companies-ai-economic-gains','nl','research','Onderzoek','#4aaef5','PwC','2026-04-14',
'PwC: top 20% van bedrijven neemt 75% van AI-economische winsten',
'PwC''s AI-prestatiestudie 2026 toont een groeiende kloof tussen AI-leiders en de rest van de markt. Het rapport waarschuwt dat de meeste bedrijven nog in experimenteermodus zijn.',
'<p>PwC''s AI-prestatiestudie 2026, gebaseerd op gegevens van 5.000 bedrijven in 22 sectoren, onthult een groeiende kloof tussen AI-leiders en de rest van de markt.</p>
<h2>De 20/75-verdeling</h2>
<p>De top 20% van de bedrijven neemt <strong>75% van de economische waarde die door AI wordt gegenereerd</strong>. De onderscheidende factor is strategische oriëntatie: toonaangevende bedrijven gebruiken AI om <strong>nieuwe inkomstenbronnen te creëren</strong>.</p>
<h3>Het gevaar van experimenteermodus</h3>
<p>PwC waarschuwt dat 60% van de bedrijven nog in experimenteermodus is en pilots uitvoert zonder te schalen naar productie, waardoor ze de cumulatieve rendementen mislopen.</p>',
true),

('openai-acquires-tbpn','nl','business','Business','#f5a623','The Verge','2026-04-14',
'OpenAI verwerft Silicon Valley mediashow TBPN',
'OpenAI heeft de overname van TBPN, het Technology Business Programming Network, aangekondigd — een dagelijkse live technologie- en businessshow die een cultfenomeen in Silicon Valley is geworden. Het is de eerste acquisitie van een mediabedrijf door OpenAI.',
'<p>OpenAI verwierf <strong>TBPN (Technology Business Programming Network)</strong>, een dagelijkse live streamingshow over technologie, AI en business, een van de meest bekeken programma''s in Silicon Valley.</p>
<h2>Eerste mediaovername van OpenAI</h2>
<p>Dit is <strong>OpenAIs eerste acquisitie van een mediabedrijf</strong>. OpenAI stelt dat TBPN onafhankelijk blijft opereren met het bestaande team. Financiële voorwaarden werden niet bekendgemaakt.</p>',
true),

('anthropic-confirms-claude-mythos','nl','models','Modellen','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic bevestigt Claude Mythos, maar geeft het niet publiek vrij',
'Anthropic bevestigde het bestaan van Claude Mythos, beschreven als het meest capabele model dat het bedrijf ooit heeft gebouwd. Er is geen publieke release gepland. Toegang is beperkt tot ongeveer 50 partnerorganisaties via Project Glasswing.',
'<p>Anthropic heeft officieel het bestaan van <strong>Claude Mythos</strong> bevestigd, een model dat het beschrijft als het meest capabele dat het ooit heeft gebouwd, zonder plannen voor een publieke release.</p>
<h2>Project Glasswing</h2>
<p>Toegang tot Claude Mythos wordt beheerd via <strong>Project Glasswing</strong>, een beperkt programma voor ongeveer 50 partnerorganisaties gericht op geavanceerd cybersecurityonderzoek en complexe redeneerTaken.</p>',
true),

('openai-25b-revenue-ipo-2026','nl','business','Business','#f5a623','Bloomberg','2026-04-13',
'OpenAI overschrijdt $25 miljard jaaromzet en mikt op IPO in 2026',
'OpenAI heeft $25 miljard aan geannualiseerde omzet overschreden en zet eerste stappen naar een beursintroductie, mogelijk eind 2026. Anthropic volgt op korte afstand met bijna $19 miljard.',
'<p>OpenAI heeft de grens van <strong>$25 miljard aan geannualiseerde omzet</strong> overschreden en zet eerste stappen richting een beursintroductie, mogelijk eind 2026.</p>
<h2>Omzetsamenstelling</h2>
<p>Het grootste deel van de omzet komt van ChatGPT-abonnementen en API-gebruik. Zakelijke contracten zijn het snelst groeiende segment en goed voor circa 40% van de totale omzet.</p>
<h2>Anthropic dichtbij</h2>
<p><strong>Anthropic nadert $19 miljard</strong> aan geannualiseerde omzet. OpenAI voltooide begin 2026 een herstructurering naar een meer conventionele public benefit corporation, waarmee een belangrijk obstakel voor de IPO werd weggenomen.</p>',
true),

('meta-llama-4-scout-10m-context','nl','models','Modellen','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: 10M token context met MoE-architectuur',
'Meta lanceerde Llama 4 Scout en Maverick — de eerste Llama-modellen met Mixture-of-Experts-architectuur. Scout heeft 17 miljard actieve parameters over 16 experts (109 miljard totaal) en een contextvenster van 10 miljoen tokens. Beschikbaar voor commercieel gebruik.',
'<p>Meta lanceerde <strong>Llama 4 Scout en Maverick</strong> — de eerste modellen in de Llama-familie met een <strong>Mixture-of-Experts (MoE)-architectuur</strong> die slechts een subset van parameters activeert per query.</p>
<h2>Scout: gebouwd voor lange context</h2>
<p>Llama 4 Scout heeft <strong>17 miljard actieve parameters</strong> over 16 experts (109 miljard totaal) en een <strong>contextvenster van 10 miljoen tokens</strong> — het grootste van elk open model.</p>
<h2>Commercieel gebruik</h2>
<p>Beide modellen zijn beschikbaar voor commercieel gebruik onder Meta''s bijgewerkte Llama-licentie. De MoE-architectuur verlaagt de inferentiekosten met ongeveer 60% ten opzichte van een equivalent dense model.</p>',
true),

('google-gemma-4-31b-open-model','nl','models','Modellen','#7c6af7','Google Blog','2026-04-10',
'Google lanceert Gemma 4: 31B open model staat #3 wereldwijd',
'Google lanceerde Gemma 4 in vier varianten van 2,3B tot 31B parameters. Het 31B Dense model staat derde wereldwijd op Arena AI onder open modellen — het sterkste open-source model dat Google ooit heeft uitgebracht.',
'<p>Google lanceerde <strong>Gemma 4</strong>, de nieuwste generatie van zijn open-weight modelfamilie, in vier varianten van <strong>2,3 tot 31 miljard parameters</strong>.</p>
<h2>Gemma 4 31B: #3 wereldwijd</h2>
<p>Het vlaggenschipmodel <strong>Gemma 4 31B Dense staat derde wereldwijd</strong> in het Arena AI-klassement onder open modellen. De 14B- en 31B-varianten bevatten voor het eerst native beeldverwerkingscapaciteiten in de Gemma-serie.</p>',
true),

('eu-ai-act-full-enforcement','nl','regulation','Regulering','#f56565','Wired','2026-04-09',
'EU AI Act volledig van kracht: grote providers publiceren compliance-documenten',
'De EU AI Act trad in maart 2026 volledig in werking, waarbij alle AI-systemen in de EU moeten voldoen aan transparantie-, veiligheids- en risicoklassificatievereisten. OpenAI, Anthropic en Google hebben hun GPAI-compliance-documentatie gepubliceerd.',
'<p>De EU AI Act trad in <strong>maart 2026 volledig in werking</strong> en geldt voor alle AI-systemen die in de EU worden ingezet, ongeacht waar de ontwikkelaar gevestigd is.</p>
<h2>Wat de wet vereist</h2>
<p>De wet stelt een risicogebaseerd kader in. <strong>Hoog-risicosystemen</strong> moeten formele conformiteitsbeoordelingen voltooien, zich registreren in een centrale EU-database en voortdurende monitoring implementeren.</p>
<h3>Sancties</h3>
<p>Overtredingen kunnen boetes tot <strong>€35 miljoen of 7% van de wereldwijde jaaromzet</strong> opleveren. Het Europees AI-bureau in Brussel heeft al voorlopige onderzoeken geopend naar meerdere bedrijven.</p>',
true),

('zhipu-glm-51-744b-open-source','nl','models','Modellen','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI maakt GLM-5.1 open source: 744B parameter MoE-model',
'Het Chinese AI-lab Zhipu AI heeft GLM-5.1 uitgebracht onder de MIT-licentie — een mixture-of-experts model met 744 miljard parameters, 40B actieve parameters per doorstuur en een contextvenster van 200K tokens. De volledig open release zet druk op gesloten concurrenten.',
'<p>Het Chinese AI-lab Zhipu AI heeft <strong>GLM-5.1</strong> uitgebracht onder de MIT-licentie, waardoor het vrij is voor elk gebruik inclusief commerciële inzet zonder beperkingen.</p>
<h2>Schaal en architectuur</h2>
<p>GLM-5.1 is een <strong>Mixture-of-Experts model met 744 miljard parameters</strong> met 40 miljard actieve parameters per doorstuur en een <strong>contextvenster van 200.000 tokens</strong>.</p>
<h3>Waarom dit belangrijk is</h3>
<p>De MIT-licentie legt geen beperkingen op aan het gebruik, de aanpassing of verspreiding van het model. GLM-5.1 is het meest vrij beschikbare frontier-schaalmodel tot nu toe.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- POLISH (pl)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','pl','models','Modele','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 bije rekord na SWE-bench z wynikiem 87,6%',
'Claude Opus 4.7 od Anthropic ustanowił nowy rekord na SWE-bench Verified z wynikiem 87,6% — najwyższym dla publicznie dostępnego modelu. W cenie $5/$25 za milion tokenów oznacza jakościowy skok w agentycznej inżynierii oprogramowania.',
'<p>Najnowszy flagowy model Anthropic, <strong>Claude Opus 4.7</strong>, ustanowił rekord branżowy na SWE-bench Verified z wynikiem <strong>87,6%</strong>, przewyższając wszystkie wcześniej opublikowane wyniki dla publicznie dostępnych modeli.</p>
<h2>Co mierzy SWE-bench</h2>
<p>SWE-bench Verified testuje, czy AI potrafi rozwiązywać prawdziwe problemy z GitHuba w popularnych repozytoriach open-source, wymagając od modelu przeczytania raportu o błędzie, zrozumienia kodu, napisania poprawki i zaliczenia istniejących testów bez pomocy człowieka.</p>
<h2>Ceny i dostępność</h2>
<p>Claude Opus 4.7 kosztuje <strong>$5 za milion tokenów wejściowych i $25 za milion tokenów wyjściowych</strong>. Dostępny przez API Anthropic i Claude.ai Pro.</p>',
true),

('gpt-54-three-variants-1m-context','pl','models','Modele','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 dostępny w trzech wariantach z kontekstem 1M tokenów',
'OpenAI wydało GPT-5.4 w wariantach Standard, Thinking i Pro. Wszystkie trzy mają okno kontekstowe 1,05 miliona tokenów — największe komercyjnie dostępne od OpenAI. Model dynamicznie pobiera specyfikacje narzędzi zamiast ładować je wszystkie na początku.',
'<p>OpenAI rozszerzyło swoją ofertę o <strong>GPT-5.4</strong> w trzech wariantach: Standard, Thinking i Pro. Wszystkie trzy mają tę samą architekturę i <strong>okno kontekstowe 1,05 miliona tokenów</strong>.</p>
<h2>Trzy warianty</h2>
<p><strong>Standard</strong> jest zoptymalizowany pod kątem szybkości i kosztu. <strong>Thinking</strong> dodaje rozszerzone rozumowanie dla złożonych problemów. <strong>Pro</strong> łączy maksymalne możliwości z największym kontekstem.</p>
<h2>Dynamiczne pobieranie narzędzi</h2>
<p>Zamiast ładować wszystkie definicje narzędzi na początku, model pobiera tylko potrzebne specyfikacje w miarę pojawiania się zadań, zmniejszając rozmiar promptu i poprawiając jakość odpowiedzi.</p>',
true),

('apple-rebuilds-siri-google-gemini','pl','business','Biznes','#f5a623','9to5Mac','2026-04-16',
'Apple przebudowuje Siri na Google Gemini przez prywatną chmurę',
'Apple ogłosiło całkowicie przebudowaną Siri opartą na modelu Gemini od Google działającym w infrastrukturze Private Cloud Compute Apple. Nowa Siri po raz pierwszy obsługuje wieloetapowe zadania na urządzeniu.',
'<p>Apple ogłosiło całkowitą przebudowę Siri, napędzaną przez <strong>model Gemini od Google</strong> działający w infrastrukturze Private Cloud Compute Apple. To największa zmiana w Siri od jej wprowadzenia w 2011 roku.</p>
<h2>Co potrafi nowa Siri</h2>
<p>Przebudowana Siri po raz pierwszy obsługuje <strong>wieloetapowe zadania na urządzeniu</strong>, łącząc działania w wielu aplikacjach bez wysyłania danych do zewnętrznych serwerów. Nowa Siri ma pojawić się wraz z iOS 20.</p>',
true),

('stanford-ai-index-2026','pl','research','Badania','#4aaef5','Stanford HAI','2026-04-15',
'Indeks AI Stanforda 2026: adopcja AI szybsza niż PC czy internetu',
'Coroczny Indeks AI Stanforda ujawnia, że Anthropic prowadzi w ogólnym rankingu modeli w marcu 2026, przed xAI, Google i OpenAI. Ludzie adoptują AI szybciej niż kiedyś adoptowali PC czy internet.',
'<p>Instytut AI Skoncentrowanej na Człowieku Uniwersytetu Stanforda opublikował <strong>Indeks AI 2026</strong>, najbardziej kompleksowy przegląd postępów AI i jej społecznego wpływu.</p>
<h2>Anthropic prowadzi w ogólnym rankingu</h2>
<p>Po raz pierwszy <strong>Anthropic</strong> zajmuje pierwsze miejsce w ogólnym rankingu wydajności modeli Stanforda, nieznacznie przed xAI, Google i OpenAI.</p>
<h2>Adopcja szybsza niż jakakolwiek wcześniejsza technologia</h2>
<p>Narzędzia AI osiągnęły <strong>500 milionów stałych użytkowników szybciej niż PC, internet czy smartfon</strong>. 67% pracowników wiedzy używa narzędzi AI co najmniej raz w tygodniu.</p>',
true),

('pwc-top-companies-ai-economic-gains','pl','research','Badania','#4aaef5','PwC','2026-04-14',
'PwC: top 20% firm przechwytuje 75% ekonomicznych zysków z AI',
'Badanie wydajności AI 2026 od PwC ujawnia rosnącą przepaść między liderami AI a resztą rynku. Raport ostrzega, że większość firm wciąż jest w trybie eksperymentowania.',
'<p>Badanie PwC dotyczące wydajności AI 2026, oparte na danych 5000 firm z 22 branż, ujawnia rosnącą przepaść między liderami AI a resztą rynku.</p>
<h2>Podział 20/75</h2>
<p>Top 20% firm przechwytuje <strong>75% wartości ekonomicznej generowanej przez AI</strong>. Czynnikiem odróżniającym jest orientacja strategiczna: wiodące firmy używają AI do <strong>tworzenia nowych źródeł przychodów</strong>.</p>
<h3>Niebezpieczeństwo trybu eksperymentowania</h3>
<p>PwC ostrzega, że 60% firm wciąż jest w trybie eksperymentowania, prowadząc piloty bez skalowania do produkcji i tracąc skumulowane zyski.</p>',
true),

('openai-acquires-tbpn','pl','business','Biznes','#f5a623','The Verge','2026-04-14',
'OpenAI przejmuje program mediowy Doliny Krzemowej TBPN',
'OpenAI ogłosiło przejęcie TBPN, Technology Business Programming Network — codziennego programu na żywo o technologii i biznesie, który stał się kultowym zjawiskiem w Dolinie Krzemowej. To pierwsze przejęcie firmy medialnej przez OpenAI.',
'<p>OpenAI przejęło <strong>TBPN (Technology Business Programming Network)</strong>, codzienny program streamingowy na żywo o technologii, AI i biznesie, jeden z najczęściej oglądanych w Dolinie Krzemowej.</p>
<h2>Pierwsze przejęcie medialne OpenAI</h2>
<p>To <strong>pierwsze przejęcie firmy medialnej</strong> przez OpenAI, sygnalizujące ambicje budowania bezpośrednich relacji z widownią. OpenAI twierdzi, że TBPN będzie nadal działać niezależnie. Warunki finansowe nie zostały ujawnione.</p>',
true),

('anthropic-confirms-claude-mythos','pl','models','Modele','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic potwierdza Claude Mythos, ale nie wyda go publicznie',
'Anthropic potwierdziło istnienie Claude Mythos, opisanego jako najbardziej zaawansowany model, jaki firma kiedykolwiek zbudowała. Nie planuje się publicznego wydania. Dostęp jest ograniczony do ok. 50 organizacji partnerskich przez Projekt Glasswing.',
'<p>Anthropic oficjalnie potwierdziło istnienie <strong>Claude Mythos</strong>, modelu opisanego jako najbardziej zaawansowany w historii firmy, bez planów publicznego wydania.</p>
<h2>Projekt Glasswing</h2>
<p>Dostęp do Claude Mythos jest zarządzany przez <strong>Projekt Glasswing</strong>, ograniczony program dla około 50 organizacji partnerskich skoncentrowanych na zaawansowanych badaniach cyberbezpieczeństwa i złożonym rozumowaniu.</p>',
true),

('openai-25b-revenue-ipo-2026','pl','business','Biznes','#f5a623','Bloomberg','2026-04-13',
'OpenAI przekracza $25 mld rocznych przychodów i celuje w IPO w 2026',
'OpenAI przekroczyło $25 miliardów w ujęciu rocznym i podejmuje pierwsze kroki ku pierwszej ofercie publicznej, potencjalnie pod koniec 2026 roku. Anthropic jest blisko z prawie $19 miliardami.',
'<p>OpenAI przekroczyło poziom <strong>$25 miliardów przychodów w ujęciu rocznym</strong> i podejmuje pierwsze kroki w kierunku IPO, potencjalnie pod koniec 2026 roku.</p>
<h2>Struktura przychodów</h2>
<p>Większość przychodów pochodzi z subskrypcji ChatGPT i użycia API. Kontrakty korporacyjne stanowią ok. 40% łącznych przychodów i są najszybciej rosnącym segmentem.</p>
<h2>Anthropic tuż za nimi</h2>
<p><strong>Anthropic zbliża się do $19 miliardów</strong> przychodów w ujęciu rocznym. OpenAI zakończyło restrukturyzację w 2026 roku, przekształcając się w bardziej konwencjonalną korporację użytku publicznego.</p>',
true),

('meta-llama-4-scout-10m-context','pl','models','Modele','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: kontekst 10M tokenów z architekturą MoE',
'Meta wydało Llama 4 Scout i Maverick — pierwsze modele Llama z architekturą Mixture-of-Experts. Scout ma 17 mld aktywnych parametrów na 16 ekspertów (109 mld łącznie) i okno kontekstowe 10 milionów tokenów. Dostępne do użytku komercyjnego.',
'<p>Meta wydało <strong>Llama 4 Scout i Maverick</strong> — pierwsze modele w rodzinie Llama wykorzystujące architekturę <strong>Mixture-of-Experts (MoE)</strong>, która aktywuje tylko podzbiór parametrów dla każdego zapytania.</p>
<h2>Scout: zbudowany dla długiego kontekstu</h2>
<p>Llama 4 Scout ma <strong>17 miliardów aktywnych parametrów</strong> na 16 ekspertów (109 miliardów łącznie) i <strong>okno kontekstowe 10 milionów tokenów</strong> — największe wśród otwartych modeli.</p>
<h2>Użytek komercyjny</h2>
<p>Oba modele są dostępne do użytku komercyjnego na podstawie zaktualizowanej licencji Llama firmy Meta. Architektura MoE redukuje koszty wnioskowania o ok. 60% w porównaniu z gęstym modelem o równoważnej jakości.</p>',
true),

('google-gemma-4-31b-open-model','pl','models','Modele','#7c6af7','Google Blog','2026-04-10',
'Google wydaje Gemma 4: otwarty model 31B na 3. miejscu na świecie',
'Google wydało Gemma 4 w czterech wariantach od 2,3 do 31 miliardów parametrów. Model 31B Dense zajmuje 3. miejsce na świecie w rankingu Arena AI wśród otwartych modeli — to najsilniejszy model open-source wydany kiedykolwiek przez Google.',
'<p>Google wydało <strong>Gemma 4</strong>, najnowszą generację rodziny modeli open-weight, w czterech wariantach od <strong>2,3 do 31 miliardów parametrów</strong>.</p>
<h2>Gemma 4 31B: #3 na świecie</h2>
<p>Flagowy model <strong>Gemma 4 31B Dense zajmuje trzecie miejsce na świecie</strong> w rankingu Arena AI wśród otwartych modeli. Warianty 14B i 31B po raz pierwszy w serii Gemma zawierają natywne możliwości wizji.</p>',
true),

('eu-ai-act-full-enforcement','pl','regulation','Regulacja','#f56565','Wired','2026-04-09',
'Akt o AI UE w pełni obowiązuje: duzi dostawcy publikują dokumenty zgodności',
'Akt o AI UE wszedł w pełne życie w marcu 2026 roku, zobowiązując wszystkie systemy AI w UE do spełnienia wymogów przejrzystości, bezpieczeństwa i klasyfikacji ryzyka. OpenAI, Anthropic i Google opublikowały dokumentację zgodności GPAI.',
'<p>Akt o AI UE wszedł w <strong>pełne życie w marcu 2026 roku</strong>, stosując się do wszystkich systemów AI wdrożonych w UE, niezależnie od siedziby dewelopera.</p>
<h2>Czego wymaga Akt</h2>
<p>Akt ustanawia ramy oparte na ryzyku. <strong>Systemy wysokiego ryzyka</strong> muszą przejść formalne oceny zgodności, zarejestrować się w centralnej bazie danych UE i wdrożyć bieżący monitoring.</p>
<h3>Sankcje</h3>
<p>Naruszenia mogą skutkować grzywnami do <strong>35 milionów euro lub 7% rocznych globalnych obrotów</strong>. Europejskie Biuro ds. AI w Brukseli wszczęło już wstępne dochodzenia przeciwko kilku firmom.</p>',
true),

('zhipu-glm-51-744b-open-source','pl','models','Modele','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI udostępnia GLM-5.1 jako open source: model MoE z 744 mld parametrów',
'Chiński lab AI Zhipu AI wydał GLM-5.1 na licencji MIT — model mixture-of-experts z 744 miliardami parametrów, 40 mld aktywnych parametrów na przejście i oknem kontekstowym 200K tokenów. W pełni otwarte wydanie wywiera presję na konkurentów z zamkniętym kodem.',
'<p>Chiński lab AI Zhipu AI wydał <strong>GLM-5.1</strong> na licencji MIT, czyniąc go bezpłatnym do wszelkich zastosowań w tym komercyjnych bez ograniczeń.</p>
<h2>Skala i architektura</h2>
<p>GLM-5.1 to <strong>model Mixture-of-Experts z 744 miliardami parametrów</strong> z 40 miliardami aktywnych parametrów na przejście i <strong>oknem kontekstowym 200 000 tokenów</strong>.</p>
<h3>Dlaczego to ważne</h3>
<p>Licencja MIT nie nakłada żadnych ograniczeń na sposób używania, modyfikowania lub redystrybucji modelu. GLM-5.1 jest najbardziej swobodnie dostępnym modelem w skali frontier na dzień dzisiejszy.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- ROMANIAN (ro)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','ro','models','Modele','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 stabilește un record pe SWE-bench cu 87,6%',
'Claude Opus 4.7 de la Anthropic a stabilit un nou record pe SWE-bench Verified cu 87,6% — cel mai mare scor al oricărui model disponibil public. La $5/$25 per milion de tokeni, marchează un salt calitativ în ingineria software agentică.',
'<p>Noul model de vârf al Anthropic, <strong>Claude Opus 4.7</strong>, a stabilit un record de industrie pe SWE-bench Verified cu un scor de <strong>87,6%</strong>, depășind toate rezultatele publicate anterior pentru modelele disponibile public.</p>
<h2>Ce măsoară SWE-bench</h2>
<p>SWE-bench Verified testează dacă un AI poate rezolva probleme reale GitHub din depozite open-source populare, cerând modelului să citească un raport de bug, să înțeleagă codul, să scrie o remediere și să treacă testele existente fără îndrumare umană.</p>
<h2>Prețuri și disponibilitate</h2>
<p>Claude Opus 4.7 costă <strong>$5 per milion de tokeni de intrare și $25 per milion de tokeni de ieșire</strong>. Disponibil prin API Anthropic și Claude.ai Pro.</p>',
true),

('gpt-54-three-variants-1m-context','ro','models','Modele','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 disponibil în trei variante cu context de 1M tokeni',
'OpenAI a lansat GPT-5.4 în variantele Standard, Thinking și Pro. Toate trei partajează o fereastră de context de 1,05 milioane tokeni — cea mai mare oferită comercial de OpenAI. Modelul recuperează dinamic specificațiile instrumentelor.',
'<p>OpenAI și-a extins gama cu lansarea <strong>GPT-5.4</strong> în trei variante: Standard, Thinking și Pro. Toate trei partajează aceeași arhitectură și o <strong>fereastră de context de 1,05 milioane tokeni</strong>.</p>
<h2>Cele trei variante</h2>
<p><strong>Standard</strong> este optimizat pentru viteză și cost. <strong>Thinking</strong> adaugă raționament extins pentru probleme complexe. <strong>Pro</strong> combină capacitatea maximă cu cel mai mare context.</p>',
true),

('apple-rebuilds-siri-google-gemini','ro','business','Business','#f5a623','9to5Mac','2026-04-16',
'Apple reconstruiește Siri pe Google Gemini prin cloud privat',
'Apple a anunțat o Siri complet reconstruită, alimentată de modelul Gemini de la Google care rulează pe infrastructura Private Cloud Compute a Apple. Noul Siri gestionează pentru prima dată sarcini cu mai mulți pași pe dispozitiv.',
'<p>Apple a anunțat o reconstrucție completă a Siri, alimentată de <strong>modelul Gemini de la Google</strong> care rulează pe infrastructura Private Cloud Compute a Apple. Acesta este cel mai semnificativ schimb adus Siri de la introducerea sa în 2011.</p>
<h2>Ce poate face noul Siri</h2>
<p>Siri renovată gestionează <strong>sarcini cu mai mulți pași pe dispozitiv pentru prima dată</strong>, combinând acțiuni în mai multe aplicații fără a trimite date la servere externe. Noul Siri este așteptat cu iOS 20.</p>',
true),

('stanford-ai-index-2026','ro','research','Cercetare','#4aaef5','Stanford HAI','2026-04-15',
'Indicele AI Stanford 2026: adoptarea AI depășește cea a PC-ului sau internetului',
'Indicele AI anual al Stanford dezvăluie că Anthropic conduce clasamentul general al modelelor în martie 2026, înaintea xAI, Google și OpenAI. Oamenii adoptă AI mai rapid decât au adoptat PC-ul sau internetul.',
'<p>Institutul de AI Centrat pe Om al Universității Stanford a publicat <strong>Indicele AI 2026</strong>, cel mai cuprinzător instantaneu bazat pe date al progresului AI.</p>
<h2>Anthropic conduce clasamentul general</h2>
<p>Pentru prima dată, <strong>Anthropic</strong> conduce clasamentul general al performanței modelelor Stanford, ușor înaintea xAI, Google și OpenAI.</p>
<h2>Adoptare mai rapidă decât orice tehnologie anterioară</h2>
<p>Instrumentele AI au atins <strong>500 de milioane de utilizatori regulați mai repede decât PC-ul, internetul sau smartphone-ul</strong>. 67% dintre lucrătorii intelectuali folosesc instrumente AI cel puțin săptămânal.</p>',
true),

('pwc-top-companies-ai-economic-gains','ro','research','Cercetare','#4aaef5','PwC','2026-04-14',
'PwC: top 20% dintre companii captează 75% din câștigurile economice AI',
'Studiul de performanță AI 2026 al PwC evidențiază o divizare crescândă între liderii AI și restul pieței. Raportul avertizează că majoritatea companiilor sunt încă în modul de experimentare.',
'<p>Studiul PwC privind performanța AI 2026 revelează o divizare crescândă între liderii AI și restul pieței.</p>
<h2>Divizarea 20/75</h2>
<p>Top 20% dintre companii captează <strong>75% din valoarea economică generată de AI</strong>. Factorul distinctiv este orientarea strategică: companiile lider folosesc AI pentru <strong>a crea noi surse de venituri</strong>.</p>
<h3>Pericolul modului de experimentare</h3>
<p>PwC avertizează că 60% dintre companii sunt încă în modul de experimentare, ratând randamentele cumulative în timp ce liderii construiesc avantaje de date.</p>',
true),

('openai-acquires-tbpn','ro','business','Business','#f5a623','The Verge','2026-04-14',
'OpenAI achiziționează emisiunea media din Silicon Valley TBPN',
'OpenAI a anunțat achiziția TBPN, Technology Business Programming Network — o emisiune zilnică live despre tehnologie și afaceri devenită un fenomen cult în Silicon Valley. Este prima achiziție a unei companii media de către OpenAI.',
'<p>OpenAI a achiziționat <strong>TBPN (Technology Business Programming Network)</strong>, o emisiune zilnică de streaming live despre tehnologie, AI și afaceri, devenită una dintre cele mai urmărite din Silicon Valley.</p>
<h2>Prima achiziție media a OpenAI</h2>
<p>Aceasta este <strong>prima achiziție a unei companii media</strong> de către OpenAI. Compania afirmă că TBPN va continua să opereze independent. Termenii financiari nu au fost divulgați.</p>',
true),

('anthropic-confirms-claude-mythos','ro','models','Modele','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic confirmă Claude Mythos, dar nu îl va lansa public',
'Anthropic a confirmat existența Claude Mythos, descris ca cel mai capabil model construit vreodată de companie. Nu este planificat niciun lansament public. Accesul este limitat la aproximativ 50 de organizații partenere prin Proiectul Glasswing.',
'<p>Anthropic a confirmat oficial existența <strong>Claude Mythos</strong>, un model pe care îl descrie ca cel mai capabil construit vreodată, fără planuri de lansare publică.</p>
<h2>Proiectul Glasswing</h2>
<p>Accesul la Claude Mythos este gestionat prin <strong>Proiectul Glasswing</strong>, un program restricționat pentru aproximativ 50 de organizații partenere axate pe cercetare avansată în securitate cibernetică și raționament complex.</p>',
true),

('openai-25b-revenue-ipo-2026','ro','business','Business','#f5a623','Bloomberg','2026-04-13',
'OpenAI depășește $25 miliarde venituri anuale și vizează IPO în 2026',
'OpenAI a depășit $25 de miliarde în venituri anualizate și face primii pași spre o ofertă publică inițială, potențial la sfârșitul anului 2026. Anthropic este aproape, apropiindu-se de $19 miliarde.',
'<p>OpenAI a depășit pragul de <strong>$25 de miliarde în venituri anualizate</strong> și face primii pași spre un IPO potențial la sfârșitul anului 2026.</p>
<h2>Structura veniturilor</h2>
<p>Majoritatea veniturilor provine din abonamentele ChatGPT și utilizarea API. Contractele enterprise reprezintă aproximativ 40% din veniturile totale și sunt segmentul cu cea mai rapidă creștere.</p>
<h2>Anthropic aproape</h2>
<p><strong>Anthropic se apropie de $19 miliarde</strong> în venituri anualizate. OpenAI a finalizat o restructurare în 2026 convertindu-se într-o corporație de beneficiu public mai convențională.</p>',
true),

('meta-llama-4-scout-10m-context','ro','models','Modele','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: context de 10M tokeni cu arhitectură MoE',
'Meta a lansat Llama 4 Scout și Maverick — primele modele Llama cu arhitectură Mixture-of-Experts. Scout are 17 miliarde de parametri activi pe 16 experți (109 miliarde total) și o fereastră de context de 10 milioane de tokeni. Disponibil pentru uz comercial.',
'<p>Meta a lansat <strong>Llama 4 Scout și Maverick</strong> — primele modele din familia Llama care utilizează o <strong>arhitectură Mixture-of-Experts (MoE)</strong> care activează doar un subset de parametri per interogare.</p>
<h2>Scout: construit pentru context lung</h2>
<p>Llama 4 Scout are <strong>17 miliarde de parametri activi</strong> pe 16 experți (109 miliarde total) și o <strong>fereastră de context de 10 milioane tokeni</strong> — cea mai mare a oricărui model deschis.</p>
<h2>Uz comercial</h2>
<p>Ambele modele sunt disponibile pentru uz comercial sub licența Llama actualizată a Meta. Arhitectura MoE reduce costurile de inferență cu aproximativ 60%.</p>',
true),

('google-gemma-4-31b-open-model','ro','models','Modele','#7c6af7','Google Blog','2026-04-10',
'Google lansează Gemma 4: model deschis de 31B pe locul 3 mondial',
'Google a lansat Gemma 4 în patru variante de la 2,3B la 31B parametri. Modelul 31B Dense ocupă locul 3 mondial pe Arena AI printre modelele deschise — cel mai puternic model open-source lansat vreodată de Google.',
'<p>Google a lansat <strong>Gemma 4</strong>, cea mai recentă generație a familiei sale de modele open-weight, în patru variante de la <strong>2,3 la 31 de miliarde de parametri</strong>.</p>
<h2>Gemma 4 31B: #3 mondial</h2>
<p>Modelul principal <strong>Gemma 4 31B Dense ocupă locul trei mondial</strong> în clasamentul Arena AI printre modelele deschise. Variantele 14B și 31B includ pentru prima dată capacități native de viziune în seria Gemma.</p>',
true),

('eu-ai-act-full-enforcement','ro','regulation','Reglementare','#f56565','Wired','2026-04-09',
'Legea AI a UE în vigoare deplină: marii furnizori publică documente de conformitate',
'Legea AI a UE a intrat în vigoare deplină în martie 2026, cerând tuturor sistemelor AI din UE să respecte cerințele de transparență, siguranță și clasificare a riscurilor. OpenAI, Anthropic și Google și-au publicat documentația de conformitate GPAI.',
'<p>Legea AI a UE a intrat în <strong>vigoare deplină în martie 2026</strong>, aplicându-se tuturor sistemelor AI implementate în UE, indiferent de locul în care se află dezvoltatorul.</p>
<h2>Ce cere Legea</h2>
<p>Legea stabilește un cadru bazat pe risc. <strong>Sistemele cu risc ridicat</strong> trebuie să finalizeze evaluări de conformitate formale, să se înregistreze într-o bază de date centrală a UE și să implementeze monitorizare continuă.</p>
<h3>Sancțiuni</h3>
<p>Încălcările pot duce la amenzi de până la <strong>€35 milioane sau 7% din cifra de afaceri anuală globală</strong>. Biroul European AI din Bruxelles a deschis deja anchete preliminare împotriva mai multor companii.</p>',
true),

('zhipu-glm-51-744b-open-source','ro','models','Modele','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI lansează GLM-5.1 open source: model MoE cu 744B parametri',
'Laboratorul chinez de AI Zhipu AI a lansat GLM-5.1 sub licența MIT — un model mixture-of-experts cu 744 de miliarde de parametri, 40B parametri activi per trecere și fereastră de context de 200K tokeni. Lansarea complet deschisă face presiune pe concurenții cu sursă închisă.',
'<p>Laboratorul chinez de AI Zhipu AI a lansat <strong>GLM-5.1</strong> sub licența MIT, făcându-l liber pentru orice utilizare, inclusiv implementare comercială fără restricții.</p>
<h2>Scară și arhitectură</h2>
<p>GLM-5.1 este un <strong>model Mixture-of-Experts cu 744 de miliarde de parametri</strong> cu 40 de miliarde de parametri activi per trecere și o <strong>fereastră de context de 200.000 tokeni</strong>.</p>
<h3>De ce contează</h3>
<p>Licența MIT nu impune restricții privind modul în care modelul este utilizat, modificat sau redistribuit. GLM-5.1 este cel mai liber disponibil model la scară frontier până în prezent.</p>',
true),

-- ═══════════════════════════════════════════════════════
-- UKRAINIAN (uk)
-- ═══════════════════════════════════════════════════════

('claude-opus-47-swe-bench','uk','models','Моделі','#7c6af7','Anthropic Blog','2026-04-17',
'Claude Opus 4.7 встановив рекорд на SWE-bench: 87,6%',
'Claude Opus 4.7 від Anthropic встановив новий рекорд на SWE-bench Verified — 87,6%, найвищий результат серед публічно доступних моделей. За ціною $5/$25 за мільйон токенів модель знаменує якісний стрибок в агентній розробці ПЗ.',
'<p>Новий флагманський модель Anthropic — <strong>Claude Opus 4.7</strong> — встановив рекорд галузі на SWE-bench Verified з результатом <strong>87,6%</strong>, перевершивши всі раніше опубліковані показники для публічно доступних моделей.</p>
<h2>Що вимірює SWE-bench</h2>
<p>SWE-bench Verified перевіряє, чи здатний ШІ вирішувати реальні задачі з GitHub у популярних open-source репозиторіях без участі людини.</p>
<h2>Ціни та доступність</h2>
<p>Claude Opus 4.7 коштує <strong>$5 за мільйон вхідних токенів і $25 за мільйон вихідних</strong>. Доступний через Anthropic API та Claude.ai Pro.</p>',
true),

('gpt-54-three-variants-1m-context','uk','models','Моделі','#7c6af7','OpenAI Blog','2026-04-16',
'GPT-5.4 вийшов у трьох варіантах з контекстом 1М токенів',
'OpenAI випустила GPT-5.4 у варіантах Standard, Thinking та Pro. Всі три мають вікно контексту 1,05 мільйона токенів — найбільше в комерційних пропозиціях OpenAI.',
'<p>OpenAI розширила лінійку моделей, випустивши <strong>GPT-5.4</strong> у трьох варіантах: Standard, Thinking та Pro, кожен з <strong>вікном контексту 1,05 мільйона токенів</strong>.</p>
<h2>Три варіанти</h2>
<p><strong>Standard</strong> оптимізований для швидкості та вартості. <strong>Thinking</strong> додає розширений шар міркувань. <strong>Pro</strong> поєднує максимальні можливості з найбільшим контекстом.</p>',
true),

('apple-rebuilds-siri-google-gemini','uk','business','Бізнес','#f5a623','9to5Mac','2026-04-16',
'Apple переробила Siri на базі Google Gemini через приватну хмару',
'Apple оголосила повністю переосмислену Siri на основі моделі Gemini від Google, що працює в інфраструктурі Private Cloud Compute Apple. Нова Siri вперше виконує багатокрокові завдання на пристрої.',
'<p>Apple оголосила про повне переосмислення Siri на базі <strong>моделі Gemini від Google</strong> в інфраструктурі Private Cloud Compute Apple. Це найзначніша зміна Siri з 2011 року.</p>
<h2>Що вміє нова Siri</h2>
<p>Оновлена Siri вперше виконує <strong>багатокрокові завдання на пристрої</strong>, поєднуючи дії в кількох програмах без надсилання даних на зовнішні сервери. Нова Siri очікується з iOS 20.</p>',
true),

('stanford-ai-index-2026','uk','research','Дослідження','#4aaef5','Stanford HAI','2026-04-15',
'Індекс ШІ Стенфорда 2026: прийняття ШІ швидше, ніж ПК чи інтернету',
'Щорічний Індекс ШІ Стенфорда показує, що Anthropic очолює загальний рейтинг моделей у березні 2026, попереду xAI, Google та OpenAI. Люди приймають ШІ швидше, ніж колись приймали ПК або інтернет.',
'<p>Інститут ШІ, зосередженого на людині, Стенфордського університету опублікував <strong>Індекс ШІ 2026</strong> — найповніший огляд прогресу та соціального впливу штучного інтелекту.</p>
<h2>Anthropic очолює загальний рейтинг</h2>
<p>Вперше <strong>Anthropic</strong> очолює загальний рейтинг продуктивності моделей Стенфорда, трохи попереду xAI, Google та OpenAI.</p>
<h2>Прийняття швидше за будь-яку попередню технологію</h2>
<p>Інструменти ШІ досягли <strong>500 мільйонів постійних користувачів швидше, ніж ПК, інтернет чи смартфон</strong>. 67% працівників розумової праці використовують інструменти ШІ щонайменше щотижня.</p>',
true),

('pwc-top-companies-ai-economic-gains','uk','research','Дослідження','#4aaef5','PwC','2026-04-14',
'PwC: топ-20% компаній отримують 75% економічної вигоди від ШІ',
'Дослідження PwC щодо ефективності ШІ 2026 року фіксує зростаючий розрив між лідерами ШІ та рештою ринку. У звіті застерігають, що більшість бізнесів все ще в режимі експериментів.',
'<p>Дослідження PwC щодо ефективності ШІ 2026 року виявляє зростаючий розрив між лідерами в галузі ШІ та рештою ринку.</p>
<h2>Розрив 20/75</h2>
<p>Топ-20% компаній отримують <strong>75% економічної цінності, що генерується ШІ</strong>. Ключова відмінність — стратегічна орієнтація: лідери використовують ШІ для <strong>створення нових джерел доходу</strong>.</p>
<h3>Небезпека режиму експериментів</h3>
<p>PwC застерігає, що 60% компаній все ще в режимі експериментів, запускають пілоти без масштабування до продакшену та втрачають накопичену віддачу.</p>',
true),

('openai-acquires-tbpn','uk','business','Бізнес','#f5a623','The Verge','2026-04-14',
'OpenAI придбала медіашоу Кремнієвої долини TBPN',
'OpenAI оголосила про придбання TBPN, Technology Business Programming Network — щоденного живого шоу про технології та бізнес, що стало культовим явищем у Кремнієвій долині. Це перше придбання медіакомпанії в історії OpenAI.',
'<p>OpenAI придбала <strong>TBPN (Technology Business Programming Network)</strong>, щоденне стримінгове шоу про технології, ШІ та бізнес, одне з найпопулярніших у Кремнієвій долині.</p>
<h2>Перше медіапридбання OpenAI</h2>
<p>Це <strong>перше придбання медіакомпанії</strong> в історії OpenAI. Компанія стверджує, що TBPN продовжить роботу незалежно. Фінансові умови угоди не розкриваються.</p>',
true),

('anthropic-confirms-claude-mythos','uk','models','Моделі','#7c6af7','Anthropic Blog','2026-04-13',
'Anthropic підтвердила існування Claude Mythos — але не випустить його публічно',
'Anthropic підтвердила існування Claude Mythos — за описом, найпотужнішої моделі, яку компанія будь-коли створювала. Публічного релізу не планується. Доступ обмежений приблизно 50 партнерськими організаціями через проєкт Glasswing.',
'<p>Anthropic офіційно підтвердила існування <strong>Claude Mythos</strong> — моделі, яку компанія описує як найпотужнішу з будь-коли створених, без планів публічного релізу.</p>
<h2>Проєкт Glasswing</h2>
<p>Доступ до Claude Mythos управляється через <strong>проєкт Glasswing</strong> — закриту програму для приблизно 50 партнерських організацій, зосереджених на передових дослідженнях кібербезпеки та складному багатокроковому міркуванні.</p>',
true),

('openai-25b-revenue-ipo-2026','uk','business','Бізнес','#f5a623','Bloomberg','2026-04-13',
'OpenAI перевищила $25 млрд річного доходу і готується до IPO у 2026',
'OpenAI перевищила $25 мільярдів у річному вимірі та робить перші кроки до первинного публічного розміщення акцій, можливо, наприкінці 2026 року. Anthropic поряд — близько $19 мільярдів.',
'<p>OpenAI перевищила відмітку в <strong>$25 мільярдів річного доходу</strong> та робить перші кроки до IPO, можливо, наприкінці 2026 року.</p>
<h2>Структура доходів</h2>
<p>Більшість доходів надходить від підписок ChatGPT та використання API. Корпоративні контракти становлять близько 40% загального доходу і є найшвидше зростаючим сегментом.</p>
<h2>Anthropic поряд</h2>
<p><strong>Anthropic наближається до $19 мільярдів</strong> річного доходу. OpenAI завершила реструктуризацію на початку 2026 року, перетворившись на більш звичайну корпорацію суспільної користі.</p>',
true),

('meta-llama-4-scout-10m-context','uk','models','Моделі','#7c6af7','Meta AI Blog','2026-04-12',
'Meta Llama 4 Scout: контекст 10М токенів з архітектурою MoE',
'Meta випустила Llama 4 Scout та Maverick — перші моделі Llama з архітектурою Mixture-of-Experts. Scout має 17 млрд активних параметрів на 16 експертів (109 млрд загалом) та вікно контексту 10 мільйонів токенів.',
'<p>Meta випустила <strong>Llama 4 Scout та Maverick</strong> — перші моделі сімейства Llama з <strong>архітектурою Mixture-of-Experts (MoE)</strong>, яка активує лише підмножину параметрів для кожного запиту.</p>
<h2>Scout: створений для довгого контексту</h2>
<p>Llama 4 Scout має <strong>17 мільярдів активних параметрів</strong> на 16 експертів (109 мільярдів загалом) та <strong>вікно контексту 10 мільйонів токенів</strong> — найбільше серед відкритих моделей.</p>
<h2>Комерційне використання</h2>
<p>Обидві моделі доступні для комерційного використання за оновленою ліцензією Llama від Meta. Архітектура MoE знижує витрати на інференс приблизно на 60%.</p>',
true),

('google-gemma-4-31b-open-model','uk','models','Моделі','#7c6af7','Google Blog','2026-04-10',
'Google випустила Gemma 4: відкрита модель 31B займає 3-є місце у світі',
'Google випустила Gemma 4 у чотирьох варіантах від 2,3 до 31 мільярда параметрів. Модель 31B Dense займає 3-є місце у світовому рейтингу Arena AI серед відкритих моделей.',
'<p>Google випустила <strong>Gemma 4</strong>, останнє покоління сімейства open-weight моделей, у чотирьох варіантах від <strong>2,3 до 31 мільярда параметрів</strong>.</p>
<h2>Gemma 4 31B: №3 у світі</h2>
<p>Флагманська <strong>Gemma 4 31B Dense займає третє місце у світовому рейтингу</strong> Arena AI серед відкритих моделей. Варіанти 14B та 31B вперше в серії Gemma включають нативні можливості роботи із зображеннями.</p>',
true),

('eu-ai-act-full-enforcement','uk','regulation','Регулювання','#f56565','Wired','2026-04-09',
'Закон ЄС про ШІ набув повної сили: великі провайдери публікують документи відповідності',
'Закон ЄС про ШІ набув повної сили в березні 2026 року, зобов''язавши всі системи ШІ в ЄС відповідати вимогам прозорості, безпеки та класифікації ризиків. OpenAI, Anthropic та Google опублікували документацію відповідності GPAI.',
'<p>Закон ЄС про ШІ набув <strong>повної сили в березні 2026 року</strong>, поширюючись на всі системи ШІ, що розгортаються в ЄС, незалежно від місцезнаходження розробника.</p>
<h2>Що вимагає Закон</h2>
<p>Закон встановлює систему на основі оцінки ризиків. <strong>Системи високого ризику</strong> повинні пройти офіційні оцінки відповідності та реєструватись у центральній базі даних ЄС.</p>
<h3>Санкції</h3>
<p>Порушення можуть тягнути штрафи до <strong>35 мільйонів євро або 7% річного світового обороту</strong>. Європейське бюро зі ШІ в Брюсселі вже відкрило попередні розслідування проти кількох компаній.</p>',
true),

('zhipu-glm-51-744b-open-source','uk','models','Моделі','#7c6af7','Zhipu AI Blog','2026-04-08',
'Zhipu AI відкрила вихідний код GLM-5.1: модель MoE з 744 млрд параметрів',
'Китайська лабораторія ШІ Zhipu AI випустила GLM-5.1 під ліцензією MIT — модель mixture-of-experts з 744 мільярдами параметрів, 40 млрд активних параметрів за прохід та вікном контексту 200K токенів.',
'<p>Китайська лабораторія ШІ Zhipu AI випустила <strong>GLM-5.1</strong> під ліцензією MIT, зробивши її вільною для будь-якого використання включно з комерційним розгортанням без обмежень.</p>
<h2>Масштаб та архітектура</h2>
<p>GLM-5.1 — це <strong>модель Mixture-of-Experts із 744 мільярдами параметрів</strong> з 40 мільярдами активних параметрів за прохід та <strong>вікном контексту 200 000 токенів</strong>.</p>
<h3>Чому це важливо</h3>
<p>Ліцензія MIT не накладає жодних обмежень на використання, модифікацію або розповсюдження моделі. GLM-5.1 є найбільш вільно доступною моделлю фронтирного масштабу на сьогодні.</p>',
true);
