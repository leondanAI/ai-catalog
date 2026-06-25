-- Gemini 3.5 Flash — Computer Use news article — 8 active languages
-- Verified: Gemini 3.5 Flash (stable top, May 2026) got Computer Use on 2026-06-24.
-- Gemini 3.5 Pro (Deep Think, 2M context) delayed to July 2026.
-- NOTE: do NOT publish the "Gemini 2.5/3.5 Pro released June 22" claim circulating in
-- aggregators — it is a version-number mix-up (2.5 line is mid-2025, being deprecated).
-- Run in Supabase SQL Editor, then: python3 scripts/generate-news-pages.py

INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, published)
VALUES

('gemini-3-5-flash-computer-use',
 'en', 'models', 'Models', '#7c6af7', 'Google Blog', '2026-06-24',
 'Gemini 3.5 Flash Adds Computer Use for AI Agents',
 'On June 24, Google added Computer Use to Gemini 3.5 Flash, letting the model operate a computer''s interface — clicking, typing and navigating apps — to complete tasks as an autonomous agent. It brings agentic UI automation to Google''s fastest stable model. The larger Gemini 3.5 Pro, with Deep Think reasoning and a 2M-token context window, is still expected in July.',
 true),

('gemini-3-5-flash-computer-use',
 'ru', 'models', 'Модели', '#7c6af7', 'Google Blog', '2026-06-24',
 'Gemini 3.5 Flash получил Computer Use для ИИ-агентов',
 '24 июня Google добавила в Gemini 3.5 Flash функцию Computer Use: модель может управлять интерфейсом компьютера — кликать, печатать и перемещаться по приложениям — выполняя задачи как автономный агент. Это приносит агентную автоматизацию интерфейса в самую быструю стабильную модель Google. Более мощная Gemini 3.5 Pro с режимом рассуждений Deep Think и окном на 2 млн токенов ожидается в июле.',
 true),

('gemini-3-5-flash-computer-use',
 'ua', 'models', 'Моделі', '#7c6af7', 'Google Blog', '2026-06-24',
 'Gemini 3.5 Flash отримав Computer Use для ШІ-агентів',
 '24 червня Google додала до Gemini 3.5 Flash функцію Computer Use: модель може керувати інтерфейсом комп''ютера — клікати, друкувати та переміщатися застосунками — виконуючи завдання як автономний агент. Це приносить агентну автоматизацію інтерфейсу до найшвидшої стабільної моделі Google. Потужніша Gemini 3.5 Pro з режимом міркувань Deep Think і вікном на 2 млн токенів очікується в липні.',
 true),

('gemini-3-5-flash-computer-use',
 'he', 'models', 'מודלים', '#7c6af7', 'Google Blog', '2026-06-24',
 'Gemini 3.5 Flash מקבל Computer Use לסוכני AI',
 'ב-24 ביוני הוסיפה Google ל-Gemini 3.5 Flash את היכולת Computer Use: המודל יכול לשלוט בממשק המחשב — ללחוץ, להקליד ולנווט באפליקציות — ולבצע משימות כסוכן אוטונומי. כך מגיעה אוטומציית ממשק סוכנותית למודל היציב והמהיר ביותר של Google. הדגם החזק יותר Gemini 3.5 Pro, עם מצב חשיבה Deep Think וחלון הקשר של 2 מיליון טוקנים, צפוי ביולי.',
 true),

('gemini-3-5-flash-computer-use',
 'de', 'models', 'Modelle', '#7c6af7', 'Google Blog', '2026-06-24',
 'Gemini 3.5 Flash erhält Computer Use für KI-Agenten',
 'Am 24. Juni hat Google Gemini 3.5 Flash um Computer Use erweitert: Das Modell kann die Benutzeroberfläche eines Computers steuern — klicken, tippen und durch Apps navigieren — und Aufgaben als autonomer Agent erledigen. Damit kommt agentische UI-Automatisierung in Googles schnellstes stabiles Modell. Das größere Gemini 3.5 Pro mit Deep-Think-Reasoning und 2-Millionen-Token-Kontext wird weiterhin für Juli erwartet.',
 true),

('gemini-3-5-flash-computer-use',
 'es', 'models', 'Modelos', '#7c6af7', 'Google Blog', '2026-06-24',
 'Gemini 3.5 Flash añade Computer Use para agentes de IA',
 'El 24 de junio, Google añadió Computer Use a Gemini 3.5 Flash: el modelo puede controlar la interfaz de un ordenador —hacer clic, escribir y navegar por aplicaciones— para completar tareas como agente autónomo. Lleva la automatización de interfaz con agentes al modelo estable más rápido de Google. El mayor Gemini 3.5 Pro, con razonamiento Deep Think y ventana de contexto de 2 millones de tokens, sigue previsto para julio.',
 true),

('gemini-3-5-flash-computer-use',
 'fr', 'models', 'Modèles', '#7c6af7', 'Google Blog', '2026-06-24',
 'Gemini 3.5 Flash ajoute Computer Use pour les agents IA',
 'Le 24 juin, Google a ajouté Computer Use à Gemini 3.5 Flash : le modèle peut piloter l''interface d''un ordinateur — cliquer, saisir et naviguer dans les applications — pour accomplir des tâches en tant qu''agent autonome. Cela apporte l''automatisation d''interface agentique au modèle stable le plus rapide de Google. Le Gemini 3.5 Pro plus puissant, doté du raisonnement Deep Think et d''une fenêtre de contexte de 2 millions de tokens, reste attendu en juillet.',
 true),

('gemini-3-5-flash-computer-use',
 'pt', 'models', 'Modelos', '#7c6af7', 'Google Blog', '2026-06-24',
 'Gemini 3.5 Flash ganha Computer Use para agentes de IA',
 'Em 24 de junho, o Google adicionou o Computer Use ao Gemini 3.5 Flash: o modelo pode controlar a interface de um computador — clicar, digitar e navegar por aplicativos — para concluir tarefas como agente autônomo. Isso traz a automação de interface com agentes ao modelo estável mais rápido do Google. O maior Gemini 3.5 Pro, com raciocínio Deep Think e janela de contexto de 2 milhões de tokens, continua previsto para julho.',
 true);
