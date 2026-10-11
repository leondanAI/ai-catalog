#!/usr/bin/env python3
"""Прогон SQL-файлов в базе Supabase с резервной копией.

Доступ берётся из .env в корне проекта (PGHOST, PGPORT, PGDATABASE, PGUSER,
PGPASSWORD). Файл закрыт от git.

Порядок для каждого запуска:
  1. Находит таблицы, которые файлы меняют (UPDATE / INSERT INTO / DELETE FROM).
  2. Выгружает эти таблицы целиком в backups/<время>/<таблица>.json — откатить
     можно любую правку. Таблицы маленькие, копия занимает секунды.
  3. Выполняет каждый файл одной транзакцией. Ошибка в середине откатывает
     весь файл, а не оставляет базу наполовину изменённой. После ошибки
     остальные файлы не запускаются.

    python3 scripts/run_sql.py scripts/a.sql scripts/b.sql
    python3 scripts/run_sql.py --set-password   # записать пароль в .env и проверить
    python3 scripts/run_sql.py --check          # только проверить подключение
    python3 scripts/run_sql.py --dry-run f.sql  # выполнить и откатить
"""
import datetime, decimal, json, os, re, sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
# subscribers не копируем намеренно: там почты подписчиков, а скрипты контента
# эту таблицу не трогают. Если файл всё же её меняет — остановимся.
SAFE_TABLES = {'tools', 'news', 'comments', 'comparisons', 'toolbox'}


def load_env():
    path = os.path.join(ROOT, '.env')
    if not os.path.exists(path):
        sys.exit('Нет файла .env в корне проекта.')
    for line in open(path, encoding='utf-8'):
        line = line.strip()
        if not line or line.startswith('#') or '=' not in line:
            continue
        k, v = line.split('=', 1)
        os.environ[k.strip()] = v.strip()
    if 'ВПИШИ' in os.environ.get('PGPASSWORD', '') or not os.environ.get('PGPASSWORD'):
        sys.exit('В .env не вписан пароль базы (строка PGPASSWORD).')


def set_password():
    """Спросить пароль в терминале (символы не видны) и записать в .env."""
    import getpass
    path = os.path.join(ROOT, '.env')
    pw = getpass.getpass('Вставь пароль базы и нажми Enter (символы не видны): ').strip()
    if not pw:
        sys.exit('Пусто — ничего не записал.')
    lines = open(path, encoding='utf-8').read().splitlines()
    lines = [l for l in lines if not l.startswith('PGPASSWORD=')] + [f'PGPASSWORD={pw}']
    open(path, 'w', encoding='utf-8').write('\n'.join(lines) + '\n')
    os.chmod(path, 0o600)
    print('Записал в .env.')


def connect():
    import psycopg2
    return psycopg2.connect(sslmode='require', connect_timeout=15)


def tables_in(sql):
    # Сначала убрать строки: в текстах новостей бывает «update Linear…»,
    # и без этого слово после UPDATE принималось за таблицу.
    # Комментарии — первыми: в них бывают апострофы и «$70B», и иначе они
    # открывали мнимую строку, которая съедала весь файл (2026-10-11 копия
    # не сделалась: «таблиц []»).
    body = re.sub(r'(?m)^\s*--.*$', '', sql)
    body = re.sub(r'\$(\w*)\$.*?\$\1\$', "''", body, flags=re.S)
    body = re.sub(r"'(?:[^']|'')*'", "''", body)
    found = set(re.findall(r'\b(?:UPDATE|INSERT\s+INTO|DELETE\s+FROM)\s+([a-z_]+)', body, re.I))
    return {t.lower() for t in found}


def _json(v):
    if isinstance(v, (datetime.date, datetime.datetime)):
        return v.isoformat()
    if isinstance(v, decimal.Decimal):
        return float(v)
    return str(v)


def backup(conn, tables, stamp):
    out = os.path.join(ROOT, 'backups', stamp)
    os.makedirs(out, exist_ok=True)
    with conn.cursor() as cur:
        for t in sorted(tables):
            cur.execute(f'SELECT * FROM {t}')
            cols = [c.name for c in cur.description]
            rows = [dict(zip(cols, r)) for r in cur.fetchall()]
            with open(os.path.join(out, f'{t}.json'), 'w', encoding='utf-8') as f:
                json.dump(rows, f, ensure_ascii=False, default=_json)
            print(f'  копия {t}: {len(rows)} строк')
    conn.rollback()
    return out


def main():
    args = sys.argv[1:]
    dry = '--dry-run' in args
    files = [a for a in args if not a.startswith('--')]
    if '--set-password' in args:
        set_password()
        args.append('--check')
    load_env()
    conn = connect()
    conn.autocommit = False

    if '--check' in args:
        with conn.cursor() as cur:
            cur.execute("SELECT count(*) FROM tools WHERE lang = 'en'")
            n = cur.fetchone()[0]
        print(f'Подключение работает. Карточек на английском: {n}.')
        return

    if not files:
        sys.exit(__doc__)
    sqls = {}
    for f in files:
        sqls[f] = open(f, encoding='utf-8').read()
    tables = set().union(*(tables_in(s) for s in sqls.values()))
    if not tables:
        sys.exit('Не нашёл, какие таблицы меняют файлы, — без резервной копии не запускаю.')
    unsafe = tables - SAFE_TABLES
    if unsafe:
        sys.exit(f'Файлы меняют таблицы вне списка разрешённых: {sorted(unsafe)}. Остановлено.')

    stamp = datetime.datetime.now().strftime('%Y-%m-%d_%H%M%S')
    print(f'Резервная копия таблиц {sorted(tables)}:')
    out = backup(conn, tables, stamp)
    print(f'  → {os.path.relpath(out, ROOT)}\n')

    for f, sql in sqls.items():
        name = os.path.relpath(f, ROOT) if os.path.isabs(f) else f
        try:
            with conn.cursor() as cur:
                cur.execute(sql)
            if dry:
                conn.rollback()
                print(f'✓ {name} — выполнен и откачен (--dry-run)')
            else:
                conn.commit()
                print(f'✓ {name}')
        except Exception as e:
            conn.rollback()
            print(f'✗ {name}: {str(e).strip()[:400]}')
            print('  Файл откачен целиком, остальные не запускались.')
            sys.exit(1)
    conn.close()


if __name__ == '__main__':
    main()
