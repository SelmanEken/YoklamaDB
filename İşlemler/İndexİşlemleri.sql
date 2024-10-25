
--Emaili verilen ogrenci
CREATE NONCLUSTERED INDEX IX_Ogrenci_Email
ON ogrenci (Email);

set STATISTICS IO ON

select * from ogrenci where Email = 'hakan.bilgiç2376@example.com'

--YoklamaID deðeri 99999 olan ogrenci
SET STATISTICS TIME ON
select * from ogrenciyoklama where YoklamaID = 99999

CREATE NONCLUSTERED INDEX IX_OgrenciYoklama
ON ogrenciyoklama (YoklamaID);

select * from ogrenciyoklama where YoklamaID = 99999
SET STATISTICS TIME OFF

--YoklamaID deðeri 99955 olan kaydýn öðrencisinin e-posta adresi
SET STATISTICS TIME ON;

SELECT O.Email
FROM ogrenciyoklama OY
JOIN ogrenci O ON OY.OgrenciNo = O.OgrenciNo
WHERE OY.YoklamaID = 99955;

CREATE NONCLUSTERED INDEX IX_Yoklama_OgrenciNo
ON ogrenciyoklama (OgrenciNo);

SELECT O.Email
FROM ogrenciyoklama OY
JOIN ogrenci O ON OY.OgrenciNo = O.OgrenciNo
WHERE OY.YoklamaID = 99955;

SET STATISTICS TIME OFF;
