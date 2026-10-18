#!/usr/bin/env python3
"""Новость/история от черновика до SQL: обложка, переводы, публикация.

Черновик лежит в scripts/drafts/<slug>/:
  en.json — {slug, date (YYYY-MM-DD), category, source, source_url, title, summary, body}
  ru.json — {title, summary, body} (для показа Leon до публикации; можно сделать
            командой translate, тогда перевод сделает модель)

Команды:
  python3 scripts/news_story.py cover <slug> <путь к PNG из ElevenLabs>
      → media/news/<slug>.jpg (соцсети, разметка) и .webp (страница, лента)
  python3 scripts/news_story.py translate <slug> [--langs=es,de,…]
      → drafts/<slug>/<lang>.json для языков, которых ещё нет
  python3 scripts/news_story.py sql <slug>
      → scripts/news_<дата>_<slug>.sql (DELETE + INSERT на 8 языков)

После sql: run_sql.py (сначала --dry-run), затем /publish-changes.
"""
import concurrent.futures
import json
import os
import re
import sys

ROOT = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, ROOT)

LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
CAT = {  # category → (color, {lang: label})
    'models': ('#7c6af7', {'en': 'Models', 'es': 'Modelos', 'de': 'Modelle', 'ru': 'Модели', 'ua': 'Моделі', 'he': 'מודלים', 'fr': 'Modèles', 'pt': 'Modelos'}),
    'tools': ('#2dd4a0', {'en': 'Tools', 'es': 'Herramientas', 'de': 'Tools', 'ru': 'Инструменты', 'ua': 'Інструменти', 'he': 'כלים', 'fr': 'Outils', 'pt': 'Ferramentas'}),
    'business': ('#f5a623', {'en': 'Business', 'es': 'Negocios', 'de': 'Wirtschaft', 'ru': 'Бизнес', 'ua': 'Бізнес', 'he': 'עסקים', 'fr': 'Business', 'pt': 'Negócios'}),
    'research': ('#4aaef5', {'en': 'Research', 'es': 'Investigación', 'de': 'Forschung', 'ru': 'Исследования', 'ua': 'Дослідження', 'he': 'מחקר', 'fr': 'Recherche', 'pt': 'Pesquisa'}),
    'regulation': ('#f56565', {'en': 'Regulation', 'es': 'Regulación', 'de': 'Regulierung', 'ru': 'Регулирование', 'ua': 'Регулювання', 'he': 'רגולציה', 'fr': 'Réglementation', 'pt': 'Regulamentação'}),
}
FOREIGN = re.compile(r'[぀-ヿ㐀-鿿가-힯؀-ۿ�]')


def draft_dir(slug):
    return os.path.join(ROOT, 'drafts', slug)


def cover(slug, png):
    from PIL import Image
    im = Image.open(png).convert('RGB')
    if im.width < 1200:
        sys.exit(f'Ширина {im.width}px — для крупного превью в Google Discover нужно от 1200.')
    base = os.path.join(ROOT, '..', 'media', 'news', slug)
    im.save(base + '.webp', 'WEBP', quality=82, method=6)
    im.save(base + '.jpg', 'JPEG', quality=84, optimize=True, progressive=True)
    for ext in ('webp', 'jpg'):
        print(f'  media/news/{slug}.{ext}: {os.path.getsize(f"{base}.{ext}") // 1024} KB')


def check(lang, en, d):
    """Ошибки, которые ловили на живом сайте: теги, чужая письменность, имена продуктов."""
    errs = []
    for tag in ('<p>', '<h2>', '<strong>', '<a href='):
        if d['body'].count(tag) != en['body'].count(tag):
            errs.append(f'{tag}: {d["body"].count(tag)} вместо {en["body"].count(tag)}')
    if re.findall(r'href="([^"]+)"', d['body']) != re.findall(r'href="([^"]+)"', en['body']):
        errs.append('ссылки в тексте не совпадают с EN')
    for k in ('title', 'summary', 'body'):
        m = FOREIGN.search(d[k])
        if m:
            errs.append(f'чужие символы в {k}: «{d[k][max(0, m.start() - 15):m.end() + 5]}»')
    if lang == 'he' and re.search(r'קלוד|ג׳מיני|ג\'מיני|אנתרופיק|אופן ?איי ?איי', d['title'] + d['summary'] + d['body']):
        errs.append('имена продуктов на иврите записаны ивритом — нужны латиницей')
    return errs


def translate(slug, langs):
    import anthropic
    import llm
    from translate_missing_news import LANG_NAME, RULES
    en = json.load(open(os.path.join(draft_dir(slug), 'en.json'), encoding='utf-8'))
    client = anthropic.Anthropic()

    def one(lang):
        # Ответ в тегах-разделителях, а не в JSON: кавычки в тексте (иврит ארה"ב,
        # цитаты) ломали JSON-ответы на каждой третьей новости.
        prompt = (f'Translate this AI-industry news article into {LANG_NAME[lang]}.\n\n'
                  + RULES.format(language=LANG_NAME[lang]).split('- The answer is JSON')[0]
                  + '\n- The body is HTML. Keep every tag exactly as-is; translate only text between tags.'
                  + '\n- Keep titles of reports or papers in <em>…</em> in their original language.'
                  + ('\n- In Ukrainian, write "ШІ" for AI (ШІ-агенти, ШІ-модель), as on the rest of the site.' if lang == 'ua' else '')
                  + '\n\nReturn exactly three blocks and nothing else:\n<title>...</title>\n<summary>...</summary>\n<body>...</body>\n\n'
                  + f'HEADLINE: {en["title"]}\nSUMMARY: {en["summary"]}\nBODY: {en["body"]}')
        for attempt in range(3):
            m = client.messages.create(model=llm.TRANSLATE, max_tokens=12000,
                                       thinking={'type': 'disabled'},
                                       messages=[{'role': 'user', 'content': prompt}])
            with llm._lock:
                u = llm._usage.setdefault(llm.TRANSLATE, {'in': 0, 'out': 0, 'calls': 0})
                u['in'] += m.usage.input_tokens
                u['out'] += m.usage.output_tokens
                u['calls'] += 1
            text = next(b.text for b in m.content if b.type == 'text')
            try:
                d = {k: re.search(rf'<{k}>(.*?)</{k}>', text, re.S).group(1).strip() for k in ('title', 'summary', 'body')}
            except AttributeError:
                continue
            errs = check(lang, en, d)
            if not errs:
                json.dump(d, open(os.path.join(draft_dir(slug), f'{lang}.json'), 'w', encoding='utf-8'),
                          ensure_ascii=False, indent=1)
                return lang, d['title'], []
        return lang, None, errs or ['модель не вернула три блока']

    todo = [l for l in langs if not os.path.exists(os.path.join(draft_dir(slug), f'{l}.json'))]
    with concurrent.futures.ThreadPoolExecutor(6) as ex:
        for lang, title, errs in ex.map(one, todo):
            print(f'  {lang}: ' + (title[:80] if title else '✗ ' + '; '.join(errs)))
    print(llm.cost_report())


def sql(slug):
    from translate_missing_news import q
    d = draft_dir(slug)
    en = json.load(open(os.path.join(d, 'en.json'), encoding='utf-8'))
    color, labels = CAT[en['category']]
    missing = [l for l in LANGS if not os.path.exists(os.path.join(d, f'{l}.json'))]
    if missing:
        sys.exit(f'Нет переводов: {missing}. Сначала: news_story.py translate {slug}')
    img = f'https://aitoolfit.ai/media/news/{slug}.jpg'
    if not os.path.exists(os.path.join(ROOT, '..', 'media', 'news', f'{slug}.jpg')):
        img = None
        print('  обложки нет — новость пойдёт без картинки')
    out = [f'-- {en["title"]}\n-- Источник: {en.get("source_url") or en["source"]}. Идемпотентно.\n\n',
           f"DELETE FROM news WHERE slug = '{slug}';\n"]
    for lang in LANGS:
        t = en if lang == 'en' else json.load(open(os.path.join(d, f'{lang}.json'), encoding='utf-8'))
        errs = [] if lang == 'en' else check(lang, en, t)
        if errs:
            sys.exit(f'{lang}: {errs}')
        out.append('INSERT INTO news (slug, lang, category, cat_label, cat_color, source, source_url, date, '
                   'title, summary, body, image_url, published)\n'
                   f"VALUES ('{slug}', '{lang}', '{en['category']}', {q(labels[lang])}, '{color}', {q(en['source'])}, "
                   f"{q(en['source_url']) if en.get('source_url') else 'NULL'}, '{en['date']}', "
                   f"{q(t['title'])}, {q(t['summary'])}, {q(t['body'])}, {q(img) if img else 'NULL'}, true);\n")
    path = os.path.join(ROOT, f'news_{en["date"]}_{slug}.sql')
    open(path, 'w', encoding='utf-8').write(''.join(out))
    print(f'  {os.path.relpath(path, os.path.join(ROOT, ".."))}')


def main():
    if len(sys.argv) < 3:
        sys.exit(__doc__)
    cmd, slug = sys.argv[1], sys.argv[2]
    if cmd == 'cover':
        cover(slug, sys.argv[3])
    elif cmd == 'translate':
        langs = [l for l in LANGS if l != 'en']
        for a in sys.argv[3:]:
            if a.startswith('--langs='):
                langs = a.split('=', 1)[1].split(',')
        translate(slug, langs)
    elif cmd == 'sql':
        sql(slug)
    else:
        sys.exit(__doc__)


if __name__ == '__main__':
    main()
