CREATE PROCEDURE detail_pesanan 
@id CHAR(5), 
@id_pembayaran CHAR(5), 
@id_pemesanan CHAR(5)
 
AS 
IF EXISTS( SELECT * FROM Detail_pemesanan WHERE Id_detail_pemesanan LIKE @id)
PRINT 'Id detail pemesanan sudah ada';
ELSE IF  NOT EXISTS( SELECT * FROM Pembayaran WHERE Id_pembayaran LIKE @id_pembayaran)
PRINT 'Id pembayaran tidak tersedia';
ELSE IF  NOT EXISTS( SELECT * FROM Pemesanan WHERE Id_pemesanan LIKE @id_pemesanan)
PRINT 'Id pemesanan tidak tersedia';
ELSE
BEGIN 
INSERT INTO Detail_pemesanan(Id_detail_pemesanan, Id_pembayaran, Id_pemesanan)
VALUES (@id,@id_pembayaran,@id_pemesanan)
	END
EXECUTE detail_pesanan 'DP016','PB016', 'PM016';