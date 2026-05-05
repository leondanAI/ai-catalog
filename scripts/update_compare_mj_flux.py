#!/usr/bin/env python3
"""Update midjourney-vs-flux.html across all language versions.
Sends the table section to Claude Haiku with instructions to update outdated facts."""
import os, sys, re, time
import anthropic

LANGS = ['ru', 'es', 'de', 'ua', 'he', 'fr', 'pt']
BASE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

CHANGES = """
Update these specific outdated facts (keep the existing language, change only the facts):

1. Midjourney best_for: replace with "Professional AI art and design" (translated to the file's language)
2. Flux best_for: replace with "High-quality open-source image generation" (translated)
3. Overview cell for Midjourney: replace with translation of "Top quality AI art with Midjourney V7. No free tier — starts at $10/month. Industry standard for designers and artists."
4. Overview cell for Flux: replace with translation of "Open-source image model family by Black Forest Labs. FLUX.2 (Nov 2025) delivers top-tier quality — free weights, sub-second generation with FLUX.2 klein."
5. In Flux Advantages, find the bullet about "Schnell/Dev/Pro variants" and replace with translation of "FLUX.2 family: dev (32B), pro, max, klein — sub-second generation on consumer GPUs"
6. In Midjourney Disadvantages, find the bullet about "Requires Discord" and replace with translation of "No free trial — paid subscription required from day one"
7. In Midjourney Disadvantages, find the bullet about "no free tier since March 2023" and replace with translation of "No open API for developers on standard plans"

Return ONLY the updated HTML. No commentary. No markdown fences.
"""

def extract_table_section(html):
    m = re.search(r'(<div class="compare-wrap.*?</div>\s*</main>)', html, re.DOTALL)
    return m.group(1) if m else None

def update_file(lang, client):
    path = os.path.join(BASE, lang, 'compare', 'midjourney-vs-flux.html')
    html = open(path).read()
    section = extract_table_section(html)
    if not section:
        print(f'  {lang}: ERROR — could not extract table section')
        return

    prompt = f"Language: {lang}\n\n{CHANGES}\n\nHTML to update:\n{section}"
    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=4096,
        messages=[{'role': 'user', 'content': prompt}]
    )
    updated = msg.content[0].text.strip()
    updated = re.sub(r'^```(?:html)?\n?', '', updated)
    updated = re.sub(r'\n?```$', '', updated)

    new_html = html.replace(section, updated)
    open(path, 'w').write(new_html)
    print(f'  {lang}: ✓')

def main():
    api_key = os.environ.get('ANTHROPIC_API_KEY')
    if not api_key:
        print('ERROR: Set ANTHROPIC_API_KEY'); sys.exit(1)
    client = anthropic.Anthropic(api_key=api_key)

    print('Updating language versions of midjourney-vs-flux.html...')
    for lang in LANGS:
        print(f'  {lang}...', end='', flush=True)
        try:
            update_file(lang, client)
        except Exception as e:
            print(f' ERROR: {e}')
        time.sleep(5)
    print('Done.')

if __name__ == '__main__':
    main()
