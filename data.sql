-- Data Barang dengan harga lebih besar dari 10,000 diurut berdasarkan Harga Satuan (ascending):

SELECT *
FROM barang
WHERE HARGA_SATUAN > 10000
ORDER BY HARGA_SATUAN ASC;

-- Data Pelanggan yang namanya mengandung huruf "g" dengan alamat "BANDUNG":

SELECT *
FROM pelanggan
WHERE NAMA LIKE '%g%'
		AND ALAMAT = 'BANDUNG';

-- Data seluruh transaksi sesuai dengan tampilan di gambar:

SELECT transaksi.KODE,
	transaksi.TANGGAL,
	pelanggan.NAMA AS NAMA_PELANGGAN,
	barang.NAMA AS NAMA_BARANG,
	transaksi.JUMLAH_BARANG,
	barang.HARGA_SATUAN,
	(transaksi.JUMLAH_BARANG * barang.HARGA_SATUAN) AS TOTAL
FROM transaksi
JOIN pelanggan ON transaksi.KODE_PELANGGAN = pelanggan.KODE
JOIN barang ON transaksi.KODE_BARANG = barang.KODE;

-- Data Rekap nama, jumlah dan total harga pembelian:

SELECT pelanggan.NAMA AS NAMA_PELANGGAN,
	SUM(transaksi.JUMLAH_BARANG) AS JUMLAH,
	SUM(transaksi.JUMLAH_BARANG * barang.HARGA_SATUAN) AS TOTAL_HARGA
FROM transaksi
JOIN pelanggan ON transaksi.KODE_PELANGGAN = pelanggan.KODE
JOIN barang ON transaksi.KODE_BARANG = barang.KODE
GROUP BY pelanggan.NAMA;