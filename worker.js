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
    "url": "https://real-homepage.com"
  },
  "alternatives": [
    {
      "name": "Tool Name",
      "why": "1-2 sentences on why this is a good alternative",
      "pricing": "...",
      "url": "https://..."
    }
  ]
}

Rules:
- alternatives: 1–2 items max
- Recommend real, well-known tools with accurate URLs
- Be specific about WHY the tool fits the stated task
- Keep pricing concise and accurate`;

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
        max_tokens: 1000,
        system: SYSTEM_PROMPT,
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
