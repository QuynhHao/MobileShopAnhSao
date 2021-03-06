USE [master]
GO
/****** Object:  Database [AnhSaoMobileshop]    Script Date: 3/11/2021 7:10:10 PM ******/
CREATE DATABASE [AnhSaoMobileshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AnhSaoMobileshop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\AnhSaoMobileshop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AnhSaoMobileshop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\AnhSaoMobileshop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AnhSaoMobileshop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AnhSaoMobileshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AnhSaoMobileshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AnhSaoMobileshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AnhSaoMobileshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AnhSaoMobileshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AnhSaoMobileshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AnhSaoMobileshop] SET  MULTI_USER 
GO
ALTER DATABASE [AnhSaoMobileshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AnhSaoMobileshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AnhSaoMobileshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AnhSaoMobileshop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AnhSaoMobileshop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AnhSaoMobileshop] SET QUERY_STORE = OFF
GO
USE [AnhSaoMobileshop]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 3/11/2021 7:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaloaiSP] [nvarchar](10) NOT NULL,
	[TenloaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaloaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 3/11/2021 7:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[MaNSX] [nvarchar](10) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
 CONSTRAINT [PK_NSX] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamAnhSao]    Script Date: 3/11/2021 7:10:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamAnhSao](
	[MaSP] [nvarchar](10) NOT NULL,
	[MaloaiSP] [nvarchar](10) NULL,
	[MaNSX] [nvarchar](10) NULL,
	[TenSP] [nvarchar](max) NULL,
	[Cauhinh] [nvarchar](50) NULL,
	[Hinhchinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoluongDaBan] [int] NULL,
	[Luotview] [int] NULL,
	[Tinhtrang] [nchar](10) NULL,
 CONSTRAINT [PK_SanPhamAnhSao_1] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSP] ([MaloaiSP], [TenloaiSP]) VALUES (N'LSP001', N'Cao cấp')
INSERT [dbo].[LoaiSP] ([MaloaiSP], [TenloaiSP]) VALUES (N'LSP002', N'Trung bình')
INSERT [dbo].[LoaiSP] ([MaloaiSP], [TenloaiSP]) VALUES (N'LSP003', N'Phổ thông')
GO
INSERT [dbo].[NSX] ([MaNSX], [TenNSX]) VALUES (N'NSX001', N'Apple')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX]) VALUES (N'NSX002', N'Xiaomi')
INSERT [dbo].[NSX] ([MaNSX], [TenNSX]) VALUES (N'NSX003', N'SamSung')
GO
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP001', N'LSP001', N'NSX001', N'IPhone 12 Pro Max', N'Chưa Xác Định', N'iPhone12.jpg', NULL, NULL, NULL, NULL, 40990000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP002', N'LSP001', N'NSX001', N'Phone 12 Pro Max 256GB', N'Chưa Xác Định', N'iPhone12.jpg', NULL, NULL, NULL, NULL, 33990000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP003', N'LSP001', N'NSX001', N'IPhone 12 Pro Max 128GB', N'Chưa Xác Định', N'iPhone12.jpg', NULL, NULL, NULL, NULL, 32490000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP004', N'LSP001', N'NSX001', N'IPhone 12 256GB', N'Chưa Xác Định', N'iPhone12.jpg', NULL, NULL, NULL, NULL, 25990000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP005', N'LSP002', N'NSX002', N'Xiaomi MI 11 5G', N'Chưa Xác Định', N'xiaomi115g.jpg', NULL, NULL, NULL, NULL, 21990000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP006', N'LSP002', N'NSX002', N'Xiaomi MI 10T 5G', N'Chưa Xác Định', N'xiaomi10t5g.jpg', NULL, NULL, NULL, NULL, 12990000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP007', N'LSP002', N'NSX002', N'SamSung Galaxy A2', N'Chưa Xác Định', N'samsunggalaxya2.jpg', NULL, NULL, NULL, NULL, 2590000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP008', N'LSP002', N'NSX002', N'SamSung Galaxy A21s', N'Chưa Xác Định', N'ssgalaxya21s', NULL, NULL, NULL, NULL, 4690000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP009', N'LSP002', N'NSX002', N'SamSung Galaxy A20s 64GB', N'Chưa Xác Định', N'ssglxa20s64gb', NULL, NULL, NULL, NULL, 4890000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP010', N'LSP003', N'NSX003', N'SamSung Galaxy A01', N'Chưa Xác Định', N'SGa02.jpg', NULL, NULL, NULL, NULL, 2590000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP011', N'LSP003', N'NSX002', N'Xiaomi Redmi 9A', N'Chưa Xác Định', N'XR9a.jpg', NULL, NULL, NULL, NULL, 1990000, 0, 0, N'0         ')
INSERT [dbo].[SanPhamAnhSao] ([MaSP], [MaloaiSP], [MaNSX], [TenSP], [Cauhinh], [Hinhchinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoluongDaBan], [Luotview], [Tinhtrang]) VALUES (N'SP012', N'LSP003', N'NSX002', N'Xiaomi Redmi 9C', N'Chưa Xác Định', N'xr9c.jpg', NULL, NULL, NULL, NULL, 2490000, 0, 0, N'0         ')
GO
ALTER TABLE [dbo].[SanPhamAnhSao] ADD  CONSTRAINT [DF_SanPhamAnhSao_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPhamAnhSao] ADD  CONSTRAINT [DF_SanPhamAnhSao_SoluongDaBan]  DEFAULT ((0)) FOR [SoluongDaBan]
GO
ALTER TABLE [dbo].[SanPhamAnhSao] ADD  CONSTRAINT [DF_SanPhamAnhSao_Luotview]  DEFAULT ((0)) FOR [Luotview]
GO
ALTER TABLE [dbo].[SanPhamAnhSao] ADD  CONSTRAINT [DF_SanPhamAnhSao_Tinhtrang]  DEFAULT ((0)) FOR [Tinhtrang]
GO
ALTER TABLE [dbo].[SanPhamAnhSao]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamAnhSao_LoaiSP] FOREIGN KEY([MaloaiSP])
REFERENCES [dbo].[LoaiSP] ([MaloaiSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhamAnhSao] CHECK CONSTRAINT [FK_SanPhamAnhSao_LoaiSP]
GO
ALTER TABLE [dbo].[SanPhamAnhSao]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamAnhSao_NSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NSX] ([MaNSX])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhamAnhSao] CHECK CONSTRAINT [FK_SanPhamAnhSao_NSX]
GO
USE [master]
GO
ALTER DATABASE [AnhSaoMobileshop] SET  READ_WRITE 
GO
