declare @i INT = 1;
declare @Ad NVARCHAR(50);
declare @Soyad NVARCHAR(50);
declare @Email NVARCHAR(50);

declare @Isimler table (Ad nvarchar(50));
insert into @Isimler values
('Ali'), ('Ahmet'), ('Mehmet'), ('Ay�e'), ('Fatma'), ('Hasan'), ('H�seyin'), ('Elif'), 
('Zeynep'), ('Emre'), ('Yusuf'), ('O�uz'), ('Burak'), ('Melis'), ('Eren'), ('Can'), 
('Derya'), ('�rem'), ('Leyla'), ('G�khan'), ('Deniz'), ('Cansu'), ('Kemal'), ('Selin'), 
('Sinan'), ('Ferhat'), ('B��ra'), ('Merve'), ('Onur'), ('Hakan'), ('Sibel'), ('Nehir'), 
('Serkan'), ('Sevil'), ('Ece'), ('Bar��'), ('Ceyda'), ('Cengiz'), ('Gizem'), ('Halil'), 
('I��l'), ('Koray'), ('Lale'), ('Murat'), ('Nalan'), ('Okan'), ('P�nar'), ('R�za'), 
('Selim'), ('Taner'), ('Zeynep'), ('Bahar'), ('Cenk'), ('Defne'), ('Erdem'), ('Filiz'), 
('G�rkan'), ('Hale'), ('Irmak'), ('Kaan'), ('Leman'), ('Mert'), ('Nisa'), ('Orhan'), 
('Pelin'), ('R�ya'), ('Serta�'), ('Tu�ba'), ('U�ur'), ('Vural'), ('Yasin'), ('Zeliha'), 
('Arda'), ('Bet�l'), ('Cihan'), ('Dila'), ('Efe'), ('Figen'), ('G�l'), ('Hayri'), 
('�lker'), ('Jale'), ('Kamuran'), ('Levent'), ('Meltem'), ('Nazl�'), ('�zge'), 
('Pervin'), ('Rasim'), ('Suna'), ('Tamer'), ('Utku'), ('Vedat'), ('Yavuz'), ('Zuhal'), 
('Alper'), ('Bilge'), ('Cem'), ('Deniz'), ('Eren'), ('Kerem'), ('Ahmet'), ('H�seyin'), 
('Rasim'), ('Emine'), ('Aysel'), ('Handan'), ('G�l�in'), ('Selen'), ('Gamze'), 
('Berna'), ('Sibel'), ('Orhan'), ('�eyma'), ('Fatma'), ('Nermin'), ('Esra'), 
('Derya'), ('Ne�e'), ('Levent'), ('Suat'), ('G�l'), ('Duygu'), ('Nil'), ('Neval'), 
('Burcu'), ('G�rkem'), ('�afak'), ('Eylem'), ('Fatma'), ('G�l�ah'), ('Emel'), 
('Deniz'), ('Esra'), ('Ozan'), ('Ya�mur'), ('Y�cel'), ('Ceyda'), ('Nuri'), ('Serkan'), 
('Gizem'), ('I��k'), ('Ali'), ('Buse'), ('O�uz'), ('Deniz'), ('Asl�'), ('Beg�m'), 
('Rana'), ('�pek'), ('Tu��e'), ('Ege'), ('Pelin'), ('Sibel'), ('Selin'), ('Seray'), 
('Nejat'), ('Derya'), ('Neslihan'), ('Zehra'), ('Bet�l'), ('Onur'), ('Taner'), 
('Doruk'), ('Duygu'), ('Haydar'), ('Yasin'), ('Selin'), ('Baran'), ('Deniz'), 
('Ege'), ('Kaan'), ('Doruk'), ('Caner'), ('Pelin'), ('Okan'), ('Ferhat'), ('�rem'), 
('Sena'), ('�smail'), ('Serdar'), ('Baran'), ('�zlem'), ('F�rat'), ('Bora'), 
('Deniz'), ('Alev'), ('Eren'), ('Gamze'), ('Serdar'), ('Ceren'), ('G�l'), ('Suat'), 
('B��ra')


declare @soyadlar table (Soyad nvarchar(50));
insert into @soyadlar values
('Y�lmaz'), ('Kaya'), ('Demir'), ('�ahin'), ('Y�ld�z'), ('Ayd�n'), ('Arslan'), ('I��k'), 
('K�l��'), ('�elik'), ('Y�cel'), ('Uzun'), ('Kaplan'), ('Aksoy'), ('Ko�'), ('Yal��n'), 
('�ak�r'), ('Kurt'), ('Tekin'), ('�zt�rk'), ('Bayraktar'), ('Ak�n'), ('Karaca'), 
('Bozkurt'), ('Altun'), ('Y�ksel'), ('Ay'), ('Pekta�'), ('Gen�'), ('Durmaz'), 
('Sa�lam'), ('G�ler'), ('�im�ek'), ('Mutlu'), ('Eren'), ('�nce'), ('Erdo�an'), 
('Polat'), ('Ate�'), ('�etin'), ('Korkmaz'), ('Tanr�verdi'), ('Tuncer'), ('Ko�ak'), 
('Can'), ('Kalkan'), ('Bircan'), ('Do�an'), ('Kara'), ('Din�'), ('Sar�'), ('�zdemir'), 
('Kurtulu�'), ('�ilingir'), ('Tosun'), ('Ba�ar'), ('Akta�'), ('�zer'), ('Erdem'), 
('Yurtsever'), ('Ba�c�'), ('K�z�l'), ('G�k'), ('G�ne�'), ('�nc�'), ('Sezer'), ('Da�'), 
('Kaplan'), ('Ko�yi�it'), ('Tokg�z'), ('Yi�it'), ('�ent�rk'), ('Akarsu'), ('G�nay'), 
('G�ney'), ('Erdal'), ('G�ven'), ('Karaku�'), ('Yal��nkaya'), ('Erg�n'), ('Demirta�'), 
('Karaman'), ('��nar'), ('K�l�n�'), ('Ersoy'), ('Ba�'), ('�ener'), ('G��l�'), 
('�etinkaya'), ('Aksoy'), ('Soysal'), ('Candan'), ('Aslan'), ('Batur'), ('Akg�n'), 
('Er'), ('K�nal�'), ('Boz'), ('Bilgin'), ('Alkan'), ('Aydo�du'), ('Bayram'), ('Sava�'), 
('�a�lar'), ('Vural'), ('Bora'), ('Torun'), ('Ergin'), ('�elenk'), ('Akbaba'), 
('Ak�nc�'), ('Yal��n'), ('Yaman'), ('Altay'), ('Kocakaya'), ('Korkut'), ('Olgun'), 
('Ulusoy'), ('Ba���'), ('�akar'), ('Yeti�'), ('Sar�g�l'), ('Erdo�an'), ('Kay�'), 
('Ba�t�rk'), ('Ku�'), ('Toprak'), ('Kalender'), ('�zek'), ('Bekta�'), ('�am'), 
('Dal'), ('Elmas'), ('Pekg�z'), ('Onur'), ('Karakaya'), ('�oban'), ('Kurtul'), 
('Demirta�'), ('Toraman'), ('Balc�'), ('D�nmez'), ('G�n'), ('Ertan'), ('Koca'), 
('Topal'), ('Bildik'), ('Alkan'), ('Alt�parmak'), ('Yavuz'), ('Vardar'), ('Tek'), 
('Parlak'), ('�ahin'), ('�zkan'), ('Bayrak'), ('Acar'), ('G�ven�'), ('Kele�'), 
('Yal�n'), ('Gedik'), ('Derman'), ('I��k'), ('G�der'), ('Diril'), ('Bak�r'), 
('Tepe'), ('Sevim'), ('�nan�'), ('�nci'), ('Mutluer'), ('Okur'), ('Koca'), ('Bilir'), 
('Uz'), ('Bilgi�'), ('Demirhan'), ('�ncel'), ('Deniz'), ('�a�da�'), ('Erdo�du'), 
('�ner'), ('Tamer'), ('Bay�nd�r'), ('Sinan'), ('Erg�der'), ('Ba�ak'), ('Aktan'), 
('�a�lar'), ('Yi�it'), ('Kuzu'), ('K�l��arslan'), ('Ko�er'), ('K�nal�'), ('G��l�'), 
('Din�er'), ('Parlak'), ('�am'), ('�al��kan'), ('Uzuner')

while @i <= 5000
begin
 select TOP 1 @Ad = Ad from @Isimler order by NEWID();

 select TOP 1 @Soyad = Soyad from @soyadlar order by NEWID();

 set @Email = LOWER(@Ad)+'.'+LOWER(@Soyad)+cast(@i as nvarchar(10))+'@example.com';

 insert into ogrenci(OgrenciAd,OgrenciSoyad,Email)
 values (@Ad,@Soyad,@Email)

 set @i = @i+1;
 end


 select count(*) from ogrenci
 select * from ogrenci