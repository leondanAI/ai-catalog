# Задача: исправить SEO теги на всех страницах инструментов — все языки

## Масштаб
~115 инструментов × 8 языков (en, es, de, ru, ua, he, fr, pt) = ~920 файлов
Все правки применяются через скрипт — не вручную.

## Проблемы которые нужно исправить

1. **Title слабый** — `ChatGPT 2026 | aitoolfit` → нужен SEO-заголовок с ключевым словом
2. **Meta description обрывается** — не умещается в 155 символов
3. **OG image SVG** — Facebook/LinkedIn не поддерживают SVG
4. **Нет hreflang тегов** — Google не знает о языковых версиях
5. **Нет Schema.org** — нет SoftwareApplication разметки

---

## Скрипт: `scripts/fix-seo-tags.js`

```javascript
import { createClient } from '@supabase/supabase-js'
import fs from 'fs'
import path from 'path'
import { glob } from 'glob'

const supabase = createClient(
  process.env.SUPABASE_URL,
  process.env.SUPABASE_ANON_KEY
)

// Активные языки и их директории
const LANG_CONFIG = {
  en: { dir: '',      hreflang: 'en',    urlPrefix: '' },
  es: { dir: 'es/',   hreflang: 'es',    urlPrefix: '/es' },
  de: { dir: 'de/',   hreflang: 'de',    urlPrefix: '/de' },
  ru: { dir: 'ru/',   hreflang: 'ru',    urlPrefix: '/ru' },
  ua: { dir: 'ua/',   hreflang: 'uk',    urlPrefix: '/ua' },
  he: { dir: 'he/',   hreflang: 'he',    urlPrefix: '/he' },
  fr: { dir: 'fr/',   hreflang: 'fr',    urlPrefix: '/fr' },
  pt: { dir: 'pt/',   hreflang: 'pt',    urlPrefix: '/pt' },
}

// Шаблоны title по языкам
const TITLE_TEMPLATES = {
  en: (name) => `${name} Review 2026 — Pros, Cons & Pricing | AItoolFit`,
  es: (name) => `${name} 2026 — Ventajas, Desventajas y Precios | AItoolFit`,
  de: (name) => `${name} 2026 — Vor- und Nachteile, Preise | AItoolFit`,
  ru: (name) => `${name} 2026 — Обзор, плюсы и минусы, цены | AItoolFit`,
  ua: (name) => `${name} 2026 — Огляд, плюси та мінуси, ціни | AItoolFit`,
  he: (name) => `${name} 2026 — יתרונות, חסרונות ומחירים | AItoolFit`,
  fr: (name) => `${name} 2026 — Avantages, Inconvénients et Prix | AItoolFit`,
  pt: (name) => `${name} 2026 — Vantagens, Desvantagens e Preços | AItoolFit`,
}

// Шаблоны meta description по языкам (строго до 155 символов)
function buildMetaDesc(tool, lang) {
  const name = tool.name
  const badge = tool.badge || 'freemium'
  const bestFor = tool.best_for || ''
  const desc = (tool.description || '').slice(0, 80)

  const templates = {
    en: `${name} review 2026: ${desc}. ${badge}. See pros, cons, pricing and alternatives.`,
    es: `${name} 2026: ${desc}. ${badge}. Pros, contras, precios y alternativas en AItoolFit.`,
    de: `${name} 2026: ${desc}. ${badge}. Vor- und Nachteile, Preise und Alternativen.`,
    ru: `${name} 2026: ${desc}. ${badge}. Плюсы, минусы, цены и альтернативы на AItoolFit.`,
    ua: `${name} 2026: ${desc}. ${badge}. Плюси, мінуси, ціни та альтернативи на AItoolFit.`,
    he: `${name} 2026: ${desc}. ${badge}. יתרונות, חסרונות, מחירים ואלטרנטיבות.`,
    fr: `${name} 2026: ${desc}. ${badge}. Avantages, inconvénients, prix et alternatives.`,
    pt: `${name} 2026: ${desc}. ${badge}. Prós, contras, preços e alternativas no AItoolFit.`,
  }

  // Обрезать до 155 символов строго по границе слова
  let result = templates[lang] || templates.en
  if (result.length > 155) {
    result = result.slice(0, 152) + '...'
  }
  return result
}

// Генерация hreflang тегов
function buildHreflang(slug) {
  const tags = Object.entries(LANG_CONFIG).map(([lang, config]) => {
    const href = `https://aitoolfit.ai${config.urlPrefix}/tools/${slug}.html`
    return `  <link rel="alternate" hreflang="${config.hreflang}" href="${href}">`
  })
  tags.push(`  <link rel="alternate" hreflang="x-default" href="https://aitoolfit.ai/tools/${slug}.html">`)
  return tags.join('\n')
}

// Schema.org SoftwareApplication
function buildSchema(tool, lang, slug) {
  const urlPrefix = LANG_CONFIG[lang]?.urlPrefix || ''
  const schema = {
    "@context": "https://schema.org",
    "@type": "SoftwareApplication",
    "name": tool.name,
    "description": (tool.description || '').slice(0, 200),
    "applicationCategory": "WebApplication",
    "operatingSystem": "Web",
    "url": `https://aitoolfit.ai${urlPrefix}/tools/${slug}.html`,
    "offers": {
      "@type": "Offer",
      "price": tool.badge === 'free' ? "0" : undefined,
      "priceCurrency": "USD",
      "description": tool.badge
    },
    "provider": {
      "@type": "Organization",
      "name": tool.name,
      "url": tool.url
    }
  }

  // AggregateRating только если есть реальные данные
  if (tool.rating && tool.rating > 0) {
    schema.aggregateRating = {
      "@type": "AggregateRating",
      "ratingValue": Number(tool.rating).toFixed(1),
      "reviewCount": tool.review_count || 1,
      "bestRating": "5",
      "worstRating": "1"
    }
  }

  return `  <script type="application/ld+json">\n${JSON.stringify(schema, null, 2)}\n  </script>`
}

// Обработать один HTML файл
function fixHtmlFile(filePath, tool, lang, slug) {
  let html = fs.readFileSync(filePath, 'utf8')

  const title = TITLE_TEMPLATES[lang]?.(tool.name) || TITLE_TEMPLATES.en(tool.name)
  const metaDesc = buildMetaDesc(tool, lang)
  const hreflang = buildHreflang(slug)
  const schema = buildSchema(tool, lang, slug)
  const canonical = `https://aitoolfit.ai${LANG_CONFIG[lang]?.urlPrefix || ''}/tools/${slug}.html`

  // 1. Исправить title
  html = html.replace(
    /<title>.*?<\/title>/s,
    `<title>${title}</title>`
  )

  // 2. Исправить или добавить meta description
  if (html.includes('<meta name="description"')) {
    html = html.replace(
      /<meta name="description"[^>]*>/,
      `<meta name="description" content="${metaDesc}">`
    )
  } else {
    html = html.replace('</title>', `</title>\n  <meta name="description" content="${metaDesc}">`)
  }

  // 3. Исправить OG теги — SVG → PNG
  html = html.replace(/og-image\.svg/g, 'og-image.png')
  html = html.replace(/twitter:image.*?\.svg/g, 'twitter:image" content="https://aitoolfit.ai/og-image.png')

  // 4. Добавить/заменить OG title и description
  if (html.includes('property="og:title"')) {
    html = html.replace(
      /<meta property="og:title"[^>]*>/,
      `<meta property="og:title" content="${title}">`
    )
  }
  if (html.includes('property="og:description"')) {
    html = html.replace(
      /<meta property="og:description"[^>]*>/,
      `<meta property="og:description" content="${metaDesc}">`
    )
  }

  // 5. Исправить canonical
  if (html.includes('rel="canonical"')) {
    html = html.replace(
      /<link rel="canonical"[^>]*>/,
      `<link rel="canonical" href="${canonical}">`
    )
  } else {
    html = html.replace('</title>', `</title>\n  <link rel="canonical" href="${canonical}">`)
  }

  // 6. Удалить старые hreflang и добавить новые
  html = html.replace(/<link rel="alternate" hreflang[^>]*>\n?/g, '')
  html = html.replace('</title>', `</title>\n${hreflang}`)

  // 7. Добавить Schema.org если нет
  if (!html.includes('application/ld+json')) {
    html = html.replace('</head>', `${schema}\n</head>`)
  } else {
    // Заменить существующий Schema.org
    html = html.replace(
      /<script type="application\/ld\+json">[\s\S]*?<\/script>/,
      `<script type="application/ld+json">\n${JSON.stringify(JSON.parse(schema.replace(/<script type="application\/ld\+json">\n/, '').replace('\n  </script>', '')), null, 2)}\n</script>`
    )
  }

  fs.writeFileSync(filePath, html, 'utf8')
}

// Главная функция
async function fixAllToolPages() {
  console.log('🚀 Starting SEO tag fixes for all tool pages...')

  // Получить все инструменты из Supabase
  const { data: tools, error } = await supabase
    .from('tools')
    .select('slug, lang, name, description, badge, best_for, url, rating, review_count')
    .eq('published', true)

  if (error) {
    console.error('❌ Supabase error:', error)
    process.exit(1)
  }

  // Сгруппировать по slug+lang
  const toolMap = {}
  for (const tool of tools) {
    toolMap[`${tool.slug}_${tool.lang}`] = tool
  }

  console.log(`📦 Loaded ${tools.length} tool entries from Supabase`)

  // Найти все HTML файлы инструментов
  const patterns = [
    'tools/*.html',
    'es/tools/*.html',
    'de/tools/*.html',
    'ru/tools/*.html',
    'ua/tools/*.html',
    'he/tools/*.html',
    'fr/tools/*.html',
    'pt/tools/*.html',
  ]

  let fixed = 0
  let skipped = 0
  let errors = 0

  for (const pattern of patterns) {
    const files = await glob(pattern)

    for (const filePath of files) {
      // Определить язык и slug из пути
      const parts = filePath.split('/')
      const lang = parts.length === 3 ? parts[0] : 'en'
      const slug = path.basename(filePath, '.html')

      // Найти данные инструмента
      const tool = toolMap[`${slug}_${lang}`] || toolMap[`${slug}_en`]

      if (!tool) {
        console.warn(`⚠️  No data for ${filePath}`)
        skipped++
        continue
      }

      try {
        fixHtmlFile(filePath, tool, lang, slug)
        fixed++
        if (fixed % 100 === 0) {
          console.log(`✅ Fixed ${fixed} files...`)
        }
      } catch (err) {
        console.error(`❌ Error fixing ${filePath}:`, err.message)
        errors++
      }
    }
  }

  console.log(`\n✅ Done!`)
  console.log(`   Fixed: ${fixed} files`)
  console.log(`   Skipped: ${skipped} files`)
  console.log(`   Errors: ${errors} files`)
}

fixAllToolPages()
```

---

## Добавить в package.json

```json
{
  "scripts": {
    "generate": "node scripts/generate-static.js",
    "fix-seo": "node scripts/fix-seo-tags.js",
    "build": "npm run generate && npm run fix-seo"
  }
}
```

---

## GitHub Actions — обновить workflow

В `.github/workflows/generate-pages.yml` обновить шаг:

```yaml
- name: Generate and fix static pages
  env:
    SUPABASE_URL: ${{ secrets.SUPABASE_URL }}
    SUPABASE_ANON_KEY: ${{ secrets.SUPABASE_ANON_KEY }}
  run: npm run build
```

---

## Запустить локально для проверки

```bash
npm run fix-seo
```

Потом проверить один файл:
```bash
# Посмотреть title и meta в EN версии
grep -A2 "<title>" tools/chatgpt.html
grep "description" tools/chatgpt.html | head -3

# Посмотреть hreflang
grep "hreflang" tools/chatgpt.html

# Посмотреть Schema.org
grep -A5 "application/ld+json" tools/chatgpt.html
```

---

## Ожидаемый результат на каждой странице

### EN пример (tools/chatgpt.html):
```html
<title>ChatGPT Review 2026 — Pros, Cons & Pricing | AItoolFit</title>
<meta name="description" content="ChatGPT review 2026: The most popular AI chat by OpenAI. Freemium. See pros, cons, pricing and alternatives.">
<link rel="canonical" href="https://aitoolfit.ai/tools/chatgpt.html">
<link rel="alternate" hreflang="en" href="https://aitoolfit.ai/tools/chatgpt.html">
<link rel="alternate" hreflang="es" href="https://aitoolfit.ai/es/tools/chatgpt.html">
<link rel="alternate" hreflang="de" href="https://aitoolfit.ai/de/tools/chatgpt.html">
<link rel="alternate" hreflang="ru" href="https://aitoolfit.ai/ru/tools/chatgpt.html">
<link rel="alternate" hreflang="uk" href="https://aitoolfit.ai/ua/tools/chatgpt.html">
<link rel="alternate" hreflang="he" href="https://aitoolfit.ai/he/tools/chatgpt.html">
<link rel="alternate" hreflang="x-default" href="https://aitoolfit.ai/tools/chatgpt.html">
<script type="application/ld+json">
{
  "@type": "SoftwareApplication",
  "name": "ChatGPT",
  ...
}
</script>
```

### RU пример (ru/tools/chatgpt.html):
```html
<title>ChatGPT 2026 — Обзор, плюсы и минусы, цены | AItoolFit</title>
<meta name="description" content="ChatGPT 2026: Самый популярный AI-чат от OpenAI. Freemium. Плюсы, минусы, цены и альтернативы на AItoolFit.">
```

---

## Checklist после выполнения

- [ ] Запустить `npm run fix-seo` локально
- [ ] Проверить tools/chatgpt.html — title, meta, hreflang, schema присутствуют
- [ ] Проверить ru/tools/chatgpt.html — title на русском
- [ ] Проверить he/tools/chatgpt.html — title на иврите, dir="rtl" на html теге
- [ ] og:image везде .png не .svg
- [ ] Задеплоить
- [ ] В Google Search Console → URL Inspection → проверить chatgpt.html и ru/tools/chatgpt.html
- [ ] Отправить sitemap заново
