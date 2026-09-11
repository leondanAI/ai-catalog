-- elevenlabs, вторая правка за день: предыдущая описала только агрегацию LLM
-- в Agents Platform и упустила куда более крупное — раздел Image & Video.
--
-- Проверено 2026-09-11 в самом интерфейсе (elevenlabs.io/app/image-video),
-- аккаунт Leon. Каталог моделей открывается селектором с поиском и фильтрами
-- Available / Upscaling / Editing / Audio / Fast / Low Cost.
--
-- Изображения: Seedream 4.5 (ByteDance), FLUX.1 Kontext [Pro] (Black Forest
--   Labs), GPT Image 2.5 Sunburst и Flare (OpenAI), Recraft V4 и 4.1,
--   Topaz Image Upscale, Nano Banana.
-- Видео: Seedance 2.5 / 2.0 / 2.0 Fast / 1.5 Pro (ByteDance),
--   Gemini Omni Flash 1.1 и Extend (Google), MiniMax H3 Max.
-- Плюс вкладка Lip sync.
--
-- Главное для читателя: всё это на одном балансе кредитов вместе с речью,
-- музыкой, звуковыми эффектами, транскрипцией и дубляжом. Не нужно держать
-- подписку у каждого вендора отдельно.
--
-- Конкретные версии чужих моделей в текст по-прежнему не выносим — меняются
-- на стороне ElevenLabs. Называем вендоров и сам факт единого кошелька.
-- Идемпотентно.

UPDATE tools SET description = $t$ElevenLabs is a multimodal AI studio on a single credit balance: speech, voice cloning, music, sound effects, transcription, dubbing, and now image and video generation with lip sync. It runs its own Eleven v3 voice models and aggregates third-party models from ByteDance, Google, OpenAI, Black Forest Labs and others, so one subscription covers most media formats.$t$
 WHERE slug = 'elevenlabs' AND lang = 'en';

UPDATE tools SET description = $t$ElevenLabs ist ein multimodales KI-Studio auf einem einzigen Guthaben: Sprache, Voice Cloning, Musik, Soundeffekte, Transkription, Dubbing und jetzt auch Bild- und Videogenerierung mit Lippensynchronisation. Es nutzt eigene Eleven-v3-Sprachmodelle und bündelt Drittanbieter-Modelle von ByteDance, Google, OpenAI, Black Forest Labs und weiteren — ein Abo deckt fast alle Medienformate ab.$t$
 WHERE slug = 'elevenlabs' AND lang = 'de';

UPDATE tools SET description = $t$ElevenLabs es un estudio de IA multimodal con un único saldo de créditos: voz, clonación de voz, música, efectos de sonido, transcripción, doblaje y ahora generación de imagen y vídeo con sincronización labial. Usa sus propios modelos de voz Eleven v3 y agrega modelos de terceros de ByteDance, Google, OpenAI, Black Forest Labs y otros, así que una suscripción cubre casi todos los formatos.$t$
 WHERE slug = 'elevenlabs' AND lang = 'es';

UPDATE tools SET description = $t$ElevenLabs est un studio IA multimodal sur un seul solde de crédits : voix, clonage vocal, musique, effets sonores, transcription, doublage et désormais génération d'images et de vidéos avec synchronisation labiale. Il s'appuie sur ses modèles vocaux Eleven v3 et agrège des modèles tiers de ByteDance, Google, OpenAI, Black Forest Labs et d'autres — un seul abonnement couvre presque tous les formats.$t$
 WHERE slug = 'elevenlabs' AND lang = 'fr';

UPDATE tools SET description = $t$A ElevenLabs é um estúdio de IA multimodal com um único saldo de créditos: voz, clonagem de voz, música, efeitos sonoros, transcrição, dublagem e agora geração de imagem e vídeo com sincronização labial. Usa os seus próprios modelos de voz Eleven v3 e agrega modelos de terceiros da ByteDance, do Google, da OpenAI, da Black Forest Labs e de outros — uma assinatura cobre quase todos os formatos.$t$
 WHERE slug = 'elevenlabs' AND lang = 'pt';

UPDATE tools SET description = $t$ElevenLabs — мультимодальная ИИ-студия на одном балансе кредитов: речь, клонирование голоса, музыка, звуковые эффекты, транскрипция, дубляж, а теперь генерация изображений и видео с липсинком. Работает на собственных голосовых моделях Eleven v3 и агрегирует чужие — от ByteDance, Google, OpenAI, Black Forest Labs и других, так что одна подписка закрывает почти все форматы медиа.$t$
 WHERE slug = 'elevenlabs' AND lang = 'ru';

UPDATE tools SET description = $t$ElevenLabs — мультимодальна ШІ-студія на одному балансі кредитів: мовлення, клонування голосу, музика, звукові ефекти, транскрипція, дубляж, а тепер генерація зображень і відео з ліпсинком. Працює на власних голосових моделях Eleven v3 і агрегує чужі — від ByteDance, Google, OpenAI, Black Forest Labs та інших, тож одна підписка закриває майже всі формати медіа.$t$
 WHERE slug = 'elevenlabs' AND lang = 'ua';

UPDATE tools SET description = $t$ElevenLabs היא סטודיו AI מולטימודלי על מאגר קרדיטים אחד: דיבור, שכפול קול, מוזיקה, אפקטים קוליים, תמלול, דיבוב, וכעת גם יצירת תמונות ווידאו עם סנכרון שפתיים. היא מריצה את מודלי הקול Eleven v3 שלה ומאגדת מודלים של צד שלישי מ-ByteDance, מ-Google, מ-OpenAI, מ-Black Forest Labs ואחרים — מנוי אחד מכסה כמעט את כל פורמטי המדיה.$t$
 WHERE slug = 'elevenlabs' AND lang = 'he';

-- ── новый пункт в pros про единый баланс ────────────────────────────────────
UPDATE tools SET pros = pros || ARRAY[$t$One credit balance covers voice, music, sound effects, images, video and lip sync — no separate subscription per vendor$t$]
 WHERE slug = 'elevenlabs' AND lang = 'en' AND NOT (array_to_string(pros, ' ') LIKE '%One credit balance covers%');

UPDATE tools SET pros = pros || ARRAY[$t$Ein Guthaben deckt Sprache, Musik, Soundeffekte, Bilder, Video und Lippensynchronisation ab — kein separates Abo pro Anbieter$t$]
 WHERE slug = 'elevenlabs' AND lang = 'de' AND NOT (array_to_string(pros, ' ') LIKE '%Ein Guthaben deckt%');

UPDATE tools SET pros = pros || ARRAY[$t$Un único saldo de créditos cubre voz, música, efectos, imágenes, vídeo y sincronización labial — sin suscripción aparte por proveedor$t$]
 WHERE slug = 'elevenlabs' AND lang = 'es' AND NOT (array_to_string(pros, ' ') LIKE '%Un único saldo de créditos cubre%');

UPDATE tools SET pros = pros || ARRAY[$t$Un seul solde de crédits couvre voix, musique, effets, images, vidéo et synchronisation labiale — pas d''abonnement séparé par fournisseur$t$]
 WHERE slug = 'elevenlabs' AND lang = 'fr' AND NOT (array_to_string(pros, ' ') LIKE '%Un seul solde de crédits couvre%');

UPDATE tools SET pros = pros || ARRAY[$t$Um único saldo de créditos cobre voz, música, efeitos, imagens, vídeo e sincronização labial — sem assinatura separada por fornecedor$t$]
 WHERE slug = 'elevenlabs' AND lang = 'pt' AND NOT (array_to_string(pros, ' ') LIKE '%Um único saldo de créditos cobre%');

UPDATE tools SET pros = pros || ARRAY[$t$Один баланс кредитов покрывает речь, музыку, звуки, изображения, видео и липсинк — не нужна отдельная подписка у каждого вендора$t$]
 WHERE slug = 'elevenlabs' AND lang = 'ru' AND NOT (array_to_string(pros, ' ') LIKE '%Один баланс кредитов покрывает%');

UPDATE tools SET pros = pros || ARRAY[$t$Один баланс кредитів покриває мовлення, музику, звуки, зображення, відео та ліпсинк — не потрібна окрема підписка в кожного вендора$t$]
 WHERE slug = 'elevenlabs' AND lang = 'ua' AND NOT (array_to_string(pros, ' ') LIKE '%Один баланс кредитів покриває%');

UPDATE tools SET pros = pros || ARRAY[$t$מאגר קרדיטים אחד מכסה דיבור, מוזיקה, אפקטים, תמונות, וידאו וסנכרון שפתיים — בלי מנוי נפרד לכל ספק$t$]
 WHERE slug = 'elevenlabs' AND lang = 'he' AND NOT (array_to_string(pros, ' ') LIKE '%מאגר קרדיטים אחד מכסה%');

UPDATE tools SET best_for = $t$Voice cloning, TTS, music and sound effects, image and video generation, lip sync, voice agents with a choice of LLM$t$
 WHERE slug = 'elevenlabs' AND lang = 'en';

UPDATE tools SET last_updated = '2026-09-11' WHERE slug = 'elevenlabs';
