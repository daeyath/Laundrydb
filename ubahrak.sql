update nota 
set rak=case trim('${Rak}') when '' then null else '${Rak}' end
where nomor=${Nota};
select p.nama, p.alamat
from nota n join pelanggan p
	on n.pelanggan_id=p.id
	and n.nomor=${Nota};
:r repeat "Ada lagi?" ":x sql/ubahrak.sql" tmp/rpt
:x tmp/rpt
