# AI Catalog

Single-file catalog website listing AI tools by category. Russian-language content. No build step, no frameworks — everything lives in `ai-catalog.html`.

## Stack

- Pure HTML/CSS/JS — no npm, no bundler, no framework
- Google Fonts: `DM Sans` (body) and `Space Grotesk` (headings/display)
- No external JS libraries

## Design system

Dark theme. All colors are defined as CSS custom properties in `:root`:

| Variable     | Value                     | Usage                        |
|--------------|---------------------------|------------------------------|
| `--bg`       | `#0a0a0a`                 | Page background              |
| `--bg2`      | `#141414`                 | Card background              |
| `--bg3`      | `#1c1c1c`                 | Card hover background        |
| `--accent`   | `#7c6af7`                 | Primary accent (purple)      |
| `--green`    | `#2dd4a0`                 | Free badge                   |
| `--amber`    | `#f59e0b`                 | Paid badge                   |
| `--text`     | `#f0f0f0`                 | Primary text                 |
| `--text2`    | `#888`                    | Secondary text               |
| `--text3`    | `#555`                    | Muted text / labels          |
| `--border`   | `rgba(255,255,255,0.08)`  | Default borders              |
| `--border2`  | `rgba(255,255,255,0.14)`  | Hover borders                |
| `--radius`   | `12px`                    | Card border-radius           |
| `--radius-sm`| `8px`                     | Small element border-radius  |

Each category has its own accent color (defined on the `CATEGORIES` data objects), used for avatars and icons at low opacity (e.g. `${cat.color}22` for bg, `${cat.color}33` for border).

## Data structure

All tool data is in the `CATEGORIES` array inside the `<script>` tag:

```js
{
  id: 'chat',          // unique slug, used for tab filtering
  title: 'AI Чат и Ассистенты',
  icon: '💬',
  color: '#7c6af7',    // category accent color (hex)
  tools: [
    {
      name: 'ChatGPT',
      desc: '...',           // Russian description, ~1–2 sentences
      url: 'https://...',
      badge: 'freemium'      // 'free' | 'freemium' | 'paid'
    }
  ]
}
```

## Current content

50 tools across 10 categories:

| ID            | Category title               | Count |
|---------------|------------------------------|-------|
| `chat`        | AI Чат и Ассистенты          | 5     |
| `writing`     | Текст и Копирайтинг          | 5     |
| `image`       | Генерация Изображений        | 5     |
| `code`        | AI для Разработки            | 5     |
| `video`       | Генерация Видео              | 5     |
| `voice`       | Голос и Аудио                | 5     |
| `productivity`| Продуктивность               | 5     |
| `research`    | Исследования                 | 5     |
| `design`      | Дизайн и UI/UX               | 5     |
| `data`        | Данные и Аналитика           | 5     |

## Features

- **Category tabs** — filter by category; "Все" tab shows everything
- **Live search** — filters by tool name and description across all categories
- **Tool cards** — link to the tool's website, open in new tab
- **Badges** — `free` / `freemium` / `paid` with color-coded styling
- **Sticky header** with blur backdrop
- **Responsive** — single-column grid on mobile (`< 600px`)
- **PWA manifest** reference (`manifest.json`) — file not yet created

## Adding a new tool

1. Find the right category object in `CATEGORIES`
2. Push a new entry into its `tools` array
3. Use Russian for `desc`, keep it concise (~1–2 sentences)
4. Set `badge` to `'free'`, `'freemium'`, or `'paid'`
5. Update the stat counter in the hero section if the total changes

## Adding a new category

1. Add a new object to `CATEGORIES` with a unique `id`, Russian `title`, an emoji `icon`, and a distinct hex `color`
2. The tab row and render loop are data-driven — no template changes needed
3. Update the "10 категорий" stat in the hero if needed
