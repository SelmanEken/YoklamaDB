-- Kullan�c�lar� ve dersleri rastgele se�ip kullaniciders tablosuna eklemek
DECLARE @KullaniciID INT;
DECLARE @DersID INT;

-- Kullan�c� ve Ders ID'lerini i�eren tablolar� olu�tur
DECLARE @Kullanicilar TABLE (KullaniciID INT);
DECLARE @Dersler TABLE (DersID INT);

-- Kullan�c� ve Ders ID'lerini doldur
INSERT INTO @Kullanicilar SELECT KullaniciID FROM kullanici;
INSERT INTO @Dersler SELECT DersID FROM ders;

-- Her kullan�c�ya rastgele bir ders atama
WHILE EXISTS (SELECT * FROM @Kullanicilar)
BEGIN
    -- Rastgele bir kullan�c� se�
    SELECT TOP 1 @KullaniciID = KullaniciID FROM @Kullanicilar ORDER BY NEWID();
    
    -- Rastgele bir ders se�
    SELECT TOP 1 @DersID = DersID FROM @Dersler ORDER BY NEWID();

    -- kullan�c�ders tablosuna ekle
    INSERT INTO kullaniciders (KullaniciID, DersID) VALUES (@KullaniciID, @DersID);

    -- Eklenen kullan�c�y� ve dersi tablolardan kald�r
    DELETE FROM @Kullanicilar WHERE KullaniciID = @KullaniciID;
    DELETE FROM @Dersler WHERE DersID = @DersID;
END

select count(*) from kullaniciders
select * from kullaniciders