update nota 
set harga=iif('${Harga}'='',null,${Harga}),
panjar=iif('${Panjar}'='',null,${Panjar})
where nomor=${Nota};
select p.nama
from pelanggan p
join nota n on p.id=n.pelanggan_id
where n.nomor=${Nota}
