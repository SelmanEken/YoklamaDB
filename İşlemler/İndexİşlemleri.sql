
--Emaili verilen ogrenci
CREATE NONCLUSTERED INDEX IX_Ogrenci_Email
ON ogrenci (Email);

set STATISTICS IO ON

select * from ogrenci where Email = 'hakan.bilgi�2376@example.com'

--YoklamaID de�eri 99999 olan ogrenci
SET STATISTICS TIME ON
select * from ogrenciyoklama where YoklamaID = 99999

CREATE NONCLUSTERED INDEX IX_OgrenciYoklama
ON ogrenciyoklama (YoklamaID);

select * from ogrenciyoklama where YoklamaID = 99999
SET STATISTICS TIME OFF

--YoklamaID de�eri 99955 olan kayd�n ��rencisinin e-posta adresi
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
