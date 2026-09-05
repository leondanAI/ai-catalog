#!/usr/bin/env python3
"""
Довести новости до всех 8 активных языков. Закрывает два разных случая:

  MISSING — языковой строки нет вообще (обычный случай после свежего
            EN-батча) → генерируется INSERT с переводом title, summary,
            body и локализованным cat_label.
  ENGLISH — строка есть, но в ней лежит английский текст (перевод
            когда-то не сделали) → генерируется UPDATE title + summary.

Правило проекта: EN-only апдейтов не бывает. Без языковой строки
generate-news-pages.py просто не создаст страницу на этом языке.

Запуск:
    export ANTHROPIC_API_KEY=...
    python3 scripts/translate_missing_news.py --dry-run   # только показать план
    python3 scripts/translate_missing_news.py             # перевести
    python3 scripts/translate_missing_news.py --langs=ru,es,he   # ограничить языки

Результат: scripts/news_translations_<дата>.sql — прогнать в Supabase SQL Editor.
"""
import json, os, re, sys, urllib.request, datetime

SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'   # read-only publishable
ALL_LANGS = ['es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']

LANG_NAME = {
    'es': 'Spanish', 'de': 'German', 'ru': 'Russian', 'ua': 'Ukrainian',
    'he': 'Hebrew', 'fr': 'French', 'pt': 'Brazilian Portuguese',
}

# Локализация ярлыка категории — таблица из /add-news
CAT_LABEL = {
    'models':     {'es': 'Modelos', 'de': 'Modelle', 'ru': 'Модели', 'ua': 'Моделі',
                   'he': 'מודלים', 'fr': 'Modèles', 'pt': 'Modelos'},
    'tools':      {'es': 'Herramientas', 'de': 'Tools', 'ru': 'Инструменты', 'ua': 'Інструменти',
                   'he': 'כלים', 'fr': 'Outils', 'pt': 'Ferramentas'},
    'business':   {'es': 'Negocios', 'de': 'Wirtschaft', 'ru': 'Бизнес', 'ua': 'Бізнес',
                   'he': 'עסקים', 'fr': 'Business', 'pt': 'Negócios'},
    'research':   {'es': 'Investigación', 'de': 'Forschung', 'ru': 'Исследования',
                   'ua': 'Дослідження', 'he': 'מחקר', 'fr': 'Recherche', 'pt': 'Pesquisa'},
    'regulation': {'es': 'Regulación', 'de': 'Regulierung', 'ru': 'Регулирование',
                   'ua': 'Регулювання', 'he': 'רגולציה', 'fr': 'Réglementation',
                   'pt': 'Regulamentação'},
}

RULES = """- Keep every number, version, date, price and percentage exactly as in the original.
- CRITICAL — scale words are false friends. English "billion" is 10^9. In German that is
  "Milliarden" (NOT "Billion", which means 10^12); in Spanish "mil millones" (NOT "billón");
  in French "milliards"; in Portuguese "bilhões"; in Russian/Ukrainian "миллиардов/мільярдів";
  in Hebrew "מיליארד". Getting this wrong changes the fact by a factor of 1000.
  Same for "trillion" → German "Billionen", Spanish "billones".
- Do NOT translate product, company or model names (Claude Opus 5, GPT-5.6 Luna,
  Gemini 3.6 Flash, DeepSeek V4-Flash, Cursor, Figma…) — leave them in Latin script.
- Natural, factual news register. No hype, no added claims, nothing invented.
- The headline must read like a news headline in {language}, not a word-by-word calque."""

PROMPT_SHORT = """Translate this AI-industry news headline and summary into {language}.

""" + RULES + """

Return ONLY valid JSON: {{"title": "...", "summary": "..."}}

HEADLINE: {title}
SUMMARY: {summary}"""

PROMPT_FULL = """Translate this AI-industry news article into {language}.

""" + RULES + """
- The body is HTML. Keep every tag exactly as-is (<p>, <h2>, <strong>). Translate only
  the text between tags. Do not add, remove or reorder tags or sections.

Return ONLY valid JSON: {{"title": "...", "summary": "...", "body": "..."}}

HEADLINE: {title}
SUMMARY: {summary}
BODY: {body}"""


def sb_get(path):
    req = urllib.request.Request(f'{SB_URL}/rest/v1/{path}',
                                 headers={'apikey': SB_KEY, 'Authorization': f'Bearer {SB_KEY}'})
    return json.load(urllib.request.urlopen(req))


def build_plan(langs):
    """Вернуть [(en_row, lang, 'MISSING'|'ENGLISH'), …]."""
    rows = sb_get('news?published=eq.true&lang=in.(en,%s)'
                  '&select=slug,lang,category,cat_label,cat_color,source,date,title,summary,body'
                  % ','.join(langs))
    by = {}
    for r in rows:
        by.setdefault(r['slug'], {})[r['lang']] = r
    plan = []
    for slug in sorted(by):
        en = by[slug].get('en')
        if not en or not (en.get('body') or '').strip():
            continue                      # без body страница всё равно не создастся
        for l in langs:
            r = by[slug].get(l)
            if r is None:
                plan.append((en, l, 'MISSING'))
            elif (r['title'] or '').strip() == (en['title'] or '').strip():
                plan.append((en, l, 'ENGLISH'))
    return plan


def q(s):
    """Dollar-quoting — в текстах апострофы (l'IA, don't, тощо)."""
    tag = '$t$'
    while tag in (s or ''):
        tag = '$t%d$' % len(tag)
    return f"{tag}{s or ''}{tag}"


def main():
    dry = '--dry-run' in sys.argv
    langs = ALL_LANGS
    for a in sys.argv[1:]:
        if a.startswith('--langs='):
            langs = [x.strip() for x in a.split('=', 1)[1].split(',') if x.strip()]

    plan = build_plan(langs)
    miss = [p for p in plan if p[2] == 'MISSING']
    engl = [p for p in plan if p[2] == 'ENGLISH']
    print(f'Языки: {", ".join(langs)}')
    print(f'К вставке (строки нет):        {len(miss)}')
    print(f'К обновлению (английский текст): {len(engl)}')
    print(f'Всего вызовов API:             {len(plan)}\n')
    for en, l, kind in plan:
        print(f'  {kind:8} [{l}] {en["slug"]}')
    if dry or not plan:
        return

    try:
        import anthropic
    except ImportError:
        sys.exit('\nНужен пакет anthropic:  pip3 install anthropic')
    if not os.environ.get('ANTHROPIC_API_KEY'):
        sys.exit('\nНе задан ANTHROPIC_API_KEY')
    client = anthropic.Anthropic()

    stmts, done, failed = [], 0, []
    for en, lang, kind in plan:
        tmpl = PROMPT_FULL if kind == 'MISSING' else PROMPT_SHORT
        prompt = tmpl.format(language=LANG_NAME[lang], title=en['title'],
                             summary=en['summary'], body=en.get('body', ''))
        try:
            msg = client.messages.create(model='claude-sonnet-5', max_tokens=8000,
                                         messages=[{'role': 'user', 'content': prompt}])
            txt = next(b.text for b in msg.content if getattr(b, 'type', '') == 'text').strip()
            txt = re.sub(r'^```(?:json)?|```$', '', txt, flags=re.M).strip()
            # strict=False разрешает сырые управляющие символы внутри строк JSON:
            # модель иногда вставляет реальный перенос строки в body, и обычный
            # json.loads на этом падает («Invalid control character at …»).
            data = json.loads(txt, strict=False)

            if kind == 'MISSING':
                label = CAT_LABEL.get(en['category'], {}).get(lang) or en['cat_label']
                # DELETE + INSERT, а не ON CONFLICT: в news первичный ключ — id,
                # уникального индекса по (slug, lang) нет, и ON CONFLICT упал бы.
                stmts.append(
                    "DELETE FROM news WHERE slug = '{slug}' AND lang = '{lang}';\n"
                    "INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date,"
                    " title, summary, body, published)\nVALUES ('{slug}', '{lang}', '{cat}', {lab},"
                    " '{col}', {src}, '{date}', {t}, {s}, {b}, true);".format(
                        slug=en['slug'], lang=lang, cat=en['category'], lab=q(label),
                        col=en['cat_color'], src=q(en['source']), date=en['date'],
                        t=q(data['title']), s=q(data['summary']), b=q(data['body'])))
            else:
                stmts.append(
                    'UPDATE news SET title = {t}, summary = {s}\n'
                    " WHERE slug = '{slug}' AND lang = '{lang}';".format(
                        t=q(data['title']), s=q(data['summary']),
                        slug=en['slug'], lang=lang))
            done += 1
            print(f'  {kind:8} [{lang}] {en["slug"]} ✓', flush=True)
        except Exception as e:
            failed.append((en['slug'], lang, str(e)[:90]))
            print(f'  {kind:8} [{lang}] {en["slug"]} ✗ {e}', flush=True)

    stamp = datetime.date.today().isoformat()
    out = os.path.join(os.path.dirname(__file__), f'news_translations_{stamp}.sql')
    header = (f'-- Переводы новостей на языки: {", ".join(langs)}\n'
              f'-- Сгенерировано {stamp}. Операций: {done}'
              f' (INSERT {len(miss)}, UPDATE {len(engl)}).\n'
              f'-- Идемпотентно: INSERT c ON CONFLICT, UPDATE по slug+lang.\n\n')
    with open(out, 'w', encoding='utf-8') as f:
        f.write(header + '\n\n'.join(stmts) + '\n')
    print(f'\nГотово — {done} операций записано в {out}')
    if failed:
        print(f'Не переведено: {len(failed)}')
        for s, l, e in failed:
            print(f'  {s} [{l}]: {e}')


if __name__ == '__main__':
    main()
