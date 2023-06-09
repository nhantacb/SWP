USE [SWP]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CATID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CATID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[FID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[PID] [int] NULL,
	[Description] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Vote] [int] NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[Guest] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Phone] [nchar](10) NULL,
	[LName] [nvarchar](50) NULL,
	[FName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[Guest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[IID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NULL,
	[Image] [varchar](200) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[IID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NULL,
	[Address] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
	[Note] [nvarchar](200) NULL,
	[TotalPrice] [bigint] NULL,
	[GID] [int] NULL,
	[Phone] [int] NULL,
	[FName] [nvarchar](50) NULL,
	[LName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order Detail]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Detail](
	[ODID] [int] IDENTITY(1,1) NOT NULL,
	[OID] [int] NULL,
	[PID] [int] NULL,
	[Price] [bigint] NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_Order Detail] PRIMARY KEY CLUSTERED 
(
	[ODID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderLog]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLog](
	[OrderLogId] [int] IDENTITY(1,1) NOT NULL,
	[OID] [int] NOT NULL,
	[StatusID] [int] NULL,
	[Date] [datetime] NOT NULL,
	[Confirm] [bit] NOT NULL,
 CONSTRAINT [PK_OrderLog] PRIMARY KEY CLUSTERED 
(
	[OrderLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[AddedBy] [int] NULL,
	[CATID] [int] NULL,
	[PriceIn] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Color] [nvarchar](50) NULL,
	[Description] [ntext] NULL,
	[Resolution] [varchar](50) NULL,
	[Insurance] [int] NULL,
	[CreateDate] [datetime] NULL,
	[TID] [int] NULL,
	[ImageDefault] [nvarchar](max) NULL,
	[Size] [int] NULL,
	[Quantity] [int] NULL,
	[Discount] [float] NULL,
	[PriceOut] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLog]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[UId] [int] NOT NULL,
	[PId] [int] NOT NULL,
	[Action] [int] NOT NULL,
	[PriceIn] [int] NULL,
	[PriceOut] [int] NULL,
	[Quatity] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_ProductLog] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[RName] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TID] [int] IDENTITY(1,1) NOT NULL,
	[TName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/24/2023 12:08:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [int] NOT NULL,
	[LName] [nvarchar](50) NULL,
	[FName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[PassWord] [varchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[image] [nvarchar](200) NULL,
	[DOB] [datetime] NULL,
	[Gender] [bit] NULL,
	[Phone] [char](10) NULL,
	[Email] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (1, N'Samsung')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (2, N'Sharp')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (3, N'Casper')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (4, N'TCL')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (5, N'LG')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (6, N'Xiaomi')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (7, N'Sony')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (8, N'Coocaa')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (9, N'FFalcon')
INSERT [dbo].[Category] ([CATID], [CatName]) VALUES (10, N'Coex')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([FID], [UID], [PID], [Description], [Date], [Vote]) VALUES (25, 2, 26, N'Tốt', CAST(N'2023-03-21T02:20:00.000' AS DateTime), 5)
INSERT [dbo].[FeedBack] ([FID], [UID], [PID], [Description], [Date], [Vote]) VALUES (26, 2, 41, N'ngon', CAST(N'2023-03-21T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[FeedBack] ([FID], [UID], [PID], [Description], [Date], [Vote]) VALUES (27, 2, 41, N'ngon', CAST(N'2023-03-21T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[FeedBack] ([FID], [UID], [PID], [Description], [Date], [Vote]) VALUES (28, 2, 41, N'ngo oz', CAST(N'2023-03-21T19:36:36.000' AS DateTime), 3)
INSERT [dbo].[FeedBack] ([FID], [UID], [PID], [Description], [Date], [Vote]) VALUES (29, 2, 42, N'ĐÃ bảo là hàng đểu mà không ai mua @@', CAST(N'2023-03-23T21:24:39.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[Guest] ON 

INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (6, N's', N'1111      ', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (8, N'To', N'111       ', N'Vu', N'A')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (9, N'111', N'111       ', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (10, N'122', N'11112222  ', N'Hy', N'Not')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (12, N'122', N'113       ', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (13, N'Lien Quan', N'1111      ', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (16, N'Hà Nội', N'0123456789', N'Chiến', N'Vũ')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (17, N'HP', N'122       ', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (18, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (19, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (20, N'Lien Quan', N'1111      ', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (21, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (22, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (23, N'', N'          ', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (24, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (25, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (26, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (27, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (28, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (29, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (30, N'', N'          ', N'', N'')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (31, N'Lien Quan', N'0985429591', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (32, N'Thach That', N'0987654321', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (34, N'HP', N'0987654321', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (35, N'122', N'0987654321', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (36, N'Thach That', N'0987654321', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (37, N'Thach That', N'0987654321', N'Vu', N'Chien')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (39, N'Lien Quan', N'0987654321', N'Vu', N'Vi')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (40, N'Cao Bằng', N'0123456789', N'ĐOàn', N'Nhên')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (41, N'Cao Bằng2', N'0123456555', N'123', N'123')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (42, N'Cao Bằng', N'0123456789', N'ĐOàn', N'Nhên')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (43, N'123', N'0123456789', N'123', N'123')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (44, N'Cao Bằng', N'0123456789', N'ĐOàn', N'Nhên')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (45, N'Cao Bằng2', N'0123456784', N'ĐOàn', N'Nhên')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (46, N'Cao Bằng', N'0123456555', N'ĐOàn', N'123')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (47, N'Sa Dec', N'0123456555', N'Ba', N'Ga')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (48, N'4444', N'0123456784', N'444', N'4444')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (49, N'ĐOàn', N'0987654321', N'ĐOàn', N'ĐOàn')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (50, N'scascs', N'0123451112', N'scascs', N'scascs')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (51, N'âcs', N'0123456789', N'âcsc', N'csc')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (52, N'Hà Nội', N'0123451111', N'Vũ', N'Chiến')
INSERT [dbo].[Guest] ([Guest], [Address], [Phone], [LName], [FName]) VALUES (53, N'Cao Bằng', N'0123451111', N'ĐOàn', N'Nhên')
SET IDENTITY_INSERT [dbo].[Guest] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OID], [UID], [Address], [Date], [Note], [TotalPrice], [GID], [Phone], [FName], [LName]) VALUES (83, NULL, N'Cao Bằng', CAST(N'2023-03-23T04:00:00.000' AS DateTime), N'Không tốt lắm', 5680000, 53, NULL, NULL, NULL)
INSERT [dbo].[Order] ([OID], [UID], [Address], [Date], [Note], [TotalPrice], [GID], [Phone], [FName], [LName]) VALUES (84, 2, N'Ha Noi', CAST(N'2023-03-23T05:00:00.000' AS DateTime), N'Hahahuhu', 30370000, NULL, 123451111, NULL, NULL)
INSERT [dbo].[Order] ([OID], [UID], [Address], [Date], [Note], [TotalPrice], [GID], [Phone], [FName], [LName]) VALUES (85, 2, N'Ha Noi', CAST(N'2023-03-23T00:00:00.000' AS DateTime), N'Dùng được nhưng màu trắng', 13700000, NULL, 987654321, NULL, NULL)
INSERT [dbo].[Order] ([OID], [UID], [Address], [Date], [Note], [TotalPrice], [GID], [Phone], [FName], [LName]) VALUES (86, 2, N'Ha Noi2', CAST(N'2023-03-23T02:20:00.000' AS DateTime), N'Ngngnqf', 11535000, NULL, 0, NULL, NULL)
INSERT [dbo].[Order] ([OID], [UID], [Address], [Date], [Note], [TotalPrice], [GID], [Phone], [FName], [LName]) VALUES (87, 2, N'Ha Noi', CAST(N'2023-03-23T00:00:00.000' AS DateTime), N'gg', 11985000, NULL, 987654321, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order Detail] ON 

INSERT [dbo].[Order Detail] ([ODID], [OID], [PID], [Price], [Amount]) VALUES (89, 83, 32, 5680000, 1)
INSERT [dbo].[Order Detail] ([ODID], [OID], [PID], [Price], [Amount]) VALUES (90, 84, 32, 5680000, 1)
INSERT [dbo].[Order Detail] ([ODID], [OID], [PID], [Price], [Amount]) VALUES (92, 85, 39, 13700000, 1)
INSERT [dbo].[Order Detail] ([ODID], [OID], [PID], [Price], [Amount]) VALUES (93, 86, 35, 11535000, 1)
INSERT [dbo].[Order Detail] ([ODID], [OID], [PID], [Price], [Amount]) VALUES (94, 87, 42, 11985000, 1)
SET IDENTITY_INSERT [dbo].[Order Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderLog] ON 

INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (135, 83, 1, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (136, 83, 2, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (137, 83, 3, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (138, 84, 1, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (139, 84, 4, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (140, 85, 1, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (141, 85, 4, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (142, 86, 1, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (143, 86, 4, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (144, 87, 1, CAST(N'2023-03-23T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (145, 87, 2, CAST(N'2023-03-23T21:10:05.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (146, 87, 2, CAST(N'2023-03-23T21:13:36.000' AS DateTime), 0)
INSERT [dbo].[OrderLog] ([OrderLogId], [OID], [StatusID], [Date], [Confirm]) VALUES (147, 87, 3, CAST(N'2023-03-23T21:14:25.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[OrderLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (26, 2, 1, 20000000, N'Smart Tivi Neo QLED Samsung 4K 55 inch', N'Xanh', N'Chiếu màn hình điện thoại lên tivi, Điều khiển bằng giọng nói, Điều khiển TV bằng điện thoại, Tìm kiếm bằng giọng nói, Trợ lí ảo Google Assistant, Trợ lý ảo Bixby', N'HD', 12, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 3, N'Anh1.jpg', 55, 15, 0.33, 23499000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (31, 2, 2, 20000000, N'Smart Tivi Samsung Crystal 4K2', N'Ðen', N'2', N'4K', 2, CAST(N'2023-03-19T00:00:00.000' AS DateTime), 2, N'Anh12.jpg', 40, 23, 0.4, 24690000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (32, 1, 6, 3790000, N'Smart tivi Xiaomi A2 32 inch L32M7-EAVN', N'Ðen', N'Tìm kiếm bằng giọng nói, Chiếu màn hình điện thoại lên tivi, Trợ lí ảo Google Assistant', N'HD', 24, CAST(N'2023-03-18T00:00:00.000' AS DateTime), 1, N'Anh1.jpg', 32, 6, 0.2, 5680000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (35, 1, 1, 10000000, N'Android Tivi Sharp 4K 50 inch 4T-C50DJ3X', N'Ðen', N'Công nghệ hình ảnh Dolby Vision
Hình ảnh sắc nét, màu sắc trung thực, nâng cao độ tương phản, khả năng hiển thị tốt hơn, mang đến trải nghiệm hình ảnh cực kỳ sống động trên Android Tivi 4K 50 inch 4T-C50DJ3X.
Hệ điều hành Android 10 dễ sử dụng
Hệ điều hành Android 10 - với giao diện trực quan, cho trải nghiệm giải trí, giáo dục, khoa học, khám phá vô tận với hàng nghìn ứng dụng từ Google Play', N'4K', 23, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 1, N'tivi3.png', 50, 5, 0.3, 11535000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (37, 1, 7, 20000000, N'Tivi Sony 4K 43 inch KD-43X75K', N'Ðen', N'Ưu điểm của Google Tivi Sony 4K 43 inch KD-43X75K (Model 2022)
Tivi thiết kế thanh lịch, kích thước màn hình 43 inch, độ phân giải 4K sắc nét.
Bộ xử lý X1 4K HDR cho hình ảnh sắc nét, giảm nhiễu, giảm mờ. 
Công nghệ Dolby Atmos tạo nên âm thanh vòm 3 chiều sống động.
Hệ điều hành Google TV giao diện thân thiện cùng kho ứng dụng phong phú.
Chiếu màn hình điện thoại lên tivi thông qua Chromecast.
Điều khiển, tìm kiếm bằng giọng nói tiếng Việt thông qua Google Assistant.', N'4K', 24, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 5, N'Anh5.jpg', 43, 122, 0.3, 24690000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (38, 1, 1, 10000000, N'Smart Tivi Neo QLED Samsung 4K 55 inch QA55QN85BAK', N'Ðen', N'ff', N'HD', 12, CAST(N'2023-03-16T00:00:00.000' AS DateTime), 4, N'Anh1.jpg', 55, 11, 0.3, 20000000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (39, 1, 6, 1200000, N'Smart Tivi Xiaomi A2 58 inch L58M7-EASEA', N'Ðen', N'Chiếu màn hình điện thoại lên tivi, Trợ lí ảo Google Assistant', N'HD', 24, CAST(N'2023-03-18T00:00:00.000' AS DateTime), 1, N'tivi12.jpg', 58, 4, 0.99, 13700000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (40, 1, 3, 4150000, N'Smart tivi Casper 32 inch 32HG5200', N'Ðen', N'Đặc điểm nổi bật của tivi Casper 32HG5200
Tivi Casper 32 inch 32HG5200 màn hình 32 inch gọn gàng, thiết kế đẹp mắt.
Chất lượng âm thanh, hình ảnh hoàn hảo, đáp ứng nhu cầu giải trí cơ bản.
Hệ điều hành Android 9.0 đơn giản, dễ sử dụng, đa dạng ứng dụng.
Đa dạng phương thức kết nối (không dây và có dây) với các thiết bị ngoại vi.
Giá rẻ, phù hợp trang bị cho phòng ngủ, phòng họp', N'HD', 24, CAST(N'2023-03-20T00:00:00.000' AS DateTime), 1, N'tivi20.png', 32, 4, 0.26, 5990000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (41, 1, 1, 7790000, N'Smart Tivi Casper 4K 50 inch 50UW6000', N'Ðen', N'Đặc điểm nổi bật của smart Tivi Casper 4K 50 inch 50UW6000
Smart Tivi có kích cỡ màn hình 50 inch
Độ phân giải 4K (Ultra HD)
Loại màn hình sử dụng là màn hình LED nền (Direct LED), VA LCD
Hệ điều hành webOS 5.0 dễ dùng
Chân đế và viền tivi làm từ nhựa
Tivi Casper được sản xuất tại Thái Lan
Công nghệ hình ảnh: 4K HDR10
Điều khiển bằng giọng nói: Tìm kiếm giọng nói trên YouTube bằng tiếng Việt
Chiếu hình từ điện thoại lên TV: Chromecast
Remote thông minh: Remote tích hợp micro tìm kiếm bằng giọng nói
Gồm 2 loa với tổng công suất 16W
Công nghệ âm thanh: Dolby Digital Plus
Kết nối Internet: Cổng mạng LAN, Wifi
Có Bluetooth', N'4K', 24, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 1, N'tivi21.png', 50, 13, 0.12, 8900000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (42, 1, 1, 7990000, N'Smart tivi Casper 4K 50 inch 50UG6100', N'Ðen', N'Đặc điểm nổi bật
Màn hình 50 inch với thiết kế vô cực tinh tế, sang trọng.
Độ phân giải 4K, hình ảnh sắc nét, màu sắc rực rỡ, sống động.
Âm thanh vòm giả lập đặc sắc, chân thực. 
Hệ điều hành Android 9.0 tiện dụng với kho ứng dụng phong phú.
Remote thông minh hỗ trợ tìm kiếm bằng giọng nói (tiếng Việt).
Đa dạng phương thức kết nối với các thiết bị ngoại vi.', N'4K', 24, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 1, N'tivi22.png', 50, 5, 0.34, 11985000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (43, 1, 3, 10790000, N'Smart Tivi Casper 4K 55 Inch 55UW6000', N'Ðen', N'Ưu điểm nổi bật
Smart Tivi QLED Casper 55 inch 55QG8000 thiết kế màn hình tràn viền vô cực, mang lại trải nghiệm chân thực.
Công nghệ hình ảnh Quantum Dot và MEMC mang lại khung hình sống động.
Công nghệ âm thanh Dolby Atmos giúp bạn thưởng thức âm thanh vòm như ngoài rạp ngay tại nhà.
Tivi hỗ trợ điều khiển bằng giọng nói, tìm kiếm bằng giọng nói thông minh.', N'4K', 24, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 1, N'tivi23.png', 55, 9, 0.22, 16185000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (44, 1, 5, 10000000, N'Smart Tivi Coex 40 inch 40FH6000X Full HD', N'Ðen', N'Coex 32 inch 32F4000X là mẫu tivi màn hình phẳng được thiết kế mỏng ấn tượng, phong cách hiện đại. Tivi kích thước 32 inch, giá rẻ nên phù hợp cho không gian phòng ngủ, phòng khách nhỏ.
Người dùng có thể lắp đặt tivi đặt trên kệ hoặc treo tường tối ưu diện tích.', N'Full HD', 123, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 2, N'tivi25.png', 40, 11, 0.3, 5000000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (45, 5, 10, 5990000, N'Smart Tivi Coex 40 inch 40FH5000X Android 11', N'Ðen', N'Ưu điểm Smart Tivi Coex 40 inch 40FH5000X
Tivi Coex 40FH5000X là một trong 3 mẫu TV thông minh AI chạy hệ điều hành Android 11, thiết kế với màn hình tràn viền vô cực 40 inch, độ phân giải Full HD cho bạn trải nghiệm hình ảnh vô cực, sống động.

Tivi có thể lắp đặt treo tường hoặc đặt trên kệ tại các không gian rộng như phòng khách, phòng họp, phỏng ngủ,...', N'Full HD', 24, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 5, N'tivi26.jpg', 40, 10, 0.4, 8211000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (46, 5, 7, 14990000, N'Tivi Sony 4K 55 inch KD-55X80K', N'Ðen', N'Ưu điểm của dòng Google tivi Sony 4K 55 inch KD-55X80K (Model 2022)
KD-65X80K là dòng tivi google tivi hiện đại ra mắt năm 2022 bởi thương hiệu Sony. Thiết bị sở hữu kiểu dáng sang trọng và ứng dụng nhiều công nghệ hiện đại đem đến sự hoàn hảo trong mỗi khung hình.
Thiết kế sang trọng, thanh lịch
Google tivi Sony 4K 55 inch KD-55X80K thiết kế siêu mỏng, thanh lịch tạo nên điểm nhấn cho không gian phòng khách, phòng ngủ,... Kích thước màn hình 55 inch kết hợp với thiết kế tràn viền giúp người dùng tập trung vào màn hình tốt hơn.', N'4K', 12, CAST(N'2023-03-21T00:00:00.000' AS DateTime), 5, N'tivi28.png', 55, 25, 0.2, 21500000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (47, 5, 1, 7590000, N'Smart Tivi Sony 32 inch KD-32W830K', N'Ðen', N's', N'HD', 8, CAST(N'2023-03-24T00:00:00.000' AS DateTime), 4, N'tivi29.png', 32, 12, 0.1, 8900000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (51, 5, 1, 20000000, N'Smart Tivi QA55QN85BAKXXV', N'Ðen', N'Ưu điểm nổi bật của Smart Tivi Neo QLED Samsung 4K 55 inch QA55QN85BAKXXV
Tivi thiết kế viền siêu mỏng 
Smart Tivi Neo QLED Samsung QA55QN85BKXXV được thiết kế dựa theo phong cách NeoSlim với màn hình cạnh viền siêu mỏng, ấn tượng sẽ mở rộng không gian màn hình hiển thị giúp người dùng trải nghiệm những hình ảnh sống động, sắc nét hơn, khung hình rộng hơn.', N'4K', 12, CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, N'productĐoàn Nhân37474321.jpg', 55, 7104, 0.2, 24690000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (52, 5, 1, 25990000, N'Smart Tivi Neo QA65QN85AAKXXV', N'Ðen', N'Smart Tivi Neo QLED Samsung 4K 65 inch QA65QN85AAKXXV (New 2021) được trang bị độ phân giải Ultra HD 4K cho hình ảnh hiển thị sắc nét gấp 4 lần Full HD thông thường cho phép bạn được trải nghiệm các chương trình giải trí thêm thú vị, hình ảnh chân thật, sắc nét, chi tiết hơn trong từng khung cảnh.

Sở hữu kích thước 65 inch, tivi Samsung QA65QN85AAKXXV sẽ là sự lựa chọn lý tưởng cho các không gian rộng như: phòng khách, phòng họp, phòng ngủ lớn...Bạn có thể đặt tivi lên kệ hoặc treo tường vừa tiết kiệm không gian lại tạo điểm nhấn nổi bật cho căn phòng thêm phần hiện đại.', N'HD', 12, CAST(N'2023-03-24T11:08:12.000' AS DateTime), 4, N'productSmart Tivi Neo QA65QN85AAKXXV29253026.jpg', 65, 9, 0.2, 31985000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (53, 5, 1, 10000000, N'Smart Tivi Neo QLED QA65QN700AKXXV', N'Ðen', N'Smart Tivi Neo QLED Samsung QA65QN700AKXXV thiết kế khung viền cực mỏng giúp hiển thị nội dung và hình ảnh ở khung hình rộng lớn hơn. 

Màn hình tivi thiết kế phẳng và có kích thước tới 65 inch, phù hợp lắp treo tường hoặc để bàn cho các căn phòng, ngôi nhà diện tích rộng như phòng khách, phòng ngủ, phòng hội nghị đến hành lang, sảnh khách sạn.', N'Full HD', 24, CAST(N'2023-03-24T11:12:02.000' AS DateTime), 3, N'productSmart Tivi Neo QLED QA65QN700AKXXV89996361.jpg', 65, 12, 0.1, 15000000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (54, 5, 3, 5290000, N'Smart Tivi Casper 43 inch 43FX6200 tràn viền', N'Ðen', N'Đặc điểm nổi bật
Màn hình 43 inch với thiết kế tràn viền độc đáo, sang trọng.
Độ phân giải Full HD mang đến hình ảnh mượt mà, sắc nét.
Âm thanh vòm giả lập đặc sắc, chân thực. 
Hệ điều hành Linux đơn giản, dễ thao tác, phong phú ứng dụng.
Đa dạng phương thức kết nối (không dây và có dây) với các thiết bị ngoại vi.', N'Full HD', 12, CAST(N'2023-03-24T11:17:10.000' AS DateTime), 1, N'productSmart Tivi Casper 43 inch 43FX6200 tràn viền22004194.jpg', 43, 6, 0.22, 7990000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (55, 5, 5, 11990000, N'Smart tivi LG 4K 65 inch 65UQ7550PSF', N'Ðen', N'Giới thiệu smart tivi LG 4K 65 inch 65UQ7550PSF
Thiết kế thanh mảnh, chân đế chữ V úp ngược hỗ trợ lắp đặt để bàn chắc chắn.
Bộ xử lý α5 Gen5 AI 4K mang đến khung hình sống động, chi tiết.
Chế độ FilmMaker Mode truyền tải trọn vẹn ý tưởng của nhà làm phim.
Công nghệ AI Sound nâng cấp âm thanh chuẩn 5.1.
Hệ điều hành webOS 6.0 thân thiện người dùng cùng kho ứng phong phú. 
Magic Remote và AI ThinQ giúp điều khiển, tìm kiếm bằng giọng nói tiếng Việt.
Tính năng AirPlay 2, Screen Share cho phép chia sẻ nội dung từ điện thoại lên tivi.', N'4K', 6, CAST(N'2023-03-24T11:19:48.000' AS DateTime), 2, N'productSmart tivi LG 4K 65 inch 65UQ7550PSF57986296.jpg', 65, 5, 0.12, 18735000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (56, 5, 5, 21490000, N'Smart Tivi LG 4K 65 inch 65NANO81TNA.ATV', N'Ðen', N'Đánh giá chi tiết Smart Tivi LG 4K 65 inch 65NANO81TNA.ATV
Thiết kế sang trọng, ấn tượng
Smart Tivi LG 65NANO81TNA.ATV có thiết kế sang trọng, đẳng cấp với viền màn hình siêu mỏng và chân đế bán nguyệt tinh tế, tạo nét đẹp thời thượng cho không gian của bạn. Với kích thước màn hình 65 inch, tivi phù hợp lắp đặt tại phòng khách, phòng ngủ, phòng họp, văn phòng,...', N'4K', 9, CAST(N'2023-03-24T11:23:12.000' AS DateTime), 1, N'productSmart Tivi LG 4K 65 inch 65NANO81TNA.ATV89858611.jpg', 65, 10, 0.22, 29500000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (57, 5, 5, 19990000, N'Smart Tivi LG 4K 65 inch 65UM7600PTA', N'Ðen', N'Giới thiệu sản phẩm Smart Tivi LG 4K 65 inch 65UM7600PTA
Thiết kế hiện đại, sang trọng
Smart Tivi LG 65UM7600PTA có kiểu dáng hiện đại với viền màn hình siêu mỏng chỉ 0.5 cm mang đến nét đẹp hiện đại cho không gian của bạn. Tivi sở hữu chân đế bán nguyệt tinh tế có thể đứng vững trên mọi bề mặt phẳng, ngoài ra bạn cũng có thể treo tường tivi vô cùng tiện lợi.

Với kích thước màn hình lớn 65 inch, tivi phù hợp lắp đặt tại không gian rộng như phòng khách, phòng họp, phòng ngủ chính,... đáp ứng đầy đủ nhu cầu làm việc và giải trí của bạn.', N'4K', 12, CAST(N'2023-03-24T11:25:40.000' AS DateTime), 4, N'productSmart Tivi LG 4K 65 inch 65UM7600PTA9507129.jpg', 65, 9, 0.16, 29985000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (58, 5, 5, 10490000, N'Smart Tivi LG 4K 55 inch 55UP7550PTC ThinQ AI', N'Ðen', N'Đặc điểm nổi bật
Tivi LG 55UP7550PTC sở hữu màn hình 55 inch viền mỏng gọn, thiết kế hiện đại.
Công nghệ hình ảnh tiên tiến đem đến những khung hình rực rỡ, sống động.
Loa công suất lớn kết hợp công nghệ âm thanh vòm thông minh tạo cảm giác chân thực, ấn tượng.
Hệ điều hành WebOS độc quyền, giao diện thân thiện, kho nội dung phong phú.
Remote thông minh tích hợp điều khiển bằng giọng nói hỗ trợ tiếng Việt.
Kết nối và điều khiển qua điện thoại dễ dàng.', N'4K', 24, CAST(N'2023-03-24T11:28:08.000' AS DateTime), 1, N'productSmart Tivi LG 4K 55 inch 55UP7550PTC ThinQ AI17841207.jpg', 55, 12, 0.21, 15735000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (59, 5, 5, 5490000, N'Smart Tivi LG 32 inch 32LQ636BPSA', N'Ðen', N'Đặc điểm nổi bật của Smart Tivi LG 32 inch 32LQ636BPSA
Tivi LG thiết kế màn hình 32 inch.
Sử dụng bộ xử lý α5 Gen5 AI 4K cho chất lượng hình ảnh rõ đẹp.
Công nghệ Active HDR mang đến trải nghiệm hình ảnh sống động hơn.
Công nghệ AI Sound tái tạo âm thanh mạnh mẽ, cuốn hút.
Hệ điều hành webOS 6.0 dễ sử dụng.
Trình chiếu nội dung từ điện thoại lên tivi qua tính năng AirPlay 2, Screen Share.
Điều khiển bằng giọng nói: Alexa (Chưa có tiếng Việt), Google Assistant (Chưa có tiếng Việt), nhận diện giọng nói LG Voice Recognition
Tìm kiếm giọng nói trên YouTube bằng tiếng Việt
Kết nối ứng dụng các thiết bị trong nhà
Điều khiển tivi bằng điện thoại qua ứng dụng LG TV Plus
Kết nối mạng LAN, wifi, Bluetooth', N'HD', 24, CAST(N'2023-03-24T11:30:21.000' AS DateTime), 1, N'productSmart Tivi LG 32 inch 32LQ636BPSA16483677.jpg', 32, 8, 0.23, 7900000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (60, 5, 1, 6490000, N'Smart Tivi LG 43 inch 43LM5750PTC FHD ThinQ AI', N'Ðen', N'Màu sắc tự nhiên nhất 
Tivi LG có bộ xử lý lõi tứ sẽ nâng cao hiệu suất xử lý và điều chỉnh màu sắc cho hình ảnh phong phú hơn, tự nhiên hơn để người dùng tận hưởng vẻ đẹp thiên nhiên với màu sắc trung thực trên màn hình TV của bạn.

Bộ xử lý này còn giúp loại bỏ nhiễu và tạo ra màu sắc sống cùng độ tương phản cao hơn. Hình ảnh có độ phân giải thấp được phóng to và tái tạo thành hình ảnh sắc nét hơn, sống động hơn.', N'Full HD', 12, CAST(N'2023-03-24T11:32:06.000' AS DateTime), 1, N'productSmart Tivi LG 43 inch 43LM5750PTC FHD ThinQ AI73442392.jpg', 43, 14, 0.14, 7990000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (61, 5, 6, 8590000, N'Android Tivi Xiaomi UHD 4K 55 inch L55M6-6ARG', N'Ðen', N'Android Tivi Xiaomi UHD 4K L55M6-6ARG có kích thước màn hình 55 inch sở hữu thiết kế tràn viền hiện đại, đẹp mắt và tinh tế đánh vào thị trường phân khúc tầm thấp và trung nên được nhiều người dùng ưa chuộng.
Với thiết kế các cạnh viền mỏng cho trải nghiệm độc đáo và đột phá của tivi này mang lại tỷ lệ màn hình so với thân máy cao hơn và góc nhìn lên đến 178 độ. Do phải tối giản chi phí nên viền màn hình của thiết bị được làm bằng nhựa bóng và chất liệu tương tự cũng được sử dụng với viền Benzel ở phía dưới.

Phần đế của Tivi Xiaomi L55M6-6ARG được làm bằng chất liệu nhựa cao cấp và rất chắn chắn, bạn cũng có thể treo tivi trên tường để tiết kiệm không gian.', N'4K', 12, CAST(N'2023-03-24T11:51:39.000' AS DateTime), 5, N'productAndroid Tivi Xiaomi UHD 4K 55 inch L55M6-6ARG79104561.jpg', 55, 16, 0.22, 12885000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (62, 5, 2, 5990000, N'Android Tivi Sharp 42 inch 2T-C42EG2X', N'Ðen', N'Công nghệ hình ảnh 

Tivi Sharp 2T-C42EG2X ứng dụng nhiều công nghệ hình ảnh mới nhằm nâng cao chất lượng hình ảnh hiển thị:

Độ phân giải Full HD tái tạo khung hình sắc nét, chi tiết. 
Bộ xử lý Quad Core tối ưu chất lượng hình ảnh cho khung hình chân thực. 
Công nghệ HDR10 tăng độ tương phản, màu sắc cho các chi tiết ở vùng tối và vùng sáng hiển thị sinh động hơn.
Công nghệ Wide Color Gamut mở rộng dải màu giúp tái tạo hình ảnh thêm phần trung thực, tự nhiên.', N'Full HD', 6, CAST(N'2023-03-24T11:54:22.000' AS DateTime), 5, N'productAndroid Tivi Sharp 42 inch 2T-C42EG2X43756204.jpg', 42, 12, 0.3, 8490000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (63, 5, 1, 3590000, N'Tivi Sharp 32 inch 2T-C32BD1X', N'Ðen', N'Giới thiệu sản phẩm Tivi Sharp 32 inch 2T-C32BD1X
Độ phân giải HD sắc nét
Tivi Sharp 2T-C32BD1X sở hữu độ phân giải HD cho chất lượng hình ảnh sắc nét, chân thực và sống động, cho bạn những trải nghiệm xem phim, xem video tuyệt vời.

Công nghệ X2 Master Engine cho hình ảnh chân thực hơn
Công nghệ X2 Master Engine có khả năng tăng cường tổng thể chất lượng hình ảnh, giảm nhiễu hạt và vỡ nét, mang đến cho bạn những hình ảnh sắc nét, chân thực trong từng khung hình', N'HD', 12, CAST(N'2023-03-24T11:56:32.000' AS DateTime), 1, N'productTivi Sharp 32 inch 2T-C32BD1X94617525.jpg', 32, 17, 0.23, 4590000)
INSERT [dbo].[Product] ([PID], [AddedBy], [CATID], [PriceIn], [Name], [Color], [Description], [Resolution], [Insurance], [CreateDate], [TID], [ImageDefault], [Size], [Quantity], [Discount], [PriceOut]) VALUES (64, 5, 2, 4790000, N'Android tivi Sharp HD 32 inch 2T-C32BG1X', N'Ðen', N'Giới thiệu Android tivi Sharp HD 32 inch 2T-C32BG1X
Android tivi Sharp 32 inch 2T-C32BG1X công nghệ HD thế hệ mới mang đến trải nghiệm hình ảnh, âm thanh hoàn hảo cho người dùng. 

Thiết bị có thiết kế siêu mỏng, kiểu dáng và màu sắc sang trọng, hiện đại góp phần tôn lên vẻ đẹp không gian sống của bạn.', N'HD', 12, CAST(N'2023-03-24T11:58:37.000' AS DateTime), 5, N'productAndroid tivi Sharp HD 32 inch 2T-C32BG1X85499767.jpg', 32, 5, 0.21, 5490000)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductLog] ON 

INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (81, 5, 26, 4, 20000000, 0, 5, CAST(N'2023-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (82, 5, 26, 4, 20000000, 0, 2, CAST(N'2023-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (106, 5, 45, 1, 5990000, 8211000, 10, CAST(N'2023-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (107, 5, 46, 1, 14990000, 21500000, 25, CAST(N'2023-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (109, 5, 47, 1, 7590000, 8900000, 12, CAST(N'2023-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (125, 2, 38, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (126, 2, 26, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (127, 1, 31, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (128, 5, 40, 4, 4150000, 0, 2, CAST(N'2023-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (135, 5, 51, 1, 444, 444, 444, CAST(N'2023-03-24T11:01:14.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (136, 5, 51, 4, 444, 0, 444, CAST(N'2023-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (137, 5, 51, 4, 444, 0, 888, CAST(N'2023-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (138, 5, 51, 4, 444, 0, 1776, CAST(N'2023-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (139, 5, 51, 4, 444, 0, 3552, CAST(N'2023-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (140, 5, 52, 1, 25990000, 31985000, 9, CAST(N'2023-03-24T11:08:12.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (141, 5, 53, 1, 10000000, 15000000, 12, CAST(N'2023-03-24T11:12:02.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (142, 5, 54, 1, 5290000, 7990000, 6, CAST(N'2023-03-24T11:17:10.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (143, 5, 55, 1, 11990000, 18735000, 5, CAST(N'2023-03-24T11:19:48.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (144, 5, 56, 1, 21490000, 29500000, 10, CAST(N'2023-03-24T11:23:12.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (145, 5, 57, 1, 19990000, 29985000, 9, CAST(N'2023-03-24T11:25:40.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (146, 5, 58, 1, 10490000, 15735000, 12, CAST(N'2023-03-24T11:28:08.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (147, 5, 59, 1, 5490000, 7900000, 8, CAST(N'2023-03-24T11:30:21.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (148, 5, 60, 1, 6490000, 7990000, 14, CAST(N'2023-03-24T11:32:06.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (149, 5, 61, 1, 8590000, 12885000, 16, CAST(N'2023-03-24T11:51:39.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (150, 5, 62, 1, 5990000, 8490000, 12, CAST(N'2023-03-24T11:54:22.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (151, 5, 63, 1, 3590000, 4590000, 17, CAST(N'2023-03-24T11:56:32.000' AS DateTime))
INSERT [dbo].[ProductLog] ([LogId], [UId], [PId], [Action], [PriceIn], [PriceOut], [Quatity], [Date]) VALUES (152, 5, 64, 1, 4790000, 5490000, 5, CAST(N'2023-03-24T11:58:37.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RID], [RName]) VALUES (1, N'Khách Hàng')
INSERT [dbo].[Role] ([RID], [RName]) VALUES (2, N'Nhân viên nhập hàng')
INSERT [dbo].[Role] ([RID], [RName]) VALUES (3, N'Nhân viên chốt đơn')
INSERT [dbo].[Role] ([RID], [RName]) VALUES (4, N'Quản lý')
INSERT [dbo].[Role] ([RID], [RName]) VALUES (5, N'Người dùng bị chặn')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([TID], [TName]) VALUES (1, N'Smart TV')
INSERT [dbo].[Type] ([TID], [TName]) VALUES (2, N'LED')
INSERT [dbo].[Type] ([TID], [TName]) VALUES (3, N'QLED')
INSERT [dbo].[Type] ([TID], [TName]) VALUES (4, N'OLED')
INSERT [dbo].[Type] ([TID], [TName]) VALUES (5, N'Android TV')
INSERT [dbo].[Type] ([TID], [TName]) VALUES (6, N'NanoCell')
INSERT [dbo].[Type] ([TID], [TName]) VALUES (7, N'TV màn hình cong')
INSERT [dbo].[Type] ([TID], [TName]) VALUES (8, N'Tivi Khung Tranh')
INSERT [dbo].[Type] ([TID], [TName]) VALUES (9, N'QNED')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Role], [LName], [FName], [UserName], [PassWord], [Address], [image], [DOB], [Gender], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (1, 1, N'Vũ2', N'Chiến', N'chien', N'123456789A', N'Hà Nội', N'avatar113503495.jpg', CAST(N'2002-02-02T00:00:00.000' AS DateTime), 0, N'0123456789', N'nhantacbvn@gmail.com', NULL, CAST(N'2023-03-18T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([ID], [Role], [LName], [FName], [UserName], [PassWord], [Address], [image], [DOB], [Gender], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (2, 3, N'Nhân', N'Đoàn', N'mra', N'11111111A', N'Ha Noi', N'avatar213285864.jpg', CAST(N'1906-11-09T00:00:00.000' AS DateTime), 0, N'0987654321', N'Chien@gmail.com', NULL, CAST(N'2023-03-07T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([ID], [Role], [LName], [FName], [UserName], [PassWord], [Address], [image], [DOB], [Gender], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (5, 2, N'Nhan', N'Doan', N'nhantacb', N'12345678A', N'caobang', N'avatar575798573.jpg', CAST(N'2023-03-19T00:00:00.000' AS DateTime), 0, N'0123456789', N'Chienfvv15082001@gmail.com', CAST(N'2023-02-10T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([ID], [Role], [LName], [FName], [UserName], [PassWord], [Address], [image], [DOB], [Gender], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (12, 1, NULL, NULL, N'nhantaccb', N'dsvscascasca', NULL, N'avtDF.png', NULL, NULL, N'vdv       ', NULL, CAST(N'2023-03-21T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([ID], [Role], [LName], [FName], [UserName], [PassWord], [Address], [image], [DOB], [Gender], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (14, 4, N'Admin', N'Duc', N'admin', N'99999999A', NULL, N'avtDF.png', NULL, NULL, NULL, N'dsvscascasca@gmail.com', CAST(N'2023-03-21T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[User] ([ID], [Role], [LName], [FName], [UserName], [PassWord], [Address], [image], [DOB], [Gender], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (16, 1, N'Đoàn', N'Nhân', N'acquy666', N'66666666A', N'Haha', N'avtDF.png', CAST(N'2002-12-06T00:00:00.000' AS DateTime), 0, N'0987654331', N'nhantacbvn@gmail.com', CAST(N'2023-03-21T00:00:00.000' AS DateTime), CAST(N'2023-03-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Product] FOREIGN KEY([PID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Product]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_User]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([PID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Guest] FOREIGN KEY([GID])
REFERENCES [dbo].[Guest] ([Guest])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Guest]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UID])
REFERENCES [dbo].[User] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order Detail_Order] FOREIGN KEY([OID])
REFERENCES [dbo].[Order] ([OID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order Detail] CHECK CONSTRAINT [FK_Order Detail_Order]
GO
ALTER TABLE [dbo].[Order Detail]  WITH CHECK ADD  CONSTRAINT [FK_Order Detail_Product] FOREIGN KEY([PID])
REFERENCES [dbo].[Product] ([PID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order Detail] CHECK CONSTRAINT [FK_Order Detail_Product]
GO
ALTER TABLE [dbo].[OrderLog]  WITH CHECK ADD  CONSTRAINT [FK__OrderLog__OID__52593CB8] FOREIGN KEY([OID])
REFERENCES [dbo].[Order] ([OID])
GO
ALTER TABLE [dbo].[OrderLog] CHECK CONSTRAINT [FK__OrderLog__OID__52593CB8]
GO
ALTER TABLE [dbo].[ProductLog]  WITH CHECK ADD  CONSTRAINT [FK__ProductLog__PId__5629CD9C] FOREIGN KEY([PId])
REFERENCES [dbo].[Product] ([PID])
GO
ALTER TABLE [dbo].[ProductLog] CHECK CONSTRAINT [FK__ProductLog__PId__5629CD9C]
GO
ALTER TABLE [dbo].[ProductLog]  WITH CHECK ADD  CONSTRAINT [FK__ProductLog__UId__571DF1D5] FOREIGN KEY([UId])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ProductLog] CHECK CONSTRAINT [FK__ProductLog__UId__571DF1D5]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([RID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
