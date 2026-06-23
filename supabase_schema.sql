-- Supabase SQL for Training App v6 manual sync
-- Run this in Supabase SQL Editor.

create table if not exists public.workout_records (
  user_id uuid not null references auth.users(id) on delete cascade,
  id text not null,
  date text not null,
  day text not null,
  exercise_id text not null,
  exercise_name text,
  sets jsonb not null default '[]'::jsonb,
  target_feeling text,
  compensation text,
  pain text,
  note text,
  volume numeric,
  updated_at timestamptz not null default now(),
  primary key (user_id, id)
);

create table if not exists public.cycle_entries (
  user_id uuid not null references auth.users(id) on delete cascade,
  week text not null,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now(),
  primary key (user_id, week)
);

alter table public.workout_records enable row level security;
alter table public.cycle_entries enable row level security;

drop policy if exists "Users can read own workout records" on public.workout_records;
drop policy if exists "Users can insert own workout records" on public.workout_records;
drop policy if exists "Users can update own workout records" on public.workout_records;
drop policy if exists "Users can delete own workout records" on public.workout_records;

create policy "Users can read own workout records" on public.workout_records
for select using (auth.uid() = user_id);
create policy "Users can insert own workout records" on public.workout_records
for insert with check (auth.uid() = user_id);
create policy "Users can update own workout records" on public.workout_records
for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users can delete own workout records" on public.workout_records
for delete using (auth.uid() = user_id);

drop policy if exists "Users can read own cycle entries" on public.cycle_entries;
drop policy if exists "Users can insert own cycle entries" on public.cycle_entries;
drop policy if exists "Users can update own cycle entries" on public.cycle_entries;
drop policy if exists "Users can delete own cycle entries" on public.cycle_entries;

create policy "Users can read own cycle entries" on public.cycle_entries
for select using (auth.uid() = user_id);
create policy "Users can insert own cycle entries" on public.cycle_entries
for insert with check (auth.uid() = user_id);
create policy "Users can update own cycle entries" on public.cycle_entries
for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users can delete own cycle entries" on public.cycle_entries
for delete using (auth.uid() = user_id);
