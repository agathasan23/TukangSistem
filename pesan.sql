CREATE PROCEDURE pesan 
@id CHAR(5), 
@id_pelanggan CHAR(5), 
@id_tukang CHAR(5),
@tgl_mulai DATE,
@tgl_selesai DATE
 
AS 
IF EXISTS( SELECT * FROM Pemesanan WHERE id_pemesanan LIKE @id)
PRINT 'Id pemesanan sudah ada';
ELSE IF  NOT EXISTS( SELECT * FROM Tukang WHERE id_tukang LIKE @id_tukang)
PRINT 'Id tukang tidak tersedia';
ELSE IF  NOT EXISTS( SELECT * FROM Pelanggan WHERE Id_pelanggan LIKE @id_pelanggan)
PRINT 'Id pelanggan tidak tersedia';
ELSE
BEGIN 
INSERT INTO Pemesanan(Id_pemesanan, Id_pelanggan, Id_tukang, Tgl_mulai, Tgl_selesai)
VALUES (@id,@id_pelanggan,@id_tukang,@tgl_mulai,@tgl_mulai)
	END
EXECUTE pesan 'PM016', 'PL003', 'TU013', '12/27/2020', '12/30/2020';