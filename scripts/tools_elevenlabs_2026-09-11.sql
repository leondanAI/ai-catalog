-- elevenlabs: карточка описывала только собственные голосовые модели и упустила
-- главное изменение позиционирования — Agents Platform стала агрегатором чужих LLM.
--
-- Источник, проверено 2026-09-11: elevenlabs.io/docs/agents-platform/customization/llm
--   Google:    Gemini 3.7 Flash, 3.6 Flash, 3.5 Flash, 3.5 Flash-Lite,
--              3.1 Pro Preview, 3.1 Flash Lite, 3 Flash Preview, 2.5 Flash/Lite
--   OpenAI:    GPT-5.6 Sol / Terra / Luna, GPT-5.5, 5.4 (+Mini/Nano), 5.2, 5.1,
--              5 (+Mini/Nano), 4.1 (+Mini/Nano), 4o (+Mini)
--   Anthropic: Claude Opus 4.8 и 4.7, Sonnet 5 / 4.6 / 4.5, Haiku 4.5
--   Свои:      Qwen3.6-35B-A3B, Qwen3.5-397B-A17B
--   Плюс подключение собственного LLM: «specifying the endpoint we should make
--   requests to and providing credentials through our secure secret storage».
--
-- Конкретные версии чужих моделей в текст карточки НЕ выносим: они меняются
-- на стороне ElevenLabs и устареют быстрее, чем мы успеем проверить. Пишем
-- сам факт агрегации и возможность подключить свой эндпоинт — это стабильно.
-- Собственные голосовые модели (elevenlabs.io/docs/models) оставляем как есть,
-- они в карточке описаны верно.
--
-- Идемпотентно: присвоение конкретных строк.

-- ── короткое описание, 8 языков ─────────────────────────────────────────────
UPDATE tools SET description = $t$ElevenLabs is an AI voice platform for text-to-speech, voice cloning and voice agents, built on its own Eleven v3 models. Its Agents Platform doubles as an aggregator: you pick the reasoning model from OpenAI, Anthropic or Google, or plug in your own LLM endpoint, and ElevenLabs handles voice, latency and telephony.$t$
 WHERE slug = 'elevenlabs' AND lang = 'en';

UPDATE tools SET description = $t$ElevenLabs ist eine KI-Sprachplattform für Text-to-Speech, Voice Cloning und Sprachagenten auf Basis der eigenen Eleven-v3-Modelle. Die Agents Platform dient zugleich als Aggregator: Das Reasoning-Modell wählen Sie von OpenAI, Anthropic oder Google, oder Sie binden einen eigenen LLM-Endpunkt ein — Stimme, Latenz und Telefonie übernimmt ElevenLabs.$t$
 WHERE slug = 'elevenlabs' AND lang = 'de';

UPDATE tools SET description = $t$ElevenLabs es una plataforma de voz con IA para texto a voz, clonación de voz y agentes de voz, basada en sus propios modelos Eleven v3. Su Agents Platform funciona además como agregador: eliges el modelo de razonamiento de OpenAI, Anthropic o Google, o conectas tu propio endpoint LLM, y ElevenLabs se encarga de la voz, la latencia y la telefonía.$t$
 WHERE slug = 'elevenlabs' AND lang = 'es';

UPDATE tools SET description = $t$ElevenLabs est une plateforme vocale IA pour la synthèse vocale, le clonage de voix et les agents vocaux, fondée sur ses propres modèles Eleven v3. Sa plateforme d'agents fait aussi office d'agrégateur : vous choisissez le modèle de raisonnement chez OpenAI, Anthropic ou Google, ou branchez votre propre endpoint LLM, et ElevenLabs gère la voix, la latence et la téléphonie.$t$
 WHERE slug = 'elevenlabs' AND lang = 'fr';

UPDATE tools SET description = $t$A ElevenLabs é uma plataforma de voz com IA para conversão de texto em fala, clonagem de voz e agentes de voz, baseada nos seus próprios modelos Eleven v3. A Agents Platform funciona também como agregador: você escolhe o modelo de raciocínio da OpenAI, da Anthropic ou do Google, ou conecta o seu próprio endpoint de LLM, e a ElevenLabs cuida da voz, da latência e da telefonia.$t$
 WHERE slug = 'elevenlabs' AND lang = 'pt';

UPDATE tools SET description = $t$ElevenLabs — платформа голосового ИИ для синтеза речи, клонирования голоса и голосовых агентов на собственных моделях Eleven v3. Её платформа агентов работает ещё и как агрегатор: модель рассуждений выбираешь у OpenAI, Anthropic или Google либо подключаешь свой LLM-эндпоинт, а голос, задержку и телефонию берёт на себя ElevenLabs.$t$
 WHERE slug = 'elevenlabs' AND lang = 'ru';

UPDATE tools SET description = $t$ElevenLabs — платформа голосового ШІ для синтезу мовлення, клонування голосу та голосових агентів на власних моделях Eleven v3. Її платформа агентів працює ще й як агрегатор: модель міркувань обираєш у OpenAI, Anthropic чи Google або підключаєш свій LLM-ендпоінт, а голос, затримку й телефонію бере на себе ElevenLabs.$t$
 WHERE slug = 'elevenlabs' AND lang = 'ua';

UPDATE tools SET description = $t$ElevenLabs היא פלטפורמת קול מבוססת AI להמרת טקסט לדיבור, שכפול קול וסוכני קול, הבנויה על מודלי Eleven v3 שלה. פלטפורמת הסוכנים שלה משמשת גם כאגרגטור: בוחרים את מודל החשיבה מ-OpenAI, מ-Anthropic או מ-Google, או מחברים אנדפוינט LLM משלכם, ו-ElevenLabs מטפלת בקול, בהשהיה ובטלפוניה.$t$
 WHERE slug = 'elevenlabs' AND lang = 'he';

-- ── добавить пункт в pros, 8 языков ─────────────────────────────────────────
-- Вставляем только если такого пункта ещё нет — повторный прогон безвреден.
UPDATE tools SET pros = pros || ARRAY[$t$Agents Platform lets you choose the reasoning model from OpenAI, Anthropic or Google, or connect your own LLM endpoint$t$]
 WHERE slug = 'elevenlabs' AND lang = 'en' AND NOT (array_to_string(pros, ' ') LIKE '%Agents Platform lets you choose%');

UPDATE tools SET pros = pros || ARRAY[$t$Die Agents Platform lässt Sie das Reasoning-Modell von OpenAI, Anthropic oder Google wählen oder einen eigenen LLM-Endpunkt anbinden$t$]
 WHERE slug = 'elevenlabs' AND lang = 'de' AND NOT (array_to_string(pros, ' ') LIKE '%Agents Platform%');

UPDATE tools SET pros = pros || ARRAY[$t$La Agents Platform permite elegir el modelo de razonamiento de OpenAI, Anthropic o Google, o conectar tu propio endpoint LLM$t$]
 WHERE slug = 'elevenlabs' AND lang = 'es' AND NOT (array_to_string(pros, ' ') LIKE '%Agents Platform%');

UPDATE tools SET pros = pros || ARRAY[$t$La plateforme d'agents permet de choisir le modèle de raisonnement chez OpenAI, Anthropic ou Google, ou de brancher son propre endpoint LLM$t$]
 WHERE slug = 'elevenlabs' AND lang = 'fr' AND NOT (array_to_string(pros, ' ') LIKE '%agents permet de choisir%');

UPDATE tools SET pros = pros || ARRAY[$t$A Agents Platform permite escolher o modelo de raciocínio da OpenAI, da Anthropic ou do Google, ou conectar o seu próprio endpoint de LLM$t$]
 WHERE slug = 'elevenlabs' AND lang = 'pt' AND NOT (array_to_string(pros, ' ') LIKE '%Agents Platform%');

UPDATE tools SET pros = pros || ARRAY[$t$Платформа агентов позволяет выбрать модель рассуждений у OpenAI, Anthropic или Google либо подключить свой LLM-эндпоинт$t$]
 WHERE slug = 'elevenlabs' AND lang = 'ru' AND NOT (array_to_string(pros, ' ') LIKE '%Платформа агентов позволяет%');

UPDATE tools SET pros = pros || ARRAY[$t$Платформа агентів дозволяє обрати модель міркувань у OpenAI, Anthropic чи Google або підключити свій LLM-ендпоінт$t$]
 WHERE slug = 'elevenlabs' AND lang = 'ua' AND NOT (array_to_string(pros, ' ') LIKE '%Платформа агентів дозволяє%');

UPDATE tools SET pros = pros || ARRAY[$t$פלטפורמת הסוכנים מאפשרת לבחור את מודל החשיבה מ-OpenAI, מ-Anthropic או מ-Google, או לחבר אנדפוינט LLM משלכם$t$]
 WHERE slug = 'elevenlabs' AND lang = 'he' AND NOT (array_to_string(pros, ' ') LIKE '%פלטפורמת הסוכנים מאפשרת%');

-- ── best_for и отметка о проверке ───────────────────────────────────────────
UPDATE tools SET best_for = $t$Voice cloning, TTS, voice agents with a choice of LLM, real-time transcription, batch calling$t$
 WHERE slug = 'elevenlabs' AND lang = 'en';

UPDATE tools SET last_updated = '2026-09-11' WHERE slug = 'elevenlabs';

-- Проверка:
-- SELECT lang, left(description, 90) FROM tools WHERE slug='elevenlabs' ORDER BY lang;
-- SELECT lang, array_length(pros,1) FROM tools WHERE slug='elevenlabs' ORDER BY lang;
