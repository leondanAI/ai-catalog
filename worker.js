// ============================================================
// Cloudflare Worker — подбор AI-инструментов для главной AItoolFit
// Worker: mypedia-toolfinder (https://mypedia-toolfinder.ldl-biz.workers.dev)
// ============================================================
// Секреты (Settings → Variables): ANTHROPIC_API_KEY, SUPABASE_URL, SUPABASE_KEY.
// SUPABASE_* нужны для записи запросов в tool_finder_logs.
//
// Источник фактов — проверенный каталог из Supabase (таблица tools), а не
// список «актуальных версий» в подсказке: такой список устаревал и заставлял
// модель называть пользователям старые модели и цены (2026-10).
// ============================================================

const ANTHROPIC_URL = 'https://api.anthropic.com/v1/messages';
const MODEL = 'claude-opus-5-5';

// Каталог читается публичным ключом только на чтение — тем же, что и на сайте.
const CATALOG_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co/rest/v1/tools'
  + '?lang=eq.en&published=eq.true&order=slug.asc'
  + '&select=slug,name,category,url,badge,users,best_for,description';
const CATALOG_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG';
const CATALOG_TTL_MS = 60 * 60 * 1000;

const RULES = `You recommend AI tools on AItoolFit. A user describes a task; you pick the 1-3 tools that fit it best and explain why.

LANGUAGE: write every text field in the language the user wrote in. Keep product names in Latin script.

SOURCE OF FACTS:
- The CATALOG below lists tools whose facts were verified against vendor sites. Prefer catalog tools whenever one fits the task well.
- For a catalog tool: copy its name, slug and url exactly. Take prices, plans, versions and limits ONLY from its catalog entry.
- You may recommend a well-known tool that is not in the catalog only if no catalog tool fits. Then set slug to "" and do not state version numbers or exact prices you are not sure of; describe the pricing model instead (free plan / paid / free trial).

VALID TOOLS: AI-powered products a non-developer can start using today (web, desktop or mobile apps, no-code platforms). Never recommend frameworks, libraries, SDKs or CLI tools that require coding, unless the user asks for developer tools. Never recommend discontinued products.

SLOTS: the first tool is "BEST OVERALL". Add "BEST FREE" (a real permanent free plan usable for this task, not a trial) and/or "BEST PREMIUM" when they add value. Do not repeat a tool.

USER CONSTRAINTS:
- If the user asks for free tools (free, бесплатно, безкоштовно, gratis, kostenlos, gratuit, gratuito, grátis, חינם, no subscription, no credit card), include ONLY tools with a real permanent free plan usable for the task. If unsure, leave the tool out. Fewer tools is better than a wrong one.
- Respect budget, platform (Mac, Windows, mobile, browser), language and open-source constraints, and say in why_it_fits how each tool meets them.

QUALITY:
- why_it_fits: 2-4 sentences about THIS task, not a generic description.
- pros and cons: 3 each, specific and verifiable. No "easy to use", "powerful AI", "great for beginners".
- best_for: 5-8 words.`;

const SCHEMA = {
  type: 'object',
  additionalProperties: false,
  required: ['tools'],
  properties: {
    tools: {
      type: 'array',
      items: {
        type: 'object',
        additionalProperties: false,
        required: ['slot', 'name', 'slug', 'url', 'best_for', 'why_it_fits', 'pricing', 'pros', 'cons'],
        properties: {
          slot:        { type: 'string', enum: ['BEST OVERALL', 'BEST FREE', 'BEST PREMIUM'] },
          name:        { type: 'string' },
          slug:        { type: 'string' },
          url:         { type: 'string' },
          best_for:    { type: 'string' },
          why_it_fits: { type: 'string' },
          pricing:     { type: 'string' },
          pros:        { type: 'array', items: { type: 'string' } },
          cons:        { type: 'array', items: { type: 'string' } }
        }
      }
    }
  }
};

const FREE_KEYWORDS = /\bfree\b|бесплатн|безкоштовн|gratis|kostenlos|gratuit|gratuito|grátis|חינם|no subscription|no credit card/i;

let catalogCache = { text: null, at: 0 };

async function getCatalog() {
  if (catalogCache.text && Date.now() - catalogCache.at < CATALOG_TTL_MS) return catalogCache.text;
  const r = await fetch(CATALOG_URL, { headers: { apikey: CATALOG_KEY, Authorization: `Bearer ${CATALOG_KEY}` } });
  if (!r.ok) {
    if (catalogCache.text) return catalogCache.text;   // старый каталог лучше, чем никакого
    throw new Error(`catalog ${r.status}`);
  }
  const rows = await r.json();
  // Порядок строк фиксирован (order=slug): одинаковый текст — значит, кэш подсказки
  // у Anthropic не сбрасывается между запросами.
  const text = rows.map(t =>
    [t.slug, t.name, t.category, t.badge, t.users || '', t.url, t.best_for || '', t.description || '']
      .map(v => String(v).replace(/\s+/g, ' ').trim()).join(' | ')
  ).join('\n');
  catalogCache = { text, at: Date.now() };
  return text;
}

export default {
  async fetch(request, env, ctx) {
    if (request.method === 'OPTIONS') return corsResponse(null, 204);

    const url = new URL(request.url);

    // Список моделей, доступных ключу (для проверки при обновлении модели).
    if (request.method === 'GET' && url.pathname === '/models') {
      const r = await fetch('https://api.anthropic.com/v1/models', {
        headers: { 'x-api-key': env.ANTHROPIC_API_KEY, 'anthropic-version': '2023-06-01' }
      });
      return corsResponse(await r.text(), r.status);
    }

    if (request.method !== 'POST' || url.pathname !== '/recommend') {
      return corsResponse(JSON.stringify({ error: 'Not found' }), 404);
    }

    let body;
    try { body = await request.json(); } catch { return corsResponse(JSON.stringify({ error: 'Invalid JSON body' }), 400); }
    const task = (body.task || '').trim().slice(0, 2000);
    if (!task) return corsResponse(JSON.stringify({ error: 'Missing task field' }), 400);

    let catalog;
    try { catalog = await getCatalog(); }
    catch (e) { return corsResponse(JSON.stringify({ error: 'Catalog unavailable', detail: e.message }), 502); }

    const userText = FREE_KEYWORDS.test(task)
      ? `Task: ${task}\n\n(The user asked for free tools: include only tools with a real permanent free plan for this task.)`
      : `Task: ${task}`;

    const anthropicRes = await fetch(ANTHROPIC_URL, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': env.ANTHROPIC_API_KEY,
        'anthropic-version': '2023-06-01',
        // При отказе модели запрос сам уходит на рекомендованную запасную.
        'anthropic-beta': 'server-side-fallback-2026-07-01'
      },
      body: JSON.stringify({
        model: MODEL,
        max_tokens: 4000,
        fallbacks: 'default',
        // Opus 5.5 всегда думает; низкий effort — чтобы ответ приходил быстро.
        output_config: { effort: 'low', format: { type: 'json_schema', schema: SCHEMA } },
        system: [
          { type: 'text', text: RULES },
          { type: 'text', text: `CATALOG (slug | name | category | pricing badge | price or audience | url | best for | description):\n${catalog}`,
            cache_control: { type: 'ephemeral', ttl: '1h' } }
        ],
        messages: [{ role: 'user', content: userText }]
      })
    });

    if (!anthropicRes.ok) {
      return corsResponse(JSON.stringify({ error: 'Upstream error', detail: await anthropicRes.text() }), 502);
    }

    const data = await anthropicRes.json();
    if (data.stop_reason === 'refusal') {
      return corsResponse(JSON.stringify({ error: 'Request declined' }), 422);
    }
    // В ответе есть блоки thinking (пустые) и, при отказе основной модели,
    // fallback — берём именно текстовый блок.
    const raw = (data.content || []).find(b => b.type === 'text')?.text || '';

    let result;
    try { result = JSON.parse(raw); }
    catch { return corsResponse(JSON.stringify({ error: 'Failed to parse AI response' }), 502); }

    // Запись запроса — после ответа пользователю, не задерживая его.
    if (env.SUPABASE_URL && env.SUPABASE_KEY) {
      const t = result.tools || [];
      ctx.waitUntil(fetch(`${env.SUPABASE_URL}/rest/v1/tool_finder_logs`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          apikey: env.SUPABASE_KEY,
          Authorization: `Bearer ${env.SUPABASE_KEY}`
        },
        body: JSON.stringify({
          prompt: task,
          primary_tool: t[0]?.name || null, primary_url: t[0]?.url || null,
          alt1_tool: t[1]?.name || null,    alt1_url: t[1]?.url || null,
          alt2_tool: t[2]?.name || null,    alt2_url: t[2]?.url || null
        })
      }).catch(() => {}));
    }

    return corsResponse(JSON.stringify(result), 200);
  }
};

function corsResponse(body, status) {
  return new Response(body, {
    status,
    headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'POST, OPTIONS',
      'Access-Control-Allow-Headers': 'Content-Type'
    }
  });
}
