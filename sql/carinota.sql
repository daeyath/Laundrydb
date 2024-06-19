:x sql/cariplg.sql
create temp table tmp as
select nomor nota, strftime('%d/%m/%Y', tglambil) tglambil
from nota
where pelanggan_id = '${Pilih id}'
order by nomor desc limit 10;
select * from tmp 
order by nota asc;
drop table tmp;
