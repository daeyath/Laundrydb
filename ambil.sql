:print Pisah dengan koma jika lebih satu
select 'Kosongkan jika nomor "${Nomor Nota}" diambil hari ini' [Tgl Ambil], date('now','localtime') [Hari ini];
update nota
set tglambil=case '${Tgl Ambil}' when '' then date('now','localtime') else '${Tgl Ambil}' end
where nomor in(${Nomor Nota});
select p.nama, p.alamat, strftime('%d/%m/%Y',n.tglambil) tglambil
from nota n join pelanggan p
on n.pelanggan_id=p.id
and n.nomor in(${Nomor Nota})
