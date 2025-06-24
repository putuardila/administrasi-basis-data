-- Nama:Ni Putu Ardila Susanti
-- Nim:23241054
-- kelas:4b
-- modul : 5: join, union, limit

-- Menggunakan Database
USE pti_mart;

-- join 
-- menggabungkan dua buah tabel berdasarkan kolom yang sama 

-- praktek 1 
-- ambil nama pelanggan yang bertransaksi 
-- artinya ambil kolom kode_pelanggan, nama_pelanggan, dan qty dari
-- penggabungan tabel penjualan dan tebel pelanggan

SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan as tp
JOIN ms_pelanggan as mp
ON tp.kode_pelanggan = mp.Kode_pelanggan;

-- praktek 2
-- menggabungkan 2 tabel tanpa memperhatikan relational keys
--  ambil nama pelanggan yang pernah bertransaksi beserta qty nya
-- menggunakan tabel pejualan dan tabel pelanggan tanpa 
-- memperhatikan kolom yang menjadi primary key

SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan as tp
JOIN ms_pelanggan as mp
ON TRUE;

-- INNER JOIN
-- join yang mengambil data dari dua sisi tabel  yang berhubungan
-- praktek 3
-- ambil kode pelanggan, nama pelanggan, nama produk, qty
-- dari hasil join tabel penjualan dan tabel pelanggan

SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan as tp
INNER JOIN ms_pelanggan as mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- TUGAS MANDIRI 
-- INNER JOIN
-- buatlah join untuk ketiga table yang terdapat pada dqlabmartbasic dengan inner JOIN
SELECT tp.kode_pelanggan, mp.nama_pelanggan, pr.nama_produk, tp.qty
FROM tr_penjualan AS tp INNER JOIN ms_pelanggan AS mp ON tp.kode_pelanggan = mp.kode_pelanggan
INNER JOIN ms_produk AS pr ON tp.kode_produk = pr.kode_produk;

-- Buatlah join untuk ketiga table dengan urutan ms_pelanggan, tr_penjualan, dan ms_produk
-- yang terdapat pada dqlabmartbasic dengan LEFT JOIN, kemudian filter untuk qty yang tidak
-- berinilai NULL dengan operator IS NOT NULL.
-- LEFT JOIN
SELECT mp.kode_pelanggan, mp.nama_pelanggan, tp.kode_produk, pr.nama_produk, tp.qty
FROM ms_pelanggan AS mp
LEFT JOIN tr_penjualan AS tp ON mp.kode_pelanggan = tp.kode_pelanggan
LEFT JOIN ms_produk AS pr 
ON tp.kode_produk = pr.kode_produk
WHERE tp.qty IS NOT NULL;

-- buatlah join untuk ketiga tabel dengan urutan ms_pelanggan, tr_penjualan, dan ms_produk
-- yang terdapat pada dqlabmartbasic dengan INNER JOIN, kemudian tampilkan grouping unntuk kolom 
-- kategori produk dan penjumlahan qty.
SELECT pr.kategori_produk, SUM(tp.qty) AS total_qty
FROM ms_pelanggan AS mp INNER JOIN tr_penjualan AS tp 
ON mp.kode_pelanggan = tp.kode_pelanggan
INNER JOIN ms_produk AS pr 
ON tp.kode_produk = pr.kode_produk
GROUP BY pr.kategori_produk;

-- latihan khusus: cobalah lakukan join ms_produk dengan tabel ms_produk juga dengan kolom reletionship
-- kode_produk ( benar, anda tidak salah baca) - ini kita lakukan join dengan table sendiri yang memang
-- bisa di lakukan, jangan lupa menggunakan alias.
SELECT p1.kode_produk AS kode_awal, p1.nama_produk AS nama_awal,p2.kode_produk AS kode_pembanding, p2.nama_produk AS nama_pembanding
FROM ms_produk AS p1 INNER JOIN ms_produk AS p2 ON p1.kode_produk = p2.kode_produk;




