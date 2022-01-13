CREATE PROCEDURE lihat_tukang_by_kategori @kategori VARCHAR(50) 
AS IF EXISTS( SELECT * FROM Kategori WHERE Nama_kategori LIKE @kategori)
BEGIN 
SELECT Nama_tukang, Jenis_kelamin, Kategori.Nama_kategori, No_telpon, Kelurahan_tukang, Status_tukang, Upah AS [Upah per Hari]
	FROM Tukang, Kategori
	WHERE Tukang.Kategori = Kategori.Id_kategori
	AND Kategori.Nama_kategori LIKE @kategori; 
END 
ELSE PRINT 'Kategori tidak tersedia';

EXECUTE lihat_tukang_by_kategori 'tukang cat';