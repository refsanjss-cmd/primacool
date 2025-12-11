
-- Supabase schema for PRIMA COOL MANDIRI
-- Run this in your Supabase SQL editor to create tables

create table technicians (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  created_at timestamptz default now()
);

create table customers (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  address text,
  phone text,
  created_at timestamptz default now()
);

create table master_items (
  id serial primary key,
  code text,
  name text,
  price bigint,
  created_at timestamptz default now()
);

create table payment_methods (
  id uuid primary key default gen_random_uuid(),
  type text, -- qris|bank|cash
  label text,
  details jsonb,
  is_active boolean default true,
  is_default boolean default false,
  created_at timestamptz default now()
);

create table invoices (
  id uuid primary key default gen_random_uuid(),
  invoice_no text unique,
  customer_id uuid references customers(id),
  technician_id uuid references technicians(id),
  total bigint,
  payment_method_id uuid references payment_methods(id),
  status text default 'Unpaid',
  created_at timestamptz default now()
);

create table invoice_items (
  id uuid primary key default gen_random_uuid(),
  invoice_id uuid references invoices(id) on delete cascade,
  item_id int references master_items(id),
  qty int,
  price bigint,
  subtotal bigint
);
