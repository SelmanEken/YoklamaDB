create database YoklamaDB
use YoklamaDB

CREATE TABLE kullanici (
    KullaniciID INT IDENTITY(1,1) PRIMARY KEY,
    KullaniciAd VARCHAR(50),
    KullaniciSoyad VARCHAR(50),
    Eposta VARCHAR(50),
	KullaniciAdi VARCHAR(50) UNIQUE,
    Parola VARCHAR(50)
);



CREATE TABLE ogrenci (
    OgrenciNo INT IDENTITY(1,1) PRIMARY KEY,
    OgrenciAd VARCHAR(50),
    OgrenciSoyad VARCHAR(50)
);

CREATE TABLE ders (
    DersID INT IDENTITY(1,1) PRIMARY KEY,
    DersAdi VARCHAR(50)
);


CREATE TABLE kullaniciders (
    KullaniciID INT,
    DersID INT,
    PRIMARY KEY (KullaniciID, DersID),
    FOREIGN KEY (KullaniciID) REFERENCES kullanici(KullaniciID),
    FOREIGN KEY (DersID) REFERENCES ders(DersID)
);


CREATE TABLE ogrenciders (
    OgrenciNo INT,
    DersID INT,
    PRIMARY KEY (OgrenciNo, DersID),
    FOREIGN KEY (OgrenciNo) REFERENCES ogrenci(OgrenciNo),
    FOREIGN KEY (DersID) REFERENCES ders(DersID)
);


CREATE TABLE ogrenciyoklama (
    YoklamaID INT IDENTITY(1,1) PRIMARY KEY,
    OgrenciNo INT,
    DersID INT,
    Tarih DATE,
    FOREIGN KEY (OgrenciNo) REFERENCES ogrenci(OgrenciNo),
    FOREIGN KEY (DersID) REFERENCES ders(DersID)
);



select count(*) from kullanici
select count(*) from ogrenci
select count(*) from ders
select count(*) from kullaniciders
select count(*) from ogrenciders
select count(*) from ogrenciyoklama
