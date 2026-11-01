#!/usr/bin/env python3
"""Страницы раздела «ИИ для…»: от брифа до SQL в таблицу ai_for.

Текст задачи пишется один раз и намеренно без цен, версий, дат и числа
пользователей: эти факты генератор берёт из карточек tools при каждой сборке,
поэтому страницы задач не устаревают вместе с тарифами.

Команды:
  python3 scripts/ai_for.py draft [slug,…]      → drafts/ai-for/<slug>/en.json по брифу и карточкам
  python3 scripts/ai_for.py translate [slug,…]  → остальные 7 языков (только недостающие)
  python3 scripts/ai_for.py sql [slug,…]        → scripts/ai_for_<дата>.sql (DELETE + INSERT)
  python3 scripts/ai_for.py cover <slug> <png>  → media/ai-for/<slug>.webp/.jpg + scripts/ai_for_cover_<slug>.sql

После sql: run_sql.py (сначала --dry-run), затем generate-ai-for-pages.py.
"""
import concurrent.futures
import datetime
import json
import os
import re
import sys

ROOT = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, ROOT)

LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
DRAFTS = os.path.join(ROOT, 'drafts', 'ai-for')
BRIEF = os.path.join(ROOT, 'ai_for_brief.json')

# Факты, которые живут в карточках и устаревают: в тексте задачи их быть не должно
STALE = re.compile(r'[$€£₪]|\b\d+[.,]\d+\b|\b20\d\d\b|\b\d+\s?(M|K|B)\+|\b\d+\s?%|\bv\d', re.I)


def brief(slugs=None):
    tasks = json.load(open(BRIEF, encoding='utf-8'))['tasks']
    return [t for t in tasks if not slugs or t['slug'] in slugs]


def path(slug, lang):
    return os.path.join(DRAFTS, slug, f'{lang}.json')


def texts(d):
    """Все строки текста задачи — для проверок."""
    out = [d['title'], d['tile'], d['meta_desc'], d['answer'], d['query']]
    out += [p['label'] for p in d['picks']] + [p['why'] for p in d['picks']]
    out += [c['text'] for c in d['choose']] + d['steps']
    out += [x for f in d['faq'] for x in (f['q'], f['a'])]
    return out


def check(d, task, en=None):
    errs = []
    if [p['slug'] for p in d['picks']] != task['picks']:
        errs.append('порядок picks не совпадает с брифом')
    allowed = set(task['picks']) | set(task['also'])
    errs += [f'choose → {c["slug"]} не из picks/also' for c in d['choose'] if c['slug'] not in allowed]
    for s in texts(d):
        m = STALE.search(s)
        if m:
            errs.append(f'цена/версия/дата в тексте: «{s[max(0, m.start() - 20):m.end() + 10]}»')
    if en:
        if len(d['choose']) != len(en['choose']) or len(d['steps']) != len(en['steps']) or len(d['faq']) != len(en['faq']):
            errs.append('число пунктов не совпадает с EN')
        if d['answer'].count('<b>') != en['answer'].count('<b>'):
            errs.append('<b> в ответе не совпадает с EN')
    if not 120 <= len(d['meta_desc']) <= 170:
        errs.append(f'meta_desc {len(d["meta_desc"])} символов')
    return errs


DRAFT_PROMPT = """You write one page of AItoolFit, a task-based AI tool finder. The page answers:
"which AI should I use to {brief}?" with exactly three picks, in this order: {picks}.

Write ONLY from the tool facts below — never invent features. The text must stay true for months,
so it must NOT contain prices, currency, plan names with prices, version numbers, model names with
numbers, years, dates, user counts or percentages. Those facts are shown on the page automatically
from the tool cards. Describe what each tool does for THIS task and who it suits.

Style: plain, concrete, friendly English for a non-technical reader. No hype words ("revolutionary",
"game-changer", "seamless"). Short sentences.

Return ONLY JSON:
{{
 "title": "H1, how people search, e.g. 'Best AI for presentations' (max 45 chars)",
 "tile": "short task name for a tile on the section page, imperative, e.g. 'Make a presentation' (max 40 chars)",
 "meta_desc": "140-160 chars, names the task and the three tools, says why they fit",
 "answer": "1-2 sentences, the direct answer: which pick for which situation; wrap each of the three tool names in <b></b> once",
 "picks": [{{"slug": "...", "label": "3-5 word angle, e.g. 'Fastest from scratch'", "why": "2-3 sentences: why this tool fits this task, what you actually do in it, one honest limitation if relevant"}}],
 "choose": [{{"icon": "one emoji", "text": "a situation, e.g. 'You need slides today and have nothing yet'", "slug": "a slug from picks or from also: {also}"}}],
 "steps": ["4-5 practical steps to do the task with AI, tool-agnostic; include one step about checking the result"],
 "faq": [{{"q": "...", "a": "..."}}],
 "query": "a realistic one-line request a user might type into our finder for this task, first person"
}}
choose: exactly 4 items. faq: exactly 2 questions people really ask about this task (NOT about price or a free plan — that one is added automatically).
{extra}
TOOL FACTS:
{facts}"""


def draft(slugs):
    import anthropic
    import llm
    import sbread
    client = anthropic.Anthropic()
    tasks = brief(slugs)
    need = {s for t in tasks for s in t['picks'] + t['also']}
    cards = {r['slug']: r for r in sbread.get(
        f"tools?lang=eq.en&slug=in.({','.join(need)})"
        "&select=slug,name,badge,best_for,description,description_long,pros,cons,choose_if")}

    def one(t):
        facts = []
        for s in t['picks']:
            c = cards[s]
            facts.append(f"## {c['name']} (slug {s}, plan type {c['badge']})\nBest for: {c['best_for']}\n"
                         f"{c['description_long'] or c['description']}\nPros: {'; '.join(c['pros'] or [])}\n"
                         f"Cons: {'; '.join(c['cons'] or [])}\nChoose if: {'; '.join(c['choose_if'] or [])}")
        facts.append('## Also on the page (one line each)\n' + '\n'.join(
            f"- {cards[s]['name']} (slug {s}): {cards[s]['best_for']}" for s in t['also']))
        prompt = DRAFT_PROMPT.format(brief=t['brief'][0].lower() + t['brief'][1:],
                                     picks=', '.join(f"{cards[s]['name']} ({s})" for s in t['picks']),
                                     also=', '.join(t['also']), extra=t.get('note', ''), facts='\n\n'.join(facts))
        for _ in range(3):
            d = llm.ask(client, llm.REWRITE, None, prompt)
            errs = check(d, t)
            if not errs:
                os.makedirs(os.path.dirname(path(t['slug'], 'en')), exist_ok=True)
                json.dump(d, open(path(t['slug'], 'en'), 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
                return t['slug'], d['title'], []
            prompt += '\n\nYour previous answer had problems, fix them: ' + '; '.join(errs)
        return t['slug'], None, errs

    with concurrent.futures.ThreadPoolExecutor(6) as ex:
        for slug, title, errs in ex.map(one, tasks):
            print(f'  {slug}: ' + (title if title else '✗ ' + '; '.join(errs)))
    print(llm.cost_report())


TRANSLATE_PROMPT = """Translate this page of AItoolFit (an AI tool finder) into {language}.

- Keep the JSON structure and every key exactly; translate only the values. Never change "slug" or "icon".
- Do NOT translate product or company names (Gamma, Canva AI, ChatGPT, Photoroom…) — Latin script.
- Keep <b></b> tags exactly around the same tool names.
- "title" and "meta_desc" must use the phrasing people actually type into Google in {language}
  for this task, not a word-by-word calque.{title_rule}
- Natural, friendly, plain register. Nothing added, nothing removed.
- No prices, versions, years or user counts (the original has none — keep it that way).
- meta_desc: 130-160 characters.
- Return ONLY valid JSON; escape double quotes inside values as \\" or use the language's own quotation marks.
{ua}
JSON:
{payload}"""

TITLE_RULE = {
    'ru': ' In Russian people search "нейросеть для …": start "title" with "Нейросеть для" or "Нейросети для".',
    'ua': ' In Ukrainian people search "нейромережа для …": start "title" with "Нейромережа для" or "Нейромережі для".',
    'he': ' In Hebrew keep "AI" in Latin letters as Israelis search it (e.g. "AI ליצירת מצגות"), or "בינה מלאכותית".',
}


def translate(slugs):
    import anthropic
    import llm
    from translate_missing_news import LANG_NAME
    client = anthropic.Anthropic()
    jobs = []
    for t in brief(slugs):
        if not os.path.exists(path(t['slug'], 'en')):
            print(f'  {t["slug"]}: нет en.json — сначала draft')
            continue
        jobs += [(t, l) for l in LANGS[1:] if not os.path.exists(path(t['slug'], l))]

    def one(job):
        t, lang = job
        en = json.load(open(path(t['slug'], 'en'), encoding='utf-8'))
        prompt = TRANSLATE_PROMPT.format(
            language=LANG_NAME[lang], title_rule=TITLE_RULE.get(lang, ''),
            ua='- In Ukrainian write "ШІ" for AI, as on the rest of the site.' if lang == 'ua' else '',
            payload=json.dumps(en, ensure_ascii=False, indent=1))
        errs = []
        for _ in range(3):
            d = llm.ask(client, llm.TRANSLATE, None, prompt, think=False)
            errs = check(d, t, en)
            if lang == 'he' and re.search(r'קנבה|ג׳מיני|צ׳אט ?ג׳י', json.dumps(d, ensure_ascii=False)):
                errs.append('имена продуктов на иврите записаны ивритом')
            if not errs:
                json.dump(d, open(path(t['slug'], lang), 'w', encoding='utf-8'), ensure_ascii=False, indent=1)
                return t['slug'], lang, d['title'], []
            prompt += '\n\nFix these problems in your answer: ' + '; '.join(errs)
        return t['slug'], lang, None, errs

    with concurrent.futures.ThreadPoolExecutor(8) as ex:
        for slug, lang, title, errs in ex.map(one, jobs):
            print(f'  {slug} {lang}: ' + (title if title else '✗ ' + '; '.join(errs)))
    print(llm.cost_report())


CREATE = """CREATE TABLE IF NOT EXISTS ai_for (
  slug text NOT NULL,
  lang text NOT NULL,
  grp text NOT NULL,
  sort int NOT NULL DEFAULT 0,
  title text NOT NULL,
  tile text NOT NULL,
  meta_desc text NOT NULL,
  answer text NOT NULL,
  picks jsonb NOT NULL,
  choose jsonb NOT NULL,
  steps jsonb NOT NULL,
  faq jsonb NOT NULL,
  also text[] NOT NULL DEFAULT '{}',
  compare text,
  query text,
  image_url text,
  published boolean NOT NULL DEFAULT true,
  last_updated date NOT NULL DEFAULT current_date,
  PRIMARY KEY (slug, lang)
);
ALTER TABLE ai_for ENABLE ROW LEVEL SECURITY;
DO $$ BEGIN
  CREATE POLICY ai_for_public_read ON ai_for FOR SELECT USING (published = true);
EXCEPTION WHEN duplicate_object THEN NULL; END $$;
GRANT SELECT ON ai_for TO anon, authenticated;
NOTIFY pgrst, 'reload schema';
"""


def sql(slugs):
    from translate_missing_news import q
    tasks = json.load(open(BRIEF, encoding='utf-8'))['tasks']
    order = {t['slug']: i for i, t in enumerate(tasks)}
    out = ['-- Раздел «ИИ для…»: таблица и страницы из scripts/drafts/ai-for. Идемпотентно.\n\n', CREATE, '\n']
    for t in brief(slugs):
        missing = [l for l in LANGS if not os.path.exists(path(t['slug'], l))]
        if missing:
            sys.exit(f'{t["slug"]}: нет переводов {missing}')
        en = json.load(open(path(t['slug'], 'en'), encoding='utf-8'))
        out.append(f"DELETE FROM ai_for WHERE slug = '{t['slug']}';\n")
        for lang in LANGS:
            d = json.load(open(path(t['slug'], lang), encoding='utf-8'))
            errs = check(d, t, None if lang == 'en' else en)
            if errs:
                sys.exit(f'{t["slug"]} {lang}: {errs}')
            img = f"https://aitoolfit.ai/media/ai-for/{t['slug']}.jpg"
            has_img = os.path.exists(os.path.join(ROOT, '..', 'media', 'ai-for', f"{t['slug']}.jpg"))
            j = lambda v: q(json.dumps(v, ensure_ascii=False)) + '::jsonb'
            out.append(
                'INSERT INTO ai_for (slug, lang, grp, sort, title, tile, meta_desc, answer, picks, choose, '
                'steps, faq, also, compare, query, image_url)\n'
                f"VALUES ('{t['slug']}', '{lang}', '{t['group']}', {order[t['slug']]}, {q(d['title'])}, {q(d['tile'])}, "
                f"{q(d['meta_desc'])}, {q(d['answer'])}, {j(d['picks'])}, {j(d['choose'])}, "
                f"{j(d['steps'])}, {j(d['faq'])}, ARRAY[{', '.join(q(s) for s in t['also'])}]::text[], "
                f"{q(t['compare']) if t.get('compare') else 'NULL'}, {q(d['query'])}, {q(img) if has_img else 'NULL'});\n")
    p = os.path.join(ROOT, f'ai_for_{datetime.date.today()}.sql')
    open(p, 'w', encoding='utf-8').write(''.join(out))
    print(f'  {os.path.relpath(p, os.path.join(ROOT, ".."))}')


def cover(slug, png):
    """Картинка в шапку: ElevenLabs, фирменный набор «AItoolFit», 16:9, от 1200 px."""
    from PIL import Image
    im = Image.open(png).convert('RGB')
    if im.width < 1200:
        sys.exit(f'Ширина {im.width}px — для крупного превью нужно от 1200.')
    base = os.path.join(ROOT, '..', 'media', 'ai-for', slug)
    os.makedirs(os.path.dirname(base), exist_ok=True)
    im.save(base + '.webp', 'WEBP', quality=82, method=6)
    im.save(base + '.jpg', 'JPEG', quality=84, optimize=True, progressive=True)
    url = f'https://aitoolfit.ai/media/ai-for/{slug}.jpg'
    p = os.path.join(ROOT, f'ai_for_cover_{slug}.sql')
    open(p, 'w', encoding='utf-8').write(f"UPDATE ai_for SET image_url = '{url}' WHERE slug = '{slug}';\n")
    print(f'  media/ai-for/{slug}.webp {os.path.getsize(base + ".webp") // 1024} KB, .jpg {os.path.getsize(base + ".jpg") // 1024} KB → {os.path.basename(p)}')


def main():
    if len(sys.argv) >= 4 and sys.argv[1] == 'cover':
        return cover(sys.argv[2], sys.argv[3])
    if len(sys.argv) < 2 or sys.argv[1] not in ('draft', 'translate', 'sql'):
        sys.exit(__doc__)
    slugs = set(sys.argv[2].split(',')) if len(sys.argv) > 2 else None
    {'draft': draft, 'translate': translate, 'sql': sql}[sys.argv[1]](slugs)


if __name__ == '__main__':
    main()
