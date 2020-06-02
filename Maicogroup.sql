/****** Object:  Database [MAICOGROUP]    Script Date: 5/28/2020 9:48:00 AM ******/

/****** Object:  UserDefinedFunction [dbo].[fn_diagramobjects]    Script Date: 5/28/2020 9:48:00 AM ******/

GO
/****** Object:  Table [dbo].[CanHo]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanHo](
	[MaCanHo] [varchar](10) NOT NULL,
	[TenCanHo] [nvarchar](30) NOT NULL,
	[DiaChi] [nvarchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCanHo] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 5/28/2020 9:48:01 AM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiNhanh]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiNhanh](
	[MaChiNhanh] [varchar](10) NOT NULL,
	[TenChiNhanh] [nvarchar](25) NOT NULL,
	[DiaChi] [nvarchar](80) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietCanHoVaNhuCau]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietCanHoVaNhuCau](
	[MaChiTiet] [varchar](10) NOT NULL,
	[DienTich] [tinyint] NULL,
	[MoiHayCu] [bit] NULL,
	[Huong] [nvarchar](10) NULL,
	[Vieww] [nvarchar](60) NULL,
	[PN] [tinyint] NULL,
	[WC] [tinyint] NULL,
	[BanHayThue] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDoiTuong]    Script Date: 5/28/2020 9:48:01 AM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietThanhToan]    Script Date: 5/28/2020 9:48:01 AM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CongViec]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongViec](
	[MaCV] [varchar](10) NOT NULL,
	[BatDau] [datetime] NULL,
	[KetThuc] [datetime] NULL,
	[MaNV] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[LoaiCV] [nvarchar](30) NOT NULL,
	[ChuThich] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[GiaSP] [money] NOT NULL,
	[MaThanhToan] [varchar](10) NOT NULL,
	[NgayGio] [datetime] NULL,
	[HoanTat] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_DonHang_MaThanhToan] UNIQUE NONCLUSTERED 
(
	[MaThanhToan] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoSoPhapLy]    Script Date: 5/28/2020 9:48:01 AM ******/
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
	[Sale] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoSo] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [varchar](10) NOT NULL,
	[SoTuongTac] [tinyint] NULL,
	[LanTuongTacCuoi] [date] NULL,
	[MaCanHo] [varchar](10) NOT NULL,
	[LoaiKH] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhaiThacKhachMuaVaThue]    Script Date: 5/28/2020 9:48:01 AM ******/
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
	[TangCaoThap] [bit] NOT NULL,
	[MaNoiThat] [varchar](10) NOT NULL,
	[MaChiTiet] [varchar](10) NOT NULL,
	[NhanDinh] [nvarchar](300) NULL,
 CONSTRAINT [pk_ChiTietKhachMuaVaThue] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaKH] ASC,
	[ThoiGian] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichLamViec]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichLamViec](
	[Ngay] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[CaLam] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_LichLamViec] PRIMARY KEY CLUSTERED 
(
	[Ngay] ASC,
	[MaNV] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[MaChiNhanh] [varchar](10) NOT NULL,
	[MaPhongBan] [varchar](10) NOT NULL,
	[ChucDanh] [nvarchar](20) NOT NULL,
	[SoTaiKhoan] [smallint] NOT NULL,
	[NguoiQuanLy] [varchar](10) NULL,
	[NgayVaoLam] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoiThat]    Script Date: 5/28/2020 9:48:01 AM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhiVaThueSP]    Script Date: 5/28/2020 9:48:01 AM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 5/28/2020 9:48:01 AM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](10) NOT NULL,
	[ChuSoHuu] [varchar](10) NOT NULL,
	[MaCanHo] [varchar](10) NOT NULL,
	[GiayToPhapLy] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](20) NULL,
	[MaCan] [nvarchar](10) NOT NULL,
	[Gia] [money] NULL,
	[MaChiTiet] [varchar](10) NOT NULL,
	[Anh] [image] NULL,
	[MaNoiThat] [varchar](10) NULL,
	[GhiChu] [nvarchar](300) NULL,
	[LoaiSP] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telesale]    Script Date: 5/28/2020 9:48:01 AM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangHoSoPhapLy]    Script Date: 5/28/2020 9:48:01 AM ******/
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
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangKhach]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangKhach](
	[NgayGio] [datetime] NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_TinhTrangKhach] PRIMARY KEY CLUSTERED 
(
	[NgayGio] ASC,
	[MaKH] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietThanhToan] ADD  DEFAULT (getdate()) FOR [NgayGio]
GO
ALTER TABLE [dbo].[CongViec] ADD  DEFAULT (getdate()) FOR [BatDau]
GO
ALTER TABLE [dbo].[DonHang] ADD  DEFAULT (getdate()) FOR [NgayGio]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT ((0)) FOR [SoTuongTac]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [LanTuongTacCuoi]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] ADD  DEFAULT (getdate()) FOR [ThoiGian]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (getdate()) FOR [NgayVaoLam]
GO
ALTER TABLE [dbo].[Telesale] ADD  DEFAULT (getdate()) FOR [NgayGio]
GO
ALTER TABLE [dbo].[TinhTrangKhach] ADD  DEFAULT (getdate()) FOR [NgayGio]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [fk_ChamCong] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [fk_ChamCong]
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
ALTER TABLE [dbo].[ChiTietThanhToan]  WITH CHECK ADD  CONSTRAINT [fk_ChiTietThanhToan_MaThanhToan] FOREIGN KEY([MaThanhToan])
REFERENCES [dbo].[DonHang] ([MaThanhToan])
GO
ALTER TABLE [dbo].[ChiTietThanhToan] CHECK CONSTRAINT [fk_ChiTietThanhToan_MaThanhToan]
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
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [fk_DonHang_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [fk_DonHang_MaNV]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [fk_DonHang_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [fk_DonHang_MaSP]
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
ALTER TABLE [dbo].[HoSoPhapLy]  WITH CHECK ADD  CONSTRAINT [fk_HoSoPhapLy_Sale] FOREIGN KEY([Sale])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoSoPhapLy] CHECK CONSTRAINT [fk_HoSoPhapLy_Sale]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_KhachHang_MaCanHo] FOREIGN KEY([MaCanHo])
REFERENCES [dbo].[CanHo] ([MaCanHo])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_KhachHang_MaCanHo]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [fk_KhachHang_NguoiTao] FOREIGN KEY([NguoiTao])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [fk_KhachHang_NguoiTao]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [fk_KhaiThacKhachMuaVaBan_MaChiTiet] FOREIGN KEY([MaChiTiet])
REFERENCES [dbo].[ChiTietCanHoVaNhuCau] ([MaChiTiet])
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
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien_ChiNhanh] FOREIGN KEY([MaChiNhanh])
REFERENCES [dbo].[ChiNhanh] ([MaChiNhanh])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien_ChiNhanh]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien_PhongBan] FOREIGN KEY([MaPhongBan])
REFERENCES [dbo].[PhongBan] ([MaPhongBan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien_PhongBan]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien_QuanLy] FOREIGN KEY([NguoiQuanLy])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien_QuanLy]
GO
ALTER TABLE [dbo].[PhiVaThueSP]  WITH CHECK ADD  CONSTRAINT [fk_PhiVaThueSP_MaSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhiVaThueSP] CHECK CONSTRAINT [fk_PhiVaThueSP_MaSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SanPham_ChuSoHuu] FOREIGN KEY([ChuSoHuu])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SanPham_ChuSoHuu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SanPham_MaChiTiet] FOREIGN KEY([MaChiTiet])
REFERENCES [dbo].[ChiTietCanHoVaNhuCau] ([MaChiTiet])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SanPham_MaChiTiet]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [fk_SanPham_MaNoiThat] FOREIGN KEY([MaNoiThat])
REFERENCES [dbo].[NoiThat] ([MaNoiThat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [fk_SanPham_MaNoiThat]
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
ALTER TABLE [dbo].[TinhTrangKhach]  WITH CHECK ADD  CONSTRAINT [fk_TinhTrangKhach] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[TinhTrangKhach] CHECK CONSTRAINT [fk_TinhTrangKhach]
GO
ALTER TABLE [dbo].[CanHo]  WITH CHECK ADD  CONSTRAINT [ck_CanHo_MaCanHo] CHECK  (([MaCanHo] like 'CH%'))
GO
ALTER TABLE [dbo].[CanHo] CHECK CONSTRAINT [ck_CanHo_MaCanHo]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [ck_ChamCongThoiGian] CHECK  (([GioVao]<=[GioRa]))
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [ck_ChamCongThoiGian]
GO
ALTER TABLE [dbo].[ChiNhanh]  WITH CHECK ADD  CONSTRAINT [ck_ChiNhanh_MaChiNhanh] CHECK  (([MaChiNhanh] like 'CN%'))
GO
ALTER TABLE [dbo].[ChiNhanh] CHECK CONSTRAINT [ck_ChiNhanh_MaChiNhanh]
GO
ALTER TABLE [dbo].[ChiTietCanHoVaNhuCau]  WITH CHECK ADD  CONSTRAINT [ck_ChiTietCanHoVaNhuCau_MaChiTiet] CHECK  (([MaChiTiet] like 'CT%'))
GO
ALTER TABLE [dbo].[ChiTietCanHoVaNhuCau] CHECK CONSTRAINT [ck_ChiTietCanHoVaNhuCau_MaChiTiet]
GO
ALTER TABLE [dbo].[ChiTietThanhToan]  WITH CHECK ADD  CONSTRAINT [ck_ChiTietThanhToan_MaThanhToan] CHECK  (([MaThanhToan] like 'TT%'))
GO
ALTER TABLE [dbo].[ChiTietThanhToan] CHECK CONSTRAINT [ck_ChiTietThanhToan_MaThanhToan]
GO
ALTER TABLE [dbo].[CongViec]  WITH CHECK ADD  CONSTRAINT [ck_CongViec_MaCV] CHECK  (([MaCV] like 'CV%'))
GO
ALTER TABLE [dbo].[CongViec] CHECK CONSTRAINT [ck_CongViec_MaCV]
GO
ALTER TABLE [dbo].[CongViec]  WITH CHECK ADD  CONSTRAINT [ck_CongViecThoiGian] CHECK  (([KetThuc]>=[BatDau]))
GO
ALTER TABLE [dbo].[CongViec] CHECK CONSTRAINT [ck_CongViecThoiGian]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [ck_DonHang_MaDH] CHECK  (([MaDH] like 'DH%'))
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [ck_DonHang_MaDH]
GO
ALTER TABLE [dbo].[HoSoPhapLy]  WITH CHECK ADD  CONSTRAINT [ck_HoSoPhapLy_MaHoSo] CHECK  (([MaHoSO] like 'HS%'))
GO
ALTER TABLE [dbo].[HoSoPhapLy] CHECK CONSTRAINT [ck_HoSoPhapLy_MaHoSo]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [ck_KhachHang_LoaiKH] CHECK  (([LoaiKH]='ChoThue' OR [LoaiKH]='Thue' OR [LoaiKH]='Ban' OR [LoaiKH]='Mua'))
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [ck_KhachHang_LoaiKH]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [ck_KhachHang_MaKH] CHECK  (([MaKH] like 'KH%'))
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [ck_KhachHang_MaKH]
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue]  WITH CHECK ADD  CONSTRAINT [ck_KhaiThacKhachMuaVaThue_CapThiet] CHECK  (([CapThiet]=(3) OR [CapThiet]=(2) OR [CapThiet]=(1)))
GO
ALTER TABLE [dbo].[KhaiThacKhachMuaVaThue] CHECK CONSTRAINT [ck_KhaiThacKhachMuaVaThue_CapThiet]
GO
ALTER TABLE [dbo].[LichLamViec]  WITH CHECK ADD  CONSTRAINT [ck_LichLamViec_CaLam] CHECK  (([CaLam]='Full' OR [CaLam]='Chieu' OR [CaLam]='Sang'))
GO
ALTER TABLE [dbo].[LichLamViec] CHECK CONSTRAINT [ck_LichLamViec_CaLam]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [ck_NhanVien_MaNV] CHECK  (([MaNV]='RP%' OR [MaNV]='MKT%' OR [MaNV]='S%'))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [ck_NhanVien_MaNV]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [ck_NhanVien_NgaySinh] CHECK  (([NgaySinh]<[NgayVaoLam]))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [ck_NhanVien_NgaySinh]
GO
ALTER TABLE [dbo].[NoiThat]  WITH CHECK ADD  CONSTRAINT [ck_NoiThat_MaNoiThat] CHECK  (([MaNoiThat] like 'NT%'))
GO
ALTER TABLE [dbo].[NoiThat] CHECK CONSTRAINT [ck_NoiThat_MaNoiThat]
GO
ALTER TABLE [dbo].[PhongBan]  WITH CHECK ADD  CONSTRAINT [ck_PhongBan_MaPhongBan] CHECK  (([MaPhongBan] like 'PB%'))
GO
ALTER TABLE [dbo].[PhongBan] CHECK CONSTRAINT [ck_PhongBan_MaPhongBan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [ck_SanPham_GiayToPhapLy] CHECK  (([GiayToPhapLy]='VietTay' OR [GiayToPhapLy]='SoHong' OR [GiayToPhapLy]='HDMB'))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [ck_SanPham_GiayToPhapLy]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [ck_SanPham_Loai] CHECK  (([LoaiSP]='ChoThue' OR [LoaiSP]='Ban'))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [ck_SanPham_Loai]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [ck_SanPham_MaSP] CHECK  (([MaSP] like 'SP%'))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [ck_SanPham_MaSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [ck_SanPham_TinhTrang] CHECK  (([TinhTrang]='DaDatCoc' OR [TinhTrang]='DaChoThue' OR [TinhTrang]='DaBan'))
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [ck_SanPham_TinhTrang]
GO
/****** Object:  StoredProcedure [dbo].[sp_alterdiagram]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_creatediagram]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdiagram]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagramdefinition]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagrams]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_renamediagram]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_upgraddiagrams]    Script Date: 5/28/2020 9:48:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	
GO
EXEC sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sysdiagrams'
GO
ALTER DATABASE [MAICOGROUP] SET  READ_WRITE 
GO
