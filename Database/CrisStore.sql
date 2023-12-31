USE [CrisBaoStore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BasketItems]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BasketItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[BasketId] [int] NOT NULL,
 CONSTRAINT [PK_BasketItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Baskets]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Baskets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuyerId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Baskets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemOrdered_ProductId] [int] NOT NULL,
	[ItemOrdered_Name] [nvarchar](max) NOT NULL,
	[ItemOrdered_PictureUrl] [nvarchar](max) NOT NULL,
	[Price_KM] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BuyerId] [nvarchar](max) NOT NULL,
	[ShippingAddress_FullName] [nvarchar](max) NOT NULL,
	[ShippingAddress_Address1] [nvarchar](max) NOT NULL,
	[ShippingAddress_Address2] [nvarchar](max) NOT NULL,
	[ShippingAddress_City] [nvarchar](max) NOT NULL,
	[ShippingAddress_State] [nvarchar](max) NOT NULL,
	[ShippingAddress_Zip] [nvarchar](max) NOT NULL,
	[ShippingAddress_Country] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Subtotal] [bigint] NOT NULL,
	[DeliveryFee] [bigint] NOT NULL,
	[OrderStatus] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Brand] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[PictureUrl] [nvarchar](max) NOT NULL,
	[Price] [bigint] NOT NULL,
	[Price_KM] [bigint] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ScreenSize] [nvarchar](max) NOT NULL,
	[ScreenTechnology] [nvarchar](max) NOT NULL,
	[RearCamera] [nvarchar](max) NOT NULL,
	[FrontCamera] [nvarchar](max) NOT NULL,
	[Weight] [nvarchar](max) NOT NULL,
	[Sim] [nvarchar](max) NOT NULL,
	[Color] [nvarchar](max) NOT NULL,
	[Sound] [nvarchar](max) NOT NULL,
	[Chipset] [nvarchar](max) NOT NULL,
	[OperatingSystem] [nvarchar](max) NOT NULL,
	[Ram] [nvarchar](max) NOT NULL,
	[Storage] [nvarchar](max) NOT NULL,
	[Battery] [nvarchar](max) NOT NULL,
	[ReleaseTime] [nvarchar](max) NOT NULL,
	[PublicId] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAddress]    Script Date: 9/17/2023 10:54:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAddress](
	[Id] [int] NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Address1] [nvarchar](max) NOT NULL,
	[Address2] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[Zip] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserAddress] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230820014706_OrderEntityAdded', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230905034838_DbAdd', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230909083804_db', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230915032810_PublicIdAdded', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917084642_UpdateDB', N'6.0.10')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230917155036_Updatedbproduct', N'6.0.10')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Member', N'MEMBER', N'daad787b-746c-493c-8af4-7fbd3d5aa357')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Admin', N'ADMIN', N'78034d04-963b-4017-b146-f359824327d7')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 2)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (1, N'bob', N'BOB', N'bob@gmail.com', N'BOB@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAhkRu/urcEMdGAPMVRYNf0wkQjH6UoIyjxTRb99z23+DAKMUyxzFlpis1cMMOsnVA==', N'CCCYJUMCE5UTU4W6BSJIOLWQZ6VHP7Z4', N'0ee90d83-e1f2-47eb-8de9-002ad524f0cb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEH2tgNF0IKvgO1V5VLKYIya6dtczqiQN8UW/7mWXvMuWuKK5VlUY+V8TsAFjFNdZXw==', N'52YGXBOQ4RR3UL4KRU7TY2BCI6Q5LR6H', N'6e458e3a-c339-4015-a03f-c601a5b9de86', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[BasketItems] ON 

INSERT [dbo].[BasketItems] ([Id], [Quantity], [ProductId], [BasketId]) VALUES (32, 1, 13, 13)
SET IDENTITY_INSERT [dbo].[BasketItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Baskets] ON 

INSERT [dbo].[Baskets] ([Id], [BuyerId]) VALUES (13, N'3b73e81b-71e6-43b9-b510-2cfe1aed1988')
SET IDENTITY_INSERT [dbo].[Baskets] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (1, 15, N'iPhone 11 512GB', N'/images/products/Apple-iPhone-11-PNG-Photos.png', 50990000, 2, 1)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (2, 14, N'iPhone 12 128GB', N'/images/products/Apple-iPhone-12.png', 40990000, 1, 1)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (3, 15, N'iPhone 11 512GB', N'/images/products/Apple-iPhone-11-PNG-Photos.png', 50990000, 1, 2)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (4, 15, N'iPhone 11 512GB', N'/images/products/Apple-iPhone-11-PNG-Photos.png', 50990000, 1, 3)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (5, 15, N'iPhone 11 512GB', N'/images/products/Apple-iPhone-11-PNG-Photos.png', 50990000, 1, 4)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (6, 14, N'iPhone 12 128GB', N'/images/products/Apple-iPhone-12.png', 40990000, 1, 5)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (7, 15, N'iPhone 11 512GB', N'/images/products/Apple-iPhone-11-PNG-Photos.png', 50990000, 1, 6)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (8, 15, N'iPhone 11 512GB', N'/images/products/Apple-iPhone-11-PNG-Photos.png', 50990000, 1, 7)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (9, 14, N'iPhone 12 128GB', N'/images/products/Apple-iPhone-12.png', 40990000, 1, 8)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (10, 14, N'iPhone 12 128GB', N'/images/products/Apple-iPhone-12.png', 40990000, 2, 9)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (11, 14, N'iPhone 12 128GB', N'/images/products/Apple-iPhone-12.png', 3990000, 1, 10)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (12, 13, N'iPhone 13 128GB | Chính hãng VN/A', N'/images/products/iphone-13-128gb.png', 3990000, 1, 10)
INSERT [dbo].[OrderItem] ([Id], [ItemOrdered_ProductId], [ItemOrdered_Name], [ItemOrdered_PictureUrl], [Price_KM], [Quantity], [OrderId]) VALUES (13, 14, N'iPhone 12 128GB', N'/images/products/Apple-iPhone-12.png', 3990000, 2, 11)
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (1, N'bob', N'ádf', N'ádf', N'adsf', N'ádfas', N'aád', N'adfads', N'adsf', CAST(N'2023-09-12T20:06:04.7123015' AS DateTime2), 142970000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (2, N'bob', N'sdf', N'sdf', N'ádf', N'ádf', N'adsf', N'ádf', N'aádf', CAST(N'2023-09-12T20:07:10.6270109' AS DateTime2), 50990000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (3, N'bob', N'sdf', N'ádf', N'ádf', N'ádf', N'ádf', N'ádf', N'aádf', CAST(N'2023-09-12T20:08:05.4305140' AS DateTime2), 50990000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (4, N'bob', N'ádf', N'adsf', N'adf', N'ádf', N'ádf', N'ádf', N'adf', CAST(N'2023-09-12T20:37:50.3109597' AS DateTime2), 50990000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (5, N'bob', N'ádf', N'adsf', N'adf', N'ádf', N'ádf', N'ádf', N'adf', CAST(N'2023-09-12T20:39:05.1327866' AS DateTime2), 40990000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (6, N'bob', N'ádf', N'adsf', N'adf', N'ádf', N'ádf', N'ádf', N'adf', CAST(N'2023-09-12T21:23:20.8531216' AS DateTime2), 50990000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (7, N'bob', N'ádf', N'adsf', N'adf', N'ádf', N'ádf', N'ádf', N'adf', CAST(N'2023-09-13T08:28:01.8534805' AS DateTime2), 50990000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (8, N'bob', N'ádf', N'adsf', N'adf', N'ádf', N'ádf', N'ádf', N'adf', CAST(N'2023-09-17T15:30:09.2196632' AS DateTime2), 40990000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (9, N'bob', N'ádf', N'adsf', N'adf', N'ádf', N'ádf', N'ádf', N'adf', CAST(N'2023-09-17T15:36:06.7359674' AS DateTime2), 81980000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (10, N'bob', N'ádf', N'adsf', N'adf', N'ádf', N'ádf', N'ádf', N'adf', CAST(N'2023-09-17T15:49:45.7635239' AS DateTime2), 7980000, 0, 0)
INSERT [dbo].[Orders] ([Id], [BuyerId], [ShippingAddress_FullName], [ShippingAddress_Address1], [ShippingAddress_Address2], [ShippingAddress_City], [ShippingAddress_State], [ShippingAddress_Zip], [ShippingAddress_Country], [OrderDate], [Subtotal], [DeliveryFee], [OrderStatus]) VALUES (11, N'admin', N'abc', N'adf', N'adf', N'adf', N'adf', N'adf', N'Vietnam', CAST(N'2023-09-17T22:11:00.8940373' AS DateTime2), 7980000, 0, 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (1, N'Samsung Galaxy Z Fold5 12GB 512GB', N'Samsung', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/galaxy-z-fold-5.webp', 50990000, 59990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'07/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (2, N'Samsung Galaxy Note 10 Plus 512GB', N'Samsung', N'Phone', N'Samsung Note 10 Plus có hiệu năng vô cùng mạnh mẽ, xứng tầm chiếc flagship cao cấp nhất năm 2019 của Samsung. Cụ thể, Note 10 Plus được trang bị vi xử lý Exynos 9825 8 nhân 64-bit kết hợp với 12 GB RAM và 256 GB bộ nhớ trong.', N'/images/products/Note-10-plus.png', 50990000, 20990000, 10, N'6.8 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'5500 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (3, N'Samsung Galaxy S23 Ultra 256GB', N'Samsung', N'Phone', N'Samsung S23 Ultra là dòng điện thoại cao cấp của Samsung, sở hữu camera độ phân giải 200MP ấn tượng, chip Snapdragon 8 Gen 2 mạnh mẽ, bộ nhớ RAM 8GB mang lại hiệu suất xử lý vượt trội cùng khung viền vuông vức sang trọng. Sản phẩm được ra mắt từ đầu năm 2023.', N'/images/products/vn-galaxy-s23.avif', 50990000, 30990000, 10, N'6.8 inches', N'Dynamic AMOLED 2X', N'Siêu rộng: 12MP F2.2 (Dual Pixel AF)
Chính: 200MP F1.7 OIS ±3° (Super Quad Pixel AF)
Tele 1: 10MP F4.9 (10X, Dual Pixel AF) OIS,
Tele 2: 10MP F2.4 (3X, Dual Pixel AF) OIS Thu phóng chuẩn không gian 100X', N'12MP F2.2 (Dual Pixel AF)', N'234 g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'5.000mAh', N'02/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (4, N'Samsung Galaxy S20 FE 256GB', N'Samsung', N'Phone', N'Samsung S20 FE là chiếc điện thoại thuộc dòng Samsung Galaxy S, với chữ FE trong tên gọi của máy có nghĩa là Fan Edition. Đây là dòng điện thoại ra mắt như để gửi lời tri ân đến các fan trung thành đã và đang sử dụng các sản phẩm của Samsung. Với số lượng sản phẩm được giới hạn và chỉ mở bán trong thời gian ngắn.  ', N'/images/products/vn-galaxy-s20-fe.avif', 7250000, 5250000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (5, N'Samsung Galaxy Z Flip4 128GB', N'Samsung', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/samsung_galaxy_flip_4_purple.png', 50990000, 30990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'128 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (6, N'Samsung Galaxy S21 FE 8GB 128GB', N'Samsung', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/vn-galaxy-s21-fe.avif', 50990000, 7990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (7, N'Xiaomi Redmi Note 12 8GB 128GB', N'Xiaomi', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/xiaomi-redmi-note-12-xanh.webp', 50990000, 6990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (8, N'Xiaomi Redmi Note 12 Pro 4G 8GB 256GB', N'Xiaomi', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/XiaomiNote12pro.png', 5990000, 8990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (9, N'Xiaomi 13 8GB 256GB', N'Xiaomi', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/xiaomi13.webp', 5990000, 7990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (10, N'Xiaomi POCO X5 Pro 8GB 256GB', N'Xiaomi', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/poco-x5-pro-5g.webp', 50990000, 10990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (11, N'Xiaomi Mix Alpha', N'Xiaomi', N'Phone', N'Xiaomi MIX Alpha có thiết kế và hiệu năng nổi trội, nhiều khách hàng quan tâm sản phẩm từ lúc chưa ra mắt, nên kỳ vọng và mong đợi rất nhiều. Khi sản phẩm tung ra thị trường đã được nhiều đánh giá cao từ khách hàng, đây có thể là điện thoại đem lại thành công cho Xiaomi trong năm nay.', N'/images/products/xiaomi-alpha.png', 70990000, 50990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (12, N'iPhone 14 Pro Max 128GB | Chính hãng VN/A', N'Iphone', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/Iphone14Promax.png', 50990000, 30990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (13, N'iPhone 13 128GB | Chính hãng VN/A', N'Iphone', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/iphone-13-128gb.png', 40990000, 3990000, 9, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (14, N'iPhone 12 128GB', N'Iphone', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/Apple-iPhone-12.png', 40990000, 3990000, 2, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (15, N'iPhone 11 512GB', N'Samsung', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/Apple-iPhone-11-PNG-Photos.png', 50990000, 8990000, 3, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (16, N'iPhone 5 64GB', N'Samsung', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/iphone5.jpg', 50990000, 10990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Blue', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (17, N'iPhone 6 64GB', N'Samsung', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/kisspng-apple-iphone-6.jpg', 40990000, 3990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'White', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (18, N'iPhone 7 Plus', N'Samsung', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/png-clipart-iphone-7.png', 50990000, 8990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (20, N'Samsung Galaxy Note 8 512GB', N'Samsung', N'Phone', N'Samsung Galaxy Z Fold5 - Thiết kế tinh tế, cấu hình vượt trội Samsung Galaxy Z Fold5 sẽ là chiếc điện thoại màn hình gập có sự cải tiến vượt trội, đem đến trải nghiệm hoàn toàn khác biệt trong thế giới smartphone.', N'/images/products/png-transparent-samsung-galaxy-note-8.png', 40990000, 3990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'4400 mAh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (21, N'Laptop Asus TUF Gaming F15 FX507VV4-LP382W', N'Asus', N'Laptop', N'Laptop Asus TUF Gaming F15 FX507VV4-LP382W - Sở hữu đẳng cấp của một chiến binh
Laptop Asus TUF Gaming F15 FX507VV4-LP382W chắc chắn đang là chiếc laptop được nhiều game thủ săn lùng nhất hiện nay bởi đẳng cấp của nó. Sở hữu thiết kế mới và đáp ứng được mọi tác vụ, sản phẩm đang làm mưa làm gió trong cộng đồng người yêu game.', N'/images/products/AsusTufF15.webp', 70990000, 50990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'3Kg', N'Not Support Sim', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'16 GB', N'512 GB', N'100WHrs', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (22, N'Laptop Asus ROG Strix G18 G814JI-N6063W', N'Asus', N'Latop', N'Laptop ASUS ROG Strix G18 G814JI-N6063W - Kiểu dáng hiện đại, hiệu năng cao
Laptop ASUS ROG Strix G18 G814JI-N6063W là một trong những sản phẩm laptop Asus gaming mới nhất của hãng ASUS. Sản phẩm được thiết kế đặc biệt cho các game thủ và những người sử dụng đòi hỏi hiệu năng cao.', N'/images/products/asus-rog-strix-g18.webp', 100999000, 50990000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'3Kg', N'2 sim 5G', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'64 GB', N'10 TB', N'100WHrs', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (23, N'Laptop Lenovo Gaming Legion 5 Pro 16ACH6H', N'Lenovo', N'Laptop', N'Laptop Lenovo Gaming Legion 5 Pro 16ACH6H 82JQ00S7VN được ra mắt với hiệu suất đáng kinh ngạc giống như một chiếc máy tính để bàn di động thuận tiện. Vẻ bề ngoài sang trọng khiến laptop Lenovo Gaming này rất phù hợp với tiêu chí một sản phẩm cao cấp.', N'/images/products/lenovo-legion-5-pro.webp', 70990000, 59090000, 10, N'7.6 inches', N'Dynamic AMOLED 2X', N'Camera siêu rộng: 12MP F2.2, 123°, 1.12μm
Camera góc rộng: 50MP, F1.8, Dual Pixel AF, OIS, 2.0μm
Camera Tele: 10 MP, F2.4, PDAF, OIS, 1.0μm, zoom 3X, zoom kỹ thuật số 30X', N'Camera bên ngoài:10 MP, f/2.2
Camera bên trong: 4 MP, F1.8', N'253g', N'2 sim 5G', N'Black', N'Dolby Atmos', N'Snapdragon 8 Gen 2 for Galaxy (4nm) 8 nhân', N'Android 13', N'12 GB', N'512 GB', N'80Wh', N'7/2023', N'')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (26, N'Test', N'Test', N'abc', N'abc', N'https://res.cloudinary.com/dfdw0ygfs/image/upload/v1694787387/jhstsh5nww2zkkiwcra1.jpg', 500, 5000, 10, N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'jhstsh5nww2zkkiwcra1')
INSERT [dbo].[Products] ([Id], [Name], [Brand], [Type], [Description], [PictureUrl], [Price], [Price_KM], [Quantity], [ScreenSize], [ScreenTechnology], [RearCamera], [FrontCamera], [Weight], [Sim], [Color], [Sound], [Chipset], [OperatingSystem], [Ram], [Storage], [Battery], [ReleaseTime], [PublicId]) VALUES (27, N'Samsung Galaxy Note 1', N'Samsung', N'Phone', N'abc', N'https://res.cloudinary.com/dfdw0ygfs/image/upload/v1694965918/u4bvmdzldocjqftwvs6k.jpg', 10000, 10000, 10, N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'abc', N'u4bvmdzldocjqftwvs6k')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[UserAddress] ([Id], [FullName], [Address1], [Address2], [City], [State], [Zip], [Country]) VALUES (1, N'ádf', N'adsf', N'adf', N'ádf', N'ádf', N'ádf', N'adf')
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [PublicId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_Baskets_BasketId] FOREIGN KEY([BasketId])
REFERENCES [dbo].[Baskets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_Baskets_BasketId]
GO
ALTER TABLE [dbo].[BasketItems]  WITH CHECK ADD  CONSTRAINT [FK_BasketItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BasketItems] CHECK CONSTRAINT [FK_BasketItems_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Orders_OrderId]
GO
ALTER TABLE [dbo].[UserAddress]  WITH CHECK ADD  CONSTRAINT [FK_UserAddress_AspNetUsers_Id] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserAddress] CHECK CONSTRAINT [FK_UserAddress_AspNetUsers_Id]
GO
