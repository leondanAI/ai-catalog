-- ============================================================
-- PILOT BATCH 1 — freshness refresh (verified July 2026)
-- Tools: claude, gemini, chatgpt  |  Langs shown: EN + RU (sample)
-- After approval: extend to es/de/fr/pt/ua/he + roll remaining tools.
-- Run in Supabase SQL Editor, then:
--   python3 scripts/generate-lang-tool-pages.py && python3 scripts/generate-sitemap.py
-- ------------------------------------------------------------
-- Sources (verified 2026-07-08):
--   ChatGPT  → GPT-5.5 default since Apr 23 2026 (openai.com); plans free/go$8/plus$20/pro$100-200 (chatgpt.com/pricing)
--   Gemini   → 3.5 Flash public flagship, May 19 2026 (simonwillison.net); AI Ultra cut $249→$99.99 (felloai.com)
--   Claude   → Fable 5 + Opus 4.8 (Sonnet 4.6, Haiku 4.5); Free/Pro$20/Max$100/$200
-- ============================================================

-- ---------- CLAUDE ----------
UPDATE tools SET
  badge = 'freemium',
  description = 'AI assistant by Anthropic. Latest Fable 5 and Opus 4.8 models — top-tier for long documents, deep analysis and coding, with a large context window.',
  description_long = 'Claude is Anthropic''s flagship AI assistant, built with safety and accuracy at its core. Its current lineup is led by Fable 5 and Claude Opus 4.8, alongside the fast Sonnet 4.6 and lightweight Haiku 4.5 — a family that consistently ranks at the top for complex reasoning, long-form writing and code generation, with notably fewer hallucinations than rivals. Claude handles very long documents in a single pass and powers Claude Code, Anthropic''s agentic coding tool used directly in the terminal and IDEs. Pricing is straightforward: a capable free tier, Pro at $20/month, and Max at $100 or $200/month for heavy users and priority access. It is the assistant of choice for writers, analysts and engineers who value depth and reliability over flashy extras.'
WHERE slug = 'claude' AND lang = 'en';

UPDATE tools SET
  badge = 'freemium',
  description = 'ИИ-ассистент от Anthropic. Актуальные модели Fable 5 и Opus 4.8 — топ для длинных документов, глубокого анализа и кода, с большим контекстным окном.',
  description_long = 'Claude — флагманский ИI-ассистент компании Anthropic, построенный вокруг безопасности и точности. Актуальную линейку возглавляют Fable 5 и Claude Opus 4.8, рядом — быстрая Sonnet 4.6 и лёгкая Haiku 4.5. Это семейство стабильно держится в топе по сложным рассуждениям, длинным текстам и генерации кода, при этом заметно реже «галлюцинирует», чем конкуренты. Claude обрабатывает очень длинные документы за один проход и лежит в основе Claude Code — агентного инструмента для программирования прямо в терминале и IDE. Тарифы простые: рабочий бесплатный уровень, Pro за $20/мес и Max за $100 или $200/мес для тех, кому нужны высокие лимиты и приоритетный доступ. Выбор писателей, аналитиков и инженеров, которым важнее глубина и надёжность, чем яркие второстепенные функции.'
WHERE slug = 'claude' AND lang = 'ru';

-- ---------- GEMINI ----------
UPDATE tools SET
  badge = 'freemium',
  description = 'Google''s AI with real-time web access. Now on Gemini 3.5 Flash — multimodal, fast, and deeply tied into Google Workspace.',
  description_long = 'Gemini is Google''s flagship AI assistant and the main rival to ChatGPT. Its current public model is Gemini 3.5 Flash (May 2026) — a fast, multimodal model that understands text, images, audio and video and, in benchmarks, outperforms the previous Pro generation on coding and agentic tasks; the larger Gemini 3.5 Pro is expected to follow. Gemini''s biggest edge is integration: it works natively across Search, Gmail, Docs, Sheets and the rest of Google Workspace, with real-time web access built in. Consumer plans are a free tier, Google AI Plus at $7.99/month, AI Pro at $19.99/month, and AI Ultra — recently cut from $249.99 to $99.99/month. Best for people already living in Google''s ecosystem who want an assistant wired into the tools they use daily.'
WHERE slug = 'gemini' AND lang = 'en';

UPDATE tools SET
  badge = 'freemium',
  description = 'ИИ от Google с доступом к интернету в реальном времени. Теперь на Gemini 3.5 Flash — мультимодальный, быстрый, глубоко встроен в Google Workspace.',
  description_long = 'Gemini — флагманский ИИ-ассистент Google и главный конкурент ChatGPT. Актуальная публичная модель — Gemini 3.5 Flash (май 2026): быстрая мультимодальная модель, понимающая текст, изображения, аудио и видео и опережающая прошлое поколение Pro в бенчмарках по коду и агентным задачам; более мощная Gemini 3.5 Pro ожидается следом. Главное преимущество Gemini — интеграция: он нативно работает в Поиске, Gmail, Docs, Sheets и остальном Google Workspace, с доступом к вебу в реальном времени. Потребительские тарифы: бесплатный уровень, Google AI Plus за $7.99/мес, AI Pro за $19.99/мес и AI Ultra, недавно сниженный с $249.99 до $99.99/мес. Лучший выбор для тех, кто уже живёт в экосистеме Google и хочет ассистента внутри привычных инструментов.'
WHERE slug = 'gemini' AND lang = 'ru';

-- ---------- CHATGPT ----------
UPDATE tools SET
  badge = 'freemium',
  description = 'The most popular AI chat by OpenAI. Flagship GPT-5.5 for text, images and voice, used by hundreds of millions.',
  description_long = 'ChatGPT is the world''s most widely used AI assistant, created by OpenAI and launched in November 2022. Its default flagship is now GPT-5.5 (rolled out April 2026), handling natural conversation, text and code generation, image creation and real-time voice from a single interface; a newer GPT-5.6 family (Sol, Terra, Luna) has shipped via the API but is not yet in consumer subscriptions. The free tier stays on earlier models, while GPT-5.5 comes with the paid plans. Pricing spans Free, Go at $8/month, Plus at $20/month, and two Pro tiers at $100 and $200/month, plus Business and Enterprise. It remains the default starting point for anyone new to AI — the broadest feature set, the largest ecosystem of plugins and integrations, and the most polished all-round experience.'
WHERE slug = 'chatgpt' AND lang = 'en';

UPDATE tools SET
  badge = 'freemium',
  description = 'Самый популярный ИИ-чат от OpenAI. Флагман GPT-5.5 для текста, изображений и голоса, сотни миллионов пользователей.',
  description_long = 'ChatGPT — самый используемый в мире ИИ-ассистент от OpenAI, запущенный в ноябре 2022 года. Дефолтный флагман теперь GPT-5.5 (выкачен в апреле 2026): естественный диалог, генерация текста и кода, создание изображений и голос в реальном времени — всё в одном интерфейсе; более новое семейство GPT-5.6 (Sol, Terra, Luna) вышло через API, но в потребительских подписках его пока нет. Бесплатный уровень остаётся на более ранних моделях, а GPT-5.5 доступен в платных тарифах. Цены: Free, Go за $8/мес, Plus за $20/мес и два тарифа Pro — $100 и $200/мес, плюс Business и Enterprise. Остаётся точкой входа для новичков в ИИ: самый широкий набор функций, крупнейшая экосистема плагинов и интеграций и самый отполированный универсальный опыт.'
WHERE slug = 'chatgpt' AND lang = 'ru';
