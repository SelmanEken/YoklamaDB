DECLARE @i INT = 0;
DECLARE @OgrenciNo INT;
DECLARE @DersID INT;
DECLARE @Tarih DATE;

-- ��renci ve ders say�lar�
DECLARE @TotalOgrenciler INT = 5000;
DECLARE @TotalDersler INT = 50;
DECLARE @TotalYoklama INT = 100000;

-- 2018 y�l� ve bug�n�n tarihi aras�nda rastgele tarih �retme fonksiyonu
DECLARE @startDate DATE = '2018-01-01';
DECLARE @endDate DATE = GETDATE();
DECLARE @dateDiff INT = DATEDIFF(DAY, @startDate, @endDate);

-- Her yoklamada bir kez kat�lm�� ��rencilerle yoklamalar� eklemek
WHILE @i < @TotalYoklama
BEGIN
    -- Rastgele bir ��renci se�
    SET @OgrenciNo = (SELECT FLOOR(RAND() * @TotalOgrenciler) + 1);
    -- Rastgele bir ders se�
    SET @DersID = (SELECT FLOOR(RAND() * @TotalDersler) + 1);
    -- Rastgele bir tarih �ret
    SET @Tarih = DATEADD(DAY, FLOOR(RAND() * @dateDiff), @startDate);

    -- Yoklama tablosuna ekle
    INSERT INTO ogrenciyoklama (OgrenciNo, DersID, Tarih) 
    VALUES (@OgrenciNo, @DersID, @Tarih);

    SET @i = @i + 1;
END

select count(*) from ogrenciyoklama
select * from ogrenciyoklama