"""Какое сравнение показывать на странице инструмента («Сравнить X с Y»).

Раньше у generate-pages.py и generate-lang-tool-pages.py было по своему
списку TOOL_COMPARE, вписанному руками: новый инструмент оставался без ссылки
(2026-10-25: у OpenAI Codex на карточке была пустая полоса), а снятые сравнения
висели в списках. Теперь ссылка берётся из единственного списка пар —
COMPARISONS в generate-compare-pages.py. Ручной список остаётся только как
предпочтение, если у инструмента несколько сравнений.
"""
import functools
import os

_HERE = os.path.dirname(os.path.abspath(__file__))


@functools.lru_cache(maxsize=1)
def _comparisons():
    # Читаем только список пар, не запуская генератор
    src = open(os.path.join(_HERE, 'generate-compare-pages.py'), encoding='utf-8').read()
    start = src.index('COMPARISONS = [')
    end = src.index('\n]\n', start) + 3
    ns = {}
    exec(src[start:end], ns)
    return ns['COMPARISONS']


def tool_compare_map(names, preferred=None):
    """{slug: (compare_slug, other_tool_name)} для всех инструментов, у кого есть сравнение.

    names — {slug: display name}; preferred — старый ручной список, он важнее,
    если его пара ещё есть в COMPARISONS.
    """
    comps = _comparisons()
    live = {c['slug'] for c in comps}
    out = {}
    for c in comps:
        for me, other in ((c['a'], c['b']), (c['b'], c['a'])):
            if me not in out and other in names:
                out[me] = (c['slug'], names[other])
    for slug, pair in (preferred or {}).items():
        if pair[0] in live:
            out[slug] = pair
    return out
