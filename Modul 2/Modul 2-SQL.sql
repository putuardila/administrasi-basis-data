-- Nama : Ni Putu Ardila susanti
-- Nim : 23241054
-- kelas : b
-- Modul :2 (SELECT)

-- Membuat Database
CREATE DATABASE pti_mart;

-- Menggunakan database
USE pti_mart;

-- Cek kolom dalam setiap tabel
DESCRIBE ms_pelanggan;


-- SELECT
-- Menggunakan SELECT untuk 1 tabel
-- Mengambil nama produk dari tabel produk
SELECT nama_produk FROM ms_produk;

-- mengambil lebih dari satu kolom dari sebuah tabel
SELECT nama_produk, harga FROM ms_produk;

-- Mengambil semua kolom dari sebuah tabel
SELECT * FROM ms_produk;

-- latihan
-- Mengambil kode produk dan nama produk dari table produk
SELECT kode_produk, nama_produk FROM ms_produk;

-- Mengambil seluruh kolom dari tabel penjualan
SELECT * FROM tr_penjualan;

-- PREFIX dan ALIAS
-- PREFIX, bagian objek database yang hirarkinya lebih tinggi
-- Menggunakan PREFIX nama tabel untuk kolom nama_produk dari tabel berikut
SELECT ms_produk.nama_produk FROM ms_produk;

-- menggunakan nama database dan tabel sebagai prefix untuk kolom nama_produk
SELECT pti_mart.ms_produk.nama_produk FROM ms_produk;

-- ALIAS, nama sementara pengganti nama objek asli dari database
-- mengganti sementara kolom nama produkdengan ALIAS
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- mengganti sementarab tabel dengan ALIAS
SELECT nama_produk FROM ms_produk AS msp;

-- kombinasi PREFIX dan ALIAS
SELECT nama_produk FROM ms_prduk AS MSP;

-- case 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan;

-- case 2
SELECT nama_produk, harga FROM ms_produk

