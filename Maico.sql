CREATE DATABASE [MAICOGROUP]
GO

USE [MAICOGROUP]
GO

/****** Object:  Table [dbo].[ChamCong]    Script Date: 6/3/2020 2:43:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[MaNV] [varchar](10) NOT NULL,
	[Ngay] [date] NOT NULL,
	[GioVao] [datetime] NULL,
	[GioRa] [datetime] NULL,
 CONSTRAINT [pk_ChamCong] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[Ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MaChiNhanh] [varchar](10) NOT NULL,
	[TenChiNhanh] [nvarchar](25) NOT NULL,
	[MaDiaChi] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_DonHang]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DonHang](
	[MaDH] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[CongViec] [nvarchar](20) NOT NULL,
	[DoanhSoCaNhan] [money] NULL,
 CONSTRAINT [pk_ChiTiet_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaNV] ASC,
	[CongViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_NhanVien]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[MaChiNhanh] [varchar](10) NOT NULL,
	[MaPhongBan] [varchar](10) NOT NULL,
	[ChucDanh] [nvarchar](20) NOT NULL,
	[Full_Part] [bit] NOT NULL,
	[NguoiQuanLy] [varchar](10) NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NULL,
	[CheDo] [bit] NOT NULL,
 CONSTRAINT [pk_ChiTiet_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[NgayBatDau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDoiTuong]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDoiTuong](
	[ID] [varchar](10) NOT NULL,
	[SoNguoiO] [nvarchar](20) NOT NULL,
	[CongViec] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietNhuCau]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhuCau](
	[MaChiTiet] [varchar](10) NOT NULL,
	[DienTich] [tinyint] NULL,
	[MoiHayCu] [bit] NULL,
	[Huong] [nvarchar](10) NULL,
	[Vieww] [nvarchar](60) NULL,
	[PN] [tinyint] NULL,
	[WC] [tinyint] NULL,
	[TangCaoThap] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[MaSP] [varchar](10) NOT NULL,
	[NgayGio] [date] NOT NULL,
	[GiayToPhapLy] [nvarchar](1) NOT NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[Gia] [money] NOT NULL,
	[MaNoiThat] [varchar](10) NOT NULL,
	[MoiHayCu] [bit] NULL,
	[BanHayChoThue] [bit] NOT NULL,
	[ChuSoHuu] [varchar](10) NOT NULL,
 CONSTRAINT [pk_ChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[NgayGio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietThanhToan]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThanhToan](
	[MaThanhToan] [varchar](10) NOT NULL,
	[NgayGio] [datetime] NOT NULL,
	[SoTien] [money] NOT NULL,
 CONSTRAINT [pk_ChiTietThanhToan] PRIMARY KEY CLUSTERED 
(
	[NgayGio] ASC,
	[MaThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViec](
	[BatDau] [datetime] NOT NULL,
	[KetThuc] [datetime] NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[LoaiCV] [nvarchar](30) NOT NULL,
	[ChuThich] [nvarchar](300) NULL,
	[MaKH] [varchar](10) NOT NULL,
 CONSTRAINT [pk_CongViec] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaSP] ASC,
	[BatDau] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatLich_XemNha]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatLich_XemNha](
	[ThoiGian] [date] NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
 CONSTRAINT [pk_DatLich_XemNha] PRIMARY KEY CLUSTERED 
(
	[ThoiGian] ASC,
	[MaSP] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[MaDiaChi] [varchar](10) NOT NULL,
	[SoNha_TenDuong] [nvarchar](150) NOT NULL,
	[Phuong] [nvarchar](30) NOT NULL,
	[Quan] [nvarchar](30) NOT NULL,
	[ThanhPho_Tinh] [nvarchar](30) NOT NULL,
 CONSTRAINT [pk_DiaChi_MaDiaChi] PRIMARY KEY CLUSTERED 
(
	[MaDiaChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[NgayGio] [date] NOT NULL,
	[MaKH] [varchar](10) NULL,
	[MaThanhToan] [varchar](10) NOT NULL,
 CONSTRAINT [pk_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[MaThanhToan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Du_An]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Du_An](
	[MaDuAn] [varchar](10) NOT NULL,
	[TenCanHo] [nvarchar](30) NOT NULL,
	[MaDiaChi] [varchar](10) NOT NULL,
	[DuAn_Regex] [varchar](50) NULL,
 CONSTRAINT [pk_Du_An] PRIMARY KEY CLUSTERED 
(
	[MaDuAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoPhapLy]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoPhapLy](
	[MaHoSo] [varchar](10) NOT NULL,
	[TenHoSo] [nvarchar](50) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[NhanVienPhapLy] [varchar](10) NOT NULL,
	[NhanVienChotDon] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachChuaKhaiThac]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachChuaKhaiThac](
	[MaKH] [varchar](10) NOT NULL,
	[LoaiKH] [nvarchar](30) NULL,
	[MaCanHo] [varchar](10) NULL,
	[MaCan] [nvarchar](10) NULL,
 CONSTRAINT [pk_KhachChuaKhaiThac] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[SDT] [varchar](10) NOT NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [varchar](10) NOT NULL,
	[SoTuongTac] [tinyint] NULL,
	[LanTuongTacCuoi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhaiThacKhachMuaVaThue]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhaiThacKhachMuaVaThue](
	[MaKH] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[CapThiet] [tinyint] NOT NULL,
	[TaiChinh] [money] NOT NULL,
	[MaNoiThat] [varchar](10) NOT NULL,
	[MaChiTiet] [varchar](10) NOT NULL,
	[NhanDinh] [nvarchar](300) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[BanHayThue] [bit] NULL,
	[MaDuAn] [varchar](10) NOT NULL,
 CONSTRAINT [pk_ChiTietKhachMuaVaThue] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaKH] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichLamViec]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichLamViec](
	[Ngay] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[Sang] [bit] NULL,
	[Chieu] [bit] NULL,
	[Toi] [bit] NULL,
 CONSTRAINT [pk_LichLamViec] PRIMARY KEY CLUSTERED 
(
	[Ngay] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SoTaiKhoan] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiThat]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiThat](
	[MaNoiThat] [varchar](10) NOT NULL,
	[Rem] [bit] NULL,
	[MayGiat] [bit] NULL,
	[MayNuocNong] [bit] NULL,
	[GiuongVanem] [bit] NULL,
	[BoBanGhe] [bit] NULL,
	[GianPhoi] [bit] NULL,
	[MayLanh] [bit] NULL,
	[TuQuanAo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNoiThat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhiVaThueSP]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhiVaThueSP](
	[MaSP] [varchar](10) NOT NULL,
	[GiuSo] [bit] NOT NULL,
	[ChuyenNhuong] [bit] NOT NULL,
	[HoaHong] [bit] NOT NULL,
	[ThuNhapCaNhan] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPhongBan] [varchar](10) NOT NULL,
	[TenPhongBan] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](10) NOT NULL,
	[MaDuAn] [varchar](10) NOT NULL,
	[MaCan] [nvarchar](10) NOT NULL,
	[Anh] [image] NULL,
	[GhiChu] [nvarchar](300) NULL,
	[DienTich] [tinyint] NULL,
	[MoiHayCu] [bit] NULL,
	[Huong] [nvarchar](10) NULL,
	[Vieww] [nvarchar](60) NULL,
	[PN] [tinyint] NULL,
	[WC] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telesale]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telesale](
	[NgayGio] [datetime] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[ThoiLuong] [time](7) NOT NULL,
	[CuocGoi] [varchar](50) NOT NULL,
	[NhanDinh] [nvarchar](300) NULL,
 CONSTRAINT [pk_Telesale] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaKH] ASC,
	[NgayGio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangHoSoPhapLy]    Script Date: 6/3/2020 2:43:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangHoSoPhapLy](
	[MaHoSo] [varchar](10) NOT NULL,
	[TiepNhan] [datetime] NULL,
	[CongChung] [datetime] NULL,
	[DongThue] [datetime] NULL,
	[NopThue] [datetime] NULL,
	[XacNhanTuCDT] [datetime] NULL,
	[HanhThanh] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien] ADD  DEFAULT (getdate()) FOR [NgayBatDau]
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien] ADD  DEFAULT (NULL) FOR [NgayKetThuc]
GO
ALTER TABLE [dbo].[ChiTietThanhToan] ADD  DEFAULT (getdate()) FOR [NgayGio]
GO
ALTER TABLE [dbo].[CongViec] ADD  DEFAULT (getdate()) FOR [BatDau]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [SoTuongTac]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [LanTuongTacCuoi]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] ADD  DEFAULT (getdate()) FOR [ThoiGian]
GO
ALTER TABLE [dbo].[Telesale] ADD  DEFAULT (getdate()) FOR [NgayGio]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [fk_ChamCong] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [fk_ChamCong]
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD  CONSTRAINT [fk_ChiNhanh_MaDiaChi] FOREIGN KEY([MaDiaChi])
REFERENCES [dbo].[DiaChi] ([MaDiaChi])
GO
ALTER TABLE [dbo].[ChiNhanh] CHECK CONSTRAINT [fk_ChiNhanh_MaDiaChi]
GO
ALTER TABLE [dbo].[ChiTiet_DonHang]  WITH CHECK ADD  CONSTRAINT [fk_ChiTiet_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTiet_DonHang] CHECK CONSTRAINT [fk_ChiTiet_DonHang]
GO
ALTER TABLE [dbo].[ChiTiet_DonHang]  WITH CHECK ADD  CONSTRAINT [fk_ChiTiet_DonHang_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTiet_DonHang] CHECK CONSTRAINT [fk_ChiTiet_DonHang_MaNV]
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_ChiTiet_NhanVien_MaChiNhanh] FOREIGN KEY([MaChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([MaChiNhanh])
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien] CHECK CONSTRAINT [fk_ChiTiet_NhanVien_MaChiNhanh]
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_ChiTiet_NhanVien_MaPhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien] CHECK CONSTRAINT [fk_ChiTiet_NhanVien_MaPhongBan]
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_ChiTiet_NhanVien_NguoiQuanLy] FOREIGN KEY([NguoiQuanLy])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien] CHECK CONSTRAINT [fk_ChiTiet_NhanVien_NguoiQuanLy]
GO
ALTER TABLE [dbo].[ChiTietDoiTuong]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietDoiTuong_ID] FOREIGN KEY([ID])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDoiTuong] CHECK CONSTRAINT [fk_ChiTietDoiTuong_ID]
GO
ALTER TABLE [dbo].[ChiTietDoiTuong]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietDoiTuong_ID2] FOREIGN KEY([ID])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChiTietDoiTuong] CHECK CONSTRAINT [fk_ChiTietDoiTuong_ID2]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietSP_ChuSoHuu] FOREIGN KEY([ChuSoHuu])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [fk_ChiTietSP_ChuSoHuu]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietSP_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [fk_ChiTietSP_MaSP]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [fk_MaNoiThat] FOREIGN KEY([MaNoiThat])
REFERENCES [dbo].[NoiThat] ([MaNoiThat])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [fk_MaNoiThat]
GO
ALTER TABLE [dbo].[ChiTietThanhToan]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietThanhToan_MaThanhToan] FOREIGN KEY([MaThanhToan])
REFERENCES [dbo].[DonHang] ([MaThanhToan])
GO
ALTER TABLE [dbo].[ChiTietThanhToan] CHECK CONSTRAINT [fk_ChiTietThanhToan_MaThanhToan]
GO
ALTER TABLE [dbo].[CongViec]  WITH CHECK ADD  CONSTRAINT [fk_CongViec_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[CongViec] CHECK CONSTRAINT [fk_CongViec_MaKH]
GO
ALTER TABLE [dbo].[CongViec]  WITH CHECK ADD  CONSTRAINT [fk_CongViec_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[CongViec] CHECK CONSTRAINT [fk_CongViec_MaNV]
GO
ALTER TABLE [dbo].[CongViec]  WITH CHECK ADD  CONSTRAINT [fk_CongViec_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CongViec] CHECK CONSTRAINT [fk_CongViec_MaSP]
GO
ALTER TABLE [dbo].[DatLich_XemNha]  WITH CHECK ADD  CONSTRAINT [fk_DatLich_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DatLich_XemNha] CHECK CONSTRAINT [fk_DatLich_MaKH]
GO
ALTER TABLE [dbo].[DatLich_XemNha]  WITH CHECK ADD  CONSTRAINT [fk_DatLich_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DatLich_XemNha] CHECK CONSTRAINT [fk_DatLich_MaSP]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [fk_DonHang_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [fk_DonHang_MaKH]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [fk_DonHang_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [fk_DonHang_MaSP]
GO
ALTER TABLE [dbo].[Du_An]  WITH CHECK ADD  CONSTRAINT [fk_Du_An_MaDiaChi] FOREIGN KEY([MaDiaChi])
REFERENCES [dbo].[DiaChi] ([MaDiaChi])
GO
ALTER TABLE [dbo].[Du_An] CHECK CONSTRAINT [fk_Du_An_MaDiaChi]
GO
ALTER TABLE [dbo].[HoSoPhapLy]  WITH CHECK ADD  CONSTRAINT [fk_HoSoPhapLy_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoSoPhapLy] CHECK CONSTRAINT [fk_HoSoPhapLy_MaKH]
GO
ALTER TABLE [dbo].[HoSoPhapLy]  WITH CHECK ADD  CONSTRAINT [fk_HoSoPhapLy_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoSoPhapLy] CHECK CONSTRAINT [fk_HoSoPhapLy_MaSP]
GO
ALTER TABLE [dbo].[HoSoPhapLy]  WITH CHECK ADD  CONSTRAINT [fk_HoSoPhapLy_NhanVienPhapLy] FOREIGN KEY([NhanVienPhapLy])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoSoPhapLy] CHECK CONSTRAINT [fk_HoSoPhapLy_NhanVienPhapLy]
GO
ALTER TABLE [dbo].[HoSoPhapLy]  WITH CHECK ADD  CONSTRAINT [fk_HoSoPhapLy_Sale] FOREIGN KEY([NhanVienChotDon])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoSoPhapLy] CHECK CONSTRAINT [fk_HoSoPhapLy_Sale]
GO
ALTER TABLE [dbo].[KhachChuaKhaiThac]  WITH CHECK ADD  CONSTRAINT [fk_KhachChuaKhaiThac] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[KhachChuaKhaiThac] CHECK CONSTRAINT [fk_KhachChuaKhaiThac]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_KhachHang_NguoiTao] FOREIGN KEY([NguoiTao])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_KhachHang_NguoiTao]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [fk_KhaiThac_MaDuAn] FOREIGN KEY([MaDuAn])
REFERENCES [dbo].[Du_An] ([MaDuAn])
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] CHECK CONSTRAINT [fk_KhaiThac_MaDuAn]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaChiTiet] FOREIGN KEY([MaChiTiet])
REFERENCES [dbo].[ChiTietNhuCau] ([MaChiTiet])
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] CHECK CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaChiTiet]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] CHECK CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaKH]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaNoiTHat] FOREIGN KEY([MaNoiThat])
REFERENCES [dbo].[NoiThat] ([MaNoiThat])
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] CHECK CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaNoiTHat]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] CHECK CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaNV]
GO
ALTER TABLE [dbo].[LichLamViec]  WITH CHECK ADD  CONSTRAINT [fk_LichLamViec] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[LichLamViec] CHECK CONSTRAINT [fk_LichLamViec]
GO
ALTER TABLE [dbo].[PhiVaThueSP]  WITH CHECK ADD  CONSTRAINT [fk_PhiVaThueSP_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhiVaThueSP] CHECK CONSTRAINT [fk_PhiVaThueSP_MaSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SanPham_MaDuAn] FOREIGN KEY([MaDuAn])
REFERENCES [dbo].[Du_An] ([MaDuAn])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SanPham_MaDuAn]
GO
ALTER TABLE [dbo].[Telesale]  WITH CHECK ADD  CONSTRAINT [fk_Telesale_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Telesale] CHECK CONSTRAINT [fk_Telesale_MaKH]
GO
ALTER TABLE [dbo].[Telesale]  WITH CHECK ADD  CONSTRAINT [fk_Telesale_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[Telesale] CHECK CONSTRAINT [fk_Telesale_MaNV]
GO
ALTER TABLE [dbo].[TinhTrangHoSoPhapLy]  WITH CHECK ADD  CONSTRAINT [fk_TinhTrangHoSoPhapLy_MaHoSo] FOREIGN KEY([MaHoSo])
REFERENCES [dbo].[HoSoPhapLy] ([MaHoSo])
GO
ALTER TABLE [dbo].[TinhTrangHoSoPhapLy] CHECK CONSTRAINT [fk_TinhTrangHoSoPhapLy_MaHoSo]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [ck_ChamCongThoiGian] CHECK  (([GioVao]<=[GioRa]))
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [ck_ChamCongThoiGian]
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD  CONSTRAINT [ck_ChiNhanh_MaChiNhanh] CHECK  (([MaChiNhanh] like 'CN%'))
GO
ALTER TABLE [dbo].[ChiNhanh] CHECK CONSTRAINT [ck_ChiNhanh_MaChiNhanh]
GO
ALTER TABLE [dbo].[ChiTiet_DonHang]  WITH CHECK ADD CHECK  (([CongViec]=N'Ký hợp đồng' OR [CongViec]=N'Gọi Nguồn' OR [CongViec]=N'Dẫn Khách'))
GO
ALTER TABLE [dbo].[ChiTietNhuCau]  WITH CHECK ADD  CONSTRAINT [ck_ChiTietNhuCau_MaChiTiet] CHECK  (([MaChiTiet] like 'CT%'))
GO
ALTER TABLE [dbo].[ChiTietNhuCau] CHECK CONSTRAINT [ck_ChiTietNhuCau_MaChiTiet]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [ck_ChiTietSP_GiayToPhapLy] CHECK  (([GiayToPhapLy]=N'Viết Tay' OR [GiayToPhapLy]=N'Sổ Hồng' OR [GiayToPhapLy]=N'Hợp Đồng Mua Bán'))
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [ck_ChiTietSP_GiayToPhapLy]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [ck_ChiTietSP_TinhTrang] CHECK  (([TinhTrang]=N'Đã Đặt Cọc' OR [TinhTrang]=N'Đã Cho Thuê' OR [TinhTrang]=N'Đã bán'))
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [ck_ChiTietSP_TinhTrang]
GO
ALTER TABLE [dbo].[ChiTietThanhToan]  WITH CHECK ADD  CONSTRAINT [ck_ChiTietThanhToan_MaThanhToan] CHECK  (([MaThanhToan] like 'TT%'))
GO
ALTER TABLE [dbo].[ChiTietThanhToan] CHECK CONSTRAINT [ck_ChiTietThanhToan_MaThanhToan]
GO
ALTER TABLE [dbo].[CongViec]  WITH CHECK ADD  CONSTRAINT [ck_CongViecThoiGian] CHECK  (([KetThuc]>=[BatDau]))
GO
ALTER TABLE [dbo].[CongViec] CHECK CONSTRAINT [ck_CongViecThoiGian]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [ck_DonHang_MaDH] CHECK  (([MaDH] like 'DH%'))
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [ck_DonHang_MaDH]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [ck_DonHang_MaThanhToan] CHECK  (([MaThanhToan] like 'TT%'))
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [ck_DonHang_MaThanhToan]
GO
ALTER TABLE [dbo].[Du_An]  WITH CHECK ADD  CONSTRAINT [ck_Du_An_MaDuAN] CHECK  (([MaDuAn] like 'DA%'))
GO
ALTER TABLE [dbo].[Du_An] CHECK CONSTRAINT [ck_Du_An_MaDuAN]
GO
ALTER TABLE [dbo].[HoSoPhapLy]  WITH CHECK ADD  CONSTRAINT [ck_HoSoPhapLy_MaHoSo] CHECK  (([MaHoSO] like 'HS%'))
GO
ALTER TABLE [dbo].[HoSoPhapLy] CHECK CONSTRAINT [ck_HoSoPhapLy_MaHoSo]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [ck_KhachHang_MaKH] CHECK  (([MaKH] like 'KH%'))
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [ck_KhachHang_MaKH]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [ck_KhaiThacKhachMuaVaThue_CapThiet] CHECK  (([CapThiet]=(3) OR [CapThiet]=(2) OR [CapThiet]=(1)))
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] CHECK CONSTRAINT [ck_KhaiThacKhachMuaVaThue_CapThiet]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [ck_NhanVien_MaNV] CHECK  (([MaNV]='RP%' OR [MaNV]='MKT%' OR [MaNV]='S%'))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [ck_NhanVien_MaNV]
GO
ALTER TABLE [dbo].[NoiThat]  WITH CHECK ADD  CONSTRAINT [ck_NoiThat_MaNoiThat] CHECK  (([MaNoiThat] like 'NT%'))
GO
ALTER TABLE [dbo].[NoiThat] CHECK CONSTRAINT [ck_NoiThat_MaNoiThat]
GO
ALTER TABLE [dbo].[PhongBan]  WITH CHECK ADD  CONSTRAINT [ck_PhongBan_MaPhongBan] CHECK  (([MaPhongBan] like 'PB%'))
GO
ALTER TABLE [dbo].[PhongBan] CHECK CONSTRAINT [ck_PhongBan_MaPhongBan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [ck_SanPham_MaSP] CHECK  (([MaSP] like 'SP%'))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [ck_SanPham_MaSP]
GO
