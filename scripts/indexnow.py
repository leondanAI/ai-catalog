#!/usr/bin/env python3
"""
Submit updated URLs to IndexNow (Bing, Yandex, etc.)
Run after content updates: python3 scripts/indexnow.py
Or with specific slugs: python3 scripts/indexnow.py --slugs=chatgpt,claude
"""

import urllib.request, json, sys, os

KEY      = '3beaa04400cd4c92b52449c150d26e11'
HOST     = 'aitoolfit.ai'
KEY_URL  = f'https://{HOST}/{KEY}.txt'
API_URL  = 'https://api.indexnow.org/IndexNow'

# Pages to submit on full run
def get_urls(slugs=None):
    base = f'https://{HOST}'
    langs = ['', '/ru', '/es', '/de', '/ua', '/he', '/fr', '/pt']

    urls = []

    if slugs:
        # Specific tool/compare slugs
        for slug in slugs:
            for lang in langs:
                if 'vs' in slug:
                    urls.append(f'{base}{lang}/compare/{slug}.html')
                else:
                    urls.append(f'{base}{lang}/tools/{slug}.html')
    else:
        # Main pages
        for lang in langs:
            prefix = f'{base}{lang}'
            urls += [
                f'{prefix}/',
                f'{prefix}/directory.html',
                f'{prefix}/compare.html',
                f'{prefix}/news.html',
                f'{prefix}/newsletter.html',
            ]

        # AI tool pages only (skip toolbox utilities)
        SKIP = {'base64','csv-json','json-formatter','markdown-preview',
                'password-generator','regex-tester','text-diff','token-counter',
                'word-counter','case-converter','obviously-ai','phind','tome','socratic-by-google'}
        tools_dir = os.path.join(os.path.dirname(__file__), '..', 'tools')
        for f in sorted(os.listdir(tools_dir)):
            if f.endswith('.html'):
                slug = f.replace('.html', '')
                if slug not in SKIP:
                    urls.append(f'{base}/tools/{slug}.html')

        # All compare pages (EN only)
        compare_dir = os.path.join(os.path.dirname(__file__), '..', 'compare')
        for f in sorted(os.listdir(compare_dir)):
            if f.endswith('.html'):
                slug = f.replace('.html', '')
                urls.append(f'{base}/compare/{slug}.html')

    return urls


def submit(urls):
    # IndexNow allows max 10,000 URLs per request
    batch_size = 1000
    total = 0

    for i in range(0, len(urls), batch_size):
        batch = urls[i:i+batch_size]
        payload = {
            'host': HOST,
            'key': KEY,
            'keyLocation': KEY_URL,
            'urlList': batch
        }
        req = urllib.request.Request(
            API_URL,
            data=json.dumps(payload).encode(),
            headers={'Content-Type': 'application/json; charset=utf-8'},
            method='POST'
        )
        try:
            with urllib.request.urlopen(req, timeout=30) as r:
                status = r.status
        except urllib.error.HTTPError as e:
            status = e.code

        print(f'  Batch {i//batch_size + 1}: {len(batch)} URLs → HTTP {status}')
        total += len(batch)

    print(f'\nTotal submitted: {total} URLs')


def main():
    slugs = None
    for arg in sys.argv[1:]:
        if arg.startswith('--slugs='):
            slugs = arg.split('=', 1)[1].split(',')

    urls = get_urls(slugs)
    print(f'Submitting {len(urls)} URLs to IndexNow...')
    submit(urls)


if __name__ == '__main__':
    main()
