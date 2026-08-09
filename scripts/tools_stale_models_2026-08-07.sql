-- Устаревшие версии моделей в карточках инструментов — первая порция.
-- Правится только то, что подтверждено первоисточником на 2026-08-07.
--
-- grok
--   Было: «текущий флагман Grok 4.3 (Beta), публичный релиз Grok 4.5 назначен
--   на 9 июля 2026». Сегодня 7 августа, дата прошла, Grok 4.5 вышел —
--   подтверждается официальным списком моделей GitHub Copilot, где Grok 4.5
--   значится доступным. Фраза переписана на всех 8 языках.
--
-- github-copilot
--   Было: «включая Claude Sonnet 5, Claude Opus 4.8, GPT-5.5 и Gemini 3.1 Pro».
--   По docs.github.com/copilot/reference/ai-models/supported-models на 07.08.2026
--   доступны Claude Opus 5, Claude Sonnet 5, GPT-5.6 (Luna/Sol/Terra),
--   Gemini 3.6 Flash, Grok 4.5. Названия моделей везде латиницей, поэтому
--   точечная замена токенов работает сразу на всех языках.
--
-- Идемпотентно: replace() и присвоение конкретных строк, повторный прогон безвреден.

-- ── grok: описание на 8 языках ───────────────────────────────────────────────
UPDATE tools SET description = $t$Grok is xAI's conversational AI, integrated with X and available at grok.com. The current flagship is Grok 4.5, available through SuperGrok plans and also offered inside third-party tools such as GitHub Copilot.$t$
 WHERE slug = 'grok' AND lang = 'en';

UPDATE tools SET description = $t$Grok ist die Konversations-KI von xAI, in X integriert und unter grok.com verfügbar. Das aktuelle Flaggschiff ist Grok 4.5, verfügbar über die SuperGrok-Pläne und auch in Drittanbieter-Tools wie GitHub Copilot.$t$
 WHERE slug = 'grok' AND lang = 'de';

UPDATE tools SET description = $t$Grok es la IA conversacional de xAI, integrada en X y disponible en grok.com. El modelo insignia actual es Grok 4.5, disponible en los planes SuperGrok y también dentro de herramientas de terceros como GitHub Copilot.$t$
 WHERE slug = 'grok' AND lang = 'es';

UPDATE tools SET description = $t$Grok est l'IA conversationnelle de xAI, intégrée à X et disponible sur grok.com. Le modèle phare actuel est Grok 4.5, accessible via les formules SuperGrok et également proposé dans des outils tiers comme GitHub Copilot.$t$
 WHERE slug = 'grok' AND lang = 'fr';

UPDATE tools SET description = $t$Grok é a IA de conversação da xAI, integrada ao X e disponível em grok.com. O modelo principal atual é o Grok 4.5, disponível nos planos SuperGrok e também oferecido em ferramentas de terceiros como o GitHub Copilot.$t$
 WHERE slug = 'grok' AND lang = 'pt';

UPDATE tools SET description = $t$Grok — разговорный ИИ от xAI, встроенный в X и доступный на grok.com. Актуальная флагманская модель — Grok 4.5, она доступна в тарифах SuperGrok и предлагается в сторонних инструментах, например в GitHub Copilot.$t$
 WHERE slug = 'grok' AND lang = 'ru';

UPDATE tools SET description = $t$Grok — розмовний ШІ від xAI, вбудований у X і доступний на grok.com. Актуальна флагманська модель — Grok 4.5, вона доступна в тарифах SuperGrok і пропонується у сторонніх інструментах, наприклад у GitHub Copilot.$t$
 WHERE slug = 'grok' AND lang = 'ua';

UPDATE tools SET description = $t$Grok הוא ה-AI השיחתי של xAI, משולב ב-X וזמין ב-grok.com. הדגם המוביל הנוכחי הוא Grok 4.5, זמין בתוכניות SuperGrok וגם בכלים של צד שלישי כמו GitHub Copilot.$t$
 WHERE slug = 'grok' AND lang = 'he';

-- ── github-copilot: список моделей, все языки разом ──────────────────────────
UPDATE tools SET
  description_long = replace(replace(replace(description_long,
      'Claude Opus 4.8', 'Claude Opus 5'),
      'GPT-5.5',         'GPT-5.6'),
      'Gemini 3.1 Pro',  'Gemini 3.6 Flash')
 WHERE slug = 'github-copilot';

-- ── отметка о проверке ───────────────────────────────────────────────────────
UPDATE tools SET last_updated = '2026-08-07' WHERE slug IN ('grok', 'github-copilot');

-- Проверка:
-- SELECT slug, lang, left(description, 90) FROM tools WHERE slug = 'grok' ORDER BY lang;
-- SELECT count(*) FROM tools WHERE description_long LIKE '%Opus 4.8%' AND slug = 'github-copilot';  -- ожидается 0
