# /review-cards — сверка карточек инструментов с сайтами вендоров, 8 языков

Цель: на сайте не должно быть устаревших цен, версий, тарифов и лимитов. Источник
фактов — только сайт вендора (pricing, changelog, блог, release notes). Пересказы СМИ —
только чтобы найти первоисточник. Неподтверждённое не пишем.

Рабочая папка: `<scratchpad>/rev-<дата>/` (не в проекте).

## 1. Что проверять

```bash
python3 scripts/review_export.py <rev> --index      # <rev>/tools.json — все опубликованные, EN
```
Приоритет: инструменты с выходившими за период новостями (свежие новости в таблице
`news` и в мире), затем самые старые `last_updated`, затем топ из `category_order.json`.
За один прогон — все, у кого были изменения, плюс ~30 самых давно проверенных.

Раздать группами по ~10–15 slug субагентам (Agent, general-purpose, параллельно).
Каждый открывает сайт вендора (pricing + changelog/блог) и пишет
`<rev>/findings_g<N>.json`: `[{slug, changed: true/false, facts: ["новая цена Pro $25/мес", …],
stale: ["$20", "v3"], source_url}]`. Сайты, которые блокируют WebFetch (openai.com,
anthropic.com и др.), читать во встроенном браузере: `mcp__Claude_Browser__tabs_create`
(своя вкладка) → `navigate` → `get_page_text`.

## 2. Правки

Для slug с `changed: true`:
```bash
python3 scripts/review_export.py <rev> slug1 slug2 …   # cards/src_<slug>.json, src_cmp_<slug>.json, src_seo_<slug>.json
```
Субагенты (по 3–6 slug на агента) пишут правки в `<rev>/patches/`:
- `out_<slug>.json` — `{lang: {field: ПОЛНОЕ новое значение}}`, только изменённые поля, но
  во всех 8 языках (en, es, de, ru, ua, he, fr, pt). Поля: description, description_long
  (абзацы через `\n\n`, без markdown), pros/cons (4–5 пунктов), choose_if (массив строк),
  faq (массив `{"q","a"}`), best_for, badge (free/freemium/paid — одинаково во всех языках),
  users, name, url.
- `out_cmp_<comparison_slug>.json` — то же для сравнений (intro, table_data, best_a/b,
  verdict_a/b, choose_a/b, faq, title, meta_desc), сохраняя точную структуру JSON. Если
  одно сравнение правят двое — сначала `cmp/<cmp>__<tool>.json`, потом слить вручную.
- `seo_<slug>.json` — `[{"file", "old", "new"}]` для title/meta с устаревшим фактом
  (meta ≤160 символов, title ≤65, без эмодзи).

Правила для агентов:
- искать устаревший факт во ВСЕХ полях всех 8 языков, включая faq, choose_if, best_for;
- менять только нужное, остальное слово в слово; стиль и язык карточки сохранить;
- названия продуктов, тарифов и моделей — латиницей во всех языках, включая иврит;
- цены и числа одинаковые во всех языках;
- самопроверка скриптом: валидный JSON, 8 языков у каждого изменённого поля, pros/cons
  4–5 строк, faq — `{"q","a"}`, ни одного устаревшего значения в карточке после правки,
  в иврите нет транслитерации названий (קלוד и т.п.);
- в базу не писать, файлы проекта не трогать, не коммитить.

## 3. В базу и на сайт

```bash
python3 scripts/card_patches_sql.py <rev>/patches scripts/tools_update_<дата>.sql
python3 scripts/run_sql.py --dry-run scripts/tools_update_<дата>.sql
python3 scripts/run_sql.py scripts/tools_update_<дата>.sql        # с резервной копией
python3 scripts/apply_seo_patches.py '<rev>/patches/seo_*.json' --dry-run
python3 scripts/apply_seo_patches.py '<rev>/patches/seo_*.json'
```
Если инструмент закрылся или передан другому — `published = false` (не удалять) и
`generate-retired-pages.py`. Если в `COMPARISONS` (`scripts/generate-compare-pages.py`)
меняется slug — поправить там же.

Дальше — `/publish-changes` (при правке многих карточек проще `python3 scripts/sync.py`,
~25 мин), затем `verify_live.py --tools=<изменённые slug>` и взгляд в браузере на
2 языках (один из них he).

## Что не трогать

- `ai_for` и `categories` — там нет цен и версий по правилу; они подтягивают данные
  из `tools` при сборке.
- `tool_translations` — устаревшая таблица.
- Отзывы (`comments`) — модерирует Leon.
