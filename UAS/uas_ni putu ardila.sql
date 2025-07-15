-- mata kuliah: Administrasi basis data

-- Menggunkan Database
USE pti_mart;

--
-- soal 1
-- database
/*munculkan kode pelanggan,nama produk,jumlah harga,dan total, dari semua produk yang pernah ditransaksikan,namun output yang di minta adalah
total harga minimal 200.000 dan di urutkan berdasarkan total harga terkecil*/


SELECT p.kode_pelanggan, pr.nama_produk, dt.jumlah, dt.jumlah * pr.harga AS total
FROM detail_transaksi dt
JOIN produk pr ON dt.id_produk = pr.id_produk
JOIN transaksi t ON dt.id_transaksi = t.id_transaksi
JOIN pelanggan p ON t.id_pelanggan = p.id_pelanggan
WHERE dt.jumlah * pr.harga >= 200000
ORDER BY total ASC;

    
-- soal 2

SELECT nama_pelanggan, nilai_transaksi
FROM transaksi
WHERE nilai_transaksi = (SELECT MAX(nilai_transaksi) FROM transaksi);

-- soal 3


SELECT nama_produk, kategori, harga
FROM produk
WHERE id_produk NOT IN (SELECT id_produk FROM detail_transaksi);


