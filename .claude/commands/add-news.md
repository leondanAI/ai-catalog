# /add-news — новость или история на AItoolFit, от темы до проверки на живом сайте

Процесс утверждён Leon 2026-10-12. Контент меняется примерно раз в неделю и только
через Claude. Каждый шаг ниже обязателен; «готово» — только после шага 8.

## 1. Тема и факты

- **Радар тем** (берём тему, но не факты): AI Explained, Wes Roth, Matthew Berman,
  Two Minute Papers, Zvi Mowshowitz, Simon Willison, Import AI; по-русски —
  «Сиолошная», Denis Sexy IT, Data Secrets. Плюс свежие новости за неделю (WebSearch).
- **Факты — только из первоисточника:** пост/отчёт компании, system card, официальный
  changelog, заявление ведомства. Пересказы (СМИ, блоги) — чтобы найти первоисточник.
  Сайты, отдающие 403 автоматическому загрузчику (openai.com, anthropic.com), читать
  во встроенном браузере (mcp__Claude_Browser__get_page_text).
- **Свежесть:** не старше ~10 дней, если это не большая история.
- Не берём: мелкие фичи, бету на 100 человек, анонсы без продукта, непроверяемое.
  Ничего не выдумывать; неподтверждённое — убрать, а не смягчить.

## 2. Формат

- **Новость** — 300–500 слов: что произошло, ключевые цифры, кому важно.
- **История** — 800–1200 слов, для ярких тем (агенты, инциденты, безопасность, большие
  сделки): что произошло → подробности → почему так вышло → реакция → **«Что это
  значит, если вы пользуетесь…»** (практические советы; связь с нашей сутью — выбором
  инструмента).
- Цитаты — коротко (до ~15 слов), остальное пересказом. Источник указываем.

## 3. Черновик

Папка `scripts/drafts/<slug>/` (имя папки = slug):
- `en.json` — `{slug, date: "YYYY-MM-DD", category, source, source_url, title, summary, body}`.
  category: models / tools / business / research / regulation. body — HTML: `<p>`, `<h2>`,
  `<strong>`, `<em>`, без markdown.
- `ru.json` — `{title, summary, body}`: пишу сам, для показа Leon.
- Для **истории**: показать Leon русский черновик (сделать читаемый `ЧЕРНОВИК-ru.md` и
  отправить SendUserFile) и **ждать его «ок»** до публикации. Новость — по ситуации.

## 4. Обложка (ElevenLabs, браузер Leon)

1. `select_browser` → `fe4ae832-b8c1-4622-9f72-c174b5b85a1e` (браузер Leon, НЕ другой).
2. elevenlabs.io/app/image-video → Image. Модель GPT Image 2.5 Sunburst, 16:9, 1K,
   High, 4 варианта (~190 кредитов за картинку).
3. Промпт: «Editorial cover illustration for an AI news website.» + **новая сцена под
   тему** (каждый раз другая композиция и сюжет, не один и тот же персонаж) + стиль:
   `deep charcoal (#0a0a0a), dominant violet light (#7c6af7), mint accents (#2dd4a0),
   volumetric haze, subtle film grain, premium editorial look. Wide 16:9, subject on
   the right half, calmer dark space on the left. No readable text, no letters, no
   logos, no brand marks, no human faces.`
   Узнаваемость компании — только намёком (цвет, форма), без логотипов.
4. Показать Leon 4 варианта с рекомендацией; после выбора — скачать (иконка загрузки
   в просмотрщике; файл в ~/Downloads/ElevenLabs_image_…png).
5. `python3 scripts/news_story.py cover <slug> <png>` → `media/news/<slug>.jpg` и `.webp`.

## 5. Переводы

`python3 scripts/news_story.py translate <slug>` — 6 языков (ru уже есть), Sonnet,
ответ в тегах, не JSON. Скрипт сам отбраковывает: расхождение тегов, иероглифы/чужие
символы внутри слов, имена продуктов ивритом. Ошибочный язык переводится заново.

## 6. Публикация в базу

```bash
python3 scripts/news_story.py sql <slug>                       # SQL на 8 языков, с image_url и source_url
python3 scripts/run_sql.py --dry-run scripts/news_<date>_<slug>.sql
python3 scripts/run_sql.py scripts/news_<date>_<slug>.sql      # с резервной копией таблицы
```

## 7. Пересборка и выкладка — /publish-changes

```bash
python3 scripts/generate-news-pages.py      # статьи /news/<slug>.html, 8 языков
python3 scripts/generate-news-snapshot.py   # ленты news.html и блок на главной, 8 языков
python3 scripts/check_lang_links.py         # падает, если ссылки ведут не на свой язык
python3 scripts/find_broken_links.py
python3 scripts/generate-sitemap.py
git add -A && git commit && git push
```
IndexNow: статья на 8 языках + 8 лент + 8 главных
(`python3 scripts/indexnow.py --since=<сегодня>` или список адресов).

## 8. Проверка на живом сайте

Через 1–2 минуты после push:
```bash
python3 scripts/verify_live.py --news=<slug>
```
Плюс глазами в браузере Leon хотя бы ленту на русском и на одном RTL/другом языке.
Сообщить Leon ссылки и что именно проверено.

## Частые ошибки (все случались)

| Ошибка | Как не допустить |
|---|---|
| Ссылки из ленты ведут на английскую статью | check_lang_links.py + verify_live.py |
| Иероглиф внутри русского слова («для写ки») | translate отбраковывает; не вставлять перевод мимо скрипта |
| Имя продукта ивритом («קלוד») | то же |
| Обложка повторяет прошлую | каждый раз новая сцена |
| Факт из пересказа оказался неверным | только первоисточник; сомнительное — убрать |
| Новость в базе, а на сайте нет | шаг 7 обязателен в той же сессии |
| «Проверено», но не глазами | шаг 8: verify_live + браузер |
