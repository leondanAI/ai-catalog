#!/usr/bin/env python3
"""Переписывает устаревшие упоминания моделей в карточках инструментов.

Слепая замена здесь не годится. Часть упоминаний верна: gpt-4o-transcribe —
действующая модель Whisper API, а фраза «DALL·E 3 снят с производства»
описывает историю, а не текущее состояние. Поэтому:

  • правим только перечисленные ниже карточки, исключая законные поля;
  • каждое поле переписывается в своём языке — переводы FAQ независимы
    от английских вопросов, индексы между языками не совпадают;
  • опора — текущее английское описание карточки, оно проверено;
    новых фактов модель добавлять не должна.

Результат — SQL на прогон и файл сравнения «было / стало» для проверки.

    ANTHROPIC_API_KEY=... python3 scripts/fix_stale_models.py [--dry-run]
"""
import json, os, re, sys, urllib.request

U = 'https://lbjdwkvkkndvofysyssy.supabase.co'
K = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
LANG_NAME = {'en': 'English', 'es': 'Spanish', 'de': 'German', 'ru': 'Russian',
             'ua': 'Ukrainian', 'he': 'Hebrew', 'fr': 'French', 'pt': 'Brazilian Portuguese'}

TARGET = ['aider', 'cline', 'continue-dev', 'n8n', 'autogpt', 'consensus', 'cursor',
          'claude', 'deepseek', 'duolingo-max', 'gemini', 'grok', 'meta-ai',
          'microsoft-copilot', 'writesonic', 'nano-banana']

STALE = re.compile(
    r'GPT-4o|GPT-4 Turbo|GPT-4(?![.\w])|GPT-3\.5|DALL-E 3|DALL·E 3|Claude 3\.5|Claude 3\.7|'
    r'Claude 4\.5|Gemini 1\.5|Gemini 2\.0|Gemini 2\.5|Grok 3\b|Llama 3(?![.\w])|Llama 4\b|DeepSeek V3\b')

# Поля, где упоминание законно: история смены моделей или фраза «X вместо GPT-4».
SKIP = {('microsoft-copilot', 'description'), ('microsoft-copilot', 'pros'),
        ('duolingo-max', 'description_long'), ('writesonic', 'description_long'),
        ('meta-ai', 'description_long')}   # «больше не работает на Llama 4» — история

FIELDS = ['description', 'description_long', 'best_for', 'pros', 'cons', 'choose_if', 'faq']

RULES = """You are correcting an outdated passage on an AI tool directory page.

The passage names AI models that are one or two generations old (for example
GPT-4o, GPT-4, DALL-E 3, Claude 3.5, Claude 3.7, Gemini 1.5, Gemini 2.0, Grok 3,
Llama 3/4, DeepSeek V3). Rewrite it so it is accurate today.

Rules:
1. Use ONLY facts found in the CURRENT CARD DESCRIPTION below. Do not add any
   model name, version, price, benchmark or feature that is not stated there.
2. Where the passage lists models a tool can connect to, name the VENDOR or
   family, not a version: "Claude, GPT, Gemini" — not "Claude, GPT-4o, Gemini".
   Versions of third-party models change on the vendor's side and go stale.
3. Where the passage compares against an old model ("competitive with GPT-4o",
   "better than DALL-E 3"), drop the dated comparison or make it vendor-level
   ("comparable to OpenAI's image models") — never invent a new benchmark claim.
4. If a FAQ question itself is about an obsolete model ("Is Grok 3 better than
   GPT-4?"), rewrite the question version-free ("Is Grok better than ChatGPT?")
   and answer it using only the current description.
5. Keep the same language as the passage ({lang}). Keep the length and tone
   close to the original. Plain text, no markdown.
6. Keep everything in the passage that is still correct.
7. Return ONLY the JSON value of the same shape as the input: a string for a
   text field, an array of strings for a list, or an array of {{"q","a"}}
   objects for FAQ. No commentary.
"""


def fetch(slugs):
    q = ('tools?slug=in.(' + ','.join(slugs) + ')&select=slug,lang,' + ','.join(FIELDS))
    r = urllib.request.Request(U + '/rest/v1/' + q,
                               headers={'apikey': K, 'Authorization': 'Bearer ' + K})
    return json.load(urllib.request.urlopen(r))


def as_text(v):
    return v if isinstance(v, str) else json.dumps(v, ensure_ascii=False)


def sqlq(s):
    tag = 'x'
    while f'${tag}$' in s:
        tag += 'x'
    return f'${tag}${s}${tag}$'


def main():
    dry = '--dry-run' in sys.argv
    rows = fetch(TARGET)
    en = {r['slug']: r for r in rows if r['lang'] == 'en'}

    jobs = []
    for r in sorted(rows, key=lambda x: (x['slug'], LANGS.index(x['lang']))):
        for f in FIELDS:
            if (r['slug'], f) in SKIP or not r.get(f):
                continue
            if STALE.search(as_text(r[f])):
                jobs.append((r['slug'], r['lang'], f, r[f]))

    print(f'полей к правке: {len(jobs)}')
    if dry:
        for s, l, f, _ in jobs:
            print(f'  {s:18} {l} {f}')
        return
    if not os.environ.get('ANTHROPIC_API_KEY'):
        sys.exit('\nНе задан ANTHROPIC_API_KEY')

    import anthropic
    client = anthropic.Anthropic()
    out_sql, review, failed = [], [], []

    for i, (slug, lang, field, value) in enumerate(jobs, 1):
        facts = en[slug]
        context = (f"CURRENT CARD DESCRIPTION (verified, source of truth):\n"
                   f"{facts['description']}\n\n{facts['description_long']}")
        user = (f"{context}\n\nFIELD: {field}\nLANGUAGE: {LANG_NAME[lang]}\n\n"
                f"PASSAGE TO CORRECT (JSON):\n{json.dumps(value, ensure_ascii=False)}")
        try:
            msg = client.messages.create(
                model='claude-sonnet-5', max_tokens=4000,
                system=RULES.format(lang=LANG_NAME[lang]),
                messages=[{'role': 'user', 'content': user}])
            txt = next(b.text for b in msg.content if getattr(b, 'type', '') == 'text').strip()
            txt = re.sub(r'^```(?:json)?\s*|\s*```$', '', txt)
            new = json.loads(txt, strict=False)
        except Exception as e:
            failed.append((slug, lang, field, str(e)[:80]))
            print(f'  ✗ {slug} {lang} {field}: {e}')
            continue

        if type(new) is not type(value):
            failed.append((slug, lang, field, 'другой тип'))
            print(f'  ✗ {slug} {lang} {field}: вернулся другой тип')
            continue
        left = STALE.findall(as_text(new))
        print(f'  ✓ [{i}/{len(jobs)}] {slug} {lang} {field}' + (f'  ! осталось {left}' if left else ''))

        if field in ('pros', 'cons'):
            arr = 'ARRAY[' + ', '.join(sqlq(x) for x in new) + ']::text[]'
            out_sql.append(f"UPDATE tools SET {field} = {arr}\n WHERE slug = '{slug}' AND lang = '{lang}';\n")
        elif field in ('choose_if', 'faq'):
            out_sql.append(f"UPDATE tools SET {field} = {sqlq(json.dumps(new, ensure_ascii=False))}::jsonb\n"
                           f" WHERE slug = '{slug}' AND lang = '{lang}';\n")
        else:
            out_sql.append(f"UPDATE tools SET {field} = {sqlq(new)}\n WHERE slug = '{slug}' AND lang = '{lang}';\n")
        review.append({'slug': slug, 'lang': lang, 'field': field,
                       'before': value, 'after': new, 'left': left})

    head = f"""-- Устаревшие модели в текстах карточек: {len(out_sql)} полей в {len({j[0] for j in jobs})} карточках.
--
-- Собрано scripts/fix_stale_models.py. Каждое поле переписано в своём языке
-- с опорой на текущее английское описание карточки; новых фактов не добавлено.
-- Перечни подключаемых моделей переведены на имена вендоров, без версий.
--
-- Не тронуто намеренно: gpt-4o-transcribe в Whisper (действующая модель),
-- история смены моделей в ChatGPT, DALL·E, Google Stitch, Duolingo Max,
-- формулировка «семейство GPT-5 вместо GPT-4» в Microsoft Copilot.
-- Идемпотентно: присвоение готовых значений.
"""
    base = os.path.dirname(os.path.abspath(__file__))
    open(os.path.join(base, 'fix_stale_models_2026-09-19.sql'), 'w').write(head + '\n' + '\n'.join(out_sql))
    json.dump(review, open(os.path.join(base, 'fix_stale_models_2026-09-19_review.json'), 'w'),
              ensure_ascii=False, indent=1)
    print(f'\nзаписано операций: {len(out_sql)} | ошибок: {len(failed)}')
    for f in failed:
        print('  ', f)


if __name__ == '__main__':
    main()
