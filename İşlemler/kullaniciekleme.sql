declare @i INT = 1;
declare @Ad NVARCHAR(50);
declare @Soyad NVARCHAR(50);
declare @Email NVARCHAR(50);
declare @KAdi NVARCHAR(50);
declare @Parola NVARCHAR(50);

declare @Isimler table (Ad nvarchar(50));
insert into @Isimler values
('Ahmet'),('Mehmet'),('Ayþe'),('Fatma'),('Ali'),('Veli'),
('Elif'),('Zeynep'),('Hasan'),('Hüseyin'),('Emine'),('Selin')


declare @soyadlar table (Soyad nvarchar(50));
insert into @soyadlar values
('Kaya'),('Yýlmaz'),('Koþar'),('Çelik'),('Demir'),('Yýldýz'),
('Aydýn'),('Korkmaz'),('Özdemir'),('Koç'),('Doðan'),('Þahin')

WHILE @i <= 50
BEGIN
    select TOP 1 @Ad = Ad from @Isimler order by NEWID();

	select TOP 1 @Soyad = Soyad from @soyadlar order by NEWID();

	set @Email = LOWER(@Ad)+'.'+LOWER(@Soyad)+cast(@i as nvarchar(10))+'@example.com';
	
    SET @KAdi = LEFT(NEWID(), 5); 

    SET @Parola = LEFT(CAST(NEWID() AS NVARCHAR(50)), 8); 

	insert into kullanici(KullaniciAd,KullaniciSoyad,Email,KullaniciAdi,parola)
	values (@Ad,@Soyad,@Email,@KAdi,@Parola)

 set @i = @i+1;
 end

 select count(*) from kullanici
 select * from kullanici
