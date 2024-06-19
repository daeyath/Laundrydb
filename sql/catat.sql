:x sql/cariplg.sql
pragma foreign_keys=on;
insert into catat(pelanggan_id,tgl,uang,keterangan)
values(${id},'${tgl}',${uang},iif(trim('${keterangan}')='',null,'${keterangan}'));
pragma foreign_keys=off;
