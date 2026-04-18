// ─── Supabase connection ─────────────────────────────────────────────────────
const SUPABASE_URL = 'https://lbjdwkvkkndvofysyssy.supabase.co';
const SUPABASE_KEY = 'sb_publishable_tdDKX99tgBeQxM5OjDK_NQ_yQVavNUG';

// Initialised lazily on first call
let _sb = null;
function sb() {
  if (!_sb) _sb = supabase.createClient(SUPABASE_URL, SUPABASE_KEY);
  return _sb;
}

// ─── News ─────────────────────────────────────────────────────────────────────

// Fetch published news for a given language.
// Fetches only [lang] + 'en' rows, then picks lang over en per slug.
async function fetchNews(lang = 'en', category = null) {
  try {
    const langs = lang === 'en' ? ['en'] : [lang, 'en'];

    let q = sb()
      .from('news')
      .select('*')
      .eq('published', true)
      .in('lang', langs)
      .order('date', { ascending: false });

    if (category) q = q.eq('category', category);

    const { data: rows, error } = await q;
    if (error) throw error;
    if (!rows || rows.length === 0) return null;

    // Per slug: prefer requested lang, fall back to 'en'
    const bySlug = {};
    for (const row of rows) {
      if (!bySlug[row.slug] || row.lang === lang) {
        bySlug[row.slug] = row;
      }
    }

    return Object.values(bySlug).sort((a, b) => new Date(b.date) - new Date(a.date));

  } catch (err) {
    console.warn('Supabase fetchNews failed:', err.message);
    return null;
  }
}

// Fetch a single article by slug
async function fetchArticle(slug, lang = 'en') {
  try {
    const { data, error } = await sb()
      .from('news')
      .select('*')
      .eq('slug', slug)
      .eq('published', true)
      .order('lang', { ascending: false }) // prefer requested lang
      .limit(10);

    if (error) throw error;
    if (!data || data.length === 0) return null;

    return data.find(r => r.lang === lang) || data.find(r => r.lang === 'en') || data[0] || null;
  } catch (err) {
    console.warn('Supabase fetchArticle failed:', err.message);
    return null;
  }
}

// ─── Newsletter ───────────────────────────────────────────────────────────────

async function saveSubscriber(email, name, topics, lang) {
  try {
    const { error } = await sb()
      .from('subscribers')
      .insert({ email, name: name || null, topics: topics.length ? topics : null, lang });
    if (error) {
      // Duplicate email — treat as success so we don't leak whether email exists
      if (error.code === '23505') return { ok: true, duplicate: true };
      throw error;
    }
    return { ok: true };
  } catch (err) {
    console.warn('saveSubscriber failed:', err.message);
    return { ok: false, error: err.message };
  }
}
