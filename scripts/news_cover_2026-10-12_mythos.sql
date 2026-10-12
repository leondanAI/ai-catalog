-- Первая обложка новости (пилот, ElevenLabs → GPT Image 2.5 Sunburst, вариант 2 «ИИ-хакер в подвале»).
-- JPG — для соцсетей и разметки; рядом лежит WebP того же имени для страницы. Идемпотентно.
UPDATE news SET image_url = 'https://aitoolfit.ai/media/news/anthropic-mythos-restricted-release.jpg'
 WHERE slug = 'anthropic-mythos-restricted-release';
