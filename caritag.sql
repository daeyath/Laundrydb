select t.*, p.nama, p.alamat
from tag t
join pelanggan p 
	on p.id=t.pelanggan_id
where t.label like '%${Tag}%'
