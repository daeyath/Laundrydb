select 
	id,
	nama [Nama],
	alamat [Alamat]
from pelanggan
where case '${Cari nama}' 
when '' then
	nama=''
else
	nama like '%${Cari nama}%'
end;
