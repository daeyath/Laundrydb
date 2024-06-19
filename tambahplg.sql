insert into pelanggan (nama, alamat)
values (
	iif(trim('${Nama pelanggan}')	='',null,'${Nama pelanggan}'),
	iif(trim('${Alamat}')='',null,'${Alamat}')
) returning id
