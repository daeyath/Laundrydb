select * from pelanggan
where nama like '%${Nama}%';
pragma foreign_keys(1);
insert into tag 
(pelanggan_id, label)
values
(${id}, case '${Label}' when '' then null else '${Label}' end);
pragma foreign_keys(0)
