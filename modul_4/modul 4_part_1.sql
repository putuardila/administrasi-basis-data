-- Nama : Ni Putu Ardila 
-- NIM : 23242054
-- kelas : b
-- Modul : ORDER BY, Fungsi Agregasi, GROUP BY, HAVING

-- Menggunakan Database
USE pti_mart;

-- ORDER BY
-- ORDER BY (Menyusun urutan data berdasarkan nilai  sebuah coloum)
-- Ambil nama produk dan qty dari tabel penjualan urutan qty
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty;

-- Ambil nama produk dan qty dari tb penjualan urutkan qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;

-- Latihan mandiri 1
SELECT * FROM tr_penjualan ORDER BY qty, tgl_transaksi;
SELECT * FROM ms_pelanggan ORDER BY qty, ms_pelanggan;
SELECT * FROM ms_pelanggan ORDER BY alamat;

-- ORDER BY ASC dan desc
-- Ambil nama produk,qty dari tb penjualan urutkan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;

-- ambil nama produk, qty dari tb penjualan urutkan qty dan nama produk besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk DESC;

-- Latihan mandiri 2
SELECT * FROM tr_penjualan ORDER BY qty DESC, tgl_transaksi  DESC;
SELECT * FROM ms_pelanggan ORDER BY qty, ms_pelanggan DESC;
SELECT * FROM ms_pelanggan ORDER BY alamat DESC;

-- ORDER BY dari hasil Perhitungan 
-- Ambil nama_produk, qty, harga*qty dari tb penjualan urutkan harga*qty besar-kecil
SELECT nama_produk, harga, qty, harga*qty AS total
FROM tr_penjualan
ORDER BY total DESC;

-- Latihan mandiri 3
-- cobalah pengurutan dengan ekspresi total menggunakan rumusan jumlah barang di kali harga barang di kurangi diskon
SELECT nama_produk, qty, harga, diskon_persen, (harga*qty-diskon_persen) AS total
FROM tr_penjualan
WHERE diskon_persen
ORDER BY total DESC;