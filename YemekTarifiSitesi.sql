USE [master]
GO
/****** Object:  Database [Dbo_YemekTarifi]    Script Date: 22.12.2022 00:09:42 ******/
CREATE DATABASE [Dbo_YemekTarifi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dbo_YemekTarifi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Dbo_YemekTarifi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dbo_YemekTarifi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Dbo_YemekTarifi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dbo_YemekTarifi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dbo_YemekTarifi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dbo_YemekTarifi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET  MULTI_USER 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dbo_YemekTarifi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dbo_YemekTarifi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Dbo_YemekTarifi] SET QUERY_STORE = OFF
GO
USE [Dbo_YemekTarifi]
GO
/****** Object:  Table [dbo].[TBL_GUNUNYEMEGİ]    Script Date: 22.12.2022 00:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_GUNUNYEMEGİ](
	[GununYemegiid] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiResim] [varchar](150) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL,
 CONSTRAINT [PK_TBL_GUNUNYEMEGİ] PRIMARY KEY CLUSTERED 
(
	[GununYemegiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_HAKKIMIZDA]    Script Date: 22.12.2022 00:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_HAKKIMIZDA](
	[Metinid] [smallint] IDENTITY(1,1) NOT NULL,
	[Metin] [varchar](2000) NULL,
 CONSTRAINT [PK_TBL_HAKKIMIZDA] PRIMARY KEY CLUSTERED 
(
	[Metinid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_KATEGORİLER]    Script Date: 22.12.2022 00:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_KATEGORİLER](
	[Kategoriid] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[KategoriResim] [varchar](200) NULL,
 CONSTRAINT [PK_TBL_KATEGORİLER] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MESAJLAR]    Script Date: 22.12.2022 00:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MESAJLAR](
	[Mesajid] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajGönderen] [varchar](50) NULL,
	[MesajBaslik] [varchar](50) NULL,
	[MesajMail] [varchar](50) NULL,
	[Mesajicerik] [varchar](500) NULL,
 CONSTRAINT [PK_TBL_MESAJLAR] PRIMARY KEY CLUSTERED 
(
	[Mesajid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_TARİFLER]    Script Date: 22.12.2022 00:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_TARİFLER](
	[Tarifid] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[Tarifyapilis] [varchar](max) NULL,
	[TarifResim] [varchar](100) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL,
 CONSTRAINT [PK_TBL_TARİFLER] PRIMARY KEY CLUSTERED 
(
	[Tarifid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_YEMEKLER]    Script Date: 22.12.2022 00:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_YEMEKLER](
	[Yemekid] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[YemekPuan] [float] NULL,
	[Kategoriid] [smallint] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_TBL_YEMEKLER] PRIMARY KEY CLUSTERED 
(
	[Yemekid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_YORUMLAR]    Script Date: 22.12.2022 00:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_YORUMLAR](
	[Yorumid] [smallint] NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[Yorumİcerik] [varchar](500) NULL,
	[Yemekid] [smallint] NULL,
 CONSTRAINT [PK_TBL_YORUMLAR] PRIMARY KEY CLUSTERED 
(
	[Yorumid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_YÖNETİCİ]    Script Date: 22.12.2022 00:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_YÖNETİCİ](
	[Yoneticiid] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_YÖNETİCİ] PRIMARY KEY CLUSTERED 
(
	[Yoneticiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_GUNUNYEMEGİ] ON 

INSERT [dbo].[TBL_GUNUNYEMEGİ] ([GununYemegiid], [GununYemegiAd], [GununYemegiMalzeme], [GununYemegiTarif], [GununYemegiResim], [GununYemegiPuan], [GununYemegiTarih]) VALUES (1, N'Mücver Kızartma', N'3 adet orta boy yeşil kabak,
3 yumurta,
3 yemek kaşığı un,
1 avuç kıyılmış maydanoz,
İsteğe bağlı bir avuç taze soğan, dereotu, taze nane, vs.,
1/2 çay kaşığı karbonat,
Tuz, karabiber,
Kızartmak için sıvı yağ,
Servis için sarımsaklı yoğurt.', N'Kabakları yıkayıp gerek görüyorsanız (üzerinde zedelenme varsa veya sertse) soyun,
Derin bir kasenin içine bir süzgeç oturtup kabakları süzgecin içine rendenin ince tarafıyla rendeleyin,
Süzgece avucunuzla iyice bastırarak suyunu sıkın,
En son yine avucunuzla parça parça alıp iyice sıkın ve ayrı bir kaba alın,
Kabakların üzerine yumurtaları kırın ve iyice karışana kadar çırpın,
Karbonatı, tuzu ve karabiberi una ekleyip karıştırın,
Unu kabaklı yumurtalı karışıma yavaş yavaş ekleyerek çırpın,
En son kıyılmış yeşilliklerinizi ekleyip karıştırın,
Geniş bir tavada çok az sıvı yağ kızdırın,
Bir kaşık karışımı alıp tavaya koyun ve kaşığın tersiyle düzleyin,
Her seferinde 4 parça pişirerek karışımın tamamını kızartın,
Üzerine sarımsaklı yoğurt dökerek servis yapabilirsiniz.', NULL, 7, CAST(N'2022-12-02T18:11:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[TBL_GUNUNYEMEGİ] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_HAKKIMIZDA] ON 

INSERT [dbo].[TBL_HAKKIMIZDA] ([Metinid], [Metin]) VALUES (1, N'123sad')
SET IDENTITY_INSERT [dbo].[TBL_HAKKIMIZDA] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_KATEGORİLER] ON 

INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (1, N'Çorbalar', 2, NULL)
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (2, N'Sebze Yemekleri', 1, NULL)
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (3, N'Et Yemekleri', 0, NULL)
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (4, N'Makarna Çeşitleri', 1, NULL)
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (5, N'Tavuk Yemekleri', 1, NULL)
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (6, N'Pastalar', 0, NULL)
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (7, N'İçecekler', 0, NULL)
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (8, N'Salatalar', 0, NULL)
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (9, N'Tatlılar', NULL, N'')
INSERT [dbo].[TBL_KATEGORİLER] ([Kategoriid], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (10, N'Mezeler', NULL, N'')
SET IDENTITY_INSERT [dbo].[TBL_KATEGORİLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_MESAJLAR] ON 

INSERT [dbo].[TBL_MESAJLAR] ([Mesajid], [MesajGönderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (1, N'Oğuzhan Aloğlu', N'Köri soslu makarna', N'oguzhanaloglu@gmail.com', N'Köri soslu makarnanın suyunu azaltmak lazım.')
INSERT [dbo].[TBL_MESAJLAR] ([Mesajid], [MesajGönderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (2, N'Özhan Aloğlu', N'Tavuk Sote', N'ozhanaloglu@hotmail.com', N'Tavuk Sote mükemmelll olmuştu.')
INSERT [dbo].[TBL_MESAJLAR] ([Mesajid], [MesajGönderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (3, N'Ayşe Aloğlu', N'Zeytinyağlı Barbunya', N'alogluayse@gmail.com', N'Barbunya 2 gün suda bekletilmeli.')
INSERT [dbo].[TBL_MESAJLAR] ([Mesajid], [MesajGönderen], [MesajBaslik], [MesajMail], [Mesajicerik]) VALUES (4, N'Sadık Turan', N'Şikayet', N'sdktrn@gmail.com', N'Tarhana Çorbası tarifi hatalı olmuş değiştirin.')
SET IDENTITY_INSERT [dbo].[TBL_MESAJLAR] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_TARİFLER] ON 

INSERT [dbo].[TBL_TARİFLER] ([Tarifid], [TarifAd], [TarifMalzeme], [Tarifyapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (3, N'Mercimek Çorbası', N'2 su bardağı kırmızı mercimek
1 adet soğan
2 yemek kaşığı un
1 adet havuç
Yarım yemek kaşığı biber ya da  domates salçası (rengi kırmızı olsun isterseniz artırabilir ya da hiç kullanmayabilirsiniz)
1 tatlı kaşığı tuz
Yarım çay kaşığı karabiber
1 çay kaşığı kimyon (isteğe bağlı)
2 litre sıcak su
5 yemek kaşığı sıvı yağ
Sosu için:

2 yemek kaşığı tereyağı
1 tatlı kaşığı kırmızı toz biber', N'Kırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur.
Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir.
Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir.
Üzerine su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Çorbamız kaynayana kadar orta ateşte, kaynadıktan sonra mercimekler ve havuçlar yumuşayana kadar ara ara karıştırılarak kısık ateşte pişirilir.
Çorba piştikten sonra el blenderı ile güzelce ezilir. Eğer blenderiniz yoksa süzgeçten de geçirebilirsiniz.
Karabiber, tuz ve isteğe bağlı olarak kimyon eklenir ve karıştırılır. 5 dakika daha pişirelerek ocaktan alınır.
Kıvamı koyu gelirse size, bir miktar su ilave edilerek bir taşım kaynatılır.
Bu arada küçük bir tavaya iki yemek kaşığı tereyağı alınır, kızdırılır ve bir tatlı kaşığı kırmızı toz biber eklenerek ocaktan alınır.
Mercimek çorbası servis kasesine alındıktan sonra üzerine kırmızı biberli sos gezdirilir ve bir dilim limon ile servis edilir.', N'MercimekÇorbası.jfif', N'Özhan Aloğlu', N'ozhanaloglu@hotmail.com', 1)
INSERT [dbo].[TBL_TARİFLER] ([Tarifid], [TarifAd], [TarifMalzeme], [Tarifyapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (4, N'Taze Fasulye', N'Zeytinyağı (1 çay bardağı)
Kuru soğan (2 adet)
Taze fasulye (500 gram)
Domates (3 adet)
Tuz', N'İlk olarak, yarım çay bardağı zeytinyağımızı tencereye alıyoruz.
Önceden yemeklik doğramış olduğumuz soğanlarımızı tencereye atıp kavuruyoruz.
Önceden temizleyip, istediğimiz biçimde kesmiş olduğumuz fasulyeleri de ekliyoruz.
Tenceremizin kapağını da kapatıyor ve bu şekilde 6-7 dakika kavuruyoruz.
Sonrasında ise, daha önceden soyup doğramış olduğumuz domatesleri de yemeğe ekliyoruz.
1 bardak sıcak su ilave ediyoruz.
Tenceremizim kapağını kapatıyoruz, fasulyeler pişene kadar kapalı kalacak. Ara ara kontrol etmeliyiz.
Yemeği ocaktan almadan tuzunu ekliyoruz.
Zeytinyağımızı da ekleyerek yemeği servis kaselerine alıyoruz.
10 dakika oda sıcaklığında dinlendirdikten sonra soğuk olarak servis edebilirsiniz.', N'Taze Fasulye.jpg', N'Beyza Erok', N'beyzaerok@gmail.com', 0)
INSERT [dbo].[TBL_TARİFLER] ([Tarifid], [TarifAd], [TarifMalzeme], [Tarifyapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (5, N'Patates Kızartması', N'İstediğiniz kadar kızartmalık patates
Sıvı yağ
Tuz', N'Yağı Kızartın
Patatesleri içine atın.
Patatesler kızardıktan sonra çıkartıp tuz dökün ve servis edin.', N'Patates Kızartması.jfif', N'Hakkı Ödenmez', N'hakkiodenmez@hotmail.com', 0)
SET IDENTITY_INSERT [dbo].[TBL_TARİFLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_YEMEKLER] ON 

INSERT [dbo].[TBL_YEMEKLER] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (1, N'Köri Soslu Makarna', N'1
paket
kalem makarna
1
yemek kaşığı
un
2
yemek kaşığı
tereyağı
2
su bardağı
soğuk süt
1/2
su bardağı
makarna haşlama suyu
1
tatlı kaşığı
köri
1
çay kaşığı
karabiber
1
çay kaşığı
tuz', N'Herhangi bir tavada tereyağını eritin.
Tereyağı hafifçe kavrulmaya başladığı zaman unu ekleyin.
1-2 dakika kavurduktan sonra sütü ekleyin.
Bütün malzemeler homojen bir kıvamda olana kadar karıştırın.
Bunun için tahta kaşık kullanın.
Kıvamı olduğu zaman içine köri ekleyin ve yine karıştırın.
Karışımınızın topaklanma yapmaması için iyi karıştırın.
Daha sonra bir tutam tuz ilave edin.
Köri sosunuzun kıvamını kendi damak zevkinize göre ayarlayabilirsiniz.
Körili sosunuz hazır.
Şimdi bu sosu makarnayla birleştirip, karıştırın.
Servise hazırdır.', NULL, CAST(N'2022-12-03T00:57:00' AS SmallDateTime), 8.2, 4, 0)
INSERT [dbo].[TBL_YEMEKLER] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (2, N'Barbunya', N'1
kilogram
taze barbunya
1/2
çay bardağı
zeytinyağı
1
adet
orta boy kuru soğan
2
diş
sarımsak
1
adet
büyük boy patates
2
adet
orta boy havuç
2
adet
orta boy domates
2
su bardağı
sıcak su
1
tatlı kaşığı
domates salçası
1
tatlı kaşığı
toz şeker
1
çay kaşığı
tuz
Servisi için:
1/4
demet
maydanoz
1
adet
taze sıkılmış limon suyu (arzuya göre)', N'Barbunyaları bir akşam önceden tuzlu suya koyun ve ağzına kapatın. Böylece barbunyalar şişmiş olacak.
Barbunyaları sudan geçirdikten sonra bir tencereye alın ve kaynatın. Barbunyalar yumuşamaya başladığında suyunu süzerek kenara alabilirsiniz.
Bir tencereye zeytinyağı, doğranmış havuç ve soğanları ekleyerek kavurun. Üzerine ezilmiş sarımsak, patates ve salçayı ilave edin.
Süzülen barbunyaları da tencereye ekleyin ve 1 tatlı kaşığı şekeri üzerine serpiştirin.
Son olarak tekrardan suyunu ve tuzunu ekleyip kaynamaya bırakın. Barbunyalar yumuşayana kadar kaynatmaya devam edin. İçerisinde bulunan su biterse, az miktarda ilave edebilirsiniz Şimdiden afiyet olsun.', NULL, CAST(N'2022-12-03T01:02:00' AS SmallDateTime), 7.8, 2, 0)
INSERT [dbo].[TBL_YEMEKLER] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (3, N'Tavuk Sote', N'500 gram tavuk göğsü
1 adet kuru soğan
1 adet yeşil biber
1 adet kapya biberi
1 adet domates
2 yemek kaşığı zeytinyağı
Karabiber
Pul biber
Nane
Tuz', N'Kuşbaşı doğranmış tavuk etini zeytinyağında soteleyin.
Soğan ve biberleri ince ince doğrayıp tavuğun üzerine ekleyin.
Domatesin de kabuğunu soyup küp şeklinde doğrayın ve tavaya ilave edin.
Yemeğiniz suyunu çekince baharatları ekleyip güzelce karıştırın.
Ara karıştırarak yaklaşık 15-20 dakika pişirin.
Sıcak servis edin.
Afiyet olsun.', NULL, CAST(N'2022-12-03T01:04:00' AS SmallDateTime), 8.2, 5, 0)
INSERT [dbo].[TBL_YEMEKLER] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (4, N'Ezogelin Çorbası', N'test', N'test', NULL, CAST(N'2022-12-04T04:52:00' AS SmallDateTime), 8, 1, 0)
INSERT [dbo].[TBL_YEMEKLER] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (5, N'Ispanak', N'NULLHEM SAĞLIKLI HEM ÇOK LEZZETLİ : "ISPANAK YEMEĞİ" - Kolay hazırlayıp, çabucak pişireceğiniz, hafif, sağlıklı ve çok lezzetli bir sebze yemeği tarifi...

Malzemeleri ve Yapılışı : https://ye-mek.net/tarif/ispanak-yemegi', N'NULLHEM SAĞLIKLI HEM ÇOK LEZZETLİ : "ISPANAK YEMEĞİ" - Kolay hazırlayıp, çabucak pişireceğiniz, hafif, sağlıklı ve çok lezzetli bir sebze yemeği tarifi...

Malzemeleri ve Yapılışı : https://ye-mek.net/tarif/ispanak-yemegi', NULL, CAST(N'2022-12-06T02:51:00' AS SmallDateTime), 9.4, 2, 0)
INSERT [dbo].[TBL_YEMEKLER] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (6, N'sütlaç', N'Pirinç
Nişasta', N'Pirinci haşla
sütle kavur', NULL, CAST(N'2022-12-06T22:26:00' AS SmallDateTime), 3, 9, 0)
INSERT [dbo].[TBL_YEMEKLER] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (11, N'Taze Fasulye', N'Zeytinyağı (1 çay bardağı)Kuru soğan (2 adet)Taze fasulye (500 gram)Domates (3 adet)Tuz', N'İlk olarak, yarım çay bardağı zeytinyağımızı tencereye alıyoruz.
Önceden yemeklik doğramış olduğumuz soğanlarımızı tencereye atıp kavuruyoruz.
Önceden temizleyip, istediğimiz biçimde kesmiş olduğumuz fasulyeleri de ekliyoruz.
Tenceremizin kapağını da kapatıyor ve bu şekilde 6-7 dakika kavuruyoruz.
Sonrasında ise, daha önceden soyup doğramış olduğumuz domatesleri de yemeğe ekliyoruz.
1 bardak sıcak su ilave ediyoruz.
Tenceremizim kapağını kapatıyoruz, fasulyeler pişene kadar kapalı kalacak. Ara ara kontrol etmeliyiz.
Yemeği ocaktan almadan tuzunu ekliyoruz.
Zeytinyağımızı da ekleyerek yemeği servis kaselerine alıyoruz.
10 dakika oda sıcaklığında dinlendirdikten sonra soğuk olarak servis edebilirsiniz.', NULL, CAST(N'2022-12-09T01:30:00' AS SmallDateTime), NULL, 1, 0)
INSERT [dbo].[TBL_YEMEKLER] ([Yemekid], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (14, N'Mercimek Çorbası', N'2 su bardağı kırmızı mercimek1 adet soğan2 yemek kaşığı un1 adet havuçYarım yemek kaşığı biber ya da  domates salçası (rengi kırmızı olsun isterseniz artırabilir ya da hiç kullanmayabilirsiniz)1 tatlı kaşığı tuzYarım çay kaşığı karabiber1 çay kaşığı kimyon (isteğe bağlı)2 litre sıcak su5 yemek kaşığı sıvı yağSosu için:2 yemek kaşığı tereyağı1 tatlı kaşığı kırmızı toz biber', N'Kırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur.
Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir.
Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir.
Üzerine su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Çorbamız kaynayana kadar orta ateşte, kaynadıktan sonra mercimekler ve havuçlar yumuşayana kadar ara ara karıştırılarak kısık ateşte pişirilir.
Çorba piştikten sonra el blenderı ile güzelce ezilir. Eğer blenderiniz yoksa süzgeçten de geçirebilirsiniz.
Karabiber, tuz ve isteğe bağlı olarak kimyon eklenir ve karıştırılır. 5 dakika daha pişirelerek ocaktan alınır.
Kıvamı koyu gelirse size, bir miktar su ilave edilerek bir taşım kaynatılır.
Bu arada küçük bir tavaya iki yemek kaşığı tereyağı alınır, kızdırılır ve bir tatlı kaşığı kırmızı toz biber eklenerek ocaktan alınır.
Mercimek çorbası servis kasesine alındıktan sonra üzerine kırmızı biberli sos gezdirilir ve bir dilim limon ile servis edilir.', N'~/resimler/Mercimek çorbası.jfif', CAST(N'2022-12-09T01:39:00' AS SmallDateTime), NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[TBL_YEMEKLER] OFF
GO
INSERT [dbo].[TBL_YORUMLAR] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİcerik], [Yemekid]) VALUES (1, N'Özhan Aloğlu', N'ozhanaloglu11@gmail.com', CAST(N'2022-12-03T02:20:00' AS SmallDateTime), 1, N'Tavuk Sotede ki biberler birazdaha kavrulmalıydı.', 3)
INSERT [dbo].[TBL_YORUMLAR] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİcerik], [Yemekid]) VALUES (3, N'Beyza Erok', N'beyzaerok@gmail.com', CAST(N'2022-12-03T02:23:00' AS SmallDateTime), 0, N'Köri soslu makarnanın sosu daha kıvamlı olabilirdi.', 1)
INSERT [dbo].[TBL_YORUMLAR] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİcerik], [Yemekid]) VALUES (4, N'Ersin Sevim', N'ersnsvm12@gmail.com', CAST(N'2022-12-03T02:24:00' AS SmallDateTime), 1, N'Köri soslu makarna biraz daha az haşlansa daha iyi olabilirdi. Elinize sağlık degıl', 1)
INSERT [dbo].[TBL_YORUMLAR] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİcerik], [Yemekid]) VALUES (5, N'Eda Yıldız', N'yıldızeda@gmail.com', CAST(N'2022-12-03T17:53:00' AS SmallDateTime), 0, N'Tavuk but ilede olur mu?', 3)
INSERT [dbo].[TBL_YORUMLAR] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİcerik], [Yemekid]) VALUES (6, N'Mehmet Kaya', N'mehmet@hotmail.com', CAST(N'2022-12-03T17:54:00' AS SmallDateTime), 0, N'Spaghetti makarna ile bu tarif uygulanır mı?', 1)
INSERT [dbo].[TBL_YORUMLAR] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİcerik], [Yemekid]) VALUES (7, N'Saime Keser', N'Saime Keser', CAST(N'2022-12-03T18:55:00' AS SmallDateTime), 0, N'Bence barbunya biraz sertti. Bir gece önceden ılık tuzlu suda bekletirseniz daha yumuşak olur.', 2)
GO
ALTER TABLE [dbo].[TBL_GUNUNYEMEGİ] ADD  CONSTRAINT [DF_TBL_GUNUNYEMEGİ_GununYemegiTarih]  DEFAULT (getdate()) FOR [GununYemegiTarih]
GO
ALTER TABLE [dbo].[TBL_KATEGORİLER] ADD  CONSTRAINT [DF_TBL_KATEGORİLER_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[TBL_TARİFLER] ADD  CONSTRAINT [DF_TBL_TARİFLER_TarifDurum]  DEFAULT ((0)) FOR [TarifDurum]
GO
ALTER TABLE [dbo].[TBL_YEMEKLER] ADD  CONSTRAINT [DF_TBL_YEMEKLER_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[TBL_YEMEKLER] ADD  CONSTRAINT [DF_TBL_YEMEKLER_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[TBL_YORUMLAR] ADD  CONSTRAINT [DF_TBL_YORUMLAR_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[TBL_YORUMLAR] ADD  CONSTRAINT [DF_TBL_YORUMLAR_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[TBL_YEMEKLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_YEMEKLER_TBL_KATEGORİLER] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[TBL_KATEGORİLER] ([Kategoriid])
GO
ALTER TABLE [dbo].[TBL_YEMEKLER] CHECK CONSTRAINT [FK_TBL_YEMEKLER_TBL_KATEGORİLER]
GO
ALTER TABLE [dbo].[TBL_YORUMLAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_YORUMLAR_TBL_YEMEKLER] FOREIGN KEY([Yemekid])
REFERENCES [dbo].[TBL_YEMEKLER] ([Yemekid])
GO
ALTER TABLE [dbo].[TBL_YORUMLAR] CHECK CONSTRAINT [FK_TBL_YORUMLAR_TBL_YEMEKLER]
GO
USE [master]
GO
ALTER DATABASE [Dbo_YemekTarifi] SET  READ_WRITE 
GO
