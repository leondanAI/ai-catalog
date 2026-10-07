#!/usr/bin/env python3
"""Переписывает карточки инструментов по результатам аудита из scripts/audit/*.json.

Аудит проверял факты по сайтам вендоров и записал, какие утверждения в карточке
неверны. Здесь эти находки превращаются в новый текст карточки и переводы.

Два шага на карточку:
  1. английская версия — по текущей карточке и находкам аудита;
  2. переводы на 7 языков, двумя частями, чтобы ответ не упирался в лимит.

Правила, зашитые в подсказку: не выдумывать; факт, помеченный аудитом как
неподтверждённый, убирать, а не переписывать; цену за год не выдавать за
месячную; валюту не пересчитывать.

    ANTHROPIC_API_KEY=... python3 scripts/apply_card_audit.py [--only slug,slug] [--dry-run]
"""
import glob, json, os, re, sys, urllib.request

U = 'https://lbjdwkvkkndvofysyssy.supabase.co'
K = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
ROOT = os.path.dirname(os.path.abspath(__file__))
LANGS = [('es', 'Spanish'), ('de', 'German'), ('ru', 'Russian'), ('ua', 'Ukrainian'),
         ('he', 'Hebrew'), ('fr', 'French'), ('pt', 'Brazilian Portuguese')]
FIELDS = ['best_for', 'description', 'description_long', 'pros', 'cons', 'choose_if', 'faq']

EN_RULES = """You are correcting a tool card on AItoolFit, a directory of AI tools.

An auditor checked this card against the vendor's own website today and listed
what is wrong. Rewrite the card so every statement is true.

Hard rules:
1. Use ONLY the audit findings and the parts of the current card the audit did
   not contradict. Invent nothing.
2. If the audit says a claim is unverified or could not be found on a primary
   source, DELETE that claim. Do not soften it, do not rewrite it.
3. Prices: state the billing period explicitly. If a figure is an annual-billing
   rate, say so. Never present an annual rate as a monthly price. If the audit
   says pricing was served in another currency and could not be verified in USD,
   omit the number and describe the tier structure instead.
4. If the audit says there is no free plan, the card must not imply one exists.
5. Third-party models: name the vendor, not the version number, because those
   change on the vendor's side.
6. Keep the existing structure: description is 1-2 factual sentences;
   description_long is 4-6 plain-text paragraphs (what it is, current status,
   capabilities, pricing, limitations, who it suits); pros and cons are 4-5
   specific items each; choose_if entries keep their leading emoji if present;
   faq keeps its {"q","a"} shape and question count.
7. Plain text. No markdown.

Return ONLY a JSON object with these keys, and nothing else:
best_for, description, description_long, pros, cons, choose_if, faq,
badge (one of free/freemium/paid, based on whether a real free plan exists),
users (see below),
dropped (array of short strings: claims you removed as unverified).
Include choose_if and faq ONLY if they are present in the current card.

The users field has two meanings on this site. If the CURRENT value starts with
"Free" or "from $", it is a price label shown on the badge and used as the
structured-data price. Then return an updated label in exactly that format,
using the lowest verified MONTHLY-billed USD price of a paid tier:
"Free / from $X/mo" only if a real free plan exists, otherwise "from $X/mo".
If no monthly USD price is verified, return null. Otherwise users is an
audience size such as "2M+", or null if the audit did not verify one."""

TR_RULES = """Translate these fields of an AI tool card from English into {lang}.

Rules:
- Return ONLY a JSON object with the same keys and structure.
- Keep product names, model names, plan names and company names in Latin script
  exactly as written.
- Keep every number, price and date exactly. Use the target language's normal
  decimal and date conventions, but never change a value.
- "million" is 10^6 and "billion" is 10^9. Do not use a word that means 10^12.
- Keep the leading emoji of each choose_if entry.
- Natural, factual tone. No markdown."""


def get(q):
    r = urllib.request.Request(U + '/rest/v1/' + q,
                               headers={'apikey': K, 'Authorization': 'Bearer ' + K})
    return json.load(urllib.request.urlopen(r))


def sqlq(s):
    tag = 'x'
    while f'${tag}$' in s:
        tag += 'x'
    return f'${tag}${s}${tag}$'


def ask(client, system, user, max_tokens=8000, tries=3):
    for _ in range(tries):
        msg = client.messages.create(model='claude-sonnet-5', max_tokens=max_tokens,
                                     system=system, messages=[{'role': 'user', 'content': user}])
        txt = next(b.text for b in msg.content if getattr(b, 'type', '') == 'text').strip()
        txt = re.sub(r'^```(?:json)?\s*|\s*```$', '', txt)
        try:
            return json.loads(txt, strict=False)
        except Exception as e:
            print('   повтор разбора:', str(e)[:60])
    raise RuntimeError('модель не вернула корректный JSON')


def stmts_for(slug, lang, data, card):
    out = []
    for f in FIELDS:
        if f not in data or data[f] is None or f not in card or card[f] is None:
            continue
        v = data[f]
        if f in ('pros', 'cons'):
            body = 'ARRAY[' + ', '.join(sqlq(x) for x in v) + ']::text[]'
        elif f in ('choose_if', 'faq'):
            body = sqlq(json.dumps(v, ensure_ascii=False)) + '::jsonb'
        else:
            body = sqlq(v)
        out.append(f"UPDATE tools SET {f} = {body}\n WHERE slug = '{slug}' AND lang = '{lang}';\n")
    return out


def main():
    only = None
    for a in sys.argv[1:]:
        if a.startswith('--only='):
            only = set(a.split('=', 1)[1].split(','))
    dry = '--dry-run' in sys.argv

    audit = []
    for f in sorted(glob.glob(os.path.join(ROOT, 'audit', 'batch*.json'))):
        audit += json.load(open(f))
    if only:
        audit = [a for a in audit if a['slug'] in only]
    print(f'карточек в работе: {len(audit)}')
    if dry:
        for a in audit:
            print('  ', a['slug'], 'жив' if a.get('alive') else 'МЁРТВ')
        return

    import anthropic
    client = anthropic.Anthropic()
    sql, review, dead, failed = [], [], [], []

    for i, a in enumerate(audit, 1):
        slug = a['slug']
        if not a.get('alive'):
            dead.append(a)
            print(f'[{i}/{len(audit)}] {slug}: недоступен, снимаем с публикации')
            continue
        rows = get(f'tools?slug=eq.{slug}&select=lang,badge,users,' + ','.join(FIELDS))
        cards = {r['lang']: r for r in rows}
        en = cards.get('en')
        if not en:
            failed.append((slug, 'нет английской строки'))
            continue
        try:
            new_en = ask(client, EN_RULES,
                         'CURRENT CARD:\n' + json.dumps(en, ensure_ascii=False)
                         + '\n\nAUDIT FINDINGS:\n' + json.dumps(a, ensure_ascii=False))
        except Exception as e:
            failed.append((slug, f'EN: {e}'))
            print(f'[{i}/{len(audit)}] {slug}: ✗ {e}')
            continue

        payload = {f: new_en[f] for f in FIELDS if f in new_en and new_en[f] is not None}
        sql += stmts_for(slug, 'en', payload, en)
        meta = []
        if new_en.get('badge') and new_en['badge'] != en.get('badge'):
            meta.append(f"UPDATE tools SET badge = '{new_en['badge']}' WHERE slug = '{slug}';\n")
        old_users = (en.get('users') or '').strip()
        was_price = old_users.startswith('Free') or old_users.startswith('from $')
        if new_en.get('users'):
            meta.append(f"UPDATE tools SET users = {sqlq(new_en['users'])} WHERE slug = '{slug}';\n")
        elif was_price:
            # Устаревшая цена в этом поле видна на значке и уходит в разметку
            # как Offer.price. Не подтверждена — лучше пусто, чем неправда.
            meta.append(f"UPDATE tools SET users = NULL WHERE slug = '{slug}';\n")
        sql += meta

        ok = 0
        for chunk in (LANGS[:4], LANGS[4:]):
            for code, name in chunk:
                if code not in cards:
                    continue
                try:
                    tr = ask(client, TR_RULES.format(lang=name),
                             json.dumps(payload, ensure_ascii=False))
                    sql += stmts_for(slug, code, tr, cards[code])
                    ok += 1
                except Exception as e:
                    failed.append((slug, f'{code}: {e}'))
        print(f'[{i}/{len(audit)}] {slug}: EN + {ok} языков'
              + (f", убрано как неподтверждённое: {len(new_en.get('dropped') or [])}" if new_en.get('dropped') else ''))
        review.append({'slug': slug, 'before': en, 'after': new_en})

    head = f"""-- Обновление {len(review)} карточек по результатам проверки фактов.
--
-- Каждая карточка сверена с сайтом вендора (scripts/audit/batch*.json).
-- Утверждения, которые аудит не смог подтвердить по первоисточнику, удалены,
-- а не переписаны. Годовые цены названы годовыми. Там, где страница тарифов
-- отдаётся в другой валюте, число не приводится — описана структура тарифов.
--
-- Пары «было / стало» лежат в scripts/audit/applied_review.json.
-- Идемпотентно: присвоение готовых значений.
"""
    for a in dead:
        head += (f"\n-- {a['slug']}: {a.get('shutdown_note') or 'сайт недоступен'}\n"
                 f"UPDATE tools SET published = false WHERE slug = '{a['slug']}';\n")

    path = os.path.join(ROOT, 'tools_audit_2026-09-29.sql')
    open(path, 'w').write(head + '\n' + '\n'.join(sql))
    json.dump(review, open(os.path.join(ROOT, 'audit', 'applied_review.json'), 'w'),
              ensure_ascii=False, indent=1)
    print(f'\nзаписано: {path}')
    print(f'операторов: {len(sql)} | карточек переписано: {len(review)} | снято: {len(dead)} | ошибок: {len(failed)}')
    for f in failed:
        print('  ', f)


if __name__ == '__main__':
    main()
