#!/usr/bin/env python3
# Writes 03_news_bodies.sql — HTML article bodies for the 6 July-2026 news items x 8 langs.
# EN bodies hand-written (verified facts); 7 langs translated via Anthropic (haiku), HTML preserved.
# Needs ANTHROPIC_API_KEY. Run: python3 gen_news_bodies_sql.py
import os, json, urllib.request, time

AK = os.environ.get('ANTHROPIC_API_KEY','')
MODEL = 'claude-haiku-4-5-20251001'
LANGS = {'ru':'Russian','ua':'Ukrainian','he':'Hebrew','de':'German','es':'Spanish','fr':'French','pt':'Portuguese (Brazilian)'}

EN = {
'openai-gpt-5-6':
 "<p>On July 9, 2026, OpenAI publicly released <strong>GPT-5.6</strong>, its most capable model family yet, in three tiers: <strong>Sol</strong>, the top model; <strong>Terra</strong>, a mid-range option; and <strong>Luna</strong>, a fast, low-cost tier. The company framed the lineup around efficiency as much as raw power — CEO Sam Altman said Sol is roughly 54% more token-efficient on coding tasks than the previous generation.</p>\n<h2>Agents and voice, not just chat</h2>\n<p>Alongside the models, OpenAI shipped <strong>ChatGPT Work</strong>, an agent built to carry out complete jobs rather than answer one question at a time, and <strong>GPT-Live</strong>, a full-duplex voice mode that can listen and speak at the same time for more natural conversations. Together they mark OpenAI's push from a chatbot toward systems that act on a user's behalf across enterprise work, coding and research.</p>",
'claude-opus-5':
 "<p>Anthropic released <strong>Claude Opus 5</strong> on July 24, 2026, describing it as a step-change over Opus 4.8 for agentic coding and computer use. Crucially, it keeps Opus pricing unchanged at <strong>$5 per million input tokens and $25 per million output</strong> — half the price of the company's frontier Fable 5 model — making frontier-class capability far cheaper to run.</p>\n<h2>Specs and availability</h2>\n<p>Opus 5 ships with a <strong>1-million-token context window</strong>, up to 128K output tokens, extended thinking enabled by default, and a knowledge cutoff of May 2026 — the most current of any Claude model. It becomes the new default on Claude Max and the strongest model available on Claude Pro, offered through the Claude apps and API.</p>",
'amd-anthropic-partnership':
 "<p>On July 22, 2026, <strong>AMD and Anthropic</strong> announced a strategic partnership to deploy up to <strong>two gigawatts</strong> of AMD Instinct MI450-series GPUs, with the first gigawatt slated to come online in the first half of 2027. The systems pair AMD's Instinct MI455X accelerators with EPYC \"Venice\" CPUs and the ROCm software stack.</p>\n<h2>A circular, multi-billion-dollar deal</h2>\n<p>AMD intends to invest up to <strong>$5 billion</strong> in Anthropic, contingent on milestones, while Anthropic commits to buying tens of billions of dollars in AI server chips over the term of the deal. The two also launched an engineering collaboration that uses Claude to optimize Instinct workloads and accelerate ROCm — a direct challenge to Nvidia's dominance of AI infrastructure.</p>",
'eu-google-android-ai-assistants':
 "<p>On July 16, 2026, the <strong>European Commission</strong> issued two binding decisions under the Digital Markets Act requiring Google to give competing AI assistants equal footing on Android. Google must open <strong>11 system features</strong> to third-party AI services — including on-device model access, background task execution and screen context on par with its own Gemini assistant.</p>\n<h2>Data sharing and pushback</h2>\n<p>A second decision obliges Google to share anonymized search data with rival search engines and AI chatbots from January 2027, while most Android changes are due by August 2027. Google has strongly opposed the rules, warning that granting deep system-level access to external apps could create security risks — setting up a prolonged fight over how AI assistants work on Europe's phones.</p>",
'moonshot-kimi-k3':
 "<p>On July 16, 2026, China's <strong>Moonshot AI</strong> released <strong>Kimi K3</strong>, a 2.8-trillion-parameter open-weight Mixture-of-Experts model with a 1-million-token context window — the largest open-weight model ever shipped. Within hours it debuted at <strong>#1 on LMArena's Frontend Code Arena</strong> with a score of 1679, overtaking Anthropic's Claude Fable 5 on the benchmark that most directly measures production coding value.</p>\n<h2>Open models reach the frontier</h2>\n<p>The launch is a milestone for open-weight AI: a freely available model from China is now competing with the best closed systems on real-world coding, despite US limits on advanced chip exports. For developers, K3 offers frontier-level performance that can be self-hosted or accessed cheaply, intensifying price and capability pressure on proprietary providers.</p>",
'gemini-3-5-pro-delayed-rebuild':
 "<p>Google's <strong>Gemini 3.5 Pro</strong> — announced at I/O in May 2026 with a 2-million-token context window and a Deep Think reasoning layer — slipped again in mid-July. After reportedly targeting a July 17 launch, Google delayed the release when the model missed internal quality goals on hallucination rates and real-world reliability.</p>\n<h2>Back to the drawing board</h2>\n<p>According to reporting, DeepMind scrapped and rebuilt the base model rather than ship something below its standards, leaving no confirmed date, context-window figure or pricing. For now, the faster <strong>Gemini 3.5 Flash</strong> — recently upgraded with agentic Computer Use — remains Google's current stable flagship, while the more powerful Pro tier stays in limited preview.</p>",
}
ORDER = ['openai-gpt-5-6','claude-opus-5','amd-anthropic-partnership','eu-google-android-ai-assistants','moonshot-kimi-k3','gemini-3-5-pro-delayed-rebuild']

def translate(html, lang_name):
    prompt = (f"Translate the following HTML news-article body into {lang_name}.\n"
              "Rules: preserve ALL HTML tags exactly (<p>, <h2>, <strong>). Keep brand/product/model names, "
              "numbers, prices and units as-is (e.g. GPT-5.6, Claude Opus 5, AMD Instinct MI450, $5 billion, "
              "1-million-token, LMArena). Output ONLY the translated HTML — no preamble, no code fences.\n\n" + html)
    body = json.dumps({"model":MODEL,"max_tokens":1600,"messages":[{"role":"user","content":prompt}]}).encode()
    req = urllib.request.Request("https://api.anthropic.com/v1/messages", data=body,
        headers={"x-api-key":AK,"anthropic-version":"2023-06-01","content-type":"application/json"})
    for attempt in range(3):
        try:
            r = json.load(urllib.request.urlopen(req, timeout=90))
            return r["content"][0]["text"].strip()
        except Exception as e:
            if attempt==2: raise
            time.sleep(3)

def esc(s): return s.replace("'","''")

if not AK:
    raise SystemExit("Set ANTHROPIC_API_KEY first.")
out = ["-- AItoolFit — news article bodies for July-2026 batch (6 items x 8 langs).",
       "-- EN hand-written (verified); other langs machine-translated (haiku), HTML preserved.",
       "-- Run AFTER 01_news_july2026.sql. Then Claude regenerates news pages.\n"]
for slug in ORDER:
    en = EN[slug]
    out.append(f"UPDATE news SET body='{esc(en)}' WHERE slug='{slug}' AND lang='en';")
    for code,name in LANGS.items():
        tr = translate(en, name)
        out.append(f"UPDATE news SET body='{esc(tr)}' WHERE slug='{slug}' AND lang='{code}';")
        print(f"  {slug} [{code}] {len(tr)} chars")
    print(f"✓ {slug}")
path = os.path.join(os.path.dirname(__file__),"03_news_bodies.sql")
open(path,"w").write("\n".join(out)+"\n")
print("wrote", path, "—", len(ORDER)*8, "UPDATE statements")
