-- Run this in Supabase SQL Editor to create the tool_translations table
-- https://supabase.com/dashboard → SQL Editor → New query

create table if not exists tool_translations (
  id          bigserial primary key,
  slug        text not null,
  lang        text not null,
  best_for    text,
  description      text,
  description_long text,
  pros        jsonb,
  cons        jsonb,
  created_at  timestamptz default now(),
  unique (slug, lang)
);

-- Allow public read access (same as tools table)
alter table tool_translations enable row level security;

create policy "Public read" on tool_translations
  for select using (true);

-- Allow anon insert for the translation script (or use service_role key)
create policy "Anon insert" on tool_translations
  for insert with check (true);

create policy "Anon update" on tool_translations
  for update using (true);
