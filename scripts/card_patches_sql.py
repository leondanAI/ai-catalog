#!/usr/bin/env python3
"""SQL из готовых правок карточек и сравнений — без регулярок по SQL.

Правка — JSON {"<lang>": {"<поле>": <полное новое значение>}} только с изменёнными
полями. Имя файла говорит, что правим:
  out_<slug>.json      — tools (slug, lang)
  out_cmp_<slug>.json  — comparisons (slug, lang)

Тексты кладутся в долларовые кавычки, массивы — ARRAY[...], JSON — ::jsonb.
У карточки, которую тронули, last_updated = дата запуска.

    python3 scripts/card_patches_sql.py <папка с out_*.json> scripts/tools_update_<дата>.sql
"""
import datetime, glob, json, os, sys

LANGS = ['en', 'es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']
TOOL_ARRAYS = {'pros', 'cons'}
TOOL_JSON = {'choose_if', 'faq'}
CMP_JSON = {'table_data', 'best_a', 'best_b', 'faq'}


def dq(s):
    tag = 'x'
    while f'${tag}$' in s:
        tag += 'x'
    return f'${tag}${s}${tag}$'


def value(field, v, table):
    if table == 'tools' and field in TOOL_ARRAYS:
        return 'ARRAY[' + ', '.join(dq(x) for x in v) + ']::text[]'
    if (table == 'tools' and field in TOOL_JSON) or (table == 'comparisons' and field in CMP_JSON):
        return dq(json.dumps(v, ensure_ascii=False)) + '::jsonb'
    if not isinstance(v, str):
        raise SystemExit(f'{table}.{field}: ожидалась строка, пришло {type(v).__name__}')
    return dq(v)


def main(src, out):
    today = datetime.date.today().isoformat()
    parts = [f'-- Правки карточек и сравнений от {today}: сверены с сайтами вендоров.\n'
             '-- Собрано scripts/card_patches_sql.py из JSON-правок; идемпотентно.\n']
    for path in sorted(glob.glob(os.path.join(src, 'out_*.json'))):
        name = os.path.basename(path)[4:-5]
        table, slug = ('comparisons', name[4:]) if name.startswith('cmp_') else ('tools', name)
        patch = json.load(open(path, encoding='utf-8'))
        if not patch:
            continue
        missing = [l for l in LANGS if l not in patch]
        if missing and table == 'tools':
            print(f'  ! {slug}: нет языков {missing}')
        for lang in LANGS:
            fields = patch.get(lang) or {}
            if not fields:
                continue
            sets = [f'{f} = {value(f, v, table)}' for f, v in fields.items()]
            if table == 'tools':
                sets.append(f"last_updated = '{today}'")
            parts.append(f"UPDATE {table} SET {', '.join(sets)}\n WHERE slug = '{slug}' AND lang = '{lang}';\n")
        print(f'  {table:11} {slug}: {sorted({f for d in patch.values() for f in (d or {})})}')
    open(out, 'w', encoding='utf-8').write('\n'.join(parts))
    print(f'→ {out}')


if __name__ == '__main__':
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    main(sys.argv[1], sys.argv[2])
