CREATE PROCEDURE lihat_riwayat @tanggal DATE 
AS 
BEGIN 
SELECT Riwayat.Tanggal_pemesanan, Tgl_mulai, Tgl_selesai, Tipe_pembayaran.Tipe_pembayaran, Upah_total, Status_pembayaran
	FROM Detail_pemesanan, Pemesanan, Pembayaran, Tipe_pembayaran, Riwayat
	WHERE Pemesanan.Id_pemesanan = Detail_pemesanan.Id_pemesanan
	AND Detail_pemesanan.Id_pembayaran = Pembayaran.Id_pembayaran
	AND Riwayat.Id_detail_pemesanan = Detail_pemesanan.Id_detail_pemesanan
	AND Pembayaran.Id_tipe_pembayaran = Tipe_pembayaran.Id_tipe_pembayaran
	AND tanggal_pemesanan = @tanggal; 
	END

