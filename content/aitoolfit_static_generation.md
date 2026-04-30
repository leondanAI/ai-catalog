# Задача: генерация статических HTML страниц из Supabase для SEO

## Проблема
Google не индексирует сайт — 0 страниц за 90 дней.
Причина: весь контент рендерится через JavaScript. Google видит пустой HTML.
Решение: генерировать статические HTML файлы из данных Supabase при каждом деплое.

## Что нужно создать

### 1. Скрипт генерации: `scripts/generate-static.js`

Скрипт читает данные из Supabase и генерирует статические HTML файлы для всех языков.

```javascript
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'

const supabase = createClient(
  process.env.SUPABASE_URL,
  process.env.SUPABASE_ANON_KEY
)

const ACTIVE_LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he']

const LANG_DIRS = {
  en: '',        // /tools/chatgpt.html
  es: 'es/',
  de: 'de/',
  ru: 'ru/',
  ua: 'ua/',
  he: 'he/'
}

const LANG_NAMES = {
  en: 'English', es: 'Español', de: 'Deutsch',
  ru: 'Русский', ua: 'Українська', he: 'עברית'
}

// Генерация hreflang тегов для страницы инструмента
function generateHreflang(slug) {
  return ACTIVE_LANGS.map(lang => {
    const dir = LANG_DIRS[lang]
    const href = `https://aitoolfit.ai/${dir}tools/${slug}.html`
    const hreflangCode = lang === 'ua' ? 'uk' : lang
    return `<link rel="alternate" hreflang="${hreflangCode}" href="${href}">`
  }).join('\n') +
  `\n<link rel="alternate" hreflang="x-default" href="https://aitoolfit.ai/tools/${slug}.html">`
}

// Schema.org JSON-LD для инструмента
function generateSchemaOrg(tool) {
  const schema = {
    "@context": "https://schema.org",
    "@type": "SoftwareApplication",
    "name": tool.name,
    "description": tool.description,
    "applicationCategory": "WebApplication",
    "operatingSystem": "Web",
    "url": `https://aitoolfit.ai/tools/${tool.slug}.html`,
    "offers": {
      "@type": "Offer",
      "priceCurrency": "USD",
      "description": tool.pricing || tool.badge
    },
    "provider": {
      "@type": "Organization",
      "name": tool.name,
      "url": tool.url
    }
  }

  // Добавить рейтинг только если есть реальные данные
  if (tool.rating && tool.rating_count && tool.rating_count > 0) {
    schema.aggregateRating = {
      "@type": "AggregateRating",
      "ratingValue": tool.rating.toFixed(1),
      "reviewCount": tool.rating_count,
      "bestRating": "5",
      "worstRating": "1"
    }
  }

  return `<script type="application/ld+json">${JSON.stringify(schema, null, 2)}</script>`
}

// Генерация HTML страницы инструмента
function generateToolPage(tool, lang, allLangTools) {
  const dir = LANG_DIRS[lang]
  const canonical = `https://aitoolfit.ai/${dir}tools/${tool.slug}.html`
  const isRTL = lang === 'he'

  // Pros и Cons
  const prosHtml = (tool.pros || []).map(p =>
    `<li class="pro-item"><span class="pro-icon">✅</span>${p}</li>`
  ).join('\n')

  const consHtml = (tool.cons || []).map(c =>
    `<li class="con-item"><span class="con-icon">❌</span>${c}</li>`
  ).join('\n')

  // Ссылки на другие языки
  const langLinksHtml = ACTIVE_LANGS.map(l => {
    const ldir = LANG_DIRS[l]
    const href = `/${ldir}tools/${tool.slug}.html`
    return `<a href="${href}" class="lang-link ${l === lang ? 'active' : ''}">${LANG_NAMES[l]}</a>`
  }).join('\n')

  return `<!DOCTYPE html>
<html lang="${lang}" ${isRTL ? 'dir="rtl"' : ''}>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${tool.name} Review 2026 — Pros, Cons, Pricing | AItoolFit</title>
<meta name="description" content="${tool.name} review 2026: ${tool.description?.slice(0, 140) || ''}. See pros, cons, pricing and alternatives on AItoolFit.">
<link rel="canonical" href="${canonical}">
${generateHreflang(tool.slug)}
<!-- Open Graph -->
<meta property="og:title" content="${tool.name} Review 2026 | AItoolFit">
<meta property="og:description" content="${tool.description?.slice(0, 200) || ''}">
<meta property="og:url" content="${canonical}">
<meta property="og:type" content="article">
<meta property="og:site_name" content="AItoolFit">
<meta property="og:image" content="https://aitoolfit.ai/og-image.png">
<!-- Schema.org -->
${generateSchemaOrg(tool)}
<!-- Styles -->
<link rel="stylesheet" href="${dir ? '../' : ''}../css/style.css">
<link rel="icon" type="image/svg+xml" href="${dir ? '../' : ''}../favicon.svg">
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-WW59K11Y2Z"></script>
<script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments);}gtag('js',new Date());gtag('config','G-WW59K11Y2Z');</script>
</head>
<body>

<!-- Navigation -->
<header class="site-header">
  <div class="header-inner">
    <a href="${dir ? '../' : ''}../" class="logo">
      <svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26">
        <rect width="26" height="26" rx="7" fill="#7c6af7"/>
        <text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text>
      </svg>AItoolFit
    </a>
    <nav class="nav-links">
      <a href="${dir ? '../' : ''}../">Find a Tool</a>
      <a href="${dir ? '../' : ''}../directory.html">AI Catalog</a>
      <a href="${dir ? '../' : ''}../compare.html">Compare</a>
      <a href="${dir ? '../' : ''}../news.html">News</a>
      <a href="${dir ? '../' : ''}../tools.html">Toolbox</a>
    </nav>
  </div>
</header>

<!-- Main Content — STATIC HTML for Google -->
<main class="tool-page-main">
  <div class="wrap">

    <!-- Breadcrumb -->
    <nav class="breadcrumb" aria-label="Breadcrumb">
      <a href="${dir ? '../' : ''}../">Home</a> →
      <a href="${dir ? '../' : ''}../directory.html">AI Catalog</a> →
      <span>${tool.name}</span>
    </nav>

    <!-- Tool Header -->
    <div class="tool-header">
      <div class="tool-avatar-large">
        <img src="https://www.google.com/s2/favicons?sz=64&domain=${tool.domain || tool.url?.replace('https://','').split('/')[0]}"
             width="48" height="48"
             alt="${tool.name} logo"
             onerror="this.style.display='none'">
      </div>
      <div class="tool-header-info">
        <h1>${tool.name}</h1>
        <p class="tool-tagline">${tool.description || ''}</p>
        <div class="tool-meta">
          <span class="badge badge-${tool.badge}">${tool.badge}</span>
          ${tool.users ? `<span class="users-count">👥 ${tool.users} users</span>` : ''}
          ${tool.best_for ? `<span class="best-for">🎯 ${tool.best_for}</span>` : ''}
        </div>
      </div>
      <a href="${tool.url}" target="_blank" rel="noopener sponsored" class="btn btn-primary visit-btn">
        Visit ${tool.name} →
      </a>
    </div>

    <!-- Full Description — KEY FOR SEO -->
    ${tool.description_long ? `
    <section class="tool-description">
      <h2>About ${tool.name}</h2>
      <div class="description-text">
        ${tool.description_long.split('\n\n').map(p => `<p>${p}</p>`).join('\n')}
      </div>
    </section>
    ` : ''}

    <!-- Pros & Cons — STATIC HTML -->
    <section class="pros-cons">
      <div class="pros-block">
        <h2>Advantages</h2>
        <ul class="pros-list">${prosHtml}</ul>
      </div>
      <div class="cons-block">
        <h2>Disadvantages</h2>
        <ul class="cons-list">${consHtml}</ul>
      </div>
    </section>

    <!-- Ratings section — loaded dynamically by JS -->
    <section class="ratings-section" id="ratingsSection">
      <h2>User Ratings & Reviews</h2>
      <div id="ratingsContent">
        <!-- Ratings loaded by JS from Supabase -->
        <p class="loading-text">Loading ratings...</p>
      </div>
    </section>

    <!-- Language switcher -->
    <div class="lang-switcher">
      ${langLinksHtml}
    </div>

  </div>
</main>

<!-- Footer -->
<footer class="site-footer">
  <div class="footer-inner">
    <div>
      <div class="logo">
        <svg class="logo-mark" width="26" height="26" viewBox="0 0 26 26">
          <rect width="26" height="26" rx="7" fill="#7c6af7"/>
          <text x="13" y="18" text-anchor="middle" fill="#fff" font-family="Arial,sans-serif" font-weight="700" font-size="14">AI</text>
        </svg>AItoolFit
      </div>
      <p class="footer-desc">Your AI tool finder.<br>Updated daily.</p>
    </div>
  </div>
  <div class="footer-bottom">
    <span>© 2026 AItoolFit.ai</span>
    <span>Built with ♥ by Leondan & Claude</span>
    <span>Not affiliated with Pearson MyPedia</span>
  </div>
</footer>

<!-- JS for dynamic content (ratings, comments) — loads AFTER static content -->
<script src="${dir ? '../' : ''}../js/db.js"></script>
<script>
// Load dynamic ratings after page load — doesn't affect SEO
document.addEventListener('DOMContentLoaded', function() {
  if (typeof loadToolRatings === 'function') {
    loadToolRatings('${tool.slug}', '${lang}');
  }
});
</script>

</body>
</html>`
}

// Главная функция
async function generateAllPages() {
  console.log('🚀 Starting static page generation...')

  // Получить все инструменты из Supabase
  const { data: tools, error } = await supabase
    .from('tools')
    .select('*')
    .eq('published', true)
    .in('lang', ACTIVE_LANGS)
    .order('slug')

  if (error) {
    console.error('❌ Supabase error:', error)
    process.exit(1)
  }

  console.log(`📦 Found ${tools.length} tool entries`)

  // Группировать по slug
  const toolsBySLug = {}
  for (const tool of tools) {
    if (!toolsBySLug[tool.slug]) toolsBySLug[tool.slug] = {}
    toolsBySLug[tool.slug][tool.lang] = tool
  }

  let generated = 0
  let errors = 0

  // Генерировать страницы для каждого инструмента и каждого языка
  for (const [slug, langTools] of Object.entries(toolsBySLug)) {
    for (const lang of ACTIVE_LANGS) {
      const tool = langTools[lang] || langTools['en'] // fallback to EN
      if (!tool) continue

      const dir = LANG_DIRS[lang]
      const outputDir = path.join(process.cwd(), dir ? dir : '', 'tools')
      const outputFile = path.join(outputDir, `${slug}.html`)

      try {
        // Создать папку если не существует
        fs.mkdirSync(outputDir, { recursive: true })

        // Генерировать HTML
        const html = generateToolPage(tool, lang, langTools)

        // Записать файл
        fs.writeFileSync(outputFile, html, 'utf8')
        generated++

        if (generated % 50 === 0) {
          console.log(`✅ Generated ${generated} pages...`)
        }
      } catch (err) {
        console.error(`❌ Error generating ${lang}/tools/${slug}.html:`, err.message)
        errors++
      }
    }
  }

  console.log(`\n✅ Done! Generated ${generated} pages, ${errors} errors`)
  console.log(`📁 Tool pages created in /tools/ and language subdirectories`)
}

generateAllPages()
```

---

### 2. Обновить package.json — добавить скрипт

```json
{
  "scripts": {
    "generate": "node scripts/generate-static.js",
    "build": "npm run generate"
  },
  "dependencies": {
    "@supabase/supabase-js": "^2.0.0"
  }
}
```

---

### 3. GitHub Actions — автогенерация при каждом деплое

Создать файл `.github/workflows/generate-pages.yml`:

```yaml
name: Generate Static Pages

on:
  push:
    branches: [ main ]
  workflow_dispatch:  # Ручной запуск

jobs:
  generate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '20'

      - name: Install dependencies
        run: npm install

      - name: Generate static pages
        env:
          SUPABASE_URL: ${{ secrets.SUPABASE_URL }}
          SUPABASE_ANON_KEY: ${{ secrets.SUPABASE_ANON_KEY }}
        run: npm run generate

      - name: Commit generated pages
        run: |
          git config --local user.email "action@github.com"
          git config --local user.name "GitHub Action"
          git add tools/ es/tools/ de/tools/ ru/tools/ ua/tools/ he/tools/
          git diff --quiet && git diff --staged --quiet || git commit -m "🤖 Auto-generate static tool pages"
          git push
```

---

### 4. GitHub Secrets — добавить в репозиторий

В GitHub → репозиторий → Settings → Secrets and variables → Actions → добавить:
- `SUPABASE_URL` — URL из Supabase Dashboard
- `SUPABASE_ANON_KEY` — anon key из Supabase Dashboard

---

### 5. После генерации — проверить

1. Убедиться что файлы созданы: `/tools/chatgpt.html`, `/ru/tools/chatgpt.html` и т.д.
2. Открыть несколько страниц — проверить что контент виден без JS (View Source)
3. Зайти в Google Search Console → URL Inspection → вбить `https://aitoolfit.ai/tools/chatgpt.html` → Request Indexing

---

## Ожидаемый результат

После генерации:
- ~115 инструментов × 6 языков = ~690 статических HTML файлов
- Google видит реальный контент без JS
- Каждая страница имеет уникальный title, description, canonical, hreflang
- Schema.org разметка встроена в HTML
- Рейтинги и комментарии всё ещё загружаются динамически через JS — это нормально

## Важно

- Запускать `npm run generate` локально перед первым деплоем для проверки
- После успешной генерации — подать sitemap заново в Google Search Console
- Через 1-2 недели Google должен начать индексировать страницы
