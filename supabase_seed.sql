
-- Seed sample data for PRIMA COOL MANDIRI
-- Insert technicians
insert into technicians (name) values ('Teknisi A'),('Teknisi B'),('Teknisi C');

-- Insert master items (partial list)
insert into master_items (code,name,price) values
('1','Cuci AC 0,5–1PK',75000),
('2','Cuci AC 1,5–2PK',85000),
('3','Cuci AC Inverter 0,5–1 PK',130000),
('4','Cuci AC Inverter 1,5–2 PK',150000),
('5','Pengecekan',75000);

-- Insert payment methods sample (bank + qris + cash)
insert into payment_methods (type,label,details,is_active,is_default) values
('bank','BCA', jsonb_build_object('bank_name','BCA','account_number','1234567890','account_holder','PRIMA COOL MANDIRI'), true, true),
('bank','Mandiri', jsonb_build_object('bank_name','Mandiri','account_number','9876543210','account_holder','PRIMA COOL MANDIRI'), true, false),
('qris','QRIS PRIMA COOL MANDIRI', jsonb_build_object('merchant_name','PRIMA COOL MANDIRI','image','qris_dummy.png'), true, false),
('cash','Cash', jsonb_build_object('note','Pembayaran tunai (pas), serahkan ke teknisi'), true, false);
