#!/usr/bin/env python3
"""
Translate short `description` field from English to Hebrew via Claude API.

Reads all rows with lang='en' from the tools table, translates the description
field to Hebrew, and writes SQL UPDATE statements for the lang='he' rows.

Usage:
  export ANTHROPIC_API_KEY="sk-ant-..."
  python3 scripts/translate-descriptions-he.py > scripts/he_short_desc_update.sql

Then review the .sql file and run it in the Supabase SQL editor.

Cost: ~115 short translations via claude-haiku-4-5 ≈ $0.05-0.15.
"""

import os
import sys
import time
import urllib.request
import urllib.parse
import json

import anthropic

SB_URL  = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_ANON = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'

MODEL = 'claude-haiku-4-5-20251001'

SYSTEM_PROMPT = """You translate short marketing descriptions of AI tools from English to Hebrew.

Rules:
- Output ONLY the Hebrew translation, no quotes, no preface, no explanation
- Keep the same length and tone as the original (1-2 sentences)
- Keep brand names, product names, and version numbers in English (e.g. "ChatGPT", "GPT-4o", "Claude 3.7")
- Keep year markers like "2026" as digits
- Keep currency and prices in original form ("$20/month")
- Use natural, fluent Hebrew suitable for a tech-savvy reader
- Do not translate "AI" — leave as "AI" or use "בינה מלאכותית" only if it reads more naturally
- Single straight quotes in output: replace ' with ' to keep SQL safe (or escape as '')"""


def fetch_en_descriptions():
    url = f"{SB_URL}/rest/v1/tools?lang=eq.en&select=slug,description&order=slug"
    req = urllib.request.Request(url, headers={
        'apikey': SB_ANON,
        'Authorization': f'Bearer {SB_ANON}',
    })
    with urllib.request.urlopen(req) as r:
        return json.load(r)


def translate(client, text):
    msg = client.messages.create(
        model=MODEL,
        max_tokens=400,
        system=SYSTEM_PROMPT,
        messages=[{'role': 'user', 'content': text}],
    )
    return msg.content[0].text.strip()


def sql_escape(s):
    return s.replace("'", "''")


def main():
    if not os.environ.get('ANTHROPIC_API_KEY'):
        sys.exit('ERROR: set ANTHROPIC_API_KEY env var')

    client = anthropic.Anthropic()
    rows = fetch_en_descriptions()

    print(f"-- Generated {len(rows)} Hebrew short descriptions", file=sys.stderr)
    print("-- Run in Supabase SQL editor")
    print("BEGIN;")
    print()

    for i, row in enumerate(rows, 1):
        slug = row['slug']
        en   = row.get('description') or ''
        if not en.strip():
            print(f"-- skipped: {slug} (empty EN description)", file=sys.stderr)
            continue
        try:
            he = translate(client, en)
        except Exception as e:
            print(f"-- failed: {slug} ({e})", file=sys.stderr)
            continue

        print(f"UPDATE tools SET description = '{sql_escape(he)}' "
              f"WHERE slug = '{sql_escape(slug)}' AND lang = 'he';")
        print(f"-- [{i}/{len(rows)}] {slug}: {he[:60]}...", file=sys.stderr)
        time.sleep(0.1)

    print()
    print("COMMIT;")


if __name__ == '__main__':
    main()
