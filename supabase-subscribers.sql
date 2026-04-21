-- ── subscribers table ───────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS subscribers (
  id         uuid        DEFAULT gen_random_uuid() PRIMARY KEY,
  email      text        UNIQUE NOT NULL,
  name       text,
  topics     text[],
  lang       text        DEFAULT 'en',
  created_at timestamptz DEFAULT now()
);

-- Row-level security: anyone can insert (subscribe), nobody can read/update/delete via API
ALTER TABLE subscribers ENABLE ROW LEVEL SECURITY;

CREATE POLICY "allow_subscribe"
  ON subscribers FOR INSERT
  TO anon
  WITH CHECK (true);
