# /add-news — Добавить новости в AIToolFit

## Шаг 1 — Сбор материала

Собрать 4-8 новостей за период. Критерии отбора:
- Новая версия / крупное обновление тула
- Изменение цен (особенно pricing cuts или removal планов)
- Крупный funding round ($100M+)
- Регуляторное событие, влияющее на AI
- Новый флагманский AI model

**Что НЕ берём:** минорные фичи, бета-доступы на 100 человек, маркетинговые анонсы без продукта.

---

## Шаг 2 — SQL EN

Файл: `scripts/news_ГГГГ-ММ-ДД_en.sql`

```sql
INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published)
VALUES
('slug-тут', 'en', 'models', 'Models', '#7c6af7', 'TechCrunch', 'May 17, 2026',
 'Заголовок новости',
 'Summary 2-3 предложения. Конкретные факты: цифры, версии, даты.',
 $$<p>Opening paragraph — what happened and why it matters.</p>
<h2>What changed</h2>
<p>Technical details, specific numbers, product names in <strong>bold</strong>.</p>
<h2>Key features</h2>
<p>Details about capabilities, pricing, availability.</p>
<h2>Why it matters</h2>
<p>Impact for users, developers, or the industry. Who should care and why.</p>$$,
 true);
```

> ⚠️ **КРИТИЧНО: `body` обязателен для SEO.** Без body страница статьи пустая — Google не индексирует.
> Минимум 4 секции, 300-500 слов. Только факты из summary — не выдумывать.

### Категории и цвета (всегда эта таблица):

| category | cat_label | cat_color |
|---|---|---|
| `models` | `Models` | `#7c6af7` |
| `tools` | `Tools` | `#2dd4a0` |
| `business` | `Business` | `#f5a623` |
| `research` | `Research` | `#4aaef5` |
| `regulation` | `Regulation` | `#f56565` |

### Правила SQL:

- **date** — СТРОГО `'May 17, 2026'` с конкретным днём. `'May 2026'` → Postgres падает!
- **slug** — уникальный, lowercase-hyphenated, описывает новость: `cursor-34-agentic-dev-environments`
- **Апостроф в summary** — dollar-quoting: `$$OpenAI's new model...$$` вместо `'...'`
- **published** — всегда `true`
- `image_url` — опционально, можно опустить или `null`

---

## Шаг 3 — Supabase (пользователь)

Пользователь сам вставляет SQL в Supabase SQL Editor. Я не имею прямого доступа к БД.

---

## Шаг 4 — Генерация статических страниц

> ⚠️ **ОБЯЗАТЕЛЬНО после каждого INSERT новостей.** Без этого `/news/[slug].html` не создаётся и Google не видит статью.

```bash
python3 scripts/generate-news-pages.py      # создаёт /news/[slug].html для каждой новости с body
python3 scripts/generate-news-snapshot.py   # обновляет news.html SEO-блок + js/news.js
python3 scripts/generate-sitemap.py         # добавляет новые URL в sitemap.xml
```

Новости без `body` — **пропускаются** скриптом (выводит `SKIP`). Добавить body и перезапустить.

---

## Шаг 5 — TRENDING (если нужно)

Если новость крупная (GPT-5.5, Devin $500→$20, крупный deprecation) — обновить `index.html`:

```javascript
const TRENDING_ITEMS = [
  { name:'ChatGPT', badge:'🔥 GPT-5.5 — −52% hallucinations', type:'update' },
  { name:'Suno',    badge:'💰 $5B Series D',                  type:'growth' },
  // ...
];
```

Типы: `update` (обновление продукта), `growth` (рост/funding), `warning` (deprecation/pricing change).

---

## Шаг 6 — Git push

```bash
git add scripts/news_ДАТА_en.sql news/ js/news.js news.html sitemap.xml index.html
git commit -m "Add [N] news items [период]"
git push
```

Vercel деплоит автоматически. Аппрувы не нужны.

---

## Шаг 7 — Переводы (ES/DE/RU/UA/HE/FR/PT)

Файл: `scripts/news_ГГГГ-ММ-ДД_translated.sql`

Для каждой новости — 7 INSERT с lang='es', 'de', 'ru', 'ua', 'he', 'fr', 'pt'.

**Что переводим:** `title`, `summary`
**Что НЕ трогаем:** `slug`, `category`, `cat_color`, `source`, `date` — оставить как в EN (только `cat_label` переводится)

### cat_label переводы:

| lang | Models | Tools | Business | Research | Regulation |
|---|---|---|---|---|---|
| es | Modelos | Herramientas | Negocios | Investigación | Regulación |
| de | Modelle | Tools | Wirtschaft | Forschung | Regulierung |
| ru | Модели | Инструменты | Бизнес | Исследования | Регулирование |
| ua | Моделі | Інструменти | Бізнес | Дослідження | Регулювання |
| he | מודלים | כלים | עסקים | מחקר | רגולציה |
| fr | Modèles | Outils | Business | Recherche | Réglementation |
| pt | Modelos | Ferramentas | Negócios | Pesquisa | Regulamentação |

### Апострофы в переводах:

- FR/ES тексты с апострофами → `$$текст l'IA$$` (dollar-quoting)
- HE/UA тексты → аналогично `$$...$$`
- `ARRAY['l''IA']` → удваивать если внутри обычных кавычек (лучше dollar-quoting)

После SQL — пользователь вставляет в Supabase, затем `git push`.

---

## Частые ошибки

| Ошибка | Как избежать |
|---|---|
| `'May 2026'` в поле date | Всегда конкретный день: `'May 17, 2026'` |
| Дубль slug | Проверить через `SELECT slug FROM news WHERE slug='...'` |
| Апостроф в кавычках | Dollar-quoting `$$...$$` для любого текста с апострофом |
| Новость есть в EN, нет в переводах | Все 7 языков в одном SQL файле |
| Trending не обновлён | После крупных событий — обновить `TRENDING_ITEMS` в `index.html` |
| `/news/[slug].html` не создан | Запустить `generate-news-pages.py` после INSERT в Supabase |
| Статья в `SKIP` при генерации | У неё нет `body` в Supabase — добавить и перезапустить скрипт |
