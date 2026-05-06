#!/usr/bin/env python3
"""Unpublish tools that have shut down or completely pivoted."""
import urllib.request, json, os

SB_URL     = 'https://lbjdwkvkkndvofysyssy.supabase.co'
SB_SERVICE = os.environ.get('SB_SERVICE_KEY', '')
if not SB_SERVICE:
    print('ERROR: Set SB_SERVICE_KEY'); exit(1)

HDRS = {
    'apikey': SB_SERVICE,
    'Authorization': f'Bearer {SB_SERVICE}',
    'Content-Type': 'application/json'
}

DISCONTINUED = [
    ('tome',        'Presentations — sunset April 30, 2025, company pivoted to sales automation'),
    ('socratic',    'Education — discontinued October 2024, absorbed into Google Lens'),
    ('obviously-ai','Data — rebranded to Zams (sales automation), no longer a data analytics tool'),
]

def patch(slug, data):
    body = json.dumps(data).encode()
    req = urllib.request.Request(
        f'{SB_URL}/rest/v1/tools?slug=eq.{slug}',
        data=body, headers={**HDRS, 'Prefer': 'return=minimal'},
        method='PATCH'
    )
    with urllib.request.urlopen(req) as r:
        return r.status

for slug, reason in DISCONTINUED:
    status = patch(slug, {'published': False})
    print(f'  {slug}: HTTP {status} — {reason}')

print('Done.')
