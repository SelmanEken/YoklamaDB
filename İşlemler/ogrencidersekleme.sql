-- Her öðrenciye en az bir ders atama
DECLARE @OgrenciNo INT;
DECLARE @DersID INT;
DECLARE @i INT;

-- Tüm öðrenciler ve dersler
DECLARE @Ogrenciler TABLE (OgrenciNo INT);
DECLARE @Dersler TABLE (DersID INT);

INSERT INTO @Ogrenciler SELECT OgrenciNo FROM ogrenci;
INSERT INTO @Dersler SELECT DersID FROM ders;

-- Her öðrenciye en az bir ders atama
SELECT @i = COUNT(*) FROM @Ogrenciler;
WHILE @i > 0
BEGIN
    SELECT TOP 1 @OgrenciNo = OgrenciNo FROM @Ogrenciler ORDER BY NEWID();
    SELECT TOP 1 @DersID = DersID FROM @Dersler ORDER BY NEWID();

    INSERT INTO ogrenciders (OgrenciNo, DersID) VALUES (@OgrenciNo, @DersID);

    DELETE FROM @Ogrenciler WHERE OgrenciNo = @OgrenciNo;
    DELETE FROM @Dersler WHERE DersID = @DersID;

    SELECT @i = COUNT(*) FROM @Ogrenciler;
END

-- Ekstra atamalarý rastgele yapma
SET @i = 0;
WHILE @i < 9000
BEGIN
    SET @OgrenciNo = (SELECT FLOOR(RAND() * 5000) + 1);
    SET @DersID = (SELECT FLOOR(RAND() * 50) + 1);

    INSERT INTO ogrenciders (OgrenciNo, DersID) 
    VALUES (@OgrenciNo, @DersID);

    SET @i = @i + 1;
END


select count(*) from ogrenciders
select * from ogrenciders