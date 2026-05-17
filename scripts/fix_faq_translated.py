#!/usr/bin/env python3
"""
Copy the EN FAQ block from each tool page to all translated versions.
EN FAQ is correct; translated pages inherited wrong content from compare pages.
Better to have correct English FAQ than wrong translated FAQ.
"""
import os
import re

CATALOG = '/Users/leondanilov/Desktop/AI-catalog'
TOOLS_EN = os.path.join(CATALOG, 'tools')
LANGS = ['es', 'de', 'ru', 'ua', 'he', 'fr', 'pt']


def find_faq_block(content):
    """
    Find the FAQ block by locating the FAQPage schema div and then
    using div-depth counting to find its outer wrapper.
    Returns (block_text, start_pos, end_pos) or (None, None, None).
    """
    faq_schema_pos = content.find('itemtype="https://schema.org/FAQPage"')
    if faq_schema_pos == -1:
        return None, None, None

    # Scan backward to find the outer <div style="margin-top:...">
    search_start = max(0, faq_schema_pos - 1200)
    chunk = content[search_start:faq_schema_pos]

    # Find the last <div that opens before FAQPage schema
    outer_rel = chunk.rfind('<div style="margin-top:')
    if outer_rel == -1:
        return None, None, None

    start_pos = search_start + outer_rel

    # Count div depth from start_pos to find matching closing </div>
    pos = start_pos
    depth = 0
    length = len(content)

    while pos < length:
        if content[pos:pos+5] in ('<div ', '<div>'):
            depth += 1
            pos += 4
        elif content[pos:pos+6] == '</div>':
            depth -= 1
            if depth == 0:
                end_pos = pos + 6
                return content[start_pos:end_pos], start_pos, end_pos
            pos += 6
        else:
            pos += 1

    return None, None, None


def replace_faq_block(content, new_faq_html):
    """Replace the FAQ block in content with new_faq_html."""
    _, start, end = find_faq_block(content)
    if start is None:
        return None
    return content[:start] + new_faq_html + content[end:]


def main():
    changed = []
    skipped_no_faq_en = []
    skipped_no_file = []
    skipped_no_faq_trans = []
    errors = []

    tool_files = sorted(f for f in os.listdir(TOOLS_EN) if f.endswith('.html'))

    for slug_file in tool_files:
        slug = slug_file[:-5]
        en_path = os.path.join(TOOLS_EN, slug_file)

        # Read EN page
        try:
            with open(en_path, 'r', encoding='utf-8') as f:
                en_content = f.read()
        except Exception as e:
            errors.append(f'read EN {slug}: {e}')
            continue

        # Extract EN FAQ block
        en_faq, _, _ = find_faq_block(en_content)
        if not en_faq:
            skipped_no_faq_en.append(slug)
            continue

        # Apply to each language
        for lang in LANGS:
            trans_path = os.path.join(CATALOG, lang, 'tools', slug_file)
            if not os.path.exists(trans_path):
                skipped_no_file.append(f'{lang}/{slug}')
                continue

            try:
                with open(trans_path, 'r', encoding='utf-8') as f:
                    trans_content = f.read()
            except Exception as e:
                errors.append(f'read {lang}/{slug}: {e}')
                continue

            # Check if translated FAQ matches EN already
            trans_faq, _, _ = find_faq_block(trans_content)
            if trans_faq == en_faq:
                continue  # Already correct

            if trans_faq is None:
                skipped_no_faq_trans.append(f'{lang}/{slug}')
                continue

            new_content = replace_faq_block(trans_content, en_faq)
            if new_content is None:
                errors.append(f'replace failed {lang}/{slug}')
                continue

            try:
                with open(trans_path, 'w', encoding='utf-8') as f:
                    f.write(new_content)
                changed.append(f'{lang}/{slug}')
            except Exception as e:
                errors.append(f'write {lang}/{slug}: {e}')

    # Report
    print(f'\n=== RESULTS ===')
    print(f'Updated:            {len(changed)}')
    print(f'No EN FAQ:          {len(skipped_no_faq_en)} — {skipped_no_faq_en}')
    print(f'No translated file: {len(skipped_no_file)}')
    print(f'No trans FAQ:       {len(skipped_no_faq_trans)} — {skipped_no_faq_trans}')
    print(f'Errors:             {len(errors)} — {errors}')
    print(f'\nUpdated files:')
    for f in changed:
        print(f'  {f}')


if __name__ == '__main__':
    main()
