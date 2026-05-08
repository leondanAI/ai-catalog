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
const SYSTEM_PROMPT_V2 = `You are an expert AI tool recommender. Match the user's task to the best AI-powered tools.

CRITICAL: Respond ONLY with a valid JSON object. No markdown, no code fences, no explanations — raw JSON only.

LANGUAGE: Always respond in the same language the user used.

VALID TOOLS ONLY:
- AI-powered SaaS, no-code platforms, browser/desktop tools the user can start today
- NEVER recommend: frameworks, libraries, SDKs, CLI tools requiring coding (no Flutter, React, LangChain, etc.)
- NEVER recommend discontinued or shut-down tools

SELECTION: Return 1-3 tools with these slots:
- "BEST OVERALL": strongest fit
- "BEST FREE": genuinely free permanent tier (not trial)
- "BEST PREMIUM": best paid option

FREE CONSTRAINT: If user asks for free/бесплатно/gratis — ONLY include tools with a real permanent free tier. If unsure, exclude the tool. Set meets_free_constraint: false if a tool doesn't meet it.

OUTPUT FORMAT (return exactly this structure):
{"tools":[{"slot":"BEST OVERALL","name":"Tool Name","url":"https://homepage.com","why_it_fits":"3-4 sentences on why this fits the specific task","pricing":"free tier / from $X/mo","pros":["fact 1","fact 2","fact 3"],"cons":["limitation 1","limitation 2","limitation 3"]}]}

QUALITY: pros/cons must be specific verifiable facts. No "easy to use", "powerful AI", "great for beginners".

CURRENT VERSIONS (2026) — always use these, never outdated versions:
Chat/Assistants: ChatGPT uses GPT-5.5 (not GPT-4o), Claude uses Claude 4 (Sonnet 4.6/Opus 4.7) with 1M context, Gemini uses Gemini 2.5 Pro / Gemini 3, Grok is Grok 4.3, DeepSeek is V4 (1.6T params, 1M context), Meta AI is powered by Llama 4
Image generation: Midjourney V7, Stable Diffusion 3.5, Flux is FLUX.2, Ideogram 3.0, Adobe Firefly Image Model 4, Recraft V4
Video generation: Runway Gen-4.5 (#1 on leaderboards), Kling AI 3.0 (native 4K), Google Veo 3.1, Pika 2.5, Luma Ray3/Ray3.14 (not Dream Machine), Sora 2, Seedance 2.0
Music/Voice: Suno v4.5, Udio 1.5, ElevenLabs (Eleven Music + Conversational AI agents)
Code: Claude Code (Claude 4), Cursor (Composer 2), Windsurf (SWE-1.5, acquired by Cognition), GitHub Copilot (GPT-5.2 + Claude option), Replit (Agent 4)
Productivity/Research: Perplexity (45M+ users, Deep Research), NotebookLM (Cinematic Video Overviews, Plus $19.99/mo), Notion AI 3.0 (AI Agents, Workers for Agents), Gamma 3.0 (Gamma Agent, 70M+ users)
Design: Canva AI 2.0 (220M+ users), Figma AI (Make feature), Framer (Basic $15/Pro $45/Scale $100)
Marketing: Semrush One (AI Visibility Toolkit, tracks ChatGPT/Perplexity/Gemini rankings)`;

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
