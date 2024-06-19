select 
	p.nama,
	n.*
from nota n
join pelanggan p
	on n.pelanggan_id=p.id
where n.nomor=${Nomor};
