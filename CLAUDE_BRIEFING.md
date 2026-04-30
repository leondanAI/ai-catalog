# AI Catalog — Tool Finder Feature Briefing

## What we're building

Replacing the existing homepage search block with an AI-powered **Tool Finder** — a natural language prompt field where visitors describe their task and Claude recommends the best AI tool(s) for the job.

---

## Feature overview

**User flow:**
1. Visitor lands on homepage
2. Sees a prompt field: *"Describe your task, find the perfect tool"*
3. Types something like: *"I want to transcribe my meeting recordings"*
4. Hits Enter or clicks the arrow button
5. Results appear below: a **Best match** card + 1–2 **Alternatives**, each with:
   - Tool name
   - Why it fits this specific task (2–3 sentences)
   - Pricing (Free / Freemium / From $X/mo)
   - Direct link to the tool's homepage

---

## Architecture

```
Browser (homepage)
      │
      │  POST { task: "..." }
      ▼
Cloudflare Worker  ← ANTHROPIC_API_KEY stored as secret here
      │
      │  POST /v1/messages
      ▼
Anthropic Claude API
      │
      │  JSON { primary, alternatives[] }
      ▼
Cloudflare Worker parses + returns clean JSON
      │
      ▼
Browser renders result cards
```

**Why a proxy?** The Anthropic API key must never be exposed in browser JS. The Cloudflare Worker acts as a thin proxy — it injects the key server-side and returns only the parsed recommendation JSON to the frontend.

---

## Files to integrate

### 1. `worker.js` — Cloudflare Worker (backend proxy)

- Endpoint: `POST /recommend`
- Accepts: `{ "task": "user's task description" }`
- Returns: `{ primary: {...}, alternatives: [...] }`
- Reads `ANTHROPIC_API_KEY` from Cloudflare environment secret
- Handles CORS (currently `*` — lock to your domain in production)
- Model: `claude-sonnet-4-20250514`

**Deploy steps:**
1. [dash.cloudflare.com](https://dash.cloudflare.com) → Workers & Pages → Create Worker
2. Paste `worker.js` content → Deploy
3. Settings → Variables → add Secret `ANTHROPIC_API_KEY`
4. Note the worker URL for step below

### 2. `toolfinder-production.html` — Frontend block

Contains three parts to copy into the existing homepage:

| Part | Where it goes |
|------|--------------|
| CSS inside `<style>` | Into the page `<head>` (or site stylesheet) |
| `<section class="tf-section">` block | Replace the existing homepage search block |
| `<script>` block | Before closing `</body>` |

**One config value to set** in the `<script>` block:
```js
const PROXY_URL = 'https://toolfinder.YOUR-NAME.workers.dev/recommend';
```

---

## Design system

- **Font:** Instrument Serif (headings) + DM Sans (body)
- **Theme:** Dark (#080808 bg), accent color `#c8f060` (yellow-green)
- **All CSS classes prefixed `tf-`** to avoid conflicts with existing page styles
- Responsive, works on mobile

---

## What needs to happen in the codebase

1. **Add** `worker.js` to the project (for Cloudflare deployment)
2. **Identify** the current homepage search block in the HTML
3. **Replace** it with the `tf-section` block from `toolfinder-production.html`
4. **Merge** the `tf-` CSS into the site stylesheet (or add as a scoped `<style>` block)
5. **Add** the `<script>` block (update `PROXY_URL` once worker is deployed)
6. **Add** Google Fonts link to `<head>` if not already present:
   ```html
   <link href="https://fonts.googleapis.com/css2?family=Instrument+Serif:ital@0;1&family=DM+Sans:opsz,wght@9..40,300;9..40,400;9..40,500&display=swap" rel="stylesheet">
   ```

---

## Example API response shape

```json
{
  "primary": {
    "name": "Otter.ai",
    "why": "Otter.ai is purpose-built for meeting transcription, offering real-time captions and post-meeting summaries. It integrates directly with Zoom, Google Meet, and Teams so it can join and transcribe automatically without any manual steps.",
    "pricing": "Free tier available",
    "url": "https://otter.ai"
  },
  "alternatives": [
    {
      "name": "Fireflies.ai",
      "why": "A strong alternative if you also want automated action-item extraction and CRM integration alongside the transcript.",
      "pricing": "Free tier available",
      "url": "https://fireflies.ai"
    }
  ]
}
```

---

## Current status

- ✅ Prototype built and tested (standalone HTML)
- ✅ Production HTML block ready (prefixed CSS, no conflicts)
- ✅ Cloudflare Worker ready to deploy
- ⏳ Worker not yet deployed (no URL yet)
- ⏳ Not yet integrated into homepage

---

## Notes

- The `tf-` CSS prefix means styles won't clash with anything existing on the page
- Example pills (quick-fill tasks) are editable — update them to match the most common use cases your audience has
- The CORS origin in `worker.js` is currently `*` — before going live, change it to your actual domain:
  ```js
  'Access-Control-Allow-Origin': 'https://your-site.com'
  ```
- Rate limiting on the Worker is not yet implemented — consider adding it before launch if traffic is high
