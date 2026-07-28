#!/usr/bin/env python3
# Builds 04_tool_bodies.sql (+ 05_kiro.sql): freshness for tool `description_long`.
# - 10 tools: language-invariant version-token replace() (per-slug, all langs) — no translation.
# - 4 tools (chatgpt/github-copilot/microsoft-copilot/perplexity): EN edits + re-translate 7 langs.
# - amazon-q-developer -> published=false. kiro -> new card (8 langs).
# Web-verified 2026-07-27. Needs ANTHROPIC_API_KEY for the 4 re-translations + kiro.
import os, json, urllib.request, time

HERE=os.path.dirname(__file__)
AK=os.environ.get('ANTHROPIC_API_KEY','')
MODEL='claude-haiku-4-5-20251001'
DATE='2026-07-28'
LANGS7={'ru':'Russian','ua':'Ukrainian','he':'Hebrew','de':'German','es':'Spanish','fr':'French','pt':'Portuguese (Brazilian)'}
EN_BODIES=json.load(open(os.path.join(HERE,'_existing_bodies_en.json')))

def esc(s): return (s or '').replace("'","''")

def api(prompt, maxtok=1800):
    body=json.dumps({"model":MODEL,"max_tokens":maxtok,"messages":[{"role":"user","content":prompt}]}).encode()
    req=urllib.request.Request("https://api.anthropic.com/v1/messages", data=body,
        headers={"x-api-key":AK,"anthropic-version":"2023-06-01","content-type":"application/json"})
    for a in range(3):
        try: return json.load(urllib.request.urlopen(req,timeout=90))["content"][0]["text"].strip()
        except Exception:
            if a==2: raise
            time.sleep(3)

def translate_text(text, lang):
    p=(f"Translate the following plain-text AI-tool description into {lang}. Preserve product/model/version "
       f"names, numbers and prices exactly (e.g. GPT-5.6, Claude Opus 4.8, Grok 4.5, $20/month). Keep paragraph "
       f"breaks. Output ONLY the translation, no preamble.\n\n{text}")
    return api(p)

# ---------- 1. token-swap tools (per-slug replace across all langs) ----------
SWAPS={
 'aider':[("GPT-4o","GPT-5.6")],
 'bolt-new':[("Opus 4.6","Opus 4.8")],
 'cursor':[("Opus 4.7","Opus 4.8")],
 'duolingo-max':[("GPT-4o","GPT-5.6")],
 'grok':[("Grok 4.3","Grok 4.5")],
 'microsoft-copilot-studio':[("Opus 4.6","Opus 4.8")],
 'n8n':[("GPT-4o","GPT-5.6")],
 'nano-banana':[("Gemini 2.5 Flash","Gemini 3.1 Flash")],
 'writesonic':[("Claude 4.5","Claude Sonnet 5")],
 'julius-ai':[("Opus 4.7","Opus 4.8")],
}

# ---------- 2. re-translate tools: EN edits (find->replace on the English body) ----------
EDITS={
 'chatgpt':[
   ("the default model is GPT-5.5, offered in Instant and",
    "the default model is the GPT-5.6 family — Sol, Terra and Luna — offered in Instant and"),
   ("with the default GPT-5.5 model at limited usage",
    "with the default GPT-5.6 model at limited usage"),
   ("GPT-5.5 launched around April 2026 and replaced the older GPT-5 lineup",
    "GPT-5.6 launched in July 2026 and replaced the GPT-5.5 lineup"),
 ],
 'github-copilot':[
   ("including Claude, GPT-5 and others",
    "including Claude Sonnet 5, Claude Opus 4.8, GPT-5.5 and Gemini 3.1 Pro"),
 ],
 'microsoft-copilot':[
   ("Copilot has moved off GPT-4 onto the GPT-5 family. GPT-5 became the consumer default",
    "Copilot has moved onto the GPT-5.6 family, now the preferred model in Microsoft 365 Copilot. GPT-5.6 became the default"),
   ("and GPT-5.5 is rolling out now",
    "and GPT-5.6 rolled out in July 2026 as the preferred model"),
 ],
 'perplexity':[
   ("Research is powered by Claude Opus 4.5/4.6",
    "Research is powered by Claude Opus 4.7 and Sonnet 4.6"),
   ("access to GPT-5, Claude, Gemini and o3-pro",
    "access to the GPT-5.6 family, Claude Opus 5, Gemini and other frontier models"),
 ],
}

# ---------- 3. kiro new card (EN) ----------
KIRO=dict(
 slug='kiro', url='https://kiro.dev', domain='kiro.dev', category='code', badge='freemium',
 users='', rating=None, also_consider=['cursor','github-copilot','claude'],
 best_for="Spec-driven agentic coding",
 description=("Kiro is AWS's agentic IDE — a VS Code fork built around spec-driven development: it writes a "
   "structured requirements, design and tasks spec before generating code. The agent runs on Anthropic's Claude."),
 description_long=(
   "Kiro is Amazon Web Services' agentic IDE, launched in May 2026 as a VS Code fork built around spec-driven "
   "development. Instead of prompting straight to code, Kiro first produces a structured requirements document, a "
   "design and architecture plan, and a task spec, then implements against them — an approach aimed at reducing the "
   "rework that free-form AI coding often creates.\n\n"
   "The agent runs on Anthropic's Claude models (Sonnet at the core, with Opus available for harder reasoning), "
   "executing multi-file changes, running tests, and iterating against the spec. Kiro effectively replaces AWS's "
   "earlier Amazon Q Developer, which is being wound down.\n\n"
   "Pricing uses a credit model: a Free tier with 50 credits, Pro at $20/month (1,000 credits), Pro+ at $40/month "
   "(2,000 credits), and Power at $200/month (10,000 credits), with pay-as-you-go overage at $0.04 per credit. Kiro "
   "is best for teams that want the AI to plan before it builds, and for AWS-centric development shops."),
 pros=["Spec-driven flow reduces rework and scope drift","Writes requirements, design and task specs before any code",
   "Runs frontier Claude models (Sonnet/Opus)","Familiar VS Code-based interface","Transparent credit pricing from a free tier"],
 cons=["Spec-first flow adds overhead for small, quick tasks","Newer, smaller ecosystem than Cursor or Copilot",
   "Credit model can get costly under heavy use","Most valuable inside AWS-centric workflows"],
)

def pgarr(items): return "ARRAY[" + ",".join("'"+esc(x)+"'" for x in items) + "]::text[]"

# ================= build =================
if not AK: raise SystemExit("Set ANTHROPIC_API_KEY")
sql=["-- AItoolFit — tool description_long freshness + Kiro replacing Amazon Q. Web-verified 2026-07-27.",
     "-- Run AFTER 01/02/03. Idempotent. Then Claude regenerates tool pages + sitemap.\n",
     "-- 1) version-token swaps (per-slug, applies to all 8 langs) --"]
for slug,pairs in SWAPS.items():
    en=EN_BODIES.get(slug,'')
    for old,new in pairs:
        if old not in en: print(f"  ! WARN token not in EN body of {slug}: {old!r}")
        expr="description_long"
        expr=f"replace({expr}, '{esc(old)}', '{esc(new)}')"
        sql.append(f"UPDATE tools SET description_long={expr}, last_updated='{DATE}' WHERE slug='{slug}';")
sql.append("")

sql.append("-- 2) narrative tools: full body replaced per lang (EN edited, others translated) --")
for slug,pairs in EDITS.items():
    en=EN_BODIES.get(slug,'')
    for old,new in pairs:
        if old not in en: print(f"  ! WARN edit not found in {slug}: {old!r}")
        en=en.replace(old,new)
    sql.append(f"UPDATE tools SET description_long='{esc(en)}', last_updated='{DATE}' WHERE slug='{slug}' AND lang='en';")
    for code,name in LANGS7.items():
        tr=translate_text(en,name)
        sql.append(f"UPDATE tools SET description_long='{esc(tr)}', last_updated='{DATE}' WHERE slug='{slug}' AND lang='{code}';")
        print(f"  translated {slug} [{code}]")
    print(f"  ok {slug}")
sql.append("")

sql.append("-- 3) amazon-q-developer -> unpublished (replaced by Kiro) --")
sql.append("UPDATE tools SET published=false, last_updated='"+DATE+"' WHERE slug='amazon-q-developer';")
open(os.path.join(HERE,'04_tool_bodies.sql'),'w').write("\n".join(sql)+"\n")
print("wrote 04_tool_bodies.sql")

# ---------- kiro card, 8 langs ----------
def kiro_row(lang, fields):
    ac=pgarr(KIRO['also_consider']); pros=pgarr(fields['pros']); cons=pgarr(fields['cons'])
    rating="NULL"
    return ("('kiro','{l}','Kiro','{url}','{dom}','{cat}','{badge}','{users}','{best}','{desc}','{body}',{pros},{cons},"
            "{rating},{ac},true)").format(
      l=lang,url=KIRO['url'],dom=KIRO['domain'],cat=KIRO['category'],badge=KIRO['badge'],users=esc(KIRO['users']),
      best=esc(fields['best_for']),desc=esc(fields['description']),body=esc(fields['description_long']),
      pros=pros,cons=cons,rating=rating,ac=ac)

k=["-- Kiro new tool card (8 langs). Run after 04. --",
   "DELETE FROM tools WHERE slug='kiro';",
   "INSERT INTO tools (slug,lang,name,url,domain,category,badge,users,best_for,description,description_long,pros,cons,rating,also_consider,published) VALUES"]
rows=[kiro_row('en',KIRO)]
for code,name in LANGS7.items():
    prompt=("Translate the VALUES of this JSON for an AI-tool catalog into "+name+". Keep the product name 'Kiro', "
      "model names, numbers and prices exactly. Return ONLY valid JSON with the same keys "
      "(best_for, description, description_long, pros, cons); pros and cons are arrays of strings.\n\n"+
      json.dumps({k2:KIRO[k2] for k2 in ['best_for','description','description_long','pros','cons']},ensure_ascii=False))
    raw=api(prompt,2000)
    raw=raw[raw.find('{'):raw.rfind('}')+1]
    f=json.loads(raw)
    rows.append(kiro_row(code,f)); print(f"  kiro [{code}]")
k.append(",\n".join(rows)+";")
open(os.path.join(HERE,'05_kiro.sql'),'w').write("\n".join(k)+"\n")
print("wrote 05_kiro.sql")
