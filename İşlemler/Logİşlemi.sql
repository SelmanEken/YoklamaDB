create table Log_Tablosu(
	LogID int identity(1,1) primary key,
	OgrenciNo int,
	IslemTipi nvarchar(50),
	IslemTarihi datetime,
	IslemYapanKullanici nvarchar(50)
)

create trigger trg_LogOgrenciEkleme
on ogrenci
for insert
as
begin
	declare @OgrenciID int, @IslemTarihi datetime, @IslemYapanKullanici nvarchar(50)

	select @OgrenciID = OgrenciNo from inserted
	set @IslemTarihi = GETDATE()
	set @IslemYapanKullanici =SYSTEM_USER

	insert into Log_Tablosu(OgrenciNo,IslemTipi,IslemTarihi,IslemYapanKullanici)
	values (@OgrenciID,'INSERT',@IslemTarihi,@IslemYapanKullanici)
end

select OgrenciAd from ogrenci
where OgrenciNo = 5001

insert into ogrenci (OgrenciAd,OgrenciSoyad,Email)
values ('Selman','Eken','selman.eken@example.com')