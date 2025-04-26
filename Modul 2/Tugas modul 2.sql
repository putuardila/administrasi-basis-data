-- Nama : Ni putu ardila 
-- Nim : 23241054

-- Buat Database restoran
CREATE DATABASE restoran;

USE restoran;



CREATE TABLE department(
ID_Department Varchar(10),
Manager Varchar(10),
Dapur Varchar(10));

CREATE TABLE pembeli(
ID_Pembeli Varchar(10),
Nama_pembeli Varchar(45),
No_member varchar(15));

CREATE TABLE kasir(
ID_kasir Varchar(15),
Nama_kasir Varchar(45),
Alamat_kasir Varchar(45),
No_hp_kasir varchar (15),
Gaji INT);

CREATE TABLE waiter(
ID_waiter varchar(10),
Nama_waiter Varchar(45),
Alamat_waiter Varchar(45),
No_hp_waiter Varchar(15),
Gaji INT);

CREATE TABLE menu(
ID_Menu varchar(10),
Nama_menu varchar (100),
harga int);

CREATE TABLE Transaksi(
Nama_waiter varchar(45),
ID_pembeli varchar(10),
Nama_pembeli varchar(100),
ID_Menu varchar(10),
Nama_menu varchar(40),
Harga int,
QTY int,
total int);


ALTER TABLE department
ADD PRIMARY KEY (ID_Department);

ALTER TABLE pembeli
ADD PRIMARY KEY (ID_pembeli);

ALTER TABLE kasir
ADD PRIMARY KEY (ID_kasir);

ALTER TABLE menu
ADD PRIMARY KEY (ID_menu);

ALTER TABLE waiter
ADD PRIMARY KEY (ID_waiter);

-- mengupdate foreign key table transaksi_penjualan
ALTER TABLE transaksi
ADD CONSTRAINT FK_TransaksiMenu
FOREIGN KEY (ID_menu) REFERENCES menu(ID_menu);

ALTER TABLE transaksi
ADD CONSTRAINT FK_TransaksiPembeli
FOREIGN KEY (ID_pembeli) REFERENCES pembeli(ID_pembeli);

-- mengisi data pada tabel department
INSERT INTO department (ID_department,manager, dapur)
VALUES	('2425653', 'Lalisa', 'Selera Rasa'),
		('2423726', 'Rozi', 'Mentari'),
        ('2421238', 'Putu', 'Suka Rasa'),
        ('2947882', 'Dila', 'Cita Rasa'),
        ('8914991', 'Puri', 'Aneka Rasa');
SELECT *FROM department;

-- membuat data tabel pembeli
INSERT INTO pembeli (ID_pembeli,nama_pembeli, no_member)
VALUES	('42536', 'erna', '4256362'),
		('42562', 'tia', '7526822'),
        ('536282', 'aulia', '5352672'),
        ('535367', 'lusi', '6362543'),
        ('646377', 'vana', '5362726');
SELECT *FROM pembeli;

-- membuat data tabel kasir
INSERT INTO kasir (ID_kasir, Nama_kasir,Alamat_kasir, No_hp_kasir,Gaji )
VALUES	('46436', 'adam', 'narmada','081635273526','23000'),
		('49762', 'chelly','rinca','087635243876','24000'),
        ('554282', 'bima','bima','087935271543','23000'),
        ('523367', 'sandy', 'labuan bajo','082436132867','24000'),
        ('665377', 'ridho', 'sumbawa','081652867234','24000');
SELECT *FROM kasir;

-- membuat data tabel menu
INSERT INTO menu  (ID_menu,nama_menu,harga)
VALUES	('M001','Sate bulayak','15000'),
		('M002','Ayam taliwang','65000'),
        ('M003','Nasi balap puyung','20000'),
        ('M004','Pelecing kangkung','15000'),
		('M005','Air mineral','5000'),
        ('M006','Teh hangat','8000'),
        ('M007','Es teh','8000'),
        ('M008','Jus jeruk','10000');
SELECT *FROM menu;

-- membuat data tabel waiter
INSERT INTO waiter (Id_waiter,nama_waiter, alamat_waiter, no_hp_waiter, gaji)
VALUES	('W001','nisa','Masbagek','08190788985','2500000'),
		('W002','Wati','Mas batu','08199899714','2500000'),
        ('W003','mus','kr bata','0819899822','2500000'),
        ('W004','zaskia','kr ubun','0898998226','2500000'),
        ('W005','baiq','kr mas-mas','08198199822','2500000');
SELECT *FROM waiter;

-- membuat data tabel transaksi
INSERT INTO transaksi  (Nama_waiter,ID_Pembeli, Nama_pembeli, ID_Menu, Nama_menu, Harga, QTY,total )
VALUES	('nisa','42536','erna','M001','Sate bulayak','15000','1','15000'),
		('wati','42562','tia','M002','Ayam taliwang','65000','1','65000'),
        ('mus','536282','aulia','M003','Nasi_balap puyung','20000','1','20000'),
        ('zaskia','535367','lusi','M004','Pelecing kangkung','15000','2','30000'),
        ('baiq','646377','vana','M005','Pelecing kangkung','15000','2','30000');
SELECT *FROM transaksi;


-- membuat 10 query SELECT dari database yang dibuat
-- 1 mengambil kolom nama_manager pada tabel departement
SELECT Manager FROM department;

-- 2 mengambil lebih dari satu kolom (ID_Manager, Dapur) pada tabel department
SELECT ID_Department, Dapur FROM department;

-- 3 mengambil seluruh kolom pada tabel kasir
SELECT * FROM kasir;

-- 4 menggunakan PREFIX nama tabel untuk kolom ID_kasir pada tabel kasir
SELECT kasir.ID_kasir FROM kasir;

-- 5 menggunakan PREFIX nama database dan tabel untuk kolom ID_Pembeli
SELECT restoran.pembeli.ID_Pembeli FROM pembeli;

-- 6 menggunakan nama database dan tabel PREFIX untuk kolom Nama_pembeli, No_member
SELECT restoran.pembeli.Nama_pembeli, No_member FROM pembeli;

-- 7 mengganti sementara nama kolom Nama_waiter dengan ALIAS pada tabel transaksi
SELECT Nama_waiter AS NW FROM transaksi;

-- 8 mengganti sementara nama kolom Nama_menu dan harga dengan ALIAS pada menu
SELECT nama_menu AS NM, harga AS hg FROM menu;

-- 9 mengkombinasikan PREFIX dan ALIAS pada kolom Nama_waiter pada tabel transaksi
SELECT transaksi.Nama_waiter AS NM FROM transaksi;

-- 10 mengkombinasikan PREFIX dan ALIAS dari database pada tabel kasir untuk kolom ID_kasir, Nama_kasir
SELECT restoran.kasir.ID_kasir AS ID, Nama_kasir AS NK FROM kasir;




