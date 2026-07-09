-- ============================================================
-- PILOT BATCH 1 — remaining 6 languages (es, de, fr, pt, ua, he)
-- Tools: claude, gemini, chatgpt   (EN+RU already in update_pilot_batch1.sql)
-- Verified July 2026. Run in Supabase, then regenerate lang tool pages + sitemap.
-- ============================================================

-- ========== CLAUDE ==========
UPDATE tools SET badge='freemium',
  description='Asistente de IA de Anthropic. Modelos Fable 5 y Opus 4.8 — de primer nivel para documentos largos, análisis profundo y código, con una amplia ventana de contexto.',
  description_long='Claude es el asistente de IA insignia de Anthropic, diseñado en torno a la seguridad y la precisión. Su gama actual la encabezan Fable 5 y Claude Opus 4.8, junto al veloz Sonnet 4.6 y el ligero Haiku 4.5, una familia que se mantiene en lo más alto en razonamiento complejo, escritura extensa y generación de código, con bastantes menos alucinaciones que sus rivales. Claude procesa documentos muy largos de una sola vez e impulsa Claude Code, la herramienta de programación agéntica de Anthropic para la terminal y los IDE. Sus precios son claros: un nivel gratuito solvente, Pro por 20 $/mes y Max por 100 o 200 $/mes para usuarios intensivos. Es la opción de escritores, analistas e ingenieros que valoran la profundidad y la fiabilidad.'
WHERE slug='claude' AND lang='es';

UPDATE tools SET badge='freemium',
  description='KI-Assistent von Anthropic. Aktuelle Modelle Fable 5 und Opus 4.8 — erstklassig für lange Dokumente, tiefe Analyse und Code, mit großem Kontextfenster.',
  description_long='Claude ist der Vorzeige-KI-Assistent von Anthropic, konsequent auf Sicherheit und Genauigkeit ausgelegt. Die aktuelle Reihe führen Fable 5 und Claude Opus 4.8 an, dazu das schnelle Sonnet 4.6 und das schlanke Haiku 4.5 — eine Familie, die bei komplexem Denken, langen Texten und Code-Generierung durchweg an der Spitze steht und dabei deutlich seltener halluziniert als die Konkurrenz. Claude verarbeitet sehr lange Dokumente in einem Durchgang und treibt Claude Code an, Anthropics agentisches Coding-Tool für Terminal und IDE. Die Preise sind einfach: eine brauchbare Gratis-Stufe, Pro für 20 $/Monat und Max für 100 oder 200 $/Monat. Die Wahl für Autoren, Analysten und Entwickler, die Tiefe und Verlässlichkeit schätzen.'
WHERE slug='claude' AND lang='de';

UPDATE tools SET badge='freemium',
  description='Assistant IA d''Anthropic. Modèles Fable 5 et Opus 4.8 — au top pour les longs documents, l''analyse poussée et le code, avec une large fenêtre de contexte.',
  description_long='Claude est l''assistant IA phare d''Anthropic, pensé autour de la sécurité et de la précision. Sa gamme actuelle est menée par Fable 5 et Claude Opus 4.8, aux côtés du rapide Sonnet 4.6 et du léger Haiku 4.5 — une famille qui reste en tête pour le raisonnement complexe, la rédaction longue et la génération de code, avec nettement moins d''hallucinations que ses rivaux. Claude traite de très longs documents en une seule passe et propulse Claude Code, l''outil de programmation agentique d''Anthropic pour le terminal et les IDE. Les tarifs sont simples : une offre gratuite solide, Pro à 20 $/mois et Max à 100 ou 200 $/mois. Le choix des rédacteurs, analystes et ingénieurs qui privilégient la profondeur et la fiabilité.'
WHERE slug='claude' AND lang='fr';

UPDATE tools SET badge='freemium',
  description='Assistente de IA da Anthropic. Modelos Fable 5 e Opus 4.8 — de primeira linha para documentos longos, análise profunda e código, com ampla janela de contexto.',
  description_long='O Claude é o assistente de IA principal da Anthropic, criado com foco em segurança e precisão. A linha atual é liderada pelo Fable 5 e pelo Claude Opus 4.8, ao lado do rápido Sonnet 4.6 e do leve Haiku 4.5 — uma família que se mantém no topo em raciocínio complexo, escrita longa e geração de código, com bem menos alucinações que os concorrentes. O Claude processa documentos muito longos de uma só vez e é a base do Claude Code, a ferramenta de programação agêntica da Anthropic para terminal e IDEs. Os preços são simples: um nível gratuito competente, Pro por US$ 20/mês e Max por US$ 100 ou 200/mês. A escolha de redatores, analistas e engenheiros que valorizam profundidade e confiabilidade.'
WHERE slug='claude' AND lang='pt';

UPDATE tools SET badge='freemium',
  description='ШІ-асистент від Anthropic. Актуальні моделі Fable 5 та Opus 4.8 — топ для довгих документів, глибокого аналізу й коду, з великим контекстним вікном.',
  description_long='Claude — флагманський ШІ-асистент компанії Anthropic, побудований навколо безпеки й точності. Актуальну лінійку очолюють Fable 5 і Claude Opus 4.8, поряд — швидкий Sonnet 4.6 і легкий Haiku 4.5. Ця родина стабільно тримається в топі за складними міркуваннями, довгими текстами та генерацією коду, при цьому помітно рідше «галюцинує», ніж конкуренти. Claude опрацьовує дуже довгі документи за один прохід і лежить в основі Claude Code — агентного інструмента для програмування прямо в терміналі та IDE. Тарифи прості: робочий безкоштовний рівень, Pro за $20/міс і Max за $100 або $200/міс. Вибір письменників, аналітиків та інженерів, яким важливі глибина й надійність.'
WHERE slug='claude' AND lang='ua';

UPDATE tools SET badge='freemium',
  description='עוזר AI מבית Anthropic. הדגמים העדכניים Fable 5 ו-Opus 4.8 — מהמובילים למסמכים ארוכים, ניתוח מעמיק וקוד, עם חלון הקשר רחב.',
  description_long='Claude הוא עוזר ה-AI המוביל של Anthropic, שנבנה סביב בטיחות ודיוק. את השורה הנוכחית מובילים Fable 5 ו-Claude Opus 4.8, לצד Sonnet 4.6 המהיר ו-Haiku 4.5 הקליל — משפחה שנשארת בצמרת בחשיבה מורכבת, כתיבה ארוכה ויצירת קוד, עם הרבה פחות הזיות מהמתחרים. Claude מעבד מסמכים ארוכים מאוד במעבר אחד ומניע את Claude Code, כלי התכנות האייג׳נטי של Anthropic לטרמינל ול-IDE. התמחור פשוט: שכבה חינמית טובה, Pro ב-20$ לחודש ו-Max ב-100$ או 200$ לחודש. הבחירה של כותבים, אנליסטים ומהנדסים שמעריכים עומק ואמינות.'
WHERE slug='claude' AND lang='he';

-- ========== GEMINI ==========
UPDATE tools SET badge='freemium',
  description='La IA de Google con acceso web en tiempo real. Ahora con Gemini 3.5 Flash: multimodal, rápido y muy integrado en Google Workspace.',
  description_long='Gemini es el asistente de IA insignia de Google y el principal rival de ChatGPT. Su modelo público actual es Gemini 3.5 Flash (mayo de 2026): un modelo multimodal y veloz que entiende texto, imágenes, audio y vídeo, y que en pruebas supera a la generación Pro anterior en código y tareas agénticas; se espera después el mayor Gemini 3.5 Pro. Su gran ventaja es la integración: funciona de forma nativa en Búsqueda, Gmail, Docs, Sheets y el resto de Google Workspace, con acceso web en tiempo real. Los planes de consumo son un nivel gratuito, Google AI Plus por 7,99 $/mes, AI Pro por 19,99 $/mes y AI Ultra, rebajado de 249,99 $ a 99,99 $/mes. Ideal para quien ya vive en el ecosistema de Google.'
WHERE slug='gemini' AND lang='es';

UPDATE tools SET badge='freemium',
  description='Googles KI mit Echtzeit-Webzugriff. Jetzt mit Gemini 3.5 Flash — multimodal, schnell und tief in Google Workspace integriert.',
  description_long='Gemini ist Googles Vorzeige-KI-Assistent und der Hauptrivale von ChatGPT. Das aktuelle öffentliche Modell ist Gemini 3.5 Flash (Mai 2026): ein schnelles, multimodales Modell, das Text, Bilder, Audio und Video versteht und in Benchmarks die frühere Pro-Generation bei Code und agentischen Aufgaben übertrifft; das größere Gemini 3.5 Pro wird noch erwartet. Die größte Stärke ist die Integration: Gemini läuft nativ in Suche, Gmail, Docs, Sheets und dem übrigen Google Workspace, mit Echtzeit-Webzugriff. Die Consumer-Tarife: eine Gratis-Stufe, Google AI Plus für 7,99 $/Monat, AI Pro für 19,99 $/Monat und AI Ultra, gesenkt von 249,99 $ auf 99,99 $/Monat. Ideal für alle, die bereits im Google-Ökosystem arbeiten.'
WHERE slug='gemini' AND lang='de';

UPDATE tools SET badge='freemium',
  description='L''IA de Google avec accès web en temps réel. Désormais sur Gemini 3.5 Flash : multimodale, rapide et très intégrée à Google Workspace.',
  description_long='Gemini est l''assistant IA phare de Google et le principal rival de ChatGPT. Son modèle public actuel est Gemini 3.5 Flash (mai 2026) : un modèle multimodal et rapide qui comprend le texte, les images, l''audio et la vidéo, et qui dépasse en benchmarks la génération Pro précédente sur le code et les tâches agentiques ; le plus grand Gemini 3.5 Pro est attendu ensuite. Son atout majeur est l''intégration : il fonctionne nativement dans Recherche, Gmail, Docs, Sheets et le reste de Google Workspace, avec un accès web en temps réel. Les offres grand public : un niveau gratuit, Google AI Plus à 7,99 $/mois, AI Pro à 19,99 $/mois et AI Ultra, réduit de 249,99 $ à 99,99 $/mois. Idéal pour qui vit déjà dans l''écosystème Google.'
WHERE slug='gemini' AND lang='fr';

UPDATE tools SET badge='freemium',
  description='A IA do Google com acesso à web em tempo real. Agora com Gemini 3.5 Flash — multimodal, rápida e muito integrada ao Google Workspace.',
  description_long='O Gemini é o assistente de IA principal do Google e o maior rival do ChatGPT. Seu modelo público atual é o Gemini 3.5 Flash (maio de 2026): um modelo multimodal e rápido que entende texto, imagens, áudio e vídeo e que, em benchmarks, supera a geração Pro anterior em código e tarefas agênticas; o maior Gemini 3.5 Pro é aguardado em seguida. Sua maior vantagem é a integração: funciona de forma nativa na Busca, Gmail, Docs, Sheets e no restante do Google Workspace, com acesso à web em tempo real. Os planos de consumo: um nível gratuito, Google AI Plus por US$ 7,99/mês, AI Pro por US$ 19,99/mês e AI Ultra, reduzido de US$ 249,99 para US$ 99,99/mês. Ideal para quem já vive no ecossistema Google.'
WHERE slug='gemini' AND lang='pt';

UPDATE tools SET badge='freemium',
  description='ШІ від Google з доступом до інтернету в реальному часі. Тепер на Gemini 3.5 Flash — мультимодальний, швидкий, глибоко вбудований у Google Workspace.',
  description_long='Gemini — флагманський ШІ-асистент Google і головний конкурент ChatGPT. Актуальна публічна модель — Gemini 3.5 Flash (травень 2026): швидка мультимодальна модель, що розуміє текст, зображення, аудіо та відео й випереджає попереднє покоління Pro у бенчмарках з коду та агентних задач; потужніший Gemini 3.5 Pro очікується згодом. Головна перевага — інтеграція: він нативно працює в Пошуку, Gmail, Docs, Sheets та решті Google Workspace, з доступом до вебу в реальному часі. Споживчі тарифи: безкоштовний рівень, Google AI Plus за $7.99/міс, AI Pro за $19.99/міс і AI Ultra, знижений із $249.99 до $99.99/міс. Найкращий вибір для тих, хто вже живе в екосистемі Google.'
WHERE slug='gemini' AND lang='ua';

UPDATE tools SET badge='freemium',
  description='ה-AI של Google עם גישה לרשת בזמן אמת. כעת על Gemini 3.5 Flash — רב-מודלי, מהיר ומשולב עמוק ב-Google Workspace.',
  description_long='Gemini הוא עוזר ה-AI המוביל של Google והיריב העיקרי של ChatGPT. הדגם הציבורי הנוכחי הוא Gemini 3.5 Flash (מאי 2026): דגם מהיר ורב-מודלי שמבין טקסט, תמונות, אודיו ווידאו, ובמבחני ביצועים עוקף את דור ה-Pro הקודם במשימות קוד ואייג׳נט; הדגם הגדול יותר Gemini 3.5 Pro צפוי בהמשך. היתרון הגדול הוא האינטגרציה: הוא פועל באופן טבעי בחיפוש, ב-Gmail, ב-Docs, ב-Sheets ובשאר Google Workspace, עם גישה לרשת בזמן אמת. תוכניות הצריכה: שכבה חינמית, Google AI Plus ב-7.99$ לחודש, AI Pro ב-19.99$ לחודש ו-AI Ultra שהוזל מ-249.99$ ל-99.99$ לחודש. אידיאלי למי שכבר חי בתוך המערכת של Google.'
WHERE slug='gemini' AND lang='he';

-- ========== CHATGPT ==========
UPDATE tools SET badge='freemium',
  description='El chat de IA más popular, de OpenAI. Modelo insignia GPT-5.5 para texto, imágenes y voz, usado por cientos de millones.',
  description_long='ChatGPT es el asistente de IA más usado del mundo, creado por OpenAI y lanzado en noviembre de 2022. Su modelo insignia por defecto es ahora GPT-5.5 (desplegado en abril de 2026): conversación natural, generación de texto y código, creación de imágenes y voz en tiempo real desde una sola interfaz; una familia más nueva, GPT-5.6 (Sol, Terra, Luna), ya está disponible por API pero aún no en las suscripciones de consumo. El nivel gratuito se queda con modelos anteriores, mientras que GPT-5.5 llega con los planes de pago. Los precios van de Free a Go (8 $/mes), Plus (20 $/mes) y dos niveles Pro de 100 y 200 $/mes, además de Business y Enterprise. Sigue siendo el punto de partida por defecto para quien empieza con la IA.'
WHERE slug='chatgpt' AND lang='es';

UPDATE tools SET badge='freemium',
  description='Der beliebteste KI-Chat, von OpenAI. Flaggschiff GPT-5.5 für Text, Bilder und Sprache, von Hunderten Millionen genutzt.',
  description_long='ChatGPT ist der weltweit meistgenutzte KI-Assistent, von OpenAI entwickelt und im November 2022 gestartet. Das Standard-Flaggschiff ist jetzt GPT-5.5 (Rollout April 2026): natürliche Gespräche, Text- und Code-Generierung, Bilderstellung und Echtzeit-Sprache aus einer Oberfläche; eine neuere GPT-5.6-Familie (Sol, Terra, Luna) ist bereits über die API verfügbar, aber noch nicht in den Consumer-Abos. Die Gratis-Stufe bleibt bei älteren Modellen, GPT-5.5 kommt mit den Bezahlplänen. Die Preise reichen von Free über Go (8 $/Monat), Plus (20 $/Monat) und zwei Pro-Stufen zu 100 und 200 $/Monat bis Business und Enterprise. Nach wie vor der Standard-Einstieg für alle, die mit KI beginnen.'
WHERE slug='chatgpt' AND lang='de';

UPDATE tools SET badge='freemium',
  description='Le chat IA le plus populaire, d''OpenAI. Modèle phare GPT-5.5 pour le texte, les images et la voix, utilisé par des centaines de millions.',
  description_long='ChatGPT est l''assistant IA le plus utilisé au monde, créé par OpenAI et lancé en novembre 2022. Son modèle phare par défaut est désormais GPT-5.5 (déployé en avril 2026) : conversation naturelle, génération de texte et de code, création d''images et voix en temps réel depuis une seule interface ; une famille plus récente, GPT-5.6 (Sol, Terra, Luna), est disponible via l''API mais pas encore dans les abonnements grand public. Le niveau gratuit reste sur des modèles antérieurs, tandis que GPT-5.5 arrive avec les offres payantes. Les tarifs vont de Free à Go (8 $/mois), Plus (20 $/mois) et deux niveaux Pro à 100 et 200 $/mois, plus Business et Enterprise. Il reste le point de départ par défaut pour débuter avec l''IA.'
WHERE slug='chatgpt' AND lang='fr';

UPDATE tools SET badge='freemium',
  description='O chat de IA mais popular, da OpenAI. Modelo principal GPT-5.5 para texto, imagens e voz, usado por centenas de milhões.',
  description_long='O ChatGPT é o assistente de IA mais usado do mundo, criado pela OpenAI e lançado em novembro de 2022. Seu modelo principal padrão agora é o GPT-5.5 (lançado em abril de 2026): conversa natural, geração de texto e código, criação de imagens e voz em tempo real em uma única interface; uma família mais nova, GPT-5.6 (Sol, Terra, Luna), já está disponível via API, mas ainda não nas assinaturas de consumo. O nível gratuito permanece em modelos anteriores, enquanto o GPT-5.5 vem com os planos pagos. Os preços vão de Free a Go (US$ 8/mês), Plus (US$ 20/mês) e dois níveis Pro de US$ 100 e 200/mês, além de Business e Enterprise. Continua sendo o ponto de partida padrão para quem começa com IA.'
WHERE slug='chatgpt' AND lang='pt';

UPDATE tools SET badge='freemium',
  description='Найпопулярніший ШІ-чат від OpenAI. Флагман GPT-5.5 для тексту, зображень і голосу, сотні мільйонів користувачів.',
  description_long='ChatGPT — найбільш використовуваний у світі ШІ-асистент від OpenAI, запущений у листопаді 2022 року. Дефолтний флагман тепер GPT-5.5 (розгорнутий у квітні 2026): природний діалог, генерація тексту й коду, створення зображень і голос у реальному часі — усе в одному інтерфейсі; новіша родина GPT-5.6 (Sol, Terra, Luna) вийшла через API, але в споживчих підписках її поки немає. Безкоштовний рівень лишається на ранніших моделях, а GPT-5.5 доступний у платних тарифах. Ціни: Free, Go за $8/міс, Plus за $20/міс і два тарифи Pro — $100 і $200/міс, плюс Business та Enterprise. Залишається точкою входу для новачків у ШІ.'
WHERE slug='chatgpt' AND lang='ua';

UPDATE tools SET badge='freemium',
  description='צ׳אט ה-AI הפופולרי ביותר, מבית OpenAI. הדגם המוביל GPT-5.5 לטקסט, תמונות וקול, בשימוש מאות מיליונים.',
  description_long='ChatGPT הוא עוזר ה-AI הנפוץ בעולם, נוצר על ידי OpenAI והושק בנובמבר 2022. הדגם המוביל כברירת מחדל הוא כעת GPT-5.5 (הושק באפריל 2026): שיחה טבעית, יצירת טקסט וקוד, יצירת תמונות וקול בזמן אמת — הכול מממשק אחד; משפחה חדשה יותר, GPT-5.6 (Sol, Terra, Luna), כבר זמינה דרך ה-API אך עדיין לא במנויים הצרכניים. השכבה החינמית נשארת על דגמים קודמים, ואילו GPT-5.5 מגיע עם התוכניות בתשלום. המחירים נעים מ-Free ל-Go (8$ לחודש), Plus (20$ לחודש) ושתי דרגות Pro ב-100$ ו-200$ לחודש, בנוסף ל-Business ו-Enterprise. נותר נקודת הפתיחה למי שמתחיל עם AI.'
WHERE slug='chatgpt' AND lang='he';
