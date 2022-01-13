CREATE PROCEDURE tambah_pelanggan 
@id CHAR(5), 
@nama_pelanggan VARCHAR(50), 
@No_telpon VARCHAR(15) ,
@Kelurahan_pelanggan VARCHAR(100) ,
@Username VARCHAR(50) ,
@Pass VARCHAR(50) ,
@Email VARCHAR(100)  
AS 
IF NOT EXISTS( SELECT * FROM Detail_pemesanan WHERE Id_detail_pemesanan LIKE @id)
BEGIN 
INSERT INTO Pelanggan(Id_pelanggan, Nama_pelanggan, No_telpon, Kelurahan_pelanggan, Email, Username, Pass)
 VALUES (@id,@nama_pelanggan,@No_telpon,@Kelurahan_pelanggan,@Email,@Username,@Pass)
	END
ELSE
PRINT 'Id pelanggan sudah ada';
EXECUTE tambah_pelanggan 'PL009', 'budi astuti', '085190860228', 'panjen', 'budididit@gmail.com', 'astuti', 'budididit';

select * from pelanggan;