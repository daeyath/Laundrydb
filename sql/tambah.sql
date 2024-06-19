:x sql/cariplg.sql
-- ${Pelanggan ID} ${Nomor nota};
select date('now','localtime') "Tgl hari ini";
pragma foreign_keys=1;
insert into nota
(pelanggan_id,nomor,tglterima,harga,panjar)
values (
	${Pelanggan ID},
	${Nomor nota},
	iif('${Tgl Terima}'='',null,'${Tgl Terima}'),
	iif('${Harga}'='',null,'${Harga}'),
	iif('${Panjar}'='',null,'${Panjar}')
);
pragma foreign_keys=0;
select p.nama, p.alamat, strftime('%d/%m/%Y',n.tglterima) tglterima,n.harga,n.panjar
from nota n join pelanggan p
on n.pelanggan_id=p.id
and n.nomor=${Nomor nota};
:r repeat "\nAda lagi?" ":x sql/tambah.sql" tmp/rpt
:x tmp/rpt
