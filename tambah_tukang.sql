CREATE PROCEDURE tambah_tukang 
@id CHAR(5), 
@Nama_tukang VARCHAR(50), 
@Jenis_kelamin VARCHAR(10),
@kategori CHAR(5),
@No_telpon VARCHAR(15) ,
@Kelurahan_tukang VARCHAR(100) ,
@Username VARCHAR(50) ,
@Pass VARCHAR(50) ,
@Status_tukang VARCHAR(50),
@Email VARCHAR(100)  
AS 
BEGIN 
INSERT INTO Tukang (Id_tukang , Nama_tukang , Jenis_kelamin , Kategori , No_telpon , Kelurahan_tukang, Username , Pass, Status_tukang, Email)
	   VALUES (@id,@Nama_tukang,@Jenis_kelamin,@kategori,@No_telpon,@Kelurahan_tukang,@Username,@Pass,@Status_tukang,@Email)
	END
EXECUTE tambah_tukang 'TU013', 'Rhesa', 'Laki-Laki', 'KA002', '081242662885', 'Sawojajar', 'Alvin', 'rhesaav', 'Dapat dipesan', 'rhesaav@gmail.com';