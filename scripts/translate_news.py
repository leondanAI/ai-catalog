#!/usr/bin/env python3
"""
Translate news entries from EN to 7 languages.
Reads news-2026-04-29-to-05-06.sql (EN only) and generates full SQL with all 8 langs.
"""
import anthropic, json, time, re

client = anthropic.Anthropic()

LANGS = {
    'ru': {'cat_models': 'Модели', 'cat_industry': 'Индустрия', 'cat_policy': 'Политика',
           'cat_infra': 'Инфраструктура', 'published': 'true'},
    'es': {'cat_models': 'Modelos', 'cat_industry': 'Industria', 'cat_policy': 'Política',
           'cat_infra': 'Infraestructura'},
    'de': {'cat_models': 'Modelle', 'cat_industry': 'Industrie', 'cat_policy': 'Politik',
           'cat_infra': 'Infrastruktur'},
    'ua': {'cat_models': 'Моделі', 'cat_industry': 'Індустрія', 'cat_policy': 'Політика',
           'cat_infra': 'Інфраструктура'},
    'he': {'cat_models': 'מודלים', 'cat_industry': 'תעשייה', 'cat_policy': 'מדיניות',
           'cat_infra': 'תשתית'},
    'fr': {'cat_models': 'Modèles', 'cat_industry': 'Industrie', 'cat_policy': 'Politique',
           'cat_infra': 'Infrastructure'},
    'pt': {'cat_models': 'Modelos', 'cat_industry': 'Indústria', 'cat_policy': 'Política',
           'cat_infra': 'Infraestrutura'},
}

NEWS = [
    {
        'slug': 'microsoft-openai-partnership-restructure',
        'category': 'industry', 'cat_label': 'Industry', 'cat_color': '#4285f4',
        'source': 'CNBC', 'date': '2026-04-27',
        'title': 'Microsoft and OpenAI Restructure Partnership — Exclusivity Ends, OpenAI Opens to AWS and Google Cloud',
        'summary': 'Microsoft and OpenAI rewrote their foundational 2019 deal: Microsoft ends its Azure revenue share to OpenAI, OpenAI can now sell via Amazon Web Services and Google Cloud, and the famous "AGI clause" is removed. Anthropic\'s ARR has surpassed OpenAI\'s for the first time at $30B, which may have accelerated the renegotiation.',
        'body': '<p>Microsoft and OpenAI have rewritten the deal that has defined their relationship since 2019, in a restructuring that significantly loosens the exclusivity ties between the two companies.</p><h2>What changed</h2><p>Under the amended agreement: <strong>Microsoft ends its Azure revenue share payments to OpenAI</strong>. OpenAI continues to pay Microsoft a revenue share through 2030, capped at a total figure neither party disclosed. <strong>OpenAI can now sell its products on any cloud</strong> — including Amazon Web Services and Google Cloud — ending 2019 exclusivity. The infamous "AGI clause" that would have let Microsoft pull back from obligations if AGI was declared achieved is removed.</p><h2>Why it happened</h2><p>Anthropic\'s annualized revenue grew from $9B at end-2024 to $30B by April 2026, <strong>surpassing OpenAI for the first time</strong>. The pressure gave OpenAI negotiating leverage to demand better terms. OpenAI is also preparing for a planned IPO and building its advertising business — both of which required more operational flexibility than the old deal allowed.</p><h2>Why it matters</h2><p>Enterprise buyers can now run OpenAI models on their existing AWS or Google Cloud infrastructure without routing through Azure — a significant shift for procurement and compliance teams.</p>',
    },
    {
        'slug': 'anthropic-mythos-restricted-release',
        'category': 'models', 'cat_label': 'Models', 'cat_color': '#7c6af7',
        'source': 'The Verge', 'date': '2026-04-30',
        'title': 'Anthropic\'s Mythos Model: "Far Ahead" on Cybersecurity — Restricted to Approved Orgs Only',
        'summary': 'Anthropic has developed a new frontier model called Mythos which the company says is "far ahead" of all other models in cybersecurity capability. Due to the risks, Anthropic is restricting access to a select group of vetted organizations. The model prompted the White House to begin weighing a formal AI review process.',
        'body': '<p>Anthropic has built a new model internally codenamed <strong>Mythos</strong> — and says it is deliberately not releasing it publicly because of its exceptional capabilities in cybersecurity.</p><h2>What Mythos can do</h2><p>Anthropic describes Mythos as <strong>"far ahead" of other frontier models</strong> specifically in the cybersecurity domain. The model poses meaningful risks if deployed without controls — capable of assisting with offensive cyber operations in ways current models cannot.</p><h2>Regulatory ripple effects</h2><p>The existence of Mythos pushed cybersecurity concerns to a tipping point. The White House began weighing a formal review process for AI model releases. Within days, <strong>Microsoft, Google, and xAI agreed to give the US government early access to unreleased models</strong> for security evaluation through NIST — a direct response to the Mythos situation.</p><h2>Why it matters</h2><p>Mythos is the first publicly acknowledged case of a major AI lab deliberately withholding a model due to capability concerns — not safety theater, but a model Anthropic itself is not comfortable releasing.</p>',
    },
    {
        'slug': 'gemini-3-1-benchmark-leader',
        'category': 'models', 'cat_label': 'Models', 'cat_color': '#7c6af7',
        'source': 'Artificial Analysis', 'date': '2026-04-29',
        'title': 'Gemini 3.1 Pro Tops 13 of 16 Major AI Benchmarks — Including 80.6% SWE-bench and 94.3% GPQA Diamond',
        'summary': 'Google\'s Gemini 3.1 Pro has emerged as the overall benchmark leader across independent evaluations, topping 13 of 16 major benchmarks. Key scores: 80.6% on SWE-bench, 94.3% on GPQA Diamond (highest of any model), 2M token context window across text, image, audio and video.',
        'body': '<p>Google\'s <strong>Gemini 3.1 Pro</strong> has established itself as the overall benchmark leader, topping <strong>13 of 16 major benchmarks</strong>.</p><h2>Key scores</h2><ul><li><strong>SWE-bench (coding):</strong> 80.6%</li><li><strong>GPQA Diamond (expert science):</strong> 94.3% — highest of any model</li><li><strong>ARC-AGI-2:</strong> 77.1%</li><li><strong>LM Council reasoning:</strong> 94.1%</li></ul><h2>Multimodal and context</h2><p>Gemini 3.1 Pro features a <strong>2-million token context window</strong> working natively across text, image, audio, and video in a single model. Available to Google AI Pro subscribers in the US and Gemini Ultra subscribers globally.</p>',
    },
    {
        'slug': 'us-government-ai-security-testing-nist',
        'category': 'industry', 'cat_label': 'Policy', 'cat_color': '#e63946',
        'source': 'CNN Business', 'date': '2026-05-05',
        'title': 'Microsoft, Google and xAI to Give US Government Early Access to Unreleased AI Models for Security Testing',
        'summary': 'NIST\'s Center for AI Standards and Innovation announced agreements with Microsoft, Google, and xAI to evaluate unreleased AI models for national security risks before launch. The move was prompted by Anthropic\'s restricted Mythos model. Anthropic is notably absent from the agreement.',
        'body': '<p>The <strong>National Institute of Standards and Technology (NIST)</strong> announced that Microsoft, Google, and xAI have agreed to share pre-release AI models for security evaluation.</p><h2>What was agreed</h2><p>Under the agreements, the three companies will share <strong>pre-release versions of their AI models</strong> for evaluation of national security and public safety risks. OpenAI separately announced <strong>GPT-5.5-Cyber</strong>, a variant designed for defensive cybersecurity work, available to vetted government levels.</p><h2>Anthropic\'s absence</h2><p><strong>Anthropic is not part of the NIST agreement</strong>, reportedly following a dispute with the Trump administration over AI usage in military contexts.</p><h2>Pentagon expansion</h2><p>The Pentagon announced agreements with Google, Microsoft, AWS, Nvidia, OpenAI, Reflection, and SpaceX to deploy AI across classified computer networks.</p>',
    },
    {
        'slug': 'mcp-anthropic-97m-installs',
        'category': 'industry', 'cat_label': 'Infrastructure', 'cat_color': '#2dd4a0',
        'source': 'Anthropic Blog', 'date': '2026-04-30',
        'title': 'Anthropic\'s Model Context Protocol Crosses 97 Million Installs — Becomes Core AI Agent Infrastructure',
        'summary': 'Anthropic\'s Model Context Protocol (MCP) crossed 97 million installs in March 2026, transitioning from an experimental standard to foundational infrastructure for building AI agents. Every major AI provider now ships MCP-compatible tooling.',
        'body': '<p>Anthropic\'s <strong>Model Context Protocol (MCP)</strong> crossed <strong>97 million installs</strong> in March 2026.</p><h2>What MCP is</h2><p>MCP is an open standard defining how AI models connect to external tools, databases, and APIs. Write once, works with any MCP-compatible AI model.</p><h2>Universal adoption</h2><p>Every major AI provider now ships MCP-compatible tooling: OpenAI, Google, xAI, Mistral, and others. Claude Code, Cursor, Windsurf, and other AI coding tools use MCP as their primary tool-connection mechanism.</p><h2>Why 97M matters</h2><p>At 97 million installs, MCP has achieved infrastructure-level adoption — comparable to how REST APIs became the default for web services. This is the de facto standard for AI-to-tool communication.</p>',
    },
    {
        'slug': 'openai-novo-nordisk-drug-discovery',
        'category': 'industry', 'cat_label': 'Industry', 'cat_color': '#4285f4',
        'source': 'Financial Times', 'date': '2026-05-02',
        'title': 'Novo Nordisk and OpenAI Partner to Accelerate Drug Discovery and Manufacturing with AI',
        'summary': 'Novo Nordisk announced a strategic partnership with OpenAI to integrate AI across drug discovery, clinical trials, manufacturing, supply chains, and commercial operations. The deal targets acceleration of new obesity and diabetes treatments.',
        'body': '<p><strong>Novo Nordisk</strong> announced a <strong>strategic partnership with OpenAI</strong> to integrate AI across its entire business.</p><h2>Scope</h2><p>The partnership covers: <strong>drug discovery and target identification</strong>, <strong>clinical trial design</strong>, <strong>manufacturing optimization</strong> for biologics, <strong>supply chain management</strong>, and <strong>commercial operations</strong>.</p><h2>Target focus</h2><p>The primary aim is accelerating identification of new treatments for <strong>obesity and diabetes</strong> — Novo Nordisk\'s core therapeutic areas. AI-assisted compound screening could compress early-stage discovery timelines from years to months.</p><h2>Industry context</h2><p>Part of a broader wave of pharma AI deals: Eli Lilly, Pfizer, and Roche have signed similar agreements with major AI labs in the past 18 months.</p>',
    },
]

def translate_news(item, lang):
    prompt = f"""Translate this AI news article to {lang.upper()} language.
Keep HTML tags intact. Keep company names, model names, numbers, and technical terms in English.
Make it read naturally in {lang}.

Title: {item['title']}
Summary: {item['summary']}
Body HTML: {item['body']}

Return JSON:
{{"title": "...", "summary": "...", "body": "..."}}"""

    msg = client.messages.create(
        model='claude-haiku-4-5-20251001',
        max_tokens=2048,
        messages=[{'role': 'user', 'content': prompt}]
    )
    text = msg.content[0].text.strip()
    m = re.search(r'\{[\s\S]+\}', text)
    if m:
        text = m.group(0)
    return json.loads(text)

def sql_escape(s):
    return s.replace("'", "''")

def make_row(item, lang, title, summary, body):
    cat_label = item['cat_label']
    return f"""('{item["slug"]}', '{lang}', '{item["category"]}', '{sql_escape(cat_label)}', '{item["cat_color"]}', '{item["source"]}', '{item["date"]}',
'{sql_escape(title)}',
'{sql_escape(summary)}',
'{sql_escape(body)}',
true)"""

def main():
    lines = ['-- News: April 29 – May 6, 2026 — All 8 languages',
             '-- Run in Supabase SQL Editor',
             '',
             'INSERT INTO news (slug, lang, category, cat_label, cat_color, source, date, title, summary, body, published) VALUES']

    rows = []
    for item in NEWS:
        print(f"\n{item['slug']}")
        # EN row
        rows.append(make_row(item, 'en', item['title'], item['summary'], item['body']))
        print('  en ✓')

        # Translate to 7 languages
        for lang in ['ru','es','de','ua','he','fr','pt']:
            try:
                t = translate_news(item, lang)
                rows.append(make_row(item, lang, t['title'], t['summary'], t['body']))
                print(f'  {lang} ✓', flush=True)
                time.sleep(0.3)
            except Exception as e:
                print(f'  {lang} ✗ {e}')
                # Fallback: use EN
                rows.append(make_row(item, lang, item['title'], item['summary'], item['body']))

    lines.append(',\n\n'.join(rows) + ';')

    out = 'scripts/news-2026-04-29-to-05-06.sql'
    with open(out, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))
    print(f'\nDone — {len(rows)} rows written to {out}')

if __name__ == '__main__':
    main()
