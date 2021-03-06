USE [master]
GO
/****** Object:  Database [SSandSS]    Script Date: 25/04/2017 7:56:16 CH ******/
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
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 25/04/2017 7:56:16 CH ******/
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
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 25/04/2017 7:56:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [nchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 25/04/2017 7:56:17 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nchar](10) NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[GiaTien] [int] NULL,
	[XuatXu] [nvarchar](50) NULL,
	[NhaSanXuat] [nvarchar](50) NULL,
	[MaLoaiSanPham] [nchar](10) NULL,
	[HinhAnh] [nchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (1, N'DH-CFR_001.jpg                                                                                      ', N'DH-CFR    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (2, N'DH-CFR_002.jpg                                                                                      ', N'DH-CFR    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (4, N'DH-CFR_003.jpg                                                                                      ', N'DH-CFR    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (5, N'DH-TG_001.jpg                                                                                       ', N'DH-TG     ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (6, N'DH-TG_002.jpg                                                                                       ', N'DH-TG     ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (7, N'MLT-MR011_001.jpg                                                                                   ', N'MLT-MR011 ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (8, N'MLT-MR011_002.jpg                                                                                   ', N'MLT-MR011 ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (9, N'DH-DWv_001.png                                                                                      ', N'DH-DWv    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (10, N'DH-GShock_001.jpg                                                                                   ', N'DH-GShock ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (13, N'DH-GShock_002.png                                                                                   ', N'DH-GShock ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (14, N'DH-GShock_003.png                                                                                   ', N'DH-GShock ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (19, N'DH-DWv_002.png                                                                                      ', N'DH-DWv    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (20, N'DH-DWv_003.png                                                                                      ', N'DH-DWv    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (21, N'DH-DWv_004.png                                                                                      ', N'DH-DWv    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (22, N'DH-DWv_005.png                                                                                      ', N'DH-DWv    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (23, N'TBP-KiD_001.png                                                                                     ', N'TBP-KiD   ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (24, N'TBP-BT_001.png                                                                                      ', N'TBP-BT    ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (25, N'NHNN-Cnn_001.png                                                                                    ', N'NHNN-Cnn  ')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (26, N'NHNN-A50ml_001.png                                                                                  ', N'NHNN-A50ml')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (27, N'MLT-SH8005_001.png                                                                                  ', N'MLT-SH8005')
INSERT [dbo].[HinhAnh] ([MaHinh], [URL], [MaSanPham]) VALUES (28, N'MLT-SH8005_002.png                                                                                  ', N'MLT-SH8005')
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham], [TinhTrang]) VALUES (N'DH        ', N'Đồng Hồ', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham], [TinhTrang]) VALUES (N'KTT       ', N'Kính Thời Trang', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham], [TinhTrang]) VALUES (N'MLT       ', N'Máy Làm Tóc', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham], [TinhTrang]) VALUES (N'NHNN      ', N'Nước Hoa Nam & Nữ', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSanPham], [TinhTrang]) VALUES (N'TBP       ', N'Trang Bị Đi Phượt', 1)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'DH-CFR    ', N'ĐỒNG HỒ CAFUER', N'<p>ĐỒNG HỒ&nbsp;<strong>CAFUER</strong></p>
', 175000, N'Quảng Châu - TQ', N'CAFUER', N'DH        ', N'DH-CFR_001.jpg                                    ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'DH-DWv    ', N'Daniel Wellington DÂY VẢI', N'<p>Nhạc thiếu nhi children&#39;s music compilation học tiếng Anh qua b&agrave;i h&aacute;t children&#39;s songs vietnam.</p>

<p>Nhạc thiếu nhi children&#39;s music compilation học tiếng Anh qua b&agrave;i h&aacute;t children&#39;s songs vietnam.</p>

<p>Nhạc thi<strong>ếu nhi children&#39;s music compilation học tiếng Anh qua b&agrave;i h&aacute;t children&#39;s songs vietnam.</strong></p>

<p><strong>Nhạc thiếu nhi children&#39;s music compilation học tiếng Anh qua b&agrave;i h&aacute;t children&#39;s songs vietnam.</strong></p>

<p><strong>Nhạc thiếu nhi children&#39;s mu</strong>sic compilation học tiếng Anh qua b&agrave;i h&aacute;t children&#39;s songs vietnam.</p>

<p>Nhạc thiếu nhi children&#39;s music compilation học tiếng Anh qua b&agrave;i h&aacute;t children&#39;s songs vietnam.</p>

<p>Nhạc thiếu nhi children&#39;s music compilation học tiếng Anh qua b&agrave;i h&aacute;t children&#39;s songs vietnam.</p>
', 60000, N'Không rõ', N'Daniel Wellington', N'DH        ', N'DH-DWv_001.png                                    ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'DH-GShock ', N'Casio G-SHOCK', N'<p>&nbsp;</p>

<p>Casio <strong>G-SHOCK</strong></p>
', 270000, N'Trung Quốc', N'Casio', N'DH        ', N'DH-GShock_001.jpg                                 ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'DH-TG     ', N'ĐỒNG HỒ TAM GIÁC', NULL, 130000, N'Quảng Đông - TQ', N'WiLon', N'DH        ', N'DH-TG_001.jpg                                     ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'KTT-L141  ', N'KÍNH LACOSTE L141', NULL, 214000, N'Không rõ', N'LACOSTE', N'KTT       ', N'KTT-L141_001.png                                  ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'KTT-RBx   ', N'KÍNH RAYBAN GẤP GỌN', NULL, 194000, N'Không rõ', N'Rayban', N'KTT       ', N'KTT-RBx_001.png                                   ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'MLT-MR011 ', N'KẸP TÓC MERMAID 4IN1', NULL, 155000, N'Quảng Đông - TQ', N'MERMAID', N'MLT       ', N'MLT-MR011_001.jpg                                 ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'MLT-SH8005', N'KẸP TÓC SHINON 4IN1 8005', NULL, 150000, N'Quảng Đông - TQ', N'Shinon', N'MLT       ', N'MLT-SH8005_001.png                                ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'NHNN-A50ml', N'BLUE AVON 50ML - NAM', NULL, 100000, N'Không rõ', N'Avon', N'NHNN      ', N'NHNN-A50ml_001.png                                ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'NHNN-Cnn  ', N'CHANEL 50ML ( NAM & NỮ)', NULL, 85000, N'Không rõ', N'Chanel', N'NHNN      ', N'NHNN-Cnn_001.jpg                                  ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'TBP-BT    ', N'BAO TAY CHỐNG NẮNG', NULL, 45000, N'Không rõ', N'Không rõ', N'TBP       ', N'TBP-BT_001.png                                    ')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MoTa], [GiaTien], [XuatXu], [NhaSanXuat], [MaLoaiSanPham], [HinhAnh]) VALUES (N'TBP-KiD   ', N'MẮT KÍNH ĐI PHƯỢT', NULL, 75000, N'Không rõ', N'Không rõ', N'TBP       ', N'TBP-KiD_001.png                                   ')
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
