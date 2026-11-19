#!/usr/bin/env python3
"""Точечные правки <title>/meta description в scripts/seo_*.json.

Правка — JSON-список [{"file": "seo_all_languages.json", "old": "...", "new": "..."}]
(old — точное текущее значение title или meta). Файлы не пересериализуются:
заменяется ровно одно вхождение строки в том виде, как она записана в файле,
поэтому формат и порядок остаются как были. Проверки: old встречается ровно один
раз, meta ≤160 символов, title ≤65 и без эмодзи.

    python3 scripts/apply_seo_patches.py <папка>/seo_*.json [--dry-run]
"""
import glob, json, os, re, sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
EMOJI = re.compile('[\U0001F300-\U0001FAFF☀-➿]')


def encodings(s):
    """Как строка может быть записана внутри JSON-файла."""
    return {json.dumps(s, ensure_ascii=False)[1:-1], json.dumps(s, ensure_ascii=True)[1:-1]}


def main(paths, dry):
    texts, errors, done = {}, [], 0
    for p in paths:
        for e in json.load(open(p, encoding='utf-8')):
            f, old, new = e['file'], e['old'], e['new']
            if old == new:
                continue
            if len(new) > 160:
                errors.append(f'{p}: длиннее 160 символов ({len(new)}): {new}')
                continue
            if EMOJI.search(new):
                errors.append(f'{p}: эмодзи: {new}')
                continue
            path = os.path.join(ROOT, 'scripts', f)
            text = texts.setdefault(f, open(path, encoding='utf-8').read())
            hits = [(enc, text.count(f'"{enc}"')) for enc in encodings(old)]
            hits = [(enc, n) for enc, n in hits if n]
            if len(hits) != 1 or hits[0][1] != 1:
                errors.append(f'{p}: «{old[:60]}…» в {f} найдено {sum(n for _, n in hits)} раз (нужно 1)')
                continue
            enc = hits[0][0]
            # Пишем новую строку так же, как записана старая (с \\uXXXX или без).
            escaped = enc != json.dumps(old, ensure_ascii=False)[1:-1]
            new_enc = json.dumps(new, ensure_ascii=escaped)[1:-1]
            texts[f] = text.replace(f'"{enc}"', f'"{new_enc}"', 1)
            done += 1
    for f, text in texts.items():
        json.loads(text)  # файл остался валидным JSON
        if not dry:
            open(os.path.join(ROOT, 'scripts', f), 'w', encoding='utf-8').write(text)
    print(f'{"(dry-run) " if dry else ""}заменено: {done}')
    for e in errors:
        print('  !', e)
    sys.exit(1 if errors else 0)


if __name__ == '__main__':
    args = [a for a in sys.argv[1:] if a != '--dry-run']
    files = [p for a in args for p in glob.glob(a)]
    if not files:
        sys.exit(__doc__)
    main(files, '--dry-run' in sys.argv)
