begin;

insert into material_types (code, label)
values
  ('plastic', 'Plastic'),
  ('paper_card', 'Paper/Card'),
  ('glass', 'Glass'),
  ('steel', 'Steel'),
  ('aluminium', 'Aluminium'),
  ('wood', 'Wood'),
  ('other', 'Other')
on conflict (code) do update
set label = excluded.label,
    active = true,
    updated_at = now();

insert into packaging_categories (code, label)
values
  ('primary', 'Primary'),
  ('secondary', 'Secondary'),
  ('tertiary', 'Tertiary'),
  ('shipment', 'Shipment'),
  ('service', 'Service')
on conflict (code) do update
set label = excluded.label,
    active = true,
    updated_at = now();

commit;
