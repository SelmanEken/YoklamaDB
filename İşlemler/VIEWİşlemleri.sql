CREATE VIEW vw_OgrenciYoklamaToplam
AS
SELECT 
    O.OgrenciNo,
    O.OgrenciAd,
    O.OgrenciSoyad,
    COUNT(y.YoklamaID) AS ToplamYoklama
FROM 
    ogrenci O
LEFT JOIN 
    ogrenciyoklama Y ON O.OgrenciNo = Y.OgrenciNo
GROUP BY 
    O.OgrenciNo, O.OgrenciAd, O.OgrenciSoyad;

SELECT * FROM vw_OgrenciYoklamaToplam;


--Her öðrencinin aldýðý dersler için toplam yoklama sayýsý ve yoklama durumu
CREATE VIEW vw_OgrenciYoklamaDurum
AS
SELECT 
    O.OgrenciNo,
    O.OgrenciAd,
    O.OgrenciSoyad,
    D.DersID,
    D.DersAdi,
    COUNT(Y.YoklamaID) AS ToplamYoklama,
    CASE 
        WHEN COUNT(Y.YoklamaID) > 0 THEN 'Yoklama Alýndý'
        ELSE 'Yoklama Alýnmadý'
    END AS YoklamaDurumu
FROM 
    ogrenci O
JOIN 
    ogrenciyoklama Y ON O.OgrenciNo = Y.OgrenciNo
JOIN 
    ders D ON Y.DersID = D.DersID
GROUP BY 
    O.OgrenciNo, O.OgrenciAd, O.OgrenciSoyad, D.DersID, D.DersAdi;

SELECT * FROM vw_OgrenciYoklamaDurum;


