select n.nomor, p.id, p.nama, 
	n.tglambil
from nota n join pelanggan p
	on n.pelanggan_id=p.id
where case '${Dari tgl}'
when '' then 
	false
else
	n.tglambil
	between '${Dari tgl}'
	and date('now','localtime')
end;
