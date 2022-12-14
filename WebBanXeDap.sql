--create database [DBWebBanXeDap1]
USE [DBWebBanXeDap1]
GO
/****** Object:  Table [dbo].[tCategory]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCategory](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tCategory] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tCountry]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCountry](
	[MaNuoc] [nvarchar](50) NOT NULL,
	[TenNuoc] [nvarchar](50) NULL,
 CONSTRAINT [PK_tCountry] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tCustumers]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tCustumers](
	[CustumerID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_tCustumers] PRIMARY KEY CLUSTERED 
(
	[CustumerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMembership]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMembership](
	[MemberID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](20) NULL,
 CONSTRAINT [PK_tMembership] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tOrder]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tOrder](
	[OrderID] [nvarchar](50) NOT NULL,
	[CustumerID] [nvarchar](50) NULL,
	[MemberID] [nvarchar](50) NULL,
	[NgayBan] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tOrder_detall]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tOrder_detall](
	[OrderID] [nvarchar](50) NOT NULL,
	[ProductID] [nvarchar](50) NULL,
	[Prices] [float] NULL,
 CONSTRAINT [PK_tOrder_detall] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tProduct]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProduct](
	[ProductID] [nvarchar](50) NOT NULL,
	[ProducName] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Weight] [float] NULL,
	[Amount] [int] NULL,
	[Price] [float] NULL,
	[MaLoai] [nvarchar](50) NULL,
	[MaChatLieu] [nvarchar](50) NULL,
	[MaNSX] [nvarchar](50) NULL,
	[MaAnh] [nvarchar](50) NULL,
	[GioiThieu] [nvarchar](max) NULL,
	[Discount] [int] NULL,
	[BaoHanh] [nvarchar](20) NULL,
	[MaNuoc] nvarchar(50) NULL,
	[Anh] [nvarchar](50) NULL,
 CONSTRAINT [PK_tProduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[tProduct_Img]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tProduct_Img](
	[ProductID]  [nvarchar](50) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tProduct_Img] PRIMARY KEY CLUSTERED 
(
	[ProductID]  ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
/****** Object:  Table [dbo].[tSubstance]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tSubstance](
	[MaChatLieu] [nvarchar](50) NOT NULL,
	[ChatLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tSubstances] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tSuppliers]    Script Date: 10/29/2022 3:34:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tSuppliers](
	[MaNSX] [nvarchar](50) NOT NULL,
	[TenNSX] [nchar](10) NULL,
 CONSTRAINT [PK_tSuppliers] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tCategory] ([MaLoai], [TenLoai]) VALUES (N'DH', N'Địa hình')
INSERT [dbo].[tCategory] ([MaLoai], [TenLoai]) VALUES (N'DP', N'Đường phố')
INSERT [dbo].[tCategory] ([MaLoai], [TenLoai]) VALUES (N'TE', N'Trẻ em')
INSERT [dbo].[tCategory] ([MaLoai], [TenLoai]) VALUES (N'TT', N'Thể thao')
GO
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'AM', N'America')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'AU', N'Australia')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'CN', N'China')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'EL', N'England')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'FA', N'France')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'GE', N'Germany')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'JP', N'Nhật Bản')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'SG', N'Singapore')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'SP', N'Spain')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'TL', N'ThaiLand')
INSERT [dbo].[tCountry] ([MaNuoc], [TenNuoc]) VALUES (N'VN', N' Việt Nam')
GO
INSERT [dbo].[tCustumers] ([CustumerID], [Name], [Phone], [Address], [Email]) VALUES (N'KH1', N'Phạm Minh Phúc', N'0356607608', N'Hải Phòng', N'phucdz@gmail.com')
INSERT [dbo].[tCustumers] ([CustumerID], [Name], [Phone], [Address], [Email]) VALUES (N'KH2', N'Nguyễn Hả Đăng', N'0301023133', N'Thanh Hóa', N'barcaga@gmail.com')
INSERT [dbo].[tCustumers] ([CustumerID], [Name], [Phone], [Address], [Email]) VALUES (N'KH3', N'Trần Văn Long', N'0402144124', N'Hà Nội', N'longkodz@gmail.com')
INSERT [dbo].[tCustumers] ([CustumerID], [Name], [Phone], [Address], [Email]) VALUES (N'KH4', N'Nguyễn Hữu Lực', N'0123132331', N'Thanh Hóa', N'muga@gmail.com')
INSERT [dbo].[tCustumers] ([CustumerID], [Name], [Phone], [Address], [Email]) VALUES (N'KH5', N'Mạc Đức Anh', N'0341241441', N'Hải Phòng', N'ducanhxz@gmail.com')
INSERT [dbo].[tCustumers] ([CustumerID], [Name], [Phone], [Address], [Email]) VALUES (N'KH6', N'Phan Huy Toàn', N'0213331231', N'Hà Nội', N'chi7ga@gmail.com')
GO
INSERT [dbo].[tMembership] ([MemberID], [Name], [SDT], [Address], [GioiTinh]) VALUES (N'MB1', N'Minh  Phúc Phạm', N'0356023131', N'Hải Phòng', N'Nam')
INSERT [dbo].[tMembership] ([MemberID], [Name], [SDT], [Address], [GioiTinh]) VALUES (N'MB2', N'Hải  Đăng Nguyễn', N'0323432424', N'Thanh Hóa', N'Nữ')
INSERT [dbo].[tMembership] ([MemberID], [Name], [SDT], [Address], [GioiTinh]) VALUES (N'MB3', N'Văn Long Trần', N'0301313131', N'Hà Nội', N'Nam')
INSERT [dbo].[tMembership] ([MemberID], [Name], [SDT], [Address], [GioiTinh]) VALUES (N'MB4', N'Đức Anh Mạc', N'0432131331', N'Hải Phòng', N'Nam')
INSERT [dbo].[tMembership] ([MemberID], [Name], [SDT], [Address], [GioiTinh]) VALUES (N'MB5', N'Huy Toàn Phan', N'0123123313', N'Hà Nội', N'Nữ')
INSERT [dbo].[tMembership] ([MemberID], [Name], [SDT], [Address], [GioiTinh]) VALUES (N'MB6', N'Hữu Lực Nguyễn', N'0123214553', N'Thanh Hóa', N'Nữ')
GO
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD1', N'KH2', N'MB4', CAST(N'1998-04-26T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD10', N'KH3', N'MB1', CAST(N'2019-04-03T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD2', N'KH1', N'MB1', CAST(N'1998-04-30T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD3', N'KH6', N'MB3', CAST(N'1998-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD4', N'KH4', N'MB5', CAST(N'1998-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD5', N'KH2', N'MB4', CAST(N'1999-07-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD6', N'KH5', N'MB2', CAST(N'1999-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD7', N'KH3', N'MB6', CAST(N'1998-05-02T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD8', N'KH2', N'MB6', CAST(N'2019-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tOrder] ([OrderID], [CustumerID], [MemberID], [NgayBan]) VALUES (N'HD9', N'KH5', N'MB4', CAST(N'2019-04-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD1', N'PD1', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD10', N'PD9', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD2', N'PD18', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD3', N'PD2', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD4', N'PD3', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD5', N'PD4', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD6', N'PD5', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD7', N'PD6', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD8', N'PD7', NULL)
INSERT [dbo].[tOrder_detall] ([OrderID], [ProductID], [Prices]) VALUES (N'HD9', N'PD8', NULL)
GO
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD1', N'Xe Đạp California 570CC', N'Xanh', 13, 20, 4990000, N'TT', N'HKN', N'HM', N'P01', N'Là mẫu xe địa hình tầm trung đến từ thương hiệu California - Xe đạp California 570CC vừa được hãng cho ra mắt năm nay với thiết kế khỏe khoắn, thể thao, kết cấu khung được làm từ vật liệu nhôm siêu nhẹ 6061 vô cùng bền bỉ cùng hệ thống phuộc giảm sóc cơ vô cùng êm ái. Xe đạp California 570CC được trang bị bộ chuyển động Shimano 3*8 tốc độ (Nhật Bản), hệ thống phanh đĩa cơ trước và sau chắc chắn, đặc biệt chiếc xe đã cải tiến lên đùi đĩa Nhôm Shimano mà mức giá lại vô cùng phải chăng', 90000, N'2', N'AM',N'xe-dap-california-570cc.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD10', N'Xe Đạp Thống Nhất TE 16-04', N'Xanh', 8, 20, 1790000, N'TE', N'HKTC', N'HM', N'P10', N'Nếu bạn đang phân vân để mua cho bé yêu của bạn một chiếc xe đạp để bé tập đi thì chiếc xe đạp Thống Nhất TE 16-04 là một sự lựa chọn hoàn hảo, chiếc xe được thiết kế chắc chắn, thời trang và bắt mắt có sẵn bánh phụ đường kính bánh xe 16 inch phù hợp cho các bé nam từ 4-7 tuổi cùng với đó chiếc xe có giá thành cực rẻ để bạn tiết kiệm được một khoản tiền kha khá !', 100000, N'1', N'VN' ,N'xe-dap-cho-be-tap-di-gia-re-0cf8.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD11', N'Xe Đạp Trẻ Em Thống Nhất MTB 24-04', N'Vàng/Đen', 7, 15, 3290000, N'TE', N'HKTC', N'CG', N'P11', N'Nếu bạn đang phân vân để mua cho bé yêu của bạn một chiếc xe đạp để bé vui chơi thì chiếc xe đạp địa hình Thống Nhất MTB 24-04 là một sự lựa chọn hoàn hảo, chiếc xe đạp địa hình Thống Nhất MTB 24-04 được thiết kế chắc chắn, thời trang và bắt mắt có sẵn chắn bùn, gacbaga với đường kính bánh xe 24 inch phù hợp cho các bé từ 8-15 tuổi cùng với đó chiếc xe có giá thành cực rẻ để bạn tiết kiệm được một khoản tiền kha khá', 50000, N'1', N'VN',N'xe-dap-tre-em-thong-nhat-mtb-24.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD12', N'Xe Đạp Galaxy T5', N'Đỏ/Trắng', 7, 25, 3400000, N'TE', N'HKTC', N'MD', N'P12', N'Xe đạp địa hình Galaxy T5 là thương hiệu xe đạp đến Đài Loan. Kiểu dáng thời trang, khỏe khoắn thích hợp cho các bé. Xe được trang bị bộ chuyển động: Tay bấm Shimano Nhật Bản 21 tốc độ, gạt đĩa Galaxy, củ đề Galaxy và hệ thống phanh đĩa giúp xe vô cùng chắc chắn và mạnh mẽ trên mọi địa hình. Hãy đến với chúng tôi để cùng khám phá và chải nghiệm sản phẩm này các bạn nhé!!
', 50000, N'1', N'CN',N'xe-dap-galaxy-t5.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD13', N'Xe Đạp Trinx X1', N'Đen/Xanh', 8, 15, 9190000, N'DH', N'HKN', N'TX', N'P13', N'Trinx là 1 trong những thương hiệu nổi tiếng đến từ Đài Loan. Trong năm 2021 này Trinx đã cho ra đời mẫu xe địa hình tầm trung - Trinx X1 với nhiều thiết kê nổi bật hơn so với các phiên bản trước. Kết cấu khung hợp kim nhôm ALU 6061 vô cùng nhẹ và chắc chắn, xe được trang bị bộ phanh dầu X-Spark trước và sau kết hợp bộ chuyển động Shimano Altus M370 27 Tốc độ với độ ổn định  cao sẽ giúp bạn chinh phục mọi chặng đường. Trinx X1 là 1 thiết kế vô cùng tỉ mỉ và chau chuốt bởi kĩ sư người Ý', 150000, N'2', N'CN',N'xe-dap-trinx-x1.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD14', N'Xe Đạp Giant XTC SLR 3', N'Đen/Đỏ', 9, 5, 24950000, N'DH', N'HKN', N'DP', N'P14', N'Giant  là một thương hiệu xe đạp hàng đầu thế giới có xuất sứ tại Đài Loan. Giant luôn đưa đến những sản phẩm tốt nhất và công nghệ hiện đại nhất tới người tiêu dùng. Chiếc Xe Đạp Giant XTC SLR 3 là phiên bản mới nhất đước sản xuất năm 2021 với thiết kế mang đậm phong cách thể thao khỏe khoắn và cá tính. Xe Đạp Giant XTC SLR 3 với thiết kế khung nhôm cao cấp siêu nhẹ, vành nhôm 3 lớp, đặc biệt chiếc xe được trang bị bộ chuyển động đến từ Nhật Bản groupset Shimano Deore M6000 30 tốc độ gồm tay bấm, củ đề, gạt đĩa, líp shimano giúp cho xe chuyển động vô cùng mượt mà êm ái', 200000, N'3', N'CN',N'xe-dap-giant-xtc-slr-3.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD15', N'Xe Đạp Giant Liv Cate 1', N'Xanh', 12, 5, 14900000, N'DH', N'HKN', N'DD', N'P15', N'Giant là một thương hiệu xe đạp nổi tiếng thế giới đến từ Đài Loan. Với sự đột phá phong cách hướng tới các chị em phụ nữ, Xe Đạp Giant Liv CATE 1 phiên bản mới nhất năm 2022 được thiết kế khung sườn được uốn cong với chất liệu hợp kim Nhôm siêu nhẹ, vành nhôm 2 lớp, hệ thống dây âm sườn. Xe Đạp Giant Liv CATE 1 được trang bị Groupset chuyển động Shimano Deore 30 tốc độ đến từ Nhật Bản gồm tay bấm, gạt đĩa, củ đề, giảm sóc trước dầu có khóa hành trình (remote) giúp xe chuyển động vô cùng êm ái và mượt mà', 150000, N'2', N'EL',N'xe-dap-giant-liv-cate-1.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD16', N'Xe Đạp Giant Liv CATE 2', N'Trắng hoa nhài', 13, 7, 12950000, N'DH', N'HKN', N'CG', N'P16', N'Giant là 1 thương hiệu xe đạp nổi tiếng thế giới đến từ Đài Loan với xu hướng dẫn đầu luôn mang đến những chiếc xe chất lượng nhất tới người tiêu dùng. Với sự đột phá phong cách hướng tới các chị em phụ nữ, Xe Đạp Giant Liv CATE 2 (2021) được hãng mang tới với thiết kế vô cùng độc đáo và bắt mắt, khung sườn chất liệu hợp kim Nhôm siêu nhẹ, vành nhôm 2 lớp, hệ thống dây âm sườn, đặc biệt chiếc Xe Đạp Giant Liv CATE 2 được trang bị Groupset chuyển động Shimano Altus 27 tốc độ đến từ Nhật Bản gồm tay bấm, gạt đĩa, củ đề, giảm sóc trước dầu có khóa hành trình (remote) giúp xe chuyển động vô cùng êm ái và mượt mà', 150000, N'2', N'FA',N'xe-dap-nu-giant-liv-cate-2-2021.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD17', N'Xe Đạp Chevaux Nikko', N'Xanh bộ đội', 12, 8, 8950000, N'DH', N'HKN', N'TX', N'P17', N'Xe đạp Chevaux Nikko là mẫu xe đạp địa hình đến từ Pháp. Thiết kế khung hợp kim Nhôm cao cấp siêu nhẹ 6061 cùng hệ thống dây đi âm sườn cực gọn. Xe đạp chevaux Nikko được trang bị bộ chuyển động Shimano Altus M370 - 27 tốc độ (Nhật Bản) kết hợp phanh đĩa dầu Shimano MT200 giúp chiếc xe vận hành cực mượt mà và êm ái.', 100000, N'1', N'GE',N'xe-dap-chevaux-nikko-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD18', N'Xe Đạp Giant XTC ADV 29 2', N'Xanh ', 9, 1, 65300000, N'DH', N'CO', N'DD', N'P18', N'iant - ông lớn trong ngành sản xuất xe đạp đã có mặt ở 80 quốc gia trên thế giới, là dòng xe đạp dẫn đầu thị trường và được nhiều người tin dùng. Năm 2021 Giant vừa cho ra mắt sản phầm Xe Đạp Giant XTC ADV 29 2 là một chiếc xe địa hình với thiết kế thời thượng, khỏe khoắn. Xe Đạp Giant XTC ADV 29 2 bộ vành 29" và khung Composite cao cấp siêu nhẹ, phù hợp hơn với địa hình XC, đặc biệt là bộ phuộc với hành trình 100mm được làm thủ công tạo ra độ cứng tối ưu phù hợp với nhiều kiểu đường. Đây chính là mẫu địa hình cao cấp sẽ mang lại sự tự tin và khả năng kiểm soát mặt đường cực kì tốt dành cho bạn', 500000, N'3', N'SG',N'xe-dap-giant-xtc-adv-29-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD19', N'Xe Đạp SaVa Deck 2021', N'Cam', 12, 3, 19600000, N'DH', N'Ca', N'HD', N'P19', N'Sava là một thương hiệu xe đạp hàng đầu của CHLB Đức. Sava Deck sở hữu một bộ khung FULL CARBON 3K siêu nhẹ cùng với cấu hình khủng Groupset Shimano Deore M600 và được sản xuất trên dây truyền ĐỨC,  nhập khẩu nguyên chiếc. Sava Deck có vẻ ngoài tuyệt đẹp, đầy sức mạnh của một mẫu địa hình cao cấp chuyên nghiệp. Sava Deck là chiếc xe đẳng cấp cả về chất lượng lẫn thương hiệu nhưng giá thành rất hợp lý, là sự lựa chọn tuyệt vời và hoàn hảo nhất cho những người yêu thích xe đạp !
', 100000, N'2', N'SP',N'xe-dap-sava-deck-3.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD2', N'Xe Đạp California 800CC', N'Trắng', 12, 25, 5990000, N'DP', N'HKN', N'HM', N'P02', N'Với kiểu dáng thời trang, khỏe khoắn, bắt mắt, chiếc Xe Đạp Califorina 800CC được làm từ chất liệu hợp kim Nhôm 6061 cực kì nhẹ, khung xe được xử lí mối hàn cực kì tinh tế.
Xe được trang bị bộ chuyển động đến từ Nhật Bản cùng bộ tay bấm Shimano Altus M370 3*9 tốc độ kết hợp hệ thống phanh đĩa dầu Logan khiến chiếc xe trở nên uyển chuyển, mượt mà trên mọi địa hình. Hệ thống dây đi âm sườn độc đáo cũng là một điểm nổi bật giúp chiếc xe trở nên gọn gàng hơn.', 100000, N'2', N'JP',N'xe-dap-california-800cc-11.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD20', N'Xe Đạp Giant Escape 3 Disc', N'Ghi', 11, 4, 10500000, N'TT', N'NH', N'TX', N'P20', N'Xe Đạp Giant Escape 3 Disc phiên bản quốc tế là mẫu xe đạp đường phố đến từ Giant - thương hiệu xe đạp hàng đầu thế giới. Xe đạp Giant Escape 3 Disc với kiểu dáng thanh mảnh, khỏe khoắn và thể thao được thiết kế từ vật liệu Nhôm cao cấp Allux SL siêu nhẹ, siêu bền bỉ kết hợp bộ chuyển động Shimano 3*7 tốc độ (Nhật Bản) cùng hệ thống phanh đĩa cơ Tektro trước và sau chắc chắn sẽ mang lại trải nghiệm tuyệt vời cho bạn', 0, N'2', N'TL',N'xe-dap-giant-escape-3-disc-4.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD21', N'Xe Đạp Giant Liv Alight 2', N'Hồng', 12, 10, 10500000, N'TT', N'HKN', N'DD', N'P21', N'Xe đạp Giant Liv Alight 2 với kết cấu khung hợp kim nhôm cao cấp SL-Allux siêu nhẹ, vành nhôm 2 lớp. Thiết kế thời thượng, khỏe khoắn, sang trọng, màu sắc bắt mắt. Xe đạp Giant Liv Alight 2 được trang bị bộ chuyển động Shimano Tourney 21 cấp độ (Nhật Bản) cùng hệ thống phanh đĩa vô cùng chắc chắn. Cùng chúng tôi khám phá về sản phẩm này nhé', 0, N'1', N'TL',N'xe-dap-giant-liv-alight-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD22', N'Xe Đạp Thống Nhất SLX 27,5-01', N'Xanh', 13, 15, 6750000, N'TT', N'HKN', N'HM', N'P22', N'Xe Đạp Thống Nhất - Thương hiệu xe đạp cực nổi tiếng và lâu đời của Việt Nam ta. Năm nay Thống Nhất cho ra mắt sản phẩm Xe Đạp Thống Nhất SLX 27,5-01 với những cải tiến vượt bậc sánh ngang các thương hiệu xe đạp nổi tiếng trên thế giới. Xe Đạp Địa Hình Thống Nhất SLX 27,5-01 với kết cấu khung hợp kim Nhôm cao cấp, hệ thống phanh dầu, grouoset chuyển động L-TWOO A5 27 tốc độ với độ sang số ổn định mượt mà. Đặc biệt với hệ thống dây đi âm sườn khiến chiếc xe nhìn gọn gàng và sang trọng hơn', 50000, N'1', N'JP',N'xe-dap-thong-nhat-slx-27-5-01-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD23', N'Xe Đạp Merida Victoria ML700', N'Trắng hoa nhài', 12, 15, 12490000, N'TT', N'HKN', N'HD', N'P23', N'Merida là 1 thương hiệu xe đạp nổi tiếng thế giới đến từ Đài Loan với xu hướng dẫn đầu luôn mang đến những chiếc xe chất lượng nhất tới người tiêu dùng. Với sự đột phá phong cách hướng tới các chị em phụ nữ, Xe Đạp Merida Victoria ML700 được hãng mang tới với thiết kế vô cùng độc đáo và bắt mắt, khung sườn chất liệu hợp kim Nhôm siêu nhẹ, vành nhôm 2 lớp, hệ thống dây âm sườn, đặc biệt chiếc Xe Đạp Merida Victoria ML700 được trang bị Groupset chuyển động Shimano Altus 27 tốc độ đến từ Nhật Bản gồm tay bấm, gạt đĩa, củ đề, giảm sóc trước dầu có khóa hành trình (remote) giúp xe chuyển động vô cùng êm ái và mượt mà!! Chiếc xe là sự lựa chọn tối ưu cho phái đẹp.', 100000, N'2', N'SP',N'xe-dap-merida-victoria-ml700-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD24', N'Xe Đạp Giant PROPEL SL 2D', N'Ghi', 9, 10, 28400000, N'TT', N'HKN', N'DP', N'P24', N'Giant - ông lớn trong ngành xe đạp chắc hẳn đã quá quen thuộc với  những người yêu thích xe đạp. Xe Đạp Giant PROPEL SL 2D model 2022 là phiên bản mới nhất được hãng cho ra mắt vào năm nay với thiết kế khung hợp kim nhôm cao cấp siêu nhẹ kết hợp bộ chuyển động Shimano Tiagra R4700 2*10s (Nhật Bản) cho độ sang số cực kì nhẹ và nhạy. Tất cả những chi tiết trên đã khiến Xe Đạp Giant PROPEL SL 2D là mẫu xe đạp đua cực kì hoàn hảo dành cho những ai đam mê tốc độ', 0, N'1', N'SG',N'xe-dap-giant-propel-sl-2d.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD25', N'Xe Đạp Giant PROPEL SL 2D', N'Xanh', 9, 10, 28400000, N'TT', N'HKN', N'DP', N'P25', N'Giant - ông lớn trong ngành xe đạp chắc hẳn đã quá quen thuộc với  những người yêu thích xe đạp. Xe Đạp Giant PROPEL SL 2D model 2022 là phiên bản mới nhất được hãng cho ra mắt vào năm nay với thiết kế khung hợp kim nhôm cao cấp siêu nhẹ kết hợp bộ chuyển động Shimano Tiagra R4700 2*10s (Nhật Bản) cho độ sang số cực kì nhẹ và nhạy. Tất cả những chi tiết trên đã khiến Xe Đạp Giant PROPEL SL 2D là mẫu xe đạp đua cực kì hoàn hảo dành cho những ai đam mê tốc độ', 0, N'1', N'SG',N'xe-dap-giant-propel-sl-2d-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD26', N'Xe Đạp Merida Crossway 100', N'Xanh', 12, 4, 10450000, N'TT', N'HKN', N'DD', N'P26', N'Merida - thương hiệu xe đạp quốc tế bán chạy hàng đầu trên thế giới đến từ xứ sở xe đạp Đài Loan! Chiếc Xe Đạp Merida Crosswway 100 của năm 2021, một sự cải tiến vượt bậc so với dòng Crossway 90 với phuộc dầu có khóa hành trình trên ghi đông, bộ truyền động Groupset Shimano Altus đến từ Nhật bản giúp tăng tốc, chuyển tốc linh hoạt. Bộ khung hợp kim nhôm ALLUX 6061 cực nhẹ được thiết kế đơn giản, tinh tế nhưng vẫn toát lên sự đẳng cấp và phù hợp với chiều cao trung bình của người Việt Nam, ghi đông mở giúp giảm đau vai gáy, tạo tư thế thanh lịch, nhẹ nhàng trong di chuyển. Chiếc Xe Đạp Merida Crossway 100 cũng chính là mẫu xe Touring đốn tim  phái mạnh nhiều nhất mùa hè năm 2021. Hãy đến với chúng tôi để khám phá, trải nhiệm sản phẩm này nhé', 100000, N'2', N'GE',N'xe-dap-merida-crossway100-xanh.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD27', N'Xe Đạp Life HBR 99 Max', N'Xám', 12, 5, 7790000, N'TT', N'HKN', N'TX', N'P27', N'Life là một trong những thương hiệu xe đạp nổi tiếng xuất sứ tại Đài Loan. Xe Đạp Life HBR 99 Max  thuộc dòng Hybrid được thiết kế khung nhôm cao cấp siêu nhẹ, baga nhôm, chắn bùn theo xe, phuộc giảm xóc, phanh đĩa dầu Shimao MT200 cùng với Groupset truyền động tay bấm củ đề gạt đĩa chuẩn Shimano với 3x8=24 tốc độ kết hợp cặp bánh lốp 700x38C giúp chiếc xe rất đa năng và hoàn hảo. Chiếc Xe Đạp Life HBR 99 Max là sự lựa chọn cho mọi yêu cầu của người dùng', 0, N'2', N'FA',N'xe-dap-life-hbr-99-max-18.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD28', N'Xe Đạp Fortina Nhật Bản', N'Xanh', 13, 5, 6850000, N'TT', N'HKN', N'CG', N'P28', N'Xe đạp Fortina là thương xe đạp nổi tiếng đến từ Nhật bản với chất lượng và độ bền cực tốt với thiết kế khung bằng hợp kim thép-các bon đặc trưng của Nhật Bản, hệ thống phanh V-Breka cao cấp cùng với bộ tay cấm củ đề mang thiệu chính hãng của Shimano Nhật Bản. Thiết kế thời trang nhẹ nhàng thanh thoát, nước sơn 3 lớp chống dỉ chịu mọi thời tiết', 50000, N'1', N'JP',N'xe-dap-fortina-xanh-ngoc-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD29', N'Xe Đạp TrinX Free 1.0', N'Ghi/Cam', 12, 5, 5100000, N'TT', N'HKN', N'MD', N'P29', N'TrinX là một thương hiệu xe đạp hàng đầu của Đài Loan. TrinX Free 1.0 là dòng xe đạp dạo phố HyrBike được kết cấu khung nhôm 6061, vành nhôm giúp chỉ nặng khoảng 10kg cực nhẹ cùng với bộ chuyển động Shimano(Nhật Bản) Tourney TX 3x8=24 tốc độ. Hãy đến với chúng tôi để khám phá và trải nghiệm sản phẩm này các bạn nhé !', 0, N'1', N'GE',N'xe-dap-trinx-free-1-0-bac.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[ANh]) VALUES (N'PD3', N'Xe Đạp California Modeltime Cacao', N'Trắng', 12, 15, 6150000, N'DP', N'HKN', N'CG', N'P03', N'Xe Đạp California Modeltime Cacao là mẫu xe đường phố mới nhất vừa được hãng cho ra mắt trong năm nay với thiết kế nổi bật. Khung sườn được làm từ hợp kim Nhôm cao cấp siêu nhẹ, kiểu dáng trẻ trung, sang trọng dành riêng cho phái nữ.
Bộ chuyển động được trang bị trên chiếc xe đạp California Modeltime Cacao đến từ Shimano (Nhật Bản) bao gồm tay vặn Shimano Revoshift 6 tốc độ cùng củ đề sau Shimano tourney. Đặc biệt chiếc xe được trang bị đầy đủ những phụ kiện cần thiết như gác baga có đệm, chắn bùn sát bánh, giỏ nhôm, giá để bình,... cực kì tiện lợi trong quá trình vận hành. ', 120000, N'3', N'JP',N'xe-dap-california-modeltime-caca.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD30', N'Xe Đạp Giant Trooper 5300', N'Đen', 11, 1, 19700000, N'TT', N'NH', N'DD', N'P30', N'Là mẫu xe Touring mới nhất vừa được hãng cho ra mắt trong năm nay - Xe đạp Giant Trooper 5300 được thiết kế với ghi đông cánh bướm đặc biệt giúp người sử dụng có thể tự do thay đổi tư thế. Xe đạp Giant Trooper 5300 được thiết kế khung sườn nhôm cao cấp siêu nhẹ Allux SL, bộ chuyển động Shimano Deore 3*10 tốc độ (Nhật Bản) với độ sang số cực nhạy kết hợp phanh đĩa dầu Tektro trước và sau vô cùng chắc chắn. Đây chắc chắn là mẫu xe tiện nghi, tiện ích mà bạn không thể bỏ qua', 0, N'1', N'AU', N'xe-dap-giant-trooper-5300.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD4', N'Xe Đạp California 750CC', N'Trắng', 12, 20, 5890000, N'DH', N'HKN', N'DD', N'P04', N'Xe đạp California 750CC là mẫu xe địa hình cực kì đáng mua vừa được hãng cho ra mắt vào tháng 5/2022 với kết cấu khung hợp kim Nhôm cao cấp siêu nhẹ, kiểu dáng thể thao khỏe khoắn với màu sắc đa dạng.', 100000, N'2', N'AU',N'xe-dap-california-750cc-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD5', N'Xe đạp California 230CC', N'Đen/Đỏ', 13, 25, 3400000, N'DH', N'HKN', N'DP', N'P05', N'Xe đạp California 230CC là phiên bản cập nhất mới nhất của thương hiệu xe đạp USA. Kiểu dáng thời trang, hiện đại, khung sườn bằng nhôm cực nhẹ. Xe đạp California 230CC được trang bị bộ chuyển động Shimano (Nhật Bản) 21 cấp độ và hệ thống phanh đĩa giúp xe vô cùng chắc chắn và mạnh mẽ trên mọi địa hình.', 150000, N'1', N'AM',N'xe-dap-california-230cc-den-do.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD6', N'Xe Đạp Trẻ Em TrinX Junior 1.0 ( 6 đến 12 tuổi )', N'Xanh', 8, 30, 3200000, N'TE', N'HKTC', N'HD', N'P06', N'Xe đạp California 230CC là phiên bản cập nhất mới nhất của thương hiệu xe đạp USA. Kiểu dáng thời trang, hiện đại, khung sườn bằng nhôm cực nhẹ. Xe đạp California 230CC được trang bị bộ chuyển động Shimano (Nhật Bản) 21 cấp độ và hệ thống phanh đĩa giúp xe vô cùng chắc chắn và mạnh mẽ trên mọi địa hình.', 100000, N'2', N'CN',N'xe-dap-tre-em-trinx-junior-1-0-3.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD7', N'Xe Đạp Mini Nữ Thống Nhất Autumn LD 24-01', N'Cam', 9, 15, 2550000, N'TE', N'HKTC', N'MD', N'P07', N'Thống Nhất là thương hiệu xe đạp nổi tiếng và lâu đời nhất tại Việt Nam được thành lập từ những năm 1960, trải qua hơn 60 năm phát triển Thống Nhất đã chở thành nếp nghĩ, thói quen và là địa chỉ tin cậy của người tiêu dùng trong nước và quốc tế. Chiếc xe đạp Mini nữ Thống Nhất Autumn LD 24-01 là một mẫu xe dành cho nữ được thiết kế thời trang, bắt mắt cùng với độ bền bỉ cao dành cho phái nữ, cho các em học có thể sử dụng đi học, đi dạo, dành cho các chị các cô dùng để đi chợ vv... Xe được thiết kế hoàn hảo có sẵn giỏ, gacbaga, chắn bùn, khóa để đáp ứng mọi nhu cầu của người tiêu dùng và có một giá thành cực rẻ', 50000, N'1', N'VN',N'xe-dap-nu-thong-nhat-autumn-24-6.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD8', N'Xe Đạp Mini Nữ Thống Nhất New 24', N'Đỏ/Trắng', 8, 20, 2350000, N'TE', N'HKTC', N'TX', N'P08', N'Thống Nhất là thương hiệu xe đạp nổi tiếng và lâu đời nhất tại Việt Nam được thành lập từ những năm 1960, trải qua hơn 60 năm phát triển Thống Nhất đã chở thành nếp nghĩ, thói quen và là địa chỉ tin cậy của người tiêu dùng trong nước và quốc tế. Chiếc xe đạp mini nữ Thống Nhất New 24 là một mẫu xe dành cho nữ, được thiết kế thời trang, bắt mắt cùng với độ bền bỉ cao dành cho phái nữ, cho các em học có thể sử dụng đi học, đi dạo, dành cho các chị các cô dùng để đi chợ vv... Xe được thiết kế hoàn hảo có sẵn giỏ, gacbaga, chắn bùn, khóa để đáp ứng mọi nhu cầu của người tiêu dùng và có một giá thành cực rẻ !', 50000, N'1', N'VN',N'xe-dap-thong-nhat-nu-new-24-2.jpg')
INSERT [dbo].[tProduct] ([ProductID], [ProducName], [Color], [Weight], [Amount], [Price], [MaLoai], [MaChatLieu], [MaNSX], [MaAnh], [GioiThieu], [Discount], [BaoHanh], [MaNuoc],[Anh]) VALUES (N'PD9', N'Xe Đạp Trẻ Em Thống Nhất Neo 20-03', N'Hồng', 7, 15, 1950000, N'TE', N'HKTC', N'HD', N'P09', N'Nếu bạn đang phân vân để mua cho bé yêu của bạn một chiếc xe đạp để bé tập đi thì chiếc Xe Đạp Trẻ Em Thống Nhất Neo 20-03 là một sự lựa chọn hoàn hảo. Chiếc Xe Đạp Trẻ Em Thống Nhất Neo 20-03 được thiết kế chắc chắn, thời trang và bắt mắt có sẵn chắn bùn, gacbaga, giỏ với đường kính bánh xe 20 inch phù hợp cho các bé gái từ 6-12 tuổi cùng với đó chiếc xe có giá thành cực rẻ để bạn tiết kiệm được một khoản tiền kha khá và chất lượng vô cùng đảm bảo', 50000, N'1', N'VN',N'xe-dap-thong-nhat-cho-be-gai-6.jpg')
GO
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD1', N'xe-dap-california-570cc.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD10', N'xe-dap-cho-be-tap-di-gia-re-0cf8.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD11', N'xe-dap-tre-em-thong-nhat-mtb-24.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD12', N'xe-dap-galaxy-t5.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD13', N'xe-dap-trinx-x1.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD14', N'xe-dap-giant-xtc-slr-3.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD15', N'xe-dap-giant-liv-cate-1.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD16', N'xe-dap-nu-giant-liv-cate-2-2021.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD17', N'xe-dap-chevaux-nikko-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD18', N'xe-dap-giant-xtc-adv-29-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD19', N'xe-dap-sava-deck-3.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD2', N'xe-dap-california-800cc-11.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD20', N'xe-dap-giant-escape-3-disc-4.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD21', N'xe-dap-giant-liv-alight-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD22', N'xe-dap-thong-nhat-slx-27-5-01-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD23', N'xe-dap-merida-victoria-ml700-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD24', N'xe-dap-giant-propel-sl-2d.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD25', N'xe-dap-giant-propel-sl-2d-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD26', N'xe-dap-merida-crossway100-xanh.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD27', N'xe-dap-life-hbr-99-max-18.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD28', N'xe-dap-fortina-xanh-ngoc-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD29', N'xe-dap-trinx-free-1-0-bac.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD3', N'xe-dap-california-modeltime-caca.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD30', N'xe-dap-giant-trooper-5300.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD4', N'xe-dap-california-750cc-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD5', N'xe-dap-california-230cc-den-do.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD6', N'xe-dap-tre-em-trinx-junior-1-0-3.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD7', N'xe-dap-nu-thong-nhat-autumn-24-6.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD8', N'xe-dap-thong-nhat-nu-new-24-2.jpg')
INSERT [dbo].[tProduct_Img] ([ProductID], [TenFileAnh]) VALUES (N'PD9', N'xe-dap-thong-nhat-cho-be-gai-6.jpg')
GO
INSERT [dbo].[tSubstance] ([MaChatLieu], [ChatLieu]) VALUES (N'Ca', N'Carbon')
INSERT [dbo].[tSubstance] ([MaChatLieu], [ChatLieu]) VALUES (N'CO', N'Composite')
INSERT [dbo].[tSubstance] ([MaChatLieu], [ChatLieu]) VALUES (N'HKN', N'Hợp kim nhôm')
INSERT [dbo].[tSubstance] ([MaChatLieu], [ChatLieu]) VALUES (N'HKTC', N'Hợp Kim thép carbon')
INSERT [dbo].[tSubstance] ([MaChatLieu], [ChatLieu]) VALUES (N'NH', N'Nhôm')
GO
INSERT [dbo].[tSuppliers] ([MaNSX], [TenNSX]) VALUES (N'CG', N'Cầu Giấy  ')
INSERT [dbo].[tSuppliers] ([MaNSX], [TenNSX]) VALUES (N'DD', N'Đống Đa   ')
INSERT [dbo].[tSuppliers] ([MaNSX], [TenNSX]) VALUES (N'DP', N'Đan Phượng')
INSERT [dbo].[tSuppliers] ([MaNSX], [TenNSX]) VALUES (N'HD', N'Hà Đông   ')
INSERT [dbo].[tSuppliers] ([MaNSX], [TenNSX]) VALUES (N'HM', N'Hoàng Mai ')
INSERT [dbo].[tSuppliers] ([MaNSX], [TenNSX]) VALUES (N'MD', N'Mai Dịch  ')
INSERT [dbo].[tSuppliers] ([MaNSX], [TenNSX]) VALUES (N'TX', N'Thanh Xuân')
GO
ALTER TABLE [dbo].[tOrder]  WITH CHECK ADD  CONSTRAINT [FK_tOrder_tCustumers] FOREIGN KEY([CustumerID])
REFERENCES [dbo].[tCustumers] ([CustumerID])
GO
ALTER TABLE [dbo].[tOrder] CHECK CONSTRAINT [FK_tOrder_tCustumers]
GO
ALTER TABLE [dbo].[tOrder]  WITH CHECK ADD  CONSTRAINT [FK_tOrder_tMembership] FOREIGN KEY([MemberID])
REFERENCES [dbo].[tMembership] ([MemberID])
GO
ALTER TABLE [dbo].[tOrder] CHECK CONSTRAINT [FK_tOrder_tMembership]
GO
ALTER TABLE [dbo].[tOrder_detall]  WITH CHECK ADD  CONSTRAINT [FK_tOrder_detall_tOrder] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tOrder] ([OrderID])
GO
ALTER TABLE [dbo].[tOrder_detall] CHECK CONSTRAINT [FK_tOrder_detall_tOrder]
GO
ALTER TABLE [dbo].[tOrder_detall]  WITH CHECK ADD  CONSTRAINT [FK_tOrder_detall_tProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tProduct] ([ProductID])
GO
ALTER TABLE [dbo].[tOrder_detall] CHECK CONSTRAINT [FK_tOrder_detall_tProduct]
GO
ALTER TABLE [dbo].[tProduct]  WITH CHECK ADD  CONSTRAINT [FK_tProduct_tCountry] FOREIGN KEY([MaNuoc])
REFERENCES [dbo].[tCountry] ([MaNuoc])
GO
ALTER TABLE [dbo].[tProduct] CHECK CONSTRAINT [FK_tProduct_tCountry]
GO
ALTER TABLE [dbo].[tProduct]  WITH CHECK ADD  CONSTRAINT [FK_tProduct_tSubstance] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[tSubstance] ([MaChatLieu])
GO
ALTER TABLE [dbo].[tProduct] CHECK CONSTRAINT [FK_tProduct_tSubstance]
GO
ALTER TABLE [dbo].[tProduct]  WITH CHECK ADD  CONSTRAINT [FK_tProduct_tCategory] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tCategory] ([MaLoai])
GO
ALTER TABLE [dbo].[tProduct] CHECK CONSTRAINT [FK_tProduct_tCategory]
GO
ALTER TABLE [dbo].[tProduct]  WITH CHECK ADD  CONSTRAINT [FK_tProduct_tSuppliers] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[tSuppliers] ([MaNSX])
GO
ALTER TABLE [dbo].[tProduct] CHECK CONSTRAINT [FK_tProduct_tSuppliers]
GO
ALTER TABLE [dbo].[tProduct_Img]  WITH CHECK ADD  CONSTRAINT [FK_tProduct_Img_tProDuct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tProDuct] ([ProductID])
go
ALTER TABLE [dbo].[tProduct_Img] CHECK CONSTRAINT [FK_tProduct_Img_tProDuct]