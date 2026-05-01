// Return translated category title (uses i18n if available, falls back to English from CATEGORIES data)
function catTitle(id) {
  if (typeof I18N !== 'undefined') {
    const key = 'cat.' + id;
    const val = I18N.t(key);
    if (val && val !== key) return val;
  }
  if (typeof CATEGORIES !== 'undefined') {
    const cat = CATEGORIES.find(c => c.id === id);
    if (cat) return cat.title;
  }
  return id;
}

// Mark active nav link based on current page filename
function initNav() {
  const page = window.location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('[data-nav]').forEach(el => {
    if (el.dataset.nav === page) el.classList.add('active');
  });
}

// Mobile hamburger menu
function toggleMenu() {
  const menu = document.getElementById('mobileMenu');
  if (menu) menu.classList.toggle('open');
}

// Global header search → redirect to directory with ?q=
function handleGlobalSearch(val) {
  if (!val) return;
}
function submitGlobalSearch(e) {
  if (e.key === 'Enter' && e.target.value.trim()) {
    window.location.href = 'directory.html?q=' + encodeURIComponent(e.target.value.trim());
  }
}

// ── TOOL DETAIL MODAL ──────────────────────────────────────────────
function showToolDetail(evt, toolName) {
  if (evt) evt.stopPropagation();

  // Find tool across all categories
  let tool = null;
  if (typeof CATEGORIES !== 'undefined') {
    for (const cat of CATEGORIES) {
      const found = cat.tools.find(t => t.name === toolName);
      if (found) { tool = found; tool._catColor = cat.color; break; }
    }
  }
  if (!tool) return;

  // Build or reuse overlay
  let overlay = document.getElementById('toolModalOverlay');
  if (!overlay) {
    overlay = document.createElement('div');
    overlay.id = 'toolModalOverlay';
    overlay.className = 'tool-modal-overlay';
    overlay.innerHTML = '<div class="tool-modal" id="toolModalBox"></div>';
    overlay.addEventListener('click', e => { if (e.target === overlay) closeToolModal(); });
    document.body.appendChild(overlay);
  }

  const color = tool._catColor || '#7c6af7';
  const initials = toolName.slice(0, 2);

  const prosHtml = (tool.pros || []).map(p => `<li>${p}</li>`).join('');
  const consHtml = (tool.cons || []).map(c => `<li>${c}</li>`).join('');

  const prosBlock = prosHtml
    ? `<div class="modal-section-title">Advantages</div><ul class="modal-pros">${prosHtml}</ul>`
    : '';
  const consBlock = consHtml
    ? `<div class="modal-section-title">Disadvantages</div><ul class="modal-cons">${consHtml}</ul>`
    : '';

  document.getElementById('toolModalBox').innerHTML = `
    <div class="modal-header">
      <div class="modal-avatar" style="background:${color}22;color:${color}">${initials}</div>
      <div>
        <div class="modal-title">${toolName}</div>
        <div class="modal-cat">${tool.bestFor || ''}</div>
      </div>
      <button class="modal-close" onclick="closeToolModal()">✕</button>
    </div>
    <div class="modal-body">
      <p class="modal-desc">${tool.desc || ''}</p>
      <div class="modal-meta">
        ${tool.users ? `<span class="modal-meta-chip">👥 <strong>${tool.users}</strong> users</span>` : ''}
        ${tool.badge ? `<span class="modal-meta-chip">💳 <strong style="text-transform:capitalize">${tool.badge}</strong></span>` : ''}
        ${tool.bestFor ? `<span class="modal-meta-chip">🎯 <strong>${tool.bestFor}</strong></span>` : ''}
      </div>
      ${prosBlock}
      ${consBlock}
      <a class="modal-open-btn" href="${tool.url}" target="_blank" rel="noopener">Open ${toolName} →</a>
    </div>
  `;

  overlay.classList.add('open');
  document.body.style.overflow = 'hidden';
}

function closeToolModal() {
  const overlay = document.getElementById('toolModalOverlay');
  if (overlay) overlay.classList.remove('open');
  document.body.style.overflow = '';
}

// Close modal on Escape key
document.addEventListener('keydown', e => {
  if (e.key === 'Escape') closeToolModal();
});

document.addEventListener('DOMContentLoaded', () => {
  initNav();
  const s = document.getElementById('gSearch');
  if (s) s.addEventListener('keydown', submitGlobalSearch);
  initClickTracking();
});

// ── Tool click tracking ──────────────────────────────────────────────────────

const _SB_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co';
const _SB_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG';

function _getAnonId() {
  const KEY = 'atf_uid';
  let id = localStorage.getItem(KEY);
  if (!id) {
    id = 'u_' + Date.now().toString(36) + Math.random().toString(36).slice(2, 8);
    localStorage.setItem(KEY, id);
  }
  return id;
}

function _getLang() {
  const parts = window.location.pathname.split('/').filter(Boolean);
  const langs = ['ru', 'de', 'es', 'he', 'ua'];
  return langs.includes(parts[0]) ? parts[0] : 'en';
}

function _trackClick(toolName, toolUrl) {
  fetch(`${_SB_URL}/rest/v1/tool_clicks`, {
    method:  'POST',
    headers: {
      apikey:         _SB_KEY,
      Authorization:  `Bearer ${_SB_KEY}`,
      'Content-Type': 'application/json',
      Prefer:         'return=minimal'
    },
    body: JSON.stringify({
      tool_name: toolName || null,
      tool_url:  toolUrl  || null,
      lang:      _getLang(),
      page_url:  window.location.pathname,
      anon_id:   _getAnonId()
    })
  }).catch(() => {});
}

function initClickTracking() {
  document.addEventListener('click', e => {
    const link = e.target.closest('a.btn-visit, a.tool-aff, a.modal-open-btn');
    if (!link) return;
    const toolUrl  = link.href;
    const toolName =
      link.closest('[data-tool-name]')?.dataset.toolName ||
      link.closest('.tf3-card, .tool-card, .result-card')?.querySelector('.tf3-name, .tool-name')?.textContent?.trim() ||
      document.querySelector('h1.tool-title, h1')?.textContent?.trim() ||
      null;
    _trackClick(toolName, toolUrl);
  }, true);
}
