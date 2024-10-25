
--belirli bir tarih aralýðýnda yoklama kayýtlarýný getiren
CREATE PROCEDURE GetYoklamaByTarihAraligi
    @BaslangicTarihi DATE,
    @BitisTarihi DATE
AS
BEGIN
    SELECT 
        Y.YoklamaID,
        O.OgrenciNo,
        O.OgrenciAd,
        O.OgrenciSoyad,
        D.DersID,
        D.DersAdi,
        Y.Tarih
    FROM 
        ogrenciyoklama Y
    JOIN 
        ogrenci O ON Y.OgrenciNo = O.OgrenciNo
    JOIN 
        ders D ON Y.DersID = D.DersID
    WHERE 
        Y.Tarih BETWEEN @BaslangicTarihi AND @BitisTarihi
    ORDER BY 
        Y.Tarih;
END;

EXEC GetYoklamaByTarihAraligi '2024-01-01', '2024-12-31';


SELECT COUNT(*) AS ToplamYoklamaSayisi
FROM ogrenciyoklama
WHERE Tarih BETWEEN '2024-01-01' AND '2024-12-31';
