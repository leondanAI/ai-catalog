"""Подписи меню из js/i18n.js — прямо в HTML, а не только скриптом в браузере.

Сравнения и новости печатают меню английскими словами с data-i18n, и i18n.js
переводит их уже в браузере. Поисковик и посетитель без JS видели на /ru/ «Find AI»,
«Compare». bake() подставляет перевод при сборке — так же, как generate-lang-pages.py
делает для шаблонов.
"""
import functools
import os
import re

_JS = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'js', 'i18n.js')


@functools.lru_cache(maxsize=1)
def _labels():
    content = open(_JS, encoding='utf-8').read()
    result, blocks = {}, list(re.finditer(r'\n    (\w{2,3}):\s*\{', content))
    for i, m in enumerate(blocks):
        end = blocks[i + 1].start() if i + 1 < len(blocks) else len(content)
        pairs = re.findall(r"'(nav\.[\w-]+)':\s*'((?:[^'\\]|\\.)*)'", content[m.end():end])
        result.setdefault(m.group(1), {k: v.replace("\\'", "'") for k, v in pairs})
    return result


def bake(html, lang):
    t, en = _labels().get(lang, {}), _labels().get('en', {})
    return re.sub(r'(<a [^>]*class="nav-link[^"]*"[^>]*data-i18n="(nav\.[\w-]+)"[^>]*>)[^<]*(</a>)',
                  lambda m: m.group(1) + (t.get(m.group(2)) or en.get(m.group(2)) or '') + m.group(3)
                  if (t.get(m.group(2)) or en.get(m.group(2))) else m.group(0), html)
