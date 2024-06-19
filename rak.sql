select 
	n.nomor, 
	p.nama,
	iif(p.alamat is null,'',p.alamat) alamat,
	iif(n.rak is not null, n.rak,'') rak, 
	case n.lunas
		when 1 or true then 'Lunas'
		when 0 or false then 'Belum'
		else ''
	end lunas
from pelanggan p 
join nota n on p.id=n.pelanggan_id 
where n.tglambil is null
