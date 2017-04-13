USE [master]
GO
/****** Object:  Database [SSandSS]    Script Date: 14/04/2017 1:06:33 SA ******/
CREATE DATABASE [SSandSS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SSandSS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SSandSS.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SSandSS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SSandSS_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SSandSS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SSandSS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SSandSS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SSandSS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SSandSS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SSandSS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SSandSS] SET ARITHABORT OFF 
GO
ALTER DATABASE [SSandSS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SSandSS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SSandSS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SSandSS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SSandSS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SSandSS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SSandSS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SSandSS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SSandSS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SSandSS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SSandSS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SSandSS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SSandSS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SSandSS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SSandSS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SSandSS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SSandSS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SSandSS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SSandSS] SET RECOVERY FULL 
GO
ALTER DATABASE [SSandSS] SET  MULTI_USER 
GO
ALTER DATABASE [SSandSS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SSandSS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SSandSS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SSandSS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SSandSS', N'ON'
GO
USE [SSandSS]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 14/04/2017 1:06:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[MaHinh] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nchar](100) NULL,
	[MaSanPham] [nchar](10) NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[MaHinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 14/04/2017 1:06:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [nchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 14/04/2017 1:06:34 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nchar](10) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[MoTa] [nvarchar](350) NULL,
	[GiaTien] [int] NULL,
	[XuatXu] [nvarchar](50) NULL,
	[NhaSanXuat] [nvarchar](50) NULL,
	[MaLoaiSanPham] [nchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham]) VALUES (N'DH        ', N'Đồng Hồ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham]) VALUES (N'KTT       ', N'Kính Thời Trang')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham]) VALUES (N'MLT       ', N'Máy Làm Tóc')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham]) VALUES (N'NHNN      ', N'Nước Hoa Nam & Nữ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham]) VALUES (N'TBP       ', N'Trang Bị Phượt')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'DH-CFR    ', N'ĐỒNG HỒ CAFUER', NULL, 175000, N'Quảng Châu - TQ', N'CAFUER', N'DH        ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'DH-TG     ', N'ĐỒNG HỒ TAM GIÁC', NULL, 130000, N'Quảng Đông - TQ', N'WiLon', N'DH        ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'KTT-L141  ', N'MẮT KÍNH THỜI TRANG LACOSTE L141', NULL, 214000, NULL, N'LACOSTE', N'KTT       ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'KTT-RBx   ', N'KÍNH RAYBAN XẾP GỌN', NULL, 194000, NULL, N'Rayban', N'KTT       ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'MLT-MR011 ', N'MÁY KẸP TÓC MERMAID 4IN1', NULL, 155000, N'Quảng Đông - TQ', N'MERMAID', N'MLT       ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'MLT-SH8005', N'MÁY KẸP TÓC SHINON 4IN1 8005', NULL, 150000, N'Quảng Đông - TQ', N'Shinon', N'MLT       ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'NHNN-A50ml', N'NƯỚC HOA BLUE AVON 50ML - NAM', NULL, 100000, NULL, N'Avon', N'NHNN      ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'NHNN-Cn&n ', N'NƯỚC HOA CHANEL 50ML ( NAM & NỮ)', NULL, 85000, NULL, N'Chanel', N'NHNN      ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'TBP-BT    ', N'BAO TAY CHỐNG NẮNG DẠNG ỐNG', NULL, 45000, NULL, NULL, N'TBP       ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham]) VALUES (N'TBP-KiD   ', N'	MẮT KÍNH ĐI PHƯỢT -ĐEO NÓN BAO HIỂM', NULL, 75000, NULL, NULL, N'TBP       ')
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
USE [master]
GO
ALTER DATABASE [SSandSS] SET  READ_WRITE 
GO
