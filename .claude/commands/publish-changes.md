# /publish-changes — после любой правки контента: пересобрать, выложить, проверить

Сайт статический (GitHub Pages): правка в базе НЕ появится на сайте, пока страницы
не перепечатаны. Делать в той же сессии, где была правка. «Готово» — только после шага 4.

## 1. Пересобрать затронутые страницы

| Что менялось | Команды |
|---|---|
| Карточка инструмента | `generate-pages.py`, `generate-lang-tool-pages.py`, `gen_data_js.py`, `generate-lang-pages.py`, `generate-static-content.py`, `generate-compare-pages.py` (~12 мин) |
| Инструмент снят | то же + `generate-retired-pages.py` (после генераторов карточек) |
| Новость | `generate-news-pages.py`, `generate-news-snapshot.py` |
| Сравнение | `generate-compare-pages.py` |
| Шаблон (index/news/directory/compare.html, css, js) | `generate-lang-pages.py`, затем `generate-static-content.py`, `generate-news-snapshot.py` |
| Много всего / не уверен | `python3 scripts/sync.py` (все шаги по порядку, ~22 мин) |

**После `generate-pages.py` / `generate-lang-tool-pages.py` / `generate-compare-pages.py` всегда
запускать `generate-retired-pages.py` и `generate-redirects.py`:** эти генераторы удаляют из
tools/ и compare/ всё, чего нет в базе, — вместе со страницами закрытых сервисов и переадресациями
(2026-10-25 так пропали 160 страниц, вернули до выкладки).

Порядок важен: языковые копии страниц (`generate-lang-pages.py`) — до тех, кто
вписывает в них блоки (`generate-static-content.py`, `generate-news-snapshot.py`).

## 2. Проверки до выкладки

```bash
python3 scripts/check_lang_links.py     # ссылки не на тот язык → остановиться и чинить
python3 scripts/find_broken_links.py    # должно быть 0
python3 scripts/generate-sitemap.py     # lastmod — по реальным изменениям (git)
```

## 3. Выложить

`git add -A`, коммит с описанием «что и почему», `git push`. Затем IndexNow для
изменённых адресов (`scripts/indexnow.py --since=<дата>` или список).

## 4. Проверить на живом сайте (обязательно)

Через 1–2 минуты:
```bash
python3 scripts/verify_live.py --news=<slug,…> --tools=<slug,…>
```
И глазами в браузере Leon (select_browser `fe4ae832-b8c1-4622-9f72-c174b5b85a1e`)
затронутые страницы минимум на двух языках. Кэш CSS у браузера до 10 минут —
для проверки добавлять `?v=<что-то>` к адресу.

Сообщить Leon: что изменено, ссылки, что именно проверено и как.

## Правила, из-за которых это написано

- База — единственный источник. Не писать контент руками в JS/шаблоны:
  `js/data.js`, `js/translations.js` генерируются; «Популярные» на главной — список slug.
- Живыми в браузере остаются только: подбор (воркер), `compare.html?a=&b=`,
  комментарии, подписка, учёт кликов.
- Автосборки по расписанию нет; GitHub Action «Rebuild site from database» — ручной
  запасной путь (кнопка Run workflow).
