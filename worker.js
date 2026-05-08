// ============================================================
// Cloudflare Worker — Anthropic API Proxy
// Deploy at: https://dash.cloudflare.com → Workers & Pages
// ============================================================
// SETUP:
//  1. Create a Worker and paste this file
//  2. Go to Settings → Variables → add Secret:
//     Name:  ANTHROPIC_API_KEY
//     Value: sk-ant-api03-xxxx (your key from console.anthropic.com)
//  3. Save & Deploy
//  4. Copy your worker URL (e.g. https://toolfinder.YOUR-NAME.workers.dev)
//     and paste it into toolfinder.html as PROXY_URL
// ============================================================

const ANTHROPIC_URL = 'https://api.anthropic.com/v1/messages';

const SYSTEM_PROMPT = `You are an expert AI tool recommender. A user describes a task and you recommend the best AI tools.

Respond ONLY with valid JSON — no markdown fences, no text outside the JSON object.

Schema:
{
  "primary": {
    "name": "Tool Name",
    "why": "2-3 sentences: exactly why this tool fits THIS specific task",
    "pricing": "e.g. Free / Freemium / From $12/mo / Free trial",
    "url": "https://real-homepage.com",
    "pros": ["3-4 short bullet points, each 5-10 words", "..."],
    "cons": ["3-4 short bullet points, each 5-10 words", "..."]
  },
  "alternatives": [
    {
      "name": "Tool Name",
      "why": "1-2 sentences on why this is a good alternative",
      "pricing": "...",
      "url": "https://...",
      "pros": ["3-4 short bullet points", "..."],
      "cons": ["3-4 short bullet points", "..."]
    }
  ]
}

Rules:
- alternatives: 1–2 items max
- Recommend real, well-known tools with accurate URLs
- Be specific about WHY the tool fits the stated task
- Keep pricing concise and accurate
- pros/cons: ALWAYS provide 3-4 items each, concrete and verifiable, not generic platitudes
- pros: focus on what makes this tool genuinely strong for this task
- cons: real limitations users hit, not nitpicks

CRITICAL — respect user constraints in the task description:
- If the user mentions "free" / "бесплатно" / "gratis" / "kostenlos" / "no subscription" / "no credit card":
  * Recommend ONLY tools that are TRULY usable for the task on a free plan
  * "Truly usable" means: no time-limited trial, no one-shot demo, no per-month limit so tight it makes the task impractical (e.g. 1 video/month for "make videos" doesn't count as free)
  * DO NOT invent or assume a free tier exists. If you are unsure whether a tool has a real free plan, EXCLUDE IT
  * Examples of paid-only tools that should NOT be recommended for free queries: Synthesia (paid only, free demo doesn't count), Jasper, Midjourney (no free plan), Cursor Pro features, ChatGPT Plus features, GitHub Copilot
  * Examples of genuinely free tools: DeepSeek, Claude (free tier with daily limit), ChatGPT (free tier), CapCut, Stable Diffusion (self-hosted), Whisper, Hemingway Editor, Krea (free tier), Flux (open weights)
- If the user mentions a budget — recommended tools must fit it.
- If the user mentions a platform constraint (Mac only, mobile, browser) — respect it.
- If the user mentions language (e.g. "in Spanish", "на русском") — recommend tools that support that language.
- If the user mentions "open-source" / "self-hosted" — only recommend open-source tools.
- When constraints exist, mention how each tool meets them in the "why" field, and be specific (e.g. "free plan: 50 songs/day" — not just "free").
- If you cannot find 3 tools that meet ALL constraints, return only as many as actually qualify (1 or 2 is fine — better than including non-qualifying tools).`;

// ── V2 PROMPT ─────────────────────────────────────────────────────────────────
const SYSTEM_PROMPT_V2 = `You are an independent, expert AI tool recommender. Your job is to objectively match the user's task to the best AI-powered tools available on the market based on strict criteria.

Respond ONLY with valid JSON — no markdown fences, no text outside the JSON object.

═══════════════════════════════════════════
LANGUAGE
═══════════════════════════════════════════
Always respond in the EXACT SAME language the user used in their request. Never switch languages mid-response.

═══════════════════════════════════════════
WHAT COUNTS AS A VALID RECOMMENDATION
═══════════════════════════════════════════
✅ AI-powered SaaS products
✅ No-code / low-code platforms with AI features
✅ Browser-based or desktop AI tools a user can start using today
✅ Open-source AI applications with a UI (if user requests it)

❌ NEVER recommend: programming frameworks, libraries, SDKs, developer toolchains, or CLI tools requiring coding knowledge.
   (Flutter, React Native, TensorFlow, LangChain, LlamaIndex, Expo, Next.js are NOT valid recommendations)
❌ NEVER recommend discontinued, shut down, or acquired tools no longer available as standalone products.

The user wants to GET a result — not BUILD a system.
Default assumption: user wants a result without writing code.
If task is ambiguous, lean toward no-code / AI-assisted tools.

═══════════════════════════════════════════
SELECTION CRITERIA
═══════════════════════════════════════════
1. RELEVANCE: Tool must directly and efficiently solve the stated task
2. ACCESSIBILITY: Currently active, publicly available, accurate pricing
3. REPUTATION: Well-known, widely adopted, proven track record
4. DIVERSITY: Provide up to 3 distinct options:
   - BEST OVERALL: strongest fit for the task
   - BEST FREE: genuinely free, no trial gimmicks
   - BEST PREMIUM: best paid option if budget allows

═══════════════════════════════════════════
USER CONSTRAINTS — CRITICAL
═══════════════════════════════════════════
FREE / NO SUBSCRIPTION:
- ONLY recommend tools with a genuinely usable permanent free tier
- "Truly usable" = no time-limited trial, no cap so tight it blocks the core task
- If unsure whether free tier exists — EXCLUDE the tool
- If no free option exists — still show best alternatives but set meets_free_constraint: false with actual pricing stated

BUDGET: tools must fit the stated budget
PLATFORM: respect Mac / Windows / mobile / browser constraints
LANGUAGE: recommend tools that support the user's stated language
OPEN-SOURCE: only recommend open-source tools if explicitly requested

═══════════════════════════════════════════
OUTPUT SCHEMA
═══════════════════════════════════════════
Return an object with a "tools" array of 1–3 items:

{
  "tools": [
    {
      "slot": "BEST OVERALL",
      "name": "Tool Name",
      "url": "https://accurate-homepage.com",
      "why_it_fits": "3–4 sentences explaining AI aspect and direct relevance to this specific task",
      "pricing": "free tier with X limit / from $X/month / free for non-commercial use",
      "pros": ["specific verifiable fact", "specific verifiable fact", "specific verifiable fact"],
      "cons": ["real limitation users hit", "real limitation users hit", "real limitation users hit"],
      "meets_free_constraint": true
    }
  ]
}

slot values: "BEST OVERALL" | "BEST FREE" | "BEST PREMIUM"
meets_free_constraint: only include this field if user requested free

═══════════════════════════════════════════
QUALITY RULES
═══════════════════════════════════════════
- No invented features, no assumed integrations
- Pros/cons must be verifiable facts, not platitudes
  ✅ "Context window limited to 8k tokens on free tier"
  ✅ "Supports export to MP4 only, no native cloud storage"
  ❌ "Easy to use", "Powerful AI", "Great for beginners"
- If no tool genuinely fits the task — say so honestly
- why_it_fits must explain the AI aspect specifically, not just what the tool does generally`;

export default {
  async fetch(request, env) {

    // Allow CORS preflight
    if (request.method === 'OPTIONS') {
      return corsResponse(null, 204);
    }

    const url = new URL(request.url);

    // Debug: GET /models — lists available models for this API key
    if (request.method === 'GET' && url.pathname === '/models') {
      const r = await fetch('https://api.anthropic.com/v1/models', {
        headers: { 'x-api-key': env.ANTHROPIC_API_KEY, 'anthropic-version': '2023-06-01' }
      });
      const data = await r.json();
      return corsResponse(JSON.stringify(data), r.status);
    }

    // Debug: GET /test-log — test Supabase insert
    if (request.method === 'GET' && url.pathname === '/test-log') {
      const supabaseUrl = env.SUPABASE_URL || null;
      const supabaseKey = env.SUPABASE_KEY ? 'set' : 'missing';
      if (!supabaseUrl || !env.SUPABASE_KEY) {
        return corsResponse(JSON.stringify({ error: 'Missing env vars', SUPABASE_URL: supabaseUrl, SUPABASE_KEY: supabaseKey }), 200);
      }
      try {
        const r = await fetch(`${supabaseUrl}/rest/v1/tool_finder_logs`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'apikey': env.SUPABASE_KEY,
            'Authorization': `Bearer ${env.SUPABASE_KEY}`,
            'Prefer': 'return=representation'
          },
          body: JSON.stringify({ prompt: 'test prompt', primary_tool: 'TestTool', alternatives: ['Alt1'] })
        });
        const text = await r.text();
        return corsResponse(JSON.stringify({ status: r.status, body: text }), 200);
      } catch(e) {
        return corsResponse(JSON.stringify({ error: e.message }), 200);
      }
    }

    // Only accept POST to /recommend
    if (request.method !== 'POST' || url.pathname !== '/recommend') {
      return corsResponse(JSON.stringify({ error: 'Not found' }), 404);
    }

    // Parse request body
    let body;
    try {
      body = await request.json();
    } catch {
      return corsResponse(JSON.stringify({ error: 'Invalid JSON body' }), 400);
    }

    const task = (body.task || '').trim();
    if (!task) {
      return corsResponse(JSON.stringify({ error: 'Missing task field' }), 400);
    }

    const useV2 = url.searchParams.get('v') === '2';
    const activePrompt = useV2 ? SYSTEM_PROMPT_V2 : SYSTEM_PROMPT;

    // Call Anthropic
    const anthropicRes = await fetch(ANTHROPIC_URL, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'x-api-key': env.ANTHROPIC_API_KEY,
        'anthropic-version': '2023-06-01'
      },
      body: JSON.stringify({
        model: 'claude-haiku-4-5-20251001',
        max_tokens: 1500,
        system: [
          { type: 'text', text: activePrompt, cache_control: { type: 'ephemeral' } }
        ],
        messages: [{ role: 'user', content: `Task: ${task}` }]
      })
    });

    if (!anthropicRes.ok) {
      const err = await anthropicRes.text();
      return corsResponse(JSON.stringify({ error: 'Upstream error', detail: err }), 502);
    }

    const data = await anthropicRes.json();
    const raw  = (data.content?.[0]?.text || '').replace(/```json|```/g, '').trim();

    let result;
    try {
      result = JSON.parse(raw);
    } catch {
      return corsResponse(JSON.stringify({ error: 'Failed to parse AI response', raw }), 502);
    }

    // Log prompt + recommendations to Supabase (fire and forget)
    try {
      const alt0 = result.alternatives?.[0] || {};
      const alt1 = result.alternatives?.[1] || {};
      await fetch(`${env.SUPABASE_URL}/rest/v1/tool_finder_logs`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'apikey': env.SUPABASE_KEY,
          'Authorization': `Bearer ${env.SUPABASE_KEY}`
        },
        body: JSON.stringify({
          prompt:       task,
          primary_tool: result.primary?.name || null,
          primary_url:  result.primary?.url  || null,
          alt1_tool:    alt0.name || null,
          alt1_url:     alt0.url  || null,
          alt2_tool:    alt1.name || null,
          alt2_url:     alt1.url  || null
        })
      });
    } catch (_) {}

    return corsResponse(JSON.stringify(result), 200);
  }
};

function corsResponse(body, status) {
  return new Response(body, {
    status,
    headers: {
      'Content-Type': 'application/json',
      'Access-Control-Allow-Origin': '*',         // Lock this to your domain in production
      'Access-Control-Allow-Methods': 'POST, OPTIONS',
      'Access-Control-Allow-Headers': 'Content-Type'
    }
  });
}
