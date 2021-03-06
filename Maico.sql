USE [MAICOGROUP]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 6/30/2020 8:43:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MaChiNhanh] [int] IDENTITY(1,1) NOT NULL,
	[TenChiNhanh] [nvarchar](25) NOT NULL,
	[MaDiaChi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_NhanVien]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_NhanVien](
	[MaNV] [int] NOT NULL,
	[MaChiNhanh] [int] NOT NULL,
	[MaPhongBan] [int] NOT NULL,
	[ChucDanh] [nvarchar](20) NOT NULL,
	[Full_Part] [bit] NULL,
	[NguoiQuanLy] [int] NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NULL,
	[HinhThuc_LamViec] [nvarchar](30) NULL,
 CONSTRAINT [pk_ChiTiet_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[NgayBatDau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMND_CCCD]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMND_CCCD](
	[CMND_CCCD] [varchar](12) NOT NULL,
	[NgayCap] [date] NULL,
	[NoiCap] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CMND_CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[SDT] [varchar](15) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[CMND_CCCD] [varchar](12) NULL,
	[Email] [varchar](20) NULL,
	[MaDiaChi] [int] NULL,
	[DanToc] [nvarchar](20) NULL,
	[TonGiao] [nvarchar](20) NULL,
	[TinhTrangHonNhan] [nvarchar](30) NULL,
	[MaTaiKhoan_NH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPhongBan] [int] IDENTITY(1,1) NOT NULL,
	[TenPhongBan] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan_NganHang]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan_NganHang](
	[MaTaiKhoan_NH] [int] IDENTITY(1,1) NOT NULL,
	[ChuTK] [nvarchar](50) NULL,
	[SoTK] [varchar](20) NULL,
	[TenNganHang] [nvarchar](15) NULL,
	[ChiNhanh] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan_NH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_NhanVien]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_NhanVien]
AS
SELECT        dbo.NhanVien.MaNV, dbo.NhanVien.HoVaTen, dbo.NhanVien.SDT, dbo.NhanVien.NgaySinh, dbo.NhanVien.GioiTinh, dbo.NhanVien.CMND_CCCD, dbo.NhanVien.Email, dbo.NhanVien.MaDiaChi, dbo.NhanVien.DanToc, 
                         dbo.NhanVien.TonGiao, dbo.NhanVien.TinhTrangHonNhan, dbo.NhanVien.MaTaiKhoan_NH, dbo.CMND_CCCD.NgayCap, dbo.CMND_CCCD.NoiCap, dbo.TaiKhoan_NganHang.ChuTK, dbo.TaiKhoan_NganHang.SoTK, 
                         dbo.TaiKhoan_NganHang.TenNganHang, dbo.TaiKhoan_NganHang.ChiNhanh, dbo.PhongBan.TenPhongBan, dbo.ChiNhanh.TenChiNhanh, dbo.ChiTiet_NhanVien.ChucDanh, dbo.ChiTiet_NhanVien.Full_Part, 
                         dbo.ChiTiet_NhanVien.NguoiQuanLy, dbo.ChiTiet_NhanVien.NgayBatDau, dbo.ChiTiet_NhanVien.NgayKetThuc, dbo.ChiTiet_NhanVien.HinhThuc_LamViec
FROM            dbo.NhanVien INNER JOIN
                         dbo.CMND_CCCD ON dbo.NhanVien.CMND_CCCD = dbo.CMND_CCCD.CMND_CCCD INNER JOIN
                         dbo.TaiKhoan_NganHang ON dbo.NhanVien.MaTaiKhoan_NH = dbo.TaiKhoan_NganHang.MaTaiKhoan_NH INNER JOIN
                         dbo.ChiTiet_NhanVien ON dbo.NhanVien.MaNV = dbo.ChiTiet_NhanVien.MaNV INNER JOIN
                         dbo.ChiNhanh ON dbo.ChiTiet_NhanVien.MaChiNhanh = dbo.ChiNhanh.MaChiNhanh INNER JOIN
                         dbo.PhongBan ON dbo.ChiTiet_NhanVien.MaPhongBan = dbo.PhongBan.MaPhongBan
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[MaNV] [int] NOT NULL,
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
/****** Object:  Table [dbo].[ChiTiet_DonHang]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DonHang](
	[MaDH] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
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
/****** Object:  Table [dbo].[ChiTietDoiTuong]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDoiTuong](
	[ID] [int] NOT NULL,
	[SoNguoiO] [nvarchar](20) NOT NULL,
	[CongViec] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietNhuCau]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhuCau](
	[MaChiTiet] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[MaSP] [int] NOT NULL,
	[NgayGio] [date] NOT NULL,
	[GiayToPhapLy] [nvarchar](1) NOT NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[Gia] [money] NOT NULL,
	[MaNoiThat] [int] NOT NULL,
	[MoiHayCu] [bit] NULL,
	[BanHayChoThue] [bit] NOT NULL,
	[ChuSoHuu] [int] NOT NULL,
 CONSTRAINT [pk_ChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[NgayGio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietThanhToan]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietThanhToan](
	[MaDH] [int] NOT NULL,
	[NgayGio] [datetime] NOT NULL,
	[SoTien] [money] NOT NULL,
 CONSTRAINT [pk_ChiTietThanhToan] PRIMARY KEY CLUSTERED 
(
	[NgayGio] ASC,
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViec](
	[BatDau] [datetime] NOT NULL,
	[KetThuc] [datetime] NULL,
	[MaNV] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[LoaiCV] [nvarchar](30) NOT NULL,
	[ChuThich] [nvarchar](300) NULL,
	[MaKH] [int] NOT NULL,
 CONSTRAINT [pk_CongViec] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaSP] ASC,
	[BatDau] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatLich_XemNha]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatLich_XemNha](
	[ThoiGian] [date] NOT NULL,
	[MaKH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
 CONSTRAINT [pk_DatLich_XemNha] PRIMARY KEY CLUSTERED 
(
	[ThoiGian] ASC,
	[MaSP] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiaChi]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChi](
	[MaDiaChi] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[NgayGio] [date] NOT NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [pk_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Du_An]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Du_An](
	[MaDuAn] [int] IDENTITY(1,1) NOT NULL,
	[TenCanHo] [nvarchar](30) NOT NULL,
	[MaDiaChi] [int] NOT NULL,
	[DuAn_Regex] [varchar](50) NULL,
 CONSTRAINT [pk_Du_An] PRIMARY KEY CLUSTERED 
(
	[MaDuAn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoPhapLy]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoSoPhapLy](
	[MaHoSo] [int] IDENTITY(1,1) NOT NULL,
	[TenHoSo] [nvarchar](50) NULL,
	[MaSP] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[NhanVienPhapLy] [int] NOT NULL,
	[NhanVienChotDon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachChuaKhaiThac]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachChuaKhaiThac](
	[MaKH] [int] NOT NULL,
	[LoaiKH] [nvarchar](30) NULL,
	[MaDuAn] [int] NULL,
	[MaCan] [nvarchar](10) NULL,
 CONSTRAINT [pk_KhachChuaKhaiThac] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[SDT] [varchar](10) NOT NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [int] NOT NULL,
	[SoTuongTac] [tinyint] NULL,
	[LanTuongTacCuoi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhaiThacKhachMuaVaThue]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhaiThacKhachMuaVaThue](
	[MaKH] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
	[CapThiet] [tinyint] NOT NULL,
	[TaiChinh] [money] NOT NULL,
	[MaNoiThat] [int] NOT NULL,
	[MaChiTiet] [int] NOT NULL,
	[NhanDinh] [nvarchar](300) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[BanHayThue] [bit] NULL,
	[MaDuAn] [int] NOT NULL,
 CONSTRAINT [pk_ChiTietKhachMuaVaThue] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaKH] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichLamViec]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichLamViec](
	[Ngay] [date] NOT NULL,
	[MaNV] [int] NOT NULL,
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
/****** Object:  Table [dbo].[NoiThat]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoiThat](
	[MaNoiThat] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[PhiVaThueSP]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhiVaThueSP](
	[MaSP] [int] NOT NULL,
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDuAn] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Telesale]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telesale](
	[NgayGio] [datetime] NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[ThoiLuong] [tinyint] NOT NULL,
	[CuocGoi] [varchar](50) NOT NULL,
	[NhanDinh] [nvarchar](300) NULL,
	[LoaiKH] [nvarchar](20) NULL,
 CONSTRAINT [pk_Telesale] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaKH] ASC,
	[NgayGio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangHoSoPhapLy]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangHoSoPhapLy](
	[MaHoSo] [int] NOT NULL,
	[TiepNhan] [datetime] NULL,
	[CongChung] [datetime] NULL,
	[DongThue] [datetime] NULL,
	[NopThue] [datetime] NULL,
	[XacNhanTuCDT] [datetime] NULL,
	[HoanhThanh] [datetime] NULL,
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
ALTER TABLE [dbo].[ChiTiet_NhanVien]  WITH NOCHECK ADD  CONSTRAINT [fk_ChiTiet_NhanVien_NguoiQuanLy] FOREIGN KEY([NguoiQuanLy])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien] CHECK CONSTRAINT [fk_ChiTiet_NhanVien_NguoiQuanLy]
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_MaNV_ChiTiet] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTiet_NhanVien] CHECK CONSTRAINT [fk_MaNV_ChiTiet]
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
ALTER TABLE [dbo].[ChiTietThanhToan]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietThanhToan_MaDH] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietThanhToan] CHECK CONSTRAINT [fk_ChiTietThanhToan_MaDH]
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
ALTER TABLE [dbo].[NhanVien]  WITH NOCHECK ADD  CONSTRAINT [fk_NhanVien_CMND] FOREIGN KEY([CMND_CCCD])
REFERENCES [dbo].[CMND_CCCD] ([CMND_CCCD])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien_CMND]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien_MaDiaChi] FOREIGN KEY([MaDiaChi])
REFERENCES [dbo].[DiaChi] ([MaDiaChi])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien_MaDiaChi]
GO
ALTER TABLE [dbo].[NhanVien]  WITH NOCHECK ADD  CONSTRAINT [fk_NhanVien_MaTaiKhoan] FOREIGN KEY([MaTaiKhoan_NH])
REFERENCES [dbo].[TaiKhoan_NganHang] ([MaTaiKhoan_NH])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien_MaTaiKhoan]
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
ALTER TABLE [dbo].[ChiTiet_DonHang]  WITH CHECK ADD CHECK  (([CongViec]=N'Ký hợp đồng' OR [CongViec]=N'Gọi Nguồn' OR [CongViec]=N'Dẫn Khách' OR [CongViec]=N'Chăm Khách'))
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [ck_ChiTietSP_GiayToPhapLy] CHECK  (([GiayToPhapLy]=N'Viết Tay' OR [GiayToPhapLy]=N'Sổ Hồng' OR [GiayToPhapLy]=N'Hợp Đồng Mua Bán'))
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [ck_ChiTietSP_GiayToPhapLy]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [ck_ChiTietSP_TinhTrang] CHECK  (([TinhTrang]=N'Đã Đặt Cọc' OR [TinhTrang]=N'Đã Cho Thuê' OR [TinhTrang]=N'Đã bán'))
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [ck_ChiTietSP_TinhTrang]
GO
ALTER TABLE [dbo].[CongViec]  WITH CHECK ADD  CONSTRAINT [ck_CongViecThoiGian] CHECK  (([KetThuc]>=[BatDau]))
GO
ALTER TABLE [dbo].[CongViec] CHECK CONSTRAINT [ck_CongViecThoiGian]
GO
ALTER TABLE [dbo].[CongViec]  WITH CHECK ADD  CONSTRAINT [ck_LoaiCV] CHECK  (([LoaiCV]=N'Khác' OR [LoaiCV]=N'Chạy Hồ Sơ' OR [LoaiCV]=N'Ký Hợp Đồng' OR [LoaiCV]=N'Dẫn Khách'))
GO
ALTER TABLE [dbo].[CongViec] CHECK CONSTRAINT [ck_LoaiCV]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [ck_KhaiThacKhachMuaVaThue_CapThiet] CHECK  (([CapThiet]=(3) OR [CapThiet]=(2) OR [CapThiet]=(1)))
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] CHECK CONSTRAINT [ck_KhaiThacKhachMuaVaThue_CapThiet]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [ck_NhanVien_TTHN] CHECK  (([TinhTrangHonNhan]=N'Ly dị' OR [TinhTrangHonNhan]=N'Đã Kết Hôn' OR [TinhTrangHonNhan]=N'Độc Thân'))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [ck_NhanVien_TTHN]
GO
ALTER TABLE [dbo].[Telesale]  WITH CHECK ADD CHECK  (([LoaiKH]='Khách Ðích' OR [LoaiKH]='Khách Ngu?n'))
GO
/****** Object:  StoredProcedure [dbo].[Insert_ChiNhanh]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Insert_ChiNhanh]
	@Ten nvarchar(25),
	@SoNha_TD nvarchar(150),
	@Phuong nvarchar(30),
	@Quan nvarchar(30),
	@TP_Tinh nvarchar(30)
AS
BEGIN
	begin tran
	declare @madc int
	insert into DiaChi(SoNha_TenDuong, Phuong, Quan, ThanhPho_Tinh) values(@SoNha_TD,@Phuong,@Quan, @TP_Tinh)
	set @madc = IDENT_CURRENT('DiaChi')
	insert into ChiNhanh(TenChiNhanh, MaDiaChi) values (@Ten,@madc )
	commit
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_ThongTin_NhanVien]    Script Date: 6/30/2020 8:43:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Insert_ThongTin_NhanVien]
	@Ten nvarchar(50) = null,
	@SDT varchar(10) = null,
	@NgaySinh date = null,
	@GioiTinh bit = null,

	@CMND_CCCD varchar(12) = null,
	@NgayCap date = null,
	@NoiCap nvarchar(30) = null,

	@Email varchar(20) = null,
	@DanToc nvarchar(20) = null,
	@TonGiao nvarchar(20) = null,
	@TinhTrangHN nvarchar(30) = null,

	@SoTk varchar(20) = null,
	@ChuTK varchar(20) = null,
	@TenNganHang varchar(15) = null,
	@ChiNhanhNH varchar(20) = null,
	
	@SoNha_TD nvarchar(150) = null,
	@Phuong nvarchar(30) = null,
	@Quan nvarchar(30) = null,
	@TP_Tinh nvarchar(30) = null,

	@ChucDanh nvarchar(20) = null,
	@full_part bit = null,
	@nguoiquanly int = null,
	@Chedo bit = null,
	@TenCN nvarchar(20) = null,
	@TenPhongBan nvarchar (20) = null,
	@NgayBatDau date = '2020-01-01'
as
begin
	begin tran
	declare @madc int, @Matknh int, @mapb int, @macn int, @manv int
	
	ALTER TABLE NhanVien
	NOCHECK CONSTRAINT fk_NhanVien_CMND;

	ALTER TABLE ChiTiet_NhanVien
	NOCHECK CONSTRAINT fk_ChiTiet_NhanVien_NguoiQuanLy;

	ALTER TABLE NhanVien
	NOCHECK CONSTRAINT fk_NhanVien_MaTaiKhoan;
	
	--insert into DiaChi(SoNha_TenDuong, Phuong, Quan, ThanhPho_Tinh) values(@SoNha_TD,@Phuong,@Quan, @TP_Tinh)
	--set @madc = IDENT_CURRENT('DiaChi')
	if(@SoTk IS not null)
		begin
			insert into TaiKhoan_NganHang(ChuTK, SoTK, TenNganHang, ChiNhanh) values (@ChuTK, @SoTk, @TenNganHang, @ChiNhanhNH)
			set @Matknh = IDENT_CURRENT('TaiKhoan_NganHang')
		end

	insert into NhanVien(HoVaTen, SDT, NgaySinh, GioiTinh, CMND_CCCD, Email, MaDiaChi, DanToc, TonGiao, TinhTrangHonNhan, MaTaiKhoan_NH)
		values (@Ten, @SDT, @NgaySinh, @GioiTinh, @CMND_CCCD, @Email, @madc, @DanToc, @TonGiao, @TinhTrangHN, @Matknh)
	set @manv = IDENT_CURRENT('NhanVien')

	if(@CMND_CCCD is not null)
		begin
			insert into CMND_CCCD values (@CMND_CCCD, @NgayCap, @NoiCap) 
		end


	select @macn = MaChiNhanh from ChiNhanh where TenChiNhanh like @TenCN
	select @mapb = MaPhongBan from PhongBan where TenPhongBan like @TenPhongBan

	insert into ChiTiet_NhanVien(MaNV, MaChiNhanh, MaPhongBan, ChucDanh, Full_Part, NguoiQuanLy, HinhThuc_LamViec, NgayBatDau) values ( @manv, @macn, @mapb, @ChucDanh, @full_part, @nguoiquanly, @Chedo, @NgayBatDau)
	
	ALTER TABLE NhanVien
	CHECK CONSTRAINT fk_NhanVien_CMND;

	ALTER TABLE ChiTiet_NhanVien
	CHECK CONSTRAINT fk_ChiTiet_NhanVien_NguoiQuanLy;

	ALTER TABLE NhanVien
	CHECK CONSTRAINT fk_NhanVien_MaTaiKhoan;
	commit
	;
end;
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[25] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CMND_CCCD"
            Begin Extent = 
               Top = 148
               Left = 199
               Bottom = 261
               Right = 369
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NhanVien"
            Begin Extent = 
               Top = 6
               Left = 454
               Bottom = 136
               Right = 648
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "PhongBan"
            Begin Extent = 
               Top = 6
               Left = 686
               Bottom = 102
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ChiNhanh"
            Begin Extent = 
               Top = 6
               Left = 894
               Bottom = 119
               Right = 1064
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TaiKhoan_NganHang"
            Begin Extent = 
               Top = 167
               Left = 438
               Bottom = 297
               Right = 616
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "ChiTiet_NhanVien"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_NhanVien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_NhanVien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_NhanVien'
GO
