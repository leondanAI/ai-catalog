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

document.addEventListener('DOMContentLoaded', () => {
  initNav();
  const s = document.getElementById('gSearch');
  if (s) s.addEventListener('keydown', submitGlobalSearch);
});
