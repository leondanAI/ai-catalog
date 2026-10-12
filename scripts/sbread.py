"""Чтение из Supabase публичным ключом (только опубликованное, только чтение).

Генераторам сайта пароль от базы не нужен: всё, что попадает на страницы,
и так публично. Это позволяет запускать сборку в GitHub Actions без секретов.
Строки отдаются частями по 1000 — это предел одного ответа Supabase.
"""
import json
import urllib.request

URL = 'https://lbjdwkvkkndvofysyssy.supabase.co/rest/v1/'
KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG'
PAGE = 1000


def get(path):
    """Все строки запроса вида 'tools?lang=eq.en&select=slug,name'."""
    rows, offset = [], 0
    sep = '&' if '?' in path else '?'
    while True:
        req = urllib.request.Request(f'{URL}{path}{sep}limit={PAGE}&offset={offset}',
                                     headers={'apikey': KEY, 'Authorization': f'Bearer {KEY}'})
        with urllib.request.urlopen(req, timeout=60) as r:
            chunk = json.load(r)
        rows += chunk
        if len(chunk) < PAGE:
            return rows
        offset += PAGE
