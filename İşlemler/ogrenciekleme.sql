declare @i INT = 1;
declare @Ad NVARCHAR(50);
declare @Soyad NVARCHAR(50);
declare @Email NVARCHAR(50);

declare @Isimler table (Ad nvarchar(50));
insert into @Isimler values
('Ali'), ('Ahmet'), ('Mehmet'), ('Ayþe'), ('Fatma'), ('Hasan'), ('Hüseyin'), ('Elif'), 
('Zeynep'), ('Emre'), ('Yusuf'), ('Oðuz'), ('Burak'), ('Melis'), ('Eren'), ('Can'), 
('Derya'), ('Ýrem'), ('Leyla'), ('Gökhan'), ('Deniz'), ('Cansu'), ('Kemal'), ('Selin'), 
('Sinan'), ('Ferhat'), ('Büþra'), ('Merve'), ('Onur'), ('Hakan'), ('Sibel'), ('Nehir'), 
('Serkan'), ('Sevil'), ('Ece'), ('Barýþ'), ('Ceyda'), ('Cengiz'), ('Gizem'), ('Halil'), 
('Iþýl'), ('Koray'), ('Lale'), ('Murat'), ('Nalan'), ('Okan'), ('Pýnar'), ('Rýza'), 
('Selim'), ('Taner'), ('Zeynep'), ('Bahar'), ('Cenk'), ('Defne'), ('Erdem'), ('Filiz'), 
('Gürkan'), ('Hale'), ('Irmak'), ('Kaan'), ('Leman'), ('Mert'), ('Nisa'), ('Orhan'), 
('Pelin'), ('Rüya'), ('Sertaç'), ('Tuðba'), ('Uður'), ('Vural'), ('Yasin'), ('Zeliha'), 
('Arda'), ('Betül'), ('Cihan'), ('Dila'), ('Efe'), ('Figen'), ('Gül'), ('Hayri'), 
('Ýlker'), ('Jale'), ('Kamuran'), ('Levent'), ('Meltem'), ('Nazlý'), ('Özge'), 
('Pervin'), ('Rasim'), ('Suna'), ('Tamer'), ('Utku'), ('Vedat'), ('Yavuz'), ('Zuhal'), 
('Alper'), ('Bilge'), ('Cem'), ('Deniz'), ('Eren'), ('Kerem'), ('Ahmet'), ('Hüseyin'), 
('Rasim'), ('Emine'), ('Aysel'), ('Handan'), ('Gülçin'), ('Selen'), ('Gamze'), 
('Berna'), ('Sibel'), ('Orhan'), ('Þeyma'), ('Fatma'), ('Nermin'), ('Esra'), 
('Derya'), ('Neþe'), ('Levent'), ('Suat'), ('Gül'), ('Duygu'), ('Nil'), ('Neval'), 
('Burcu'), ('Görkem'), ('Þafak'), ('Eylem'), ('Fatma'), ('Gülþah'), ('Emel'), 
('Deniz'), ('Esra'), ('Ozan'), ('Yaðmur'), ('Yücel'), ('Ceyda'), ('Nuri'), ('Serkan'), 
('Gizem'), ('Iþýk'), ('Ali'), ('Buse'), ('Oðuz'), ('Deniz'), ('Aslý'), ('Begüm'), 
('Rana'), ('Ýpek'), ('Tuðçe'), ('Ege'), ('Pelin'), ('Sibel'), ('Selin'), ('Seray'), 
('Nejat'), ('Derya'), ('Neslihan'), ('Zehra'), ('Betül'), ('Onur'), ('Taner'), 
('Doruk'), ('Duygu'), ('Haydar'), ('Yasin'), ('Selin'), ('Baran'), ('Deniz'), 
('Ege'), ('Kaan'), ('Doruk'), ('Caner'), ('Pelin'), ('Okan'), ('Ferhat'), ('Ýrem'), 
('Sena'), ('Ýsmail'), ('Serdar'), ('Baran'), ('Özlem'), ('Fýrat'), ('Bora'), 
('Deniz'), ('Alev'), ('Eren'), ('Gamze'), ('Serdar'), ('Ceren'), ('Gül'), ('Suat'), 
('Büþra')


declare @soyadlar table (Soyad nvarchar(50));
insert into @soyadlar values
('Yýlmaz'), ('Kaya'), ('Demir'), ('Þahin'), ('Yýldýz'), ('Aydýn'), ('Arslan'), ('Iþýk'), 
('Kýlýç'), ('Çelik'), ('Yücel'), ('Uzun'), ('Kaplan'), ('Aksoy'), ('Koç'), ('Yalçýn'), 
('Çakýr'), ('Kurt'), ('Tekin'), ('Öztürk'), ('Bayraktar'), ('Akýn'), ('Karaca'), 
('Bozkurt'), ('Altun'), ('Yüksel'), ('Ay'), ('Pektaþ'), ('Genç'), ('Durmaz'), 
('Saðlam'), ('Güler'), ('Þimþek'), ('Mutlu'), ('Eren'), ('Ýnce'), ('Erdoðan'), 
('Polat'), ('Ateþ'), ('Çetin'), ('Korkmaz'), ('Tanrýverdi'), ('Tuncer'), ('Koçak'), 
('Can'), ('Kalkan'), ('Bircan'), ('Doðan'), ('Kara'), ('Dinç'), ('Sarý'), ('Özdemir'), 
('Kurtuluþ'), ('Çilingir'), ('Tosun'), ('Baþar'), ('Aktaþ'), ('Özer'), ('Erdem'), 
('Yurtsever'), ('Baðcý'), ('Kýzýl'), ('Gök'), ('Güneþ'), ('Öncü'), ('Sezer'), ('Dað'), 
('Kaplan'), ('Koçyiðit'), ('Tokgöz'), ('Yiðit'), ('Þentürk'), ('Akarsu'), ('Günay'), 
('Güney'), ('Erdal'), ('Güven'), ('Karakuþ'), ('Yalçýnkaya'), ('Ergün'), ('Demirtaþ'), 
('Karaman'), ('Çýnar'), ('Kýlýnç'), ('Ersoy'), ('Baþ'), ('Þener'), ('Güçlü'), 
('Çetinkaya'), ('Aksoy'), ('Soysal'), ('Candan'), ('Aslan'), ('Batur'), ('Akgün'), 
('Er'), ('Kýnalý'), ('Boz'), ('Bilgin'), ('Alkan'), ('Aydoðdu'), ('Bayram'), ('Savaþ'), 
('Çaðlar'), ('Vural'), ('Bora'), ('Torun'), ('Ergin'), ('Çelenk'), ('Akbaba'), 
('Akýncý'), ('Yalçýn'), ('Yaman'), ('Altay'), ('Kocakaya'), ('Korkut'), ('Olgun'), 
('Ulusoy'), ('Baðýþ'), ('Çakar'), ('Yetiþ'), ('Sarýgül'), ('Erdoðan'), ('Kayý'), 
('Baþtürk'), ('Kuþ'), ('Toprak'), ('Kalender'), ('Özek'), ('Bektaþ'), ('Çam'), 
('Dal'), ('Elmas'), ('Pekgöz'), ('Onur'), ('Karakaya'), ('Çoban'), ('Kurtul'), 
('Demirtaþ'), ('Toraman'), ('Balcý'), ('Dönmez'), ('Gün'), ('Ertan'), ('Koca'), 
('Topal'), ('Bildik'), ('Alkan'), ('Altýparmak'), ('Yavuz'), ('Vardar'), ('Tek'), 
('Parlak'), ('Þahin'), ('Özkan'), ('Bayrak'), ('Acar'), ('Güvenç'), ('Keleþ'), 
('Yalýn'), ('Gedik'), ('Derman'), ('Iþýk'), ('Güder'), ('Diril'), ('Bakýr'), 
('Tepe'), ('Sevim'), ('Ýnanç'), ('Ýnci'), ('Mutluer'), ('Okur'), ('Koca'), ('Bilir'), 
('Uz'), ('Bilgiç'), ('Demirhan'), ('Öncel'), ('Deniz'), ('Çaðdaþ'), ('Erdoðdu'), 
('Üner'), ('Tamer'), ('Bayýndýr'), ('Sinan'), ('Ergüder'), ('Baþak'), ('Aktan'), 
('Çaðlar'), ('Yiðit'), ('Kuzu'), ('Kýlýçarslan'), ('Koçer'), ('Kýnalý'), ('Güçlü'), 
('Dinçer'), ('Parlak'), ('Çam'), ('Çalýþkan'), ('Uzuner')

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