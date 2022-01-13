CREATE TABLE Kategori(
	Id_kategori CHAR (5) NOT NULL PRIMARY KEY CHECK (Id_kategori LIKE 'KA[0-9][0-9][0-9]'),
	Nama_kategori VARCHAR(50) NOT NULL,
	Upah NUMERIC(11,2) NOT NULL
);

CREATE TABLE Tukang(
	Id_tukang CHAR(5) NOT NULL PRIMARY KEY CHECK (Id_tukang LIKE 'TU[0-9][0-9][0-9]'),
	Nama_tukang VARCHAR(50) NOT NULL,
	Jenis_kelamin VARCHAR(10) NOT NULL,
	Kategori CHAR(5) NOT NULL,
	No_telpon VARCHAR(15) NOT NULL,
	Kelurahan_tukang VARCHAR(100) NOT NULL,
	Username VARCHAR(50) NOT NULL,
	Pass VARCHAR(50) NOT NULL,
	Status_tukang VARCHAR(50) NOT NULL CHECK (Status_tukang = 'Dapat dipesan' OR Status_tukang = 'Tidak Dapat dipesan'),
	Email VARCHAR(100) NOT NULL,	
	FOREIGN KEY (Kategori) REFERENCES Kategori(Id_kategori)
);

CREATE TABLE Jadwal(
	Id_jadwal CHAR(5) NOT NULL PRIMARY KEY CHECK(Id_jadwal LIKE 'JA[0-9][0-9][0-9]'),
	Id_tukang CHAR(5) NOT NULL,
	Tanggal_tersedia DATE DEFAULT GETDATE(),
	FOREIGN KEY (Id_tukang) REFERENCES Tukang(Id_tukang)
);

CREATE TABLE Pelanggan(
	Id_pelanggan CHAR(5) NOT NULL PRIMARY KEY CHECK (Id_pelanggan LIKE 'PL[0-9][0-9][0-9]'),
	Nama_pelanggan VARCHAR(50) NOT NULL,
	No_telpon VARCHAR(15) NOT NULL,
	Kelurahan_pelanggan VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Username VARCHAR(50) NOT NULL,
	Pass VARCHAR(50) NOT NULL
);

CREATE TABLE Pemesanan(
	Id_pemesanan CHAR(5) NOT NULL PRIMARY KEY CHECK (Id_pemesanan LIKE 'PM[0-9][0-9][0-9]'),
	Id_pelanggan CHAR(5) NOT NULL,
	Id_tukang CHAR(5) NOT NULL,
	Tgl_mulai DATE DEFAULT GETDATE(),
	Tgl_selesai DATE DEFAULT GETDATE(),
	FOREIGN KEY (Id_pelanggan) REFERENCES Pelanggan(Id_pelanggan),
	FOREIGN KEY (Id_tukang) REFERENCES Tukang(Id_tukang)
);

CREATE TABLE Bank(
	Id_bank CHAR(5) NOT NULL PRIMARY KEY CHECK (Id_bank LIKE 'BA[0-9][0-9][0-9]'),
	Nama_bank VARCHAR(100) NOT NULL,
);

CREATE TABLE Tipe_pembayaran(
	Id_tipe_pembayaran CHAR(5) NOT NULL PRIMARY KEY CHECK (Id_tipe_pembayaran LIKE 'TP[0-9][0-9][0-9]'),
	Tipe_pembayaran VARCHAR(50) NOT NULL
);
CREATE TABLE Pembayaran(
	Id_pembayaran CHAR(5) NOT NULL PRIMARY KEY CHECK (Id_pembayaran LIKE 'PB[0-9][0-9][0-9]'),
	Id_tipe_pembayaran VARCHAR(50) NOT NULL,
	Id_bank CHAR(5),
	Upah_total NUMERIC(11,2) NOT NULL,
	Status_pembayaran VARCHAR(50) NOT NULL CHECK(Status_pembayaran = 'Pending' OR Status_pembayaran = 'Lunas'),
	FOREIGN KEY (Id_bank) REFERENCES Bank(Id_bank)
);

CREATE TABLE Detail_pemesanan(
	Id_detail_pemesanan CHAR(5) NOT NULL PRIMARY KEY CHECK(Id_detail_pemesanan LIKE 'DP[0-9][0-9][0-9]'),
	Id_pemesanan CHAR(5) NOT NULL,
	Id_pembayaran CHAR(5) NOT NULL,
	FOREIGN KEY (Id_pemesanan) REFERENCES Pemesanan(Id_pemesanan),
	FOREIGN KEY (Id_pembayaran) REFERENCES Pembayaran(Id_pembayaran)
);

CREATE TABLE Riwayat(
	Id_riwayat CHAR(5) NOT NULL PRIMARY KEY CHECK(Id_riwayat LIKE 'RI[0-9][0-9][0-9]'),
	Id_detail_pemesanan CHAR(5) NOT NULL,
	Tanggal_pemesanan DATE DEFAULT GETDATE(),
	FOREIGN KEY (Id_detail_pemesanan) REFERENCES Detail_pemesanan(Id_detail_pemesanan)
);