CREATE PROCEDURE metode_pembayaran 
@id CHAR(5), 
@id_tipe CHAR(5), 
@id_bank CHAR(5),
@upah NUMERIC,
@status VARCHAR(50)
 
AS 
IF EXISTS( SELECT * FROM Pembayaran WHERE Id_pembayaran LIKE @id)
PRINT 'Id pembayaran sudah ada';
ELSE IF  NOT EXISTS( SELECT * FROM Tipe_pembayaran WHERE id_tipe_pembayaran LIKE @id_tipe)
PRINT 'Id tipe pembayaran tidak tersedia';
ELSE IF  NOT EXISTS( SELECT * FROM Bank WHERE Id_bank LIKE @id_bank)
PRINT 'Id bank tidak tersedia';
ELSE
BEGIN 
INSERT INTO Pembayaran(Id_pembayaran, Id_tipe_pembayaran, Id_bank, Upah_total, Status_pembayaran)
VALUES (@id,@id_tipe,@id_bank,@upah,@status)
	END
EXECUTE metode_pembayaran 'PB016', 'TP002', 'BA000', '300000', 'Pending';