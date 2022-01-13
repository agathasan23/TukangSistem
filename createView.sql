CREATE VIEW [viewTukang]
AS
	SELECT Nama_tukang, Jenis_kelamin, Kategori.Nama_kategori, No_telpon, Kelurahan_tukang, Status_tukang, Upah AS [Upah per Hari]
	FROM Tukang, Kategori
	WHERE Tukang.Kategori = Kategori.Id_kategori;

SELECT * FROM viewTukang;

CREATE VIEW [viewJadwal]
AS
	SELECT Nama_tukang, Kategori.Nama_kategori, Tanggal_tersedia
	FROM Jadwal, Tukang, Kategori
	WHERE Jadwal.Id_tukang = Tukang.Id_tukang
	AND Tukang.Kategori = Kategori.Id_kategori;

SELECT * FROM viewJadwal;


CREATE VIEW [viewPelanggan]
AS
	SELECT Nama_pelanggan, No_telpon, Kelurahan_pelanggan, Email
	FROM Pelanggan;

SELECT * FROM viewPelanggan;

CREATE VIEW [viewKategori]
AS
	SELECT Nama_kategori, Upah
	FROM Kategori;

SELECT * FROM viewKategori;


CREATE VIEW [viewPemesanan]
AS
	SELECT Nama_pelanggan, Nama_tukang, Riwayat.Tanggal_pemesanan, Tgl_mulai, Tgl_selesai, Tipe_pembayaran, Upah_total, Status_pembayaran
	FROM Pelanggan, Tukang, Detail_pemesanan, Pemesanan, Pembayaran, Riwayat, Tipe_pembayaran
	WHERE Pelanggan.Id_pelanggan = Pemesanan.Id_pelanggan
	AND Tukang.Id_tukang = Pemesanan.Id_tukang
	AND Pemesanan.Id_pemesanan = Detail_pemesanan.Id_pemesanan
	AND Detail_pemesanan.Id_pembayaran = Pembayaran.Id_pembayaran
	AND Riwayat.Id_detail_pemesanan = Detail_pemesanan.Id_detail_pemesanan
	AND Pembayaran.Id_tipe_pembayaran = Tipe_pembayaran.Id_tipe_pembayaran;

	SELECT * FROM viewPemesanan;
