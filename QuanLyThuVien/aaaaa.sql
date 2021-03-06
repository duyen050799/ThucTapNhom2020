USE [Thu_vien]
GO
/****** Object:  Table [dbo].[CT_Muon_tra]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_Muon_tra](
	[Ma_muon_tra] [char](10) NOT NULL,
	[Ma_sach] [char](10) NOT NULL,
	[Ghi_chu] [nvarchar](200) NULL,
	[Da_tra] [int] NULL,
	[Ngay_tra] [date] NOT NULL,
 CONSTRAINT [PK_muon] PRIMARY KEY CLUSTERED 
(
	[Ma_muon_tra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doc_gia]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doc_gia](
	[Ma_Doc_gia] [char](10) NOT NULL,
	[Ten_Doc_gia] [nvarchar](60) NULL,
	[Dia_chi] [nvarchar](200) NULL,
	[So_the] [char](10) NOT NULL,
	[anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Doc_gia] PRIMARY KEY CLUSTERED 
(
	[Ma_Doc_gia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Muon_tra]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Muon_tra](
	[Ma_muon_tra] [char](10) NOT NULL,
	[So_the] [char](10) NOT NULL,
	[Ma_nhan_vien] [char](10) NOT NULL,
	[Ngay_muon] [date] NOT NULL,
 CONSTRAINT [PK_Muon_tra] PRIMARY KEY CLUSTERED 
(
	[Ma_muon_tra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhan_vien]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhan_vien](
	[Ma_nhan_vien] [char](10) NOT NULL,
	[Ten_nhan_vien] [nvarchar](60) NULL,
	[Ngay_sinh] [date] NULL,
	[SDT] [char](10) NULL,
	[mat_khau] [nvarchar](20) NULL,
 CONSTRAINT [PK_Nhan_vien] PRIMARY KEY CLUSTERED 
(
	[Ma_nhan_vien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NXB]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NXB](
	[Ma_NXB] [char](10) NOT NULL,
	[Ten_NXB] [nvarchar](60) NULL,
	[Dia_chi] [nvarchar](200) NULL,
	[Email] [nvarchar](200) NULL,
	[Thong_tin_nguoi_dai_dien] [nvarchar](500) NULL,
 CONSTRAINT [FK_NXB] PRIMARY KEY CLUSTERED 
(
	[Ma_NXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[Ma_sach] [char](10) NOT NULL,
	[Ten_sach] [nvarchar](200) NULL,
	[Ma_tac_gia] [char](10) NOT NULL,
	[Ma_NXB] [char](10) NOT NULL,
	[Ma_the_loai] [char](10) NOT NULL,
	[Nam_xuat_ban] [date] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[Ma_sach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tac_gia]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tac_gia](
	[Ma_tac_gia] [char](10) NOT NULL,
	[Ten_tac_gia] [nvarchar](60) NULL,
 CONSTRAINT [PK_Tac_gia] PRIMARY KEY CLUSTERED 
(
	[Ma_tac_gia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The_loai]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The_loai](
	[Ma_the_loai] [char](10) NOT NULL,
	[Ten_the_loai] [nvarchar](60) NULL,
 CONSTRAINT [PK_The_loai] PRIMARY KEY CLUSTERED 
(
	[Ma_the_loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[The_thu_vien]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[The_thu_vien](
	[So_the] [char](10) NOT NULL,
	[Ngay_bat_dau] [date] NOT NULL,
	[Ngay_het_han] [date] NOT NULL,
	[Ghi_chu] [nvarchar](200) NULL,
 CONSTRAINT [PK_the] PRIMARY KEY CLUSTERED 
(
	[So_the] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CT_Muon_tra] ([Ma_muon_tra], [Ma_sach], [Ghi_chu], [Da_tra], [Ngay_tra]) VALUES (N'1         ', N'1         ', NULL, 0, CAST(N'2020-12-04' AS Date))
INSERT [dbo].[CT_Muon_tra] ([Ma_muon_tra], [Ma_sach], [Ghi_chu], [Da_tra], [Ngay_tra]) VALUES (N'2         ', N'2         ', NULL, 0, CAST(N'2020-12-04' AS Date))
INSERT [dbo].[CT_Muon_tra] ([Ma_muon_tra], [Ma_sach], [Ghi_chu], [Da_tra], [Ngay_tra]) VALUES (N'3         ', N'2         ', NULL, 0, CAST(N'2020-12-03' AS Date))
INSERT [dbo].[CT_Muon_tra] ([Ma_muon_tra], [Ma_sach], [Ghi_chu], [Da_tra], [Ngay_tra]) VALUES (N'4         ', N'2         ', N'', 0, CAST(N'2020-12-31' AS Date))
GO
INSERT [dbo].[Doc_gia] ([Ma_Doc_gia], [Ten_Doc_gia], [Dia_chi], [So_the], [anh]) VALUES (N'1         ', N'Nguyễn Khánh Nam', N'Hà Nội', N'18QS011   ', NULL)
INSERT [dbo].[Doc_gia] ([Ma_Doc_gia], [Ten_Doc_gia], [Dia_chi], [So_the], [anh]) VALUES (N'2         ', N'Nguyễn Khánh Nam', N'Nghệ An', N'18QS012   ', NULL)
GO
INSERT [dbo].[Muon_tra] ([Ma_muon_tra], [So_the], [Ma_nhan_vien], [Ngay_muon]) VALUES (N'1         ', N'18QS011   ', N'nv1       ', CAST(N'2020-08-05' AS Date))
INSERT [dbo].[Muon_tra] ([Ma_muon_tra], [So_the], [Ma_nhan_vien], [Ngay_muon]) VALUES (N'2         ', N'18QS011   ', N'nv1       ', CAST(N'2020-08-05' AS Date))
INSERT [dbo].[Muon_tra] ([Ma_muon_tra], [So_the], [Ma_nhan_vien], [Ngay_muon]) VALUES (N'3         ', N'18QS012   ', N'nv1       ', CAST(N'2020-08-10' AS Date))
INSERT [dbo].[Muon_tra] ([Ma_muon_tra], [So_the], [Ma_nhan_vien], [Ngay_muon]) VALUES (N'4         ', N'18QS011   ', N'nv1       ', CAST(N'2020-12-08' AS Date))
GO
INSERT [dbo].[Nhan_vien] ([Ma_nhan_vien], [Ten_nhan_vien], [Ngay_sinh], [SDT], [mat_khau]) VALUES (N'nv1       ', N'Nguyễn Khánh Linh ', CAST(N'1990-05-05' AS Date), N'054563114 ', N'123')
INSERT [dbo].[Nhan_vien] ([Ma_nhan_vien], [Ten_nhan_vien], [Ngay_sinh], [SDT], [mat_khau]) VALUES (N'nv2       ', N'Trần Thanh Thương', CAST(N'1991-03-04' AS Date), N'065625235 ', N'123')
GO
INSERT [dbo].[NXB] ([Ma_NXB], [Ten_NXB], [Dia_chi], [Email], [Thong_tin_nguoi_dai_dien]) VALUES (N'N1        ', N'Kim Đồng', N'Hồ Chí Minh', N'kimdong@gmail.com', NULL)
GO
INSERT [dbo].[Sach] ([Ma_sach], [Ten_sach], [Ma_tac_gia], [Ma_NXB], [Ma_the_loai], [Nam_xuat_ban]) VALUES (N'1         ', N'Người về từ núi', N'A1        ', N'N1        ', N'T1        ', CAST(N'1920-05-05' AS Date))
INSERT [dbo].[Sach] ([Ma_sach], [Ten_sach], [Ma_tac_gia], [Ma_NXB], [Ma_the_loai], [Nam_xuat_ban]) VALUES (N'2         ', N'Cuộc sống nơi phồn hoa', N'A1        ', N'N1        ', N'T1        ', CAST(N'1920-10-04' AS Date))
INSERT [dbo].[Sach] ([Ma_sach], [Ten_sach], [Ma_tac_gia], [Ma_NXB], [Ma_the_loai], [Nam_xuat_ban]) VALUES (N'3         ', N'Hãy sống như đoá hoa', N'A1        ', N'N1        ', N'T1        ', CAST(N'1930-10-10' AS Date))
INSERT [dbo].[Sach] ([Ma_sach], [Ten_sach], [Ma_tac_gia], [Ma_NXB], [Ma_the_loai], [Nam_xuat_ban]) VALUES (N'4         ', N'ds', N'A2        ', N'N1        ', N'T1        ', CAST(N'1920-01-01' AS Date))
GO
INSERT [dbo].[Tac_gia] ([Ma_tac_gia], [Ten_tac_gia]) VALUES (N'A1        ', N'Trần Nhật Duật')
INSERT [dbo].[Tac_gia] ([Ma_tac_gia], [Ten_tac_gia]) VALUES (N'A2        ', N'Nguyễn Văn Nam')
INSERT [dbo].[Tac_gia] ([Ma_tac_gia], [Ten_tac_gia]) VALUES (N'A3        ', N'Nguyễn Cảnh Thư')
INSERT [dbo].[Tac_gia] ([Ma_tac_gia], [Ten_tac_gia]) VALUES (N'A4        ', N'Tố Hữu')
GO
INSERT [dbo].[The_loai] ([Ma_the_loai], [Ten_the_loai]) VALUES (N'T1        ', N'Cách mạng')
GO
INSERT [dbo].[The_thu_vien] ([So_the], [Ngay_bat_dau], [Ngay_het_han], [Ghi_chu]) VALUES (N'18QS011   ', CAST(N'2020-10-25' AS Date), CAST(N'2020-12-25' AS Date), NULL)
INSERT [dbo].[The_thu_vien] ([So_the], [Ngay_bat_dau], [Ngay_het_han], [Ghi_chu]) VALUES (N'18QS012   ', CAST(N'2020-10-21' AS Date), CAST(N'2020-12-21' AS Date), N'')
INSERT [dbo].[The_thu_vien] ([So_the], [Ngay_bat_dau], [Ngay_het_han], [Ghi_chu]) VALUES (N'18QS013   ', CAST(N'2020-10-25' AS Date), CAST(N'2020-12-25' AS Date), N'')
GO
ALTER TABLE [dbo].[CT_Muon_tra]  WITH CHECK ADD  CONSTRAINT [FK_ma_muon_nv] FOREIGN KEY([Ma_muon_tra])
REFERENCES [dbo].[Muon_tra] ([Ma_muon_tra])
GO
ALTER TABLE [dbo].[CT_Muon_tra] CHECK CONSTRAINT [FK_ma_muon_nv]
GO
ALTER TABLE [dbo].[CT_Muon_tra]  WITH CHECK ADD  CONSTRAINT [FK_muon_tra_sach] FOREIGN KEY([Ma_sach])
REFERENCES [dbo].[Sach] ([Ma_sach])
GO
ALTER TABLE [dbo].[CT_Muon_tra] CHECK CONSTRAINT [FK_muon_tra_sach]
GO
ALTER TABLE [dbo].[Doc_gia]  WITH CHECK ADD  CONSTRAINT [FK_Doc_gia_The] FOREIGN KEY([So_the])
REFERENCES [dbo].[The_thu_vien] ([So_the])
GO
ALTER TABLE [dbo].[Doc_gia] CHECK CONSTRAINT [FK_Doc_gia_The]
GO
ALTER TABLE [dbo].[Muon_tra]  WITH CHECK ADD  CONSTRAINT [FK_Muon_tra_NV] FOREIGN KEY([Ma_nhan_vien])
REFERENCES [dbo].[Nhan_vien] ([Ma_nhan_vien])
GO
ALTER TABLE [dbo].[Muon_tra] CHECK CONSTRAINT [FK_Muon_tra_NV]
GO
ALTER TABLE [dbo].[Muon_tra]  WITH CHECK ADD  CONSTRAINT [FK_Muon_tra_So_the] FOREIGN KEY([So_the])
REFERENCES [dbo].[The_thu_vien] ([So_the])
GO
ALTER TABLE [dbo].[Muon_tra] CHECK CONSTRAINT [FK_Muon_tra_So_the]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NXB] FOREIGN KEY([Ma_NXB])
REFERENCES [dbo].[NXB] ([Ma_NXB])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NXB]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Tac_gia] FOREIGN KEY([Ma_tac_gia])
REFERENCES [dbo].[Tac_gia] ([Ma_tac_gia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Tac_gia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_The_loai] FOREIGN KEY([Ma_the_loai])
REFERENCES [dbo].[The_loai] ([Ma_the_loai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_The_loai]
GO
ALTER TABLE [dbo].[CT_Muon_tra]  WITH CHECK ADD  CONSTRAINT [CHK_Da_tra] CHECK  (([Da_tra]=(1) OR [Da_tra]=(0)))
GO
ALTER TABLE [dbo].[CT_Muon_tra] CHECK CONSTRAINT [CHK_Da_tra]
GO
/****** Object:  StoredProcedure [dbo].[DoiMK]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DoiMK](@tendangnhap CHAR(10),@matkhau NVARCHAR(20))
AS
BEGIN
	IF EXISTS (SELECT Ma_nhan_vien FROM dbo.Nhan_vien WHERE Ma_nhan_vien = @tendangnhap)
		BEGIN
			UPDATE dbo.Nhan_vien SET mat_khau = @matkhau WHERE Ma_nhan_vien = @tendangnhap
		END
END
GO
/****** Object:  StoredProcedure [dbo].[LayThongTinNguoiDung]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayThongTinNguoiDung]
AS
BEGIN
	SELECT Ma_nhan_vien AS tendangnhap, mat_khau AS matkhau FROM dbo.Nhan_vien
END
GO
/****** Object:  StoredProcedure [dbo].[sua_doc_gia]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sua_doc_gia] (@sothe CHAR(10), @madocgia CHAR(10), @tendocgia NVARCHAR(60), @diachi NVARCHAR(200), @nbd DATE, @nhh DATE)
AS
	UPDATE dbo.The_thu_vien SET Ngay_het_han = @nhh, Ngay_bat_dau = @nbd WHERE So_the = @sothe
	UPDATE dbo.Doc_gia SET Ten_Doc_gia = @tendocgia, Dia_chi = @diachi WHERE Ma_Doc_gia = @madocgia
GO
/****** Object:  StoredProcedure [dbo].[sua_Sach]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sua_Sach] (@masach CHAR(10), @tensach NVARCHAR(200), @ma_tacgia CHAR(10), @ma_NXB CHAR(10), @ma_theloai CHAR(10), @namXB DATE)
AS
	UPDATE dbo.Sach SET Ten_sach = @tensach, Ma_tac_gia = @ma_tacgia, Ma_NXB=@ma_NXB, Ma_the_loai=@ma_theloai, Nam_xuat_ban = @namXB
		WHERE Ma_sach = @masach
GO
/****** Object:  StoredProcedure [dbo].[them_doc_gia]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[them_doc_gia] (@sothe CHAR(10), @madocgia CHAR(10), @tendocgia NVARCHAR(60), @diachi NVARCHAR(200), @nbd DATE, @nhh DATE)
AS
	INSERT INTO dbo.The_thu_vien
	(
	    So_the,
	    Ngay_bat_dau,
	    Ngay_het_han,
	    Ghi_chu
	)
	VALUES
	(   @sothe,        -- So_the - char(10)
	    @nbd, -- Ngay_bat_dau - date
	    @nhh, -- Ngay_het_han - date
	    N''        -- Ghi_chu - nvarchar(200)
	    )

		INSERT INTO dbo.Doc_gia
		(
		    Ma_Doc_gia,
		    Ten_Doc_gia,
		    Dia_chi,
		    So_the
		)
		VALUES
		(   @madocgia,  -- Ma_Doc_gia - char(10)
		   @tendocgia, -- Ten_Doc_gia - nvarchar(60)
		    @diachi, -- Dia_chi - nvarchar(200)
		    @sothe   -- So_the - char(10)
		    )
GO
/****** Object:  StoredProcedure [dbo].[them_NXB]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[them_NXB] (@maNXB CHAR(10), @tenNXB NVARCHAR(60), @diachi NVARCHAR(200), @email NVARCHAR(200), @ttndd NVARCHAR(50))
AS	
	INSERT INTO dbo.NXB
	(
	    Ma_NXB,
	    Ten_NXB,
	    Dia_chi,
	    Email,
	    Thong_tin_nguoi_dai_dien
	)
	VALUES
	(   @maNXB,  -- Ma_NXB - char(10)
	    @tenNXB, -- Ten_NXB - nvarchar(60)
	    @diachi, -- Dia_chi - nvarchar(200)
	    @email, -- Email - nvarchar(200)
	    @ttndd  -- Thong_tin_nguoi_dai_dien - nvarchar(500)
	    )
GO
/****** Object:  StoredProcedure [dbo].[them_phieu_muon]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[them_phieu_muon] (@maphieumuon CHAR(10), @masach CHAR(10), @sothe CHAR(10), @manhanvien CHAR(10), @ngaymuon DATE, @ngaytra DATE)
AS
	INSERT INTO dbo.Muon_tra
	(
	    Ma_muon_tra,
	    So_the,
	    Ma_nhan_vien,
	    Ngay_muon
	)
	VALUES
	(   @maphieumuon,       -- Ma_muon_tra - char(10)
	    @sothe,       -- So_the - char(10)
	    @manhanvien,       -- Ma_nhan_vien - char(10)
	    @ngaymuon -- Ngay_muon - date
	    )

	INSERT INTO dbo.CT_Muon_tra
	(
	    Ma_muon_tra,
	    Ma_sach,
	    Ghi_chu,
	    Da_tra,
	    Ngay_tra
	)
	VALUES
	(   @maphieumuon,       -- Ma_muon_tra - char(10)
	    @masach,       -- Ma_sach - char(10)
	    N'',      -- Ghi_chu - nvarchar(200)
	    0,        -- Da_tra - int
	    @ngaytra -- Ngay_tra - date
	    )

GO
/****** Object:  StoredProcedure [dbo].[them_Sach]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[them_Sach] (@masach CHAR(10), @tensach NVARCHAR(200), @ma_tacgia CHAR(10), @ma_NXB CHAR(10), @ma_theloai CHAR(10), @namXB DATE)
AS
	INSERT INTO dbo.Sach
	(
	    Ma_sach,
	    Ten_sach,
	    Ma_tac_gia,
	    Ma_NXB,
	    Ma_the_loai,
	    Nam_xuat_ban
	)
	VALUES
	(   @masach,       -- Ma_sach - char(10)
	    @tensach,      -- Ten_sach - nvarchar(200)
	    @ma_tacgia,       -- Ma_tac_gia - char(10)
	    @ma_NXB,       -- Ma_NXB - char(10)
	    @ma_theloai,       -- Ma_the_loai - char(10)
	    @namXB -- Nam_xuat_ban - date
	    )
GO
/****** Object:  StoredProcedure [dbo].[them_tac_gia]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[them_tac_gia] (@matacgia CHAR(10), @tentacgia NVARCHAR(60))
AS	
	INSERT INTO dbo.Tac_gia
	(
	    Ma_tac_gia,
	    Ten_tac_gia
	)
	VALUES
	(   @matacgia,  -- Ma_tac_gia - char(10)
	    @tentacgia -- Ten_tac_gia - nvarchar(60)
	    )
GO
/****** Object:  StoredProcedure [dbo].[them_the_loai]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[them_the_loai] (@matheloai CHAR(10), @tentheloai NVARCHAR(60))
AS
	INSERT INTO dbo.The_loai
	(
	    Ma_the_loai,
	    Ten_the_loai
	)
	VALUES
	(   @matheloai, -- Ma_the_loai - char(10)
	    @tentheloai -- Ten_the_loai - nvarchar(60)
	    )
GO
/****** Object:  StoredProcedure [dbo].[xoa_doc_gia]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
				 CREATE PROC [dbo].[xoa_doc_gia] (@madocgia CHAR(10), @mathe CHAR(10))
						AS
						DELETE dbo.Doc_gia WHERE Ma_Doc_gia = @madocgia
						DELETE dbo.The_thu_vien WHERE So_the = @mathe
GO
/****** Object:  StoredProcedure [dbo].[xoa_sach]    Script Date: 22/12/2020 10:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	CREATE PROC [dbo].[xoa_sach](@masach CHAR(10))
						AS
							DELETE dbo.Sach WHERE Ma_sach=@masach
GO
