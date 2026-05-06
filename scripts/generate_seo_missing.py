#!/usr/bin/env python3
"""
Generate SEO titles, meta and keywords for tools missing from seo_all_languages.json.
Outputs: scripts/seo_missing_tools.json (same structure as seo_all_languages.json)

Usage: python3 scripts/generate_seo_missing.py
"""

import json, os, re, time, urllib.request
import anthropic

# ── Config ──────────────────────────────────────────────────────────────────
SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
BASE    = os.path.dirname(__file__)
OUT     = os.path.join(BASE, 'seo_missing_tools.json')

LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

# ── Load already covered slugs per language ──────────────────────────────────
def load_covered_per_lang():
    """Returns {lang: set(slugs)} for all languages."""
    covered = {lang: set() for lang in LANGS}
    sources = [
        ('seo_all_languages.json', True),   # {lang: [{slug,...}]}
        ('seo_fr_pt.json',        True),
        ('seo_titles_meta.json',  False),   # [{slug,...}] — EN only
    ]
    for fname, is_multilang in sources:
        path = os.path.join(BASE, fname)
        if not os.path.exists(path):
            continue
        with open(path, encoding='utf-8') as f:
            raw = re.sub(r'//[^\n]*', '', f.read())
        data = json.loads(raw)
        if is_multilang and isinstance(data, dict):
            for lang, entries in data.items():
                if lang in covered and isinstance(entries, list):
                    for e in entries:
                        covered[lang].add(e['slug'])
        elif isinstance(data, list):
            for e in data:
                covered['en'].add(e['slug'])
    return covered

# ── Fetch tools from Supabase ────────────────────────────────────────────────
def fetch_tools():
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tools?lang=eq.en&published=eq.true&order=name.asc&limit=200'
        '&select=slug,name,description,badge,best_for,category',
        headers={'apikey': SB_ANON, 'Authorization': f'Bearer {SB_ANON}'}
    )
    with urllib.request.urlopen(req) as r:
        return json.loads(r.read())

# ── Claude prompt ────────────────────────────────────────────────────────────
SYSTEM = """You are an SEO specialist generating optimized page titles, meta descriptions and target keywords for an AI tools catalog website (aitoolfit.ai).

Rules:
- title: max 60 chars, includes tool name + year + key differentiator, no pipe at end
- meta: max 155 chars, includes target keyword, specific benefit, ends with "Pros and cons." or similar CTA
- keyword: the primary search query this page should rank for (e.g. "Notion AI review", "best AI image generator")
- All content must be factually accurate based on the tool description provided
- Each language must feel natural, not like a machine translation

Output ONLY valid JSON, no comments, no explanation."""

def generate_seo(tool, client):
    prompt = f"""Generate SEO title, meta description and keyword for this AI tool page in all 8 languages.

Tool: {tool['name']}
Slug: {tool['slug']}
Category: {tool['category']}
Badge: {tool['badge']}
Description: {tool['description']}
Best for: {tool['best_for']}

Return JSON with this exact structure:
{{
  "en": {{"title": "...", "meta": "...", "keyword": "..."}},
  "es": {{"title": "...", "meta": "...", "keyword": "..."}},
  "de": {{"title": "...", "meta": "...", "keyword": "..."}},
  "ru": {{"title": "...", "meta": "...", "keyword": "..."}},
  "ua": {{"title": "...", "meta": "...", "keyword": "..."}},
  "he": {{"title": "...", "meta": "...", "keyword": "..."}},
  "fr": {{"title": "...", "meta": "...", "keyword": "..."}},
  "pt": {{"title": "...", "meta": "...", "keyword": "..."}}
}}"""

    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=1024,
        system=SYSTEM,
        messages=[{'role': 'user', 'content': prompt}]
    )
    text = msg.content[0].text.strip()
    # Extract JSON if wrapped in ```
    m = re.search(r'\{[\s\S]+\}', text)
    if m:
        text = m.group(0)
    return json.loads(text)

# ── Main ─────────────────────────────────────────────────────────────────────
def main():
    client    = anthropic.Anthropic()
    covered   = load_covered_per_lang()
    tools     = fetch_tools()
    all_slugs = {t['slug'] for t in tools}

    # A tool needs generation if ANY language is missing
    needs_gen = [t for t in tools
                 if any(t['slug'] not in covered[lang] for lang in LANGS)]

    print(f'Total EN tools in Supabase: {len(tools)}')
    for lang in LANGS:
        n = len(all_slugs - covered[lang])
        print(f'  {lang}: {n} missing')
    print(f'Tools needing generation (any lang missing): {len(needs_gen)}')
    print()

    # Load existing output if resuming
    result = {lang: [] for lang in LANGS}
    if os.path.exists(OUT):
        with open(OUT, encoding='utf-8') as f:
            saved = json.load(f)
        result = saved
        # Merge into covered so we don't re-generate
        for lang in LANGS:
            for e in result.get(lang, []):
                covered[lang].add(e['slug'])

    # Re-filter after loading saved
    needs_gen = [t for t in tools
                 if any(t['slug'] not in covered[lang] for lang in LANGS)]
    print(f'After resume check: {len(needs_gen)} tools to generate')

    errors = []
    for i, tool in enumerate(needs_gen, 1):
        slug = tool['slug']
        missing_langs = [l for l in LANGS if slug not in covered[l]]
        print(f'  [{i}/{len(needs_gen)}] {slug} ({", ".join(missing_langs)})…', end=' ', flush=True)
        try:
            seo = generate_seo(tool, client)
            for lang in missing_langs:
                if lang in seo:
                    entry = {'slug': slug, **seo[lang]}
                    result[lang].append(entry)
                    covered[lang].add(slug)
            print('✓')
        except Exception as e:
            print(f'✗ {e}')
            errors.append(slug)

        if i % 5 == 0:
            with open(OUT, 'w', encoding='utf-8') as f:
                json.dump(result, f, ensure_ascii=False, indent=2)

        time.sleep(0.3)

    with open(OUT, 'w', encoding='utf-8') as f:
        json.dump(result, f, ensure_ascii=False, indent=2)

    total = sum(len(v) for v in result.values())
    print(f'\nDone — {len(needs_gen) - len(errors)} tools generated, {len(errors)} errors')
    if errors:
        print('Errors:', errors)
    print(f'Total entries saved: {total}')
    print(f'Output: {OUT}')

if __name__ == '__main__':
    main()
