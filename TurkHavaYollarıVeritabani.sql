USE [THYWebOtomasyonu]
GO
/****** Object:  UserDefinedFunction [dbo].[İsimleriBuyut]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[İsimleriBuyut](@isim varchar(50))
returns varchar(10)
as
begin
return UPPER(@isim)
end

--select dbo.İsimleriBuyut(KARTADSOYAD) as [İsim-Soyisim] from TBL_OdemeBilgisi
GO
/****** Object:  Table [dbo].[TBL_BiletOlusturma]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_BiletOlusturma](
	[BILETID] [int] IDENTITY(1,1) NOT NULL,
	[NEREDEN] [varchar](50) NULL,
	[NEREYE] [varchar](50) NULL,
	[TARIH] [date] NULL,
	[YOLCU] [varchar](50) NULL,
	[KOLTUKNO] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_BiletOlusturma] PRIMARY KEY CLUSTERED 
(
	[BILETID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[UcusBilgisiGetir]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[UcusBilgisiGetir](@Nereden VARCHAR(50))  
RETURNS TABLE  
AS  
RETURN  
    SELECT * FROM TBL_BiletOlusturma WHERE NEREDEN=@Nereden
GO
/****** Object:  Table [dbo].[TBL_UyeEkleme]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_UyeEkleme](
	[UYEID] [int] IDENTITY(1,1) NOT NULL,
	[TCNUMARA] [varchar](50) NULL,
	[UYESIFRE] [varchar](50) NULL,
	[UYEAD] [varchar](50) NULL,
	[UYESOYAD] [varchar](50) NULL,
	[UYETELEFON] [varchar](50) NULL,
	[UYEULKE] [varchar](50) NULL,
	[UYESEHIR] [varchar](50) NULL,
	[UYEMAIL] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_UyeEkleme] PRIMARY KEY CLUSTERED 
(
	[UYEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[UlkeyeGoreUyeGetir]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  FUNCTION [dbo].[UlkeyeGoreUyeGetir](@ulke varchar(20))
RETURNS TABLE
AS
RETURN
SELECT * FROM TBL_UyeEkleme WHERE UYEULKE = @ulke

--SELECT * FROM dbo.UlkeyeGoreUyeGetir('almanya')
GO
/****** Object:  Table [dbo].[TBL_Admin]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Admin](
	[ADMINNUMARA] [varchar](50) NULL,
	[ADMINSIFRE] [varchar](50) NULL,
	[ADMINAD] [varchar](50) NULL,
	[ADMINSOYAD] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_DurumEklenen]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DurumEklenen](
	[Id] [int] NULL,
	[Durum] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_DurumSilme]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DurumSilme](
	[Id] [int] NULL,
	[Durum] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_OdemeBilgisi]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_OdemeBilgisi](
	[KARTID] [int] IDENTITY(1,1) NOT NULL,
	[KARTADSOYAD] [varchar](50) NULL,
	[KARTNO] [varchar](50) NULL,
	[KARTCVC] [varchar](50) NULL,
	[KARTTARIH] [date] NULL,
 CONSTRAINT [PK_TBL_OdemeBilgisi] PRIMARY KEY CLUSTERED 
(
	[KARTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Personel]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Personel](
	[PERSONELID] [int] IDENTITY(1,1) NOT NULL,
	[PERSONELNUMARA] [nvarchar](50) NULL,
	[PERSONELSIFRE] [nvarchar](50) NULL,
	[PERSONELAD] [nvarchar](50) NULL,
	[PERSONELSOYAD] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_Personel] PRIMARY KEY CLUSTERED 
(
	[PERSONELID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_SilmeDurum2]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_SilmeDurum2](
	[Id] [int] NULL,
	[Durum] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[TBL_Admin] ([ADMINNUMARA], [ADMINSIFRE], [ADMINAD], [ADMINSOYAD]) VALUES (N'1', N'1111', N'TÜRK HAVA YOLLARI', N'ADMİNİ')
GO
SET IDENTITY_INSERT [dbo].[TBL_BiletOlusturma] ON 

INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (3, N'van', N'muş', CAST(N'2023-09-28' AS Date), N'Öğrenci', N'54')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (22, N'Antalya', N'Kars', CAST(N'2023-06-28' AS Date), N'Çocuk', N'56')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (23, N'İstanbul', N'Batman', CAST(N'2024-02-28' AS Date), N'Yetişkin', N'1')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (24, N'Muş', N'Mersin', CAST(N'2024-12-16' AS Date), N'Öğrenci', N'44')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (27, N'Elazığ', N'İzmir', CAST(N'2024-02-06' AS Date), N'Öğrenci', N'12')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (28, N'Adana', N'Eskişehir', CAST(N'2024-01-10' AS Date), N'Çocuk', N'45')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (29, N'Erzurum', N'Trabzon', CAST(N'2024-01-12' AS Date), N'Yetişkin', N'33')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (30, N'Van', N'Çanakkale', CAST(N'2024-06-25' AS Date), N'Öğrenci', N'43')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (31, N'Antalya', N'Erzurum', CAST(N'2023-09-28' AS Date), N'Öğrenci', N'3')
INSERT [dbo].[TBL_BiletOlusturma] ([BILETID], [NEREDEN], [NEREYE], [TARIH], [YOLCU], [KOLTUKNO]) VALUES (32, N'Van', N'Erzurum', CAST(N'2023-09-28' AS Date), N'Çocuk', N'1')
SET IDENTITY_INSERT [dbo].[TBL_BiletOlusturma] OFF
GO
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (27, N'Eklenen Üyenin - Idsi: 27, Eklenen Üyenin  TC Numarası: 68689592685,Eklenen Üyenin  Şifresi: 1010, Eklenen Üyenin Adı: ahmet, Eklenen Üyenin Soyadı: kayalı, Eklenen Üyenin Telefonu: 5577899698, Eklenen Üyenin Ülkesi: Almanya, Eklenen Üyenin Şehiri: berlin, Eklenen Üyenin Emaili: jejr@outlook.com')
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (28, N'Eklenen Üyenin - Idsi: 28, Eklenen Üyenin  TC Numarası: 68689592685,Eklenen Üyenin  Şifresi: 1010, Eklenen Üyenin Adı: ahmet, Eklenen Üyenin Soyadı: kayalı, Eklenen Üyenin Telefonu: 5577899698, Eklenen Üyenin Ülkesi: Almanya, Eklenen Üyenin Şehiri: berlin, Eklenen Üyenin Emaili: jejr@outlook.com')
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (29, N'Eklenen Üyenin - Idsi: 29, Eklenen Üyenin  TC Numarası: 66646498648,Eklenen Üyenin  Şifresi: 4566, Eklenen Üyenin Adı: Alican, Eklenen Üyenin Soyadı: Topraklı, Eklenen Üyenin Telefonu: 5499876569, Eklenen Üyenin Ülkesi: Hollanda, Eklenen Üyenin Şehiri: Amsterdam, Eklenen Üyenin Emaili: hi@gmailom')
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (30, N'Eklenen Üyenin - Idsi: 30, Eklenen Üyenin  TC Numarası: 56978215698,Eklenen Üyenin  Şifresi: 1234, Eklenen Üyenin Adı: Feyza , Eklenen Üyenin Soyadı: Kalıplı , Eklenen Üyenin Telefonu: 05466987569 , Eklenen Üyenin Ülkesi: Mısır, Eklenen Üyenin Şehiri: Asvan , Eklenen Üyenin Emaili: feyza@outlook.com ')
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (31, N'Eklenen Üyenin - Idsi: 31, Eklenen Üyenin  TC Numarası: 56978215698,Eklenen Üyenin  Şifresi: 1234, Eklenen Üyenin Adı: Feyza , Eklenen Üyenin Soyadı: Kalıplı , Eklenen Üyenin Telefonu: 05466987569 , Eklenen Üyenin Ülkesi: Mısır, Eklenen Üyenin Şehiri: Asvan , Eklenen Üyenin Emaili: feyza@outlook.com ')
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (33, N'Eklenen Üyenin - Idsi: 33, Eklenen Üyenin  TC Numarası: 1,Eklenen Üyenin  Şifresi: 1, Eklenen Üyenin Adı: 1, Eklenen Üyenin Soyadı: 1, Eklenen Üyenin Telefonu: 1, Eklenen Üyenin Ülkesi: 1, Eklenen Üyenin Şehiri: 1, Eklenen Üyenin Emaili: 1')
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (35, N'Eklenen Üyenin - Idsi: 35, Eklenen Üyenin  TC Numarası: 68689592685,Eklenen Üyenin  Şifresi: 1010, Eklenen Üyenin Adı: ali, Eklenen Üyenin Soyadı: kayalı, Eklenen Üyenin Telefonu: 5577899698, Eklenen Üyenin Ülkesi: Almanya, Eklenen Üyenin Şehiri: berlin, Eklenen Üyenin Emaili: jejr@outlook.com')
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (32, N'Eklenen Üyenin - Idsi: 32, Eklenen Üyenin  TC Numarası: 68689592685,Eklenen Üyenin  Şifresi: 1010, Eklenen Üyenin Adı: ahmet, Eklenen Üyenin Soyadı: kayalı, Eklenen Üyenin Telefonu: 5577899698, Eklenen Üyenin Ülkesi: Almanya, Eklenen Üyenin Şehiri: berlin, Eklenen Üyenin Emaili: jejr@outlook.com')
INSERT [dbo].[TBL_DurumEklenen] ([Id], [Durum]) VALUES (34, N'Eklenen Üyenin - Idsi: 34, Eklenen Üyenin  TC Numarası: 68689592685,Eklenen Üyenin  Şifresi: 1010, Eklenen Üyenin Adı: ahmet, Eklenen Üyenin Soyadı: kayalı, Eklenen Üyenin Telefonu: 5577899698, Eklenen Üyenin Ülkesi: Almanya, Eklenen Üyenin Şehiri: berlin, Eklenen Üyenin Emaili: jejr@outlook.com')
GO
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (6, N'Silinen kayıt Id:6, Nerden:Van, Nereye:muş, Tarih:2023-09-28 00:00:00, Yolcu:Öğrenci, KoltukNo:15')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (15, N'Silinen kayıt Id: si15, Nerden: antalya, Nereye: van, Tarih: 2023-02-28 00:00:00, Yolcu Türü: Çocuk, Koltuk No:56')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (17, N'Silinen kayıt Id: si17, Nerden: D, Nereye: D, Tarih: 2023-09-28 00:00:00, Yolcu Türü: D, Koltuk No:D')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (16, N'Silinen kayıt Id: si16, Nerden: F, Nereye: F, Tarih: 2023-09-28 00:00:00, Yolcu Türü: F, Koltuk No:F')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (18, N'Silinen kayıt Id: si18, Nerden: , Nereye: , Tarih: 2023-09-28 00:00:00, Yolcu Türü: , Koltuk No:')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (19, N'Silinen kayıt Id: si19, Nerden: , Nereye: , Tarih: 2023-09-28 00:00:00, Yolcu Türü: , Koltuk No:')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (20, N'Silinen kayıt Id: si20, Nerden: , Nereye: , Tarih: 2023-09-28 00:00:00, Yolcu Türü: , Koltuk No:')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (26, N'Silinen kayıt Id: si26, Nerden: , Nereye: , Tarih: 2023-09-28 00:00:00, Yolcu Türü: , Koltuk No:')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (25, N'Silinen kayıt Id: si25, Nerden: , Nereye: , Tarih: 2023-09-28 00:00:00, Yolcu Türü: , Koltuk No:')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (34, N'Silinen kayıt Id: si34, Nerden: Van, Nereye: Erzurum, Tarih: 2001-09-16 00:00:00, Yolcu Türü: Öğrenci, Koltuk No:5')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (21, N'Silinen kayıt Id: si21, Nerden: , Nereye: , Tarih: 2023-09-28 00:00:00, Yolcu Türü: , Koltuk No:')
INSERT [dbo].[TBL_DurumSilme] ([Id], [Durum]) VALUES (33, N'Silinen kayıt Id: si33, Nerden: Van, Nereye: Batman, Tarih: 2024-02-28 00:00:00, Yolcu Türü: Öğrenci, Koltuk No:44')
GO
SET IDENTITY_INSERT [dbo].[TBL_OdemeBilgisi] ON 

INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (1, N' Kerem Toprak', N'1564646464864', N'048', CAST(N'2028-12-12' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (2, N'Kerem Can Kamış', N'56899876458965', N'444', CAST(N'2028-02-02' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (3, N'Kerem Can Kamış', N'56899876458965', N'1133', CAST(N'2028-02-02' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (5, N'ahmet alişş', N'678776', N'779', CAST(N'2028-09-01' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (8, N'Kerem Sarıkazal', N'156886955968999', N'496', CAST(N'2027-02-01' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (12, N'Kerem', N'64848489', N'455', CAST(N'2028-06-01' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (14, N'Kerem Can Kamışlı', N'6519181619186', N'753', CAST(N'2027-02-01' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (16, N'Feyza Muşlu', N'651618816526', N'741', CAST(N'2024-01-07' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (17, N'Ahmet', N'Yokuşlu', N'265', CAST(N'2024-01-21' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (19, N'Ahmet', N'56899876458965', N'343', CAST(N'2028-02-02' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (20, N'Feyza Muşlu', N'56899876458965', N'121', CAST(N'2024-01-07' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (21, N'Keram Ali', N'6464645665', N'455', CAST(N'2028-06-01' AS Date))
INSERT [dbo].[TBL_OdemeBilgisi] ([KARTID], [KARTADSOYAD], [KARTNO], [KARTCVC], [KARTTARIH]) VALUES (22, N'Ahmet', N'56899876458965', N'1114', CAST(N'2024-01-07' AS Date))
SET IDENTITY_INSERT [dbo].[TBL_OdemeBilgisi] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Personel] ON 

INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (2, N'0002', N'6789', N'KEREM', N'TOPRAK')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (3, N'0003', N'1357', N'ALİCAN', N'TOKLU')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (4, N'0004', N'2255', N'MERT', N'SARIKLI')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (14, N'0006', N'64684', N'MERT', N'SAMANLI')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (19, N'0005', N'0808', N'KERİMCAN', N'kAHRAMAN')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (20, N'0001', N'0298', N'ALİCAN', N'KUŞLU')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (21, N'0007', N'7530', N'NAZLI', N'TOPRAKLI')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (22, N'0002', N'4153', N'ZEYNEP', N'PAŞAOĞLU')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (23, N'0005', N'0808', N'KERİMCAN', N'kAHRAMAN')
INSERT [dbo].[TBL_Personel] ([PERSONELID], [PERSONELNUMARA], [PERSONELSIFRE], [PERSONELAD], [PERSONELSOYAD]) VALUES (24, N'0005', N'0808', N'KERİMCAN', N'kAHRAMAN')
SET IDENTITY_INSERT [dbo].[TBL_Personel] OFF
GO
INSERT [dbo].[TBL_SilmeDurum2] ([Id], [Durum]) VALUES (6, N'Silinen kayıt Id: si6, Ad-Soyadı: ahmet alişş kART Nosu: 678776 Kart CVCsi: 779879 Tarih: 2028-09-01 00:00:00')
INSERT [dbo].[TBL_SilmeDurum2] ([Id], [Durum]) VALUES (7, N'Silinen kayıt Id: si7, Ad-Soyadı: Kerem Sarıkazal kART Nosu: 156886955968999 Kart CVCsi: 49 Tarih: 2027-02-01 00:00:00')
INSERT [dbo].[TBL_SilmeDurum2] ([Id], [Durum]) VALUES (15, N'Silinen kayıt Id: si15, Ad-Soyadı: Kerem Can Kamış kART Nosu: 56899876458965 Kart CVCsi:  Tarih: 2028-02-02 00:00:00')
INSERT [dbo].[TBL_SilmeDurum2] ([Id], [Durum]) VALUES (11, N'Silinen kayıt Id: si11, Ad-Soyadı: Keram Ali kART Nosu: 6464645665 Kart CVCsi: 455 Tarih: 2028-06-01 00:00:00')
INSERT [dbo].[TBL_SilmeDurum2] ([Id], [Durum]) VALUES (10, N'Silinen kayıt Id: si10, Ad-Soyadı: Keram Ali kART Nosu: 6464645665 Kart CVCsi: 455 Tarih: 2028-06-01 00:00:00')
INSERT [dbo].[TBL_SilmeDurum2] ([Id], [Durum]) VALUES (9, N'Silinen kayıt Id: si9, Ad-Soyadı: Keram Ali kART Nosu: 6464645665 Kart CVCsi: 455 Tarih: 2028-06-01 00:00:00')
INSERT [dbo].[TBL_SilmeDurum2] ([Id], [Durum]) VALUES (13, N'Silinen kayıt Id: si13, Ad-Soyadı: Kerem Sarıkazal kART Nosu: 156886955968999 Kart CVCsi: 496 Tarih: 2027-02-01 00:00:00')
INSERT [dbo].[TBL_SilmeDurum2] ([Id], [Durum]) VALUES (18, N'Silinen kayıt Id: si18, Ad-Soyadı:  kART Nosu:  Kart CVCsi:  Tarih: 2024-01-21 00:00:00')
GO
SET IDENTITY_INSERT [dbo].[TBL_UyeEkleme] ON 

INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (1, N'62689548698', N'123', N'Ahmet', N'Toprak', N'05511698715', N'Türkiye', N'İstanbul', N'dbfhbrb@gmail.com')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (5, N'16166161651', N'1a1', N'Ali', N'Muker', N'05444869786', N'Almanya', N'Münih', N'eojeoj@gmail.com')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (6, N'5698954876', N'789aba', N'Muhammed', N'Kazancı', N'464864646446', N'Türkiye', N'Gümüşhabe', N'wre5hr6e')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (8, N'66464', N'1122', N'Buse', N'Ayazoglu', N'05577896312', N'Turkiye', N'Elazığ', N'buse7@gmail.com')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (20, N'464646464', N'1313', N'Zeynep', N'Nazlıoğlu', N'05699874658', N'Irak', N'Kerkük', N'zeynepnazlıoglu@outlook.com')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (27, N'68689592685', N'1010', N'ahmet', N'kayalı', N'5577899698', N'Almanya', N'berlin', N'jejr@outlook.com')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (28, N'68689592685', N'1010', N'ahmet', N'kayalı', N'5577899698', N'Almanya', N'berlin', N'jejr@outlook.com')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (29, N'66646498648', N'4566', N'Alican', N'Topraklı', N'5499876569', N'Hollanda', N'Amsterdam', N'hi@gmailom')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (30, N'56978215698', N'1234', N'Feyza ', N'Kalıplı ', N'05466987569 ', N'Mısır', N'Asvan ', N'feyza@outlook.com ')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (31, N'56978215698', N'1234', N'Feyza ', N'Kalıplı ', N'05466987569 ', N'Mısır', N'Asvan ', N'feyza@outlook.com ')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (32, N'68689592685', N'1010', N'ahmet', N'kayalı', N'5577899698', N'Almanya', N'berlin', N'jejr@outlook.com')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (33, N'1', N'1', N'1', N'1', N'1', N'1', N'1', N'1')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (34, N'68689592685', N'1010', N'ahmet', N'kayalı', N'5577899698', N'Almanya', N'berlin', N'jejr@outlook.com')
INSERT [dbo].[TBL_UyeEkleme] ([UYEID], [TCNUMARA], [UYESIFRE], [UYEAD], [UYESOYAD], [UYETELEFON], [UYEULKE], [UYESEHIR], [UYEMAIL]) VALUES (35, N'68689592685', N'1010', N'ali', N'kayalı', N'5577899698', N'Almanya', N'berlin', N'jejr@outlook.com')
SET IDENTITY_INSERT [dbo].[TBL_UyeEkleme] OFF
GO
/****** Object:  StoredProcedure [dbo].[KartEkleme]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[KartEkleme]
 @adsoyad NVARCHAR(255),
    @kartno NVARCHAR(255),
   @kartcvc NVARCHAR(255),
	@karttarih date

as
begin

   insert into TBL_OdemeBilgisi(KARTADSOYAD,KARTNO,KARTCVC,KARTTARIH)
   values
   ( @adsoyad,@kartno, @kartcvc,@karttarih)

   select 'Kartınız  başarılı bir şekilde eklenmiştir'

end;

--exec KartEkleme 
--   @adsoyad='Keram Ali',
--   @kartno='6464645665',
--   @kartcvc='455',
--   @karttarih='2028-06-01'
GO
/****** Object:  StoredProcedure [dbo].[up_AdminGirisi]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[up_AdminGirisi]
@AdmininNumarası nvarchar(50),
@AdmininSifresi nvarchar(50)
as
begin
 declare @Sonuc nvarchar(50);

    IF EXISTS (select * from TBL_Admin where ADMINNUMARA = @AdmininNumarası and ADMINSIFRE = @AdmininSifresi)
        SET @Sonuc = 'Başarılı giriş. Sayın admin, hoş geldiniz.';
    ELSE
        SET @Sonuc = 'Hatalı giriş. Lütfen tekrar deneyin.';

    select @Sonuc as [Sonuc];
end;


--exec up_AdminGirisi
--    @AdmininNumarası = 'admin123',
--    @AdmininSifresi = 'sifre1232'

--exec up_AdminGirisi
--    @AdmininNumarası = 1,
--    @AdmininSifresi = 1111
GO
/****** Object:  StoredProcedure [dbo].[Usp_UyeGiris]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_UyeGiris]
    @TCNumara NVARCHAR(50),
    @Sifre NVARCHAR(255)
AS
BEGIN
   

    -- TCNumara ve Şifre kontrolü
    IF EXISTS (SELECT * FROM TBL_UyeEkleme WHERE TCNUMARA = @TCNumara AND UYESIFRE = @Sifre)
    BEGIN
        -- Kullanıcı girişi başarılı
        SELECT 'Giriş Başarılı' AS Mesaj;
    END
    ELSE
    BEGIN
        -- Hatalı giriş
        SELECT 'Hatalı TC Numarası veya Şifre' AS Mesaj;
    END
END;

--exec Usp_UyeGiris
--@TCNumara='62689548698',
--@Sifre='123'

--exec Usp_UyeGiris
--@TCNumara='62689548698',
--@Sifre='1234'
GO
/****** Object:  StoredProcedure [dbo].[Usp_YolculukAra]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_YolculukAra]
    @Nerden NVARCHAR(255),
    @Nereye NVARCHAR(255)
AS
BEGIN
    -- Nerden ve Nereye kontrolü
    SELECT *
    FROM TBL_BiletOlusturma
    WHERE NEREDEN = @Nerden AND NEREYE = @Nereye;
END;


--exec Usp_YolculukAra @Nerden=van,@Nereye=muş
GO
/****** Object:  StoredProcedure [dbo].[UyeBilgisiEkle]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UyeBilgisiEkle]
 @TCNUMARA NVARCHAR(255),
    @UYESIFRE NVARCHAR(255),
   @UYESOYAD NVARCHAR(255),
	@UYEAD NVARCHAR(255),
    @UYETELEFON NVARCHAR(255),
	 @UYEULKE NVARCHAR(255),
	  @UYESEHIR NVARCHAR(255),
	  @UYEMAIL NVARCHAR(255)
as
begin

   insert into TBL_UyeEkleme(TCNUMARA,UYESIFRE,UYEAD,UYESOYAD,UYETELEFON,UYEULKE,UYESEHIR,UYEMAIL)
   values
   (@TCNUMARA,@UYESIFRE,@UYEAD,@UYESOYAD,@UYETELEFON,@UYEULKE,@UYESEHIR,@UYEMAIL)

   select 'ekleme işlemi başarılı bir şekilde gerçekleşti'

end;
GO
/****** Object:  StoredProcedure [dbo].[UyeBilgisiGuncelle]    Script Date: 7.01.2024 05:04:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UyeBilgisiGuncelle]
    @TCNUMARA NVARCHAR(255),
    @UYESIFRE NVARCHAR(255),
    @UYESOYAD NVARCHAR(255),
    @UYEAD NVARCHAR(255),
    @UYETELEFON NVARCHAR(255),
    @UYEULKE NVARCHAR(255),
    @UYESEHIR NVARCHAR(255),
    @UYEMAIL NVARCHAR(255)
AS
BEGIN
    
        UPDATE TBL_UyeEkleme
        SET
            UYESIFRE = @UYESIFRE, --DEĞİŞKENİMİZ TABLODAKİ DEĞERLE AYNI OLMALI
            UYESOYAD = @UYESOYAD,
            UYEAD = @UYEAD,
            UYETELEFON = @UYETELEFON,
            UYEULKE = @UYEULKE,
            UYESEHIR = @UYESEHIR,
            UYEMAIL = @UYEMAIL
        WHERE
            TCNUMARA = @TCNUMARA; --NUMARALARI EŞİTSE KALANLARI GÜNCELLEME YAPAR

        SELECT 'Üye bilgileri başarıyla güncellendi' AS Mesaj;
   
END;

--EXEC [dbo].[UyeBilgisiGuncelle]
--    @TCNUMARA = 464646464,
--    @UYESIFRE = 1313,
--    @UYESOYAD=A,
--    @UYEAD=A,
--    @UYETELEFON=A,
--    @UYEULKE=A,
--    @UYESEHIR=A,
--    @UYEMAIL=A;
GO
