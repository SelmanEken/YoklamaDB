-- Kullanýcýlarý ve dersleri rastgele seçip kullaniciders tablosuna eklemek
DECLARE @KullaniciID INT;
DECLARE @DersID INT;

-- Kullanýcý ve Ders ID'lerini içeren tablolarý oluþtur
DECLARE @Kullanicilar TABLE (KullaniciID INT);
DECLARE @Dersler TABLE (DersID INT);

-- Kullanýcý ve Ders ID'lerini doldur
INSERT INTO @Kullanicilar SELECT KullaniciID FROM kullanici;
INSERT INTO @Dersler SELECT DersID FROM ders;

-- Her kullanýcýya rastgele bir ders atama
WHILE EXISTS (SELECT * FROM @Kullanicilar)
BEGIN
    -- Rastgele bir kullanýcý seç
    SELECT TOP 1 @KullaniciID = KullaniciID FROM @Kullanicilar ORDER BY NEWID();
    
    -- Rastgele bir ders seç
    SELECT TOP 1 @DersID = DersID FROM @Dersler ORDER BY NEWID();

    -- kullanýcýders tablosuna ekle
    INSERT INTO kullaniciders (KullaniciID, DersID) VALUES (@KullaniciID, @DersID);

    -- Eklenen kullanýcýyý ve dersi tablolardan kaldýr
    DELETE FROM @Kullanicilar WHERE KullaniciID = @KullaniciID;
    DELETE FROM @Dersler WHERE DersID = @DersID;
END

select count(*) from kullaniciders
select * from kullaniciders