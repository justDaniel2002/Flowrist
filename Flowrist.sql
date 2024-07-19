USE [master]
GO
/****** Object:  Database [Flowrist]    Script Date: 7/20/2024 2:51:36 AM ******/
CREATE DATABASE [Flowrist]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Flowrist', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\Flowrist.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Flowrist_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\Flowrist_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Flowrist] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Flowrist].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Flowrist] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Flowrist] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Flowrist] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Flowrist] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Flowrist] SET ARITHABORT OFF 
GO
ALTER DATABASE [Flowrist] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Flowrist] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Flowrist] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Flowrist] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Flowrist] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Flowrist] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Flowrist] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Flowrist] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Flowrist] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Flowrist] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Flowrist] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Flowrist] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Flowrist] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Flowrist] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Flowrist] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Flowrist] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Flowrist] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Flowrist] SET RECOVERY FULL 
GO
ALTER DATABASE [Flowrist] SET  MULTI_USER 
GO
ALTER DATABASE [Flowrist] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Flowrist] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Flowrist] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Flowrist] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Flowrist] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Flowrist] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Flowrist', N'ON'
GO
ALTER DATABASE [Flowrist] SET QUERY_STORE = OFF
GO
USE [Flowrist]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/20/2024 2:51:36 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [nvarchar](450) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItemID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CartID] [int] NOT NULL,
	[AccountApplicationId] [nvarchar](450) NULL,
 CONSTRAINT [PK_CartItems] PRIMARY KEY CLUSTERED 
(
	[CartItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageBlog]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageBlog](
	[ImageBlogsID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[BlogID] [int] NOT NULL,
 CONSTRAINT [PK_ImageBlog] PRIMARY KEY CLUSTERED 
(
	[ImageBlogsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageProduct]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageProduct](
	[ImageProductsID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_ImageProduct] PRIMARY KEY CLUSTERED 
(
	[ImageProductsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[Total] [float] NOT NULL,
	[ReportID] [int] NULL,
	[AccountID] [nvarchar](450) NOT NULL,
	[transactionID] [nvarchar](450) NULL,
	[ShippingInforID] [int] NOT NULL,
	[PaymentMethod] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[unitPrice] [float] NOT NULL,
	[promotionPrice] [float] NOT NULL,
	[TotalAmount] [float] NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[InventoryQuantity] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[PurchasePrice] [float] NOT NULL,
	[Supplier] [nvarchar](max) NOT NULL,
	[Original] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
	[ExpiredDate] [datetime2](7) NOT NULL,
	[Ingredient] [nvarchar](max) NOT NULL,
	[Instruction] [nvarchar](max) NOT NULL,
	[Weight] [float] NOT NULL,
	[Height] [float] NOT NULL,
	[Width] [float] NOT NULL,
	[Length] [float] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[Rate] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NOT NULL,
	[ProductID] [int] NOT NULL,
	[AccountID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[ReportText] [nvarchar](max) NOT NULL,
	[ResponseText] [nvarchar](max) NOT NULL,
	[OrderID] [int] NOT NULL,
	[AccountID] [nvarchar](450) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[AccountID] [nvarchar](450) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingInfor]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingInfor](
	[ShippingInforID] [int] IDENTITY(1,1) NOT NULL,
	[DetailAddress] [nvarchar](max) NOT NULL,
	[Province] [nvarchar](max) NOT NULL,
	[Ward] [nvarchar](max) NOT NULL,
	[District] [nvarchar](max) NOT NULL,
	[ReceiverName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[ShippingCost] [float] NOT NULL,
 CONSTRAINT [PK_ShippingInfor] PRIMARY KEY CLUSTERED 
(
	[ShippingInforID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Link] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[StartAt] [datetime2](7) NOT NULL,
	[ExpiredAt] [datetime2](7) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 7/20/2024 2:51:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[ResponseId] [nvarchar](450) NOT NULL,
	[TmnCode] [nvarchar](max) NOT NULL,
	[TxnRef] [nvarchar](max) NOT NULL,
	[Amount] [bigint] NOT NULL,
	[OrderInfo] [nvarchar](max) NOT NULL,
	[ResponseCode] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[BankTranNo] [nvarchar](max) NOT NULL,
	[PayDate] [datetime2](7) NOT NULL,
	[BankCode] [nvarchar](max) NOT NULL,
	[TransactionNo] [nvarchar](max) NOT NULL,
	[TransactionType] [nvarchar](max) NOT NULL,
	[TransactionStatus] [nvarchar](max) NOT NULL,
	[SecureHash] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[ResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1c101f53-6913-4cc6-9e7b-994103e7a7c4', N'Customer', N'CUSTOMER', N'7f1da67c-ca5d-433a-b98a-e041b02c2bbc')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'84642fc5-0992-420d-ac27-80c9414ea07e', N'Staff', N'STAFF', N'a1e27fd2-35f1-4fec-a4e8-d6c75612bd38')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8c502029-8ca4-455a-8d58-fc83b11613ac', N'Manager', N'MANAGER', N'13f53dbf-6568-463b-a762-0dad793a2c3f')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'eea789bf-7eea-4232-93e8-4135072aa150', N'Admin', N'ADMIN', N'b2f9f9ca-29d5-4686-a6a8-3af12ed001ac')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'595272e1-7d3d-4663-b200-a93b2fb72727', N'eea789bf-7eea-4232-93e8-4135072aa150')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'595272e1-7d3d-4663-b200-a93b2fb72727', N'Thanh Vy', N'46 Lương Ngọc Quyến, phường 5, quận Gò Vấp', N'0347771189', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'tuilaadmin12345', N'TUILAADMIN12345', N'admin123@gmail.com', N'ADMIN123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDzmSizO2wMnznJRnwArqMCtjh4V32ohXyyigddDs+kZrKdgEsS3NrdS5yvlBtcK9A==', N'KDVOYK6SIG3NLL3ABPYVZOARHQ2GZ53U', N'164ec160-d8d8-45a6-9337-a89a02e74148', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'Cây hoa cảnh')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'Giống cây hoa có quả')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (3, N'Giống cây hoa nuôi trong nhà')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (4, N'Giống cây hoa khí hậu nóng')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (5, N'Giống cây trồng thủy sinh')
GO
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (7, N'Khác')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageProduct] ON 
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (1, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 1)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (2, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 1)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (3, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 1)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (4, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 2)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (5, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 2)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (6, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 2)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (7, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 3)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (8, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 3)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (9, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 3)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (10, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 4)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (11, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 4)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (12, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 4)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (13, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 5)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (14, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 5)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (15, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 5)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (16, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 6)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (17, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 6)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (18, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 6)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (19, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 7)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (20, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 7)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (21, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 7)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (22, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 8)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (23, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 8)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (24, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 8)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (25, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 9)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (26, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 9)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (27, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 9)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (28, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 10)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (29, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 10)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (30, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 10)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (31, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 11)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (32, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 11)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (33, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 11)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (34, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 12)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (35, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 12)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (36, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 12)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (37, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 13)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (38, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 13)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (39, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 13)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (40, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 14)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (41, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 14)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (42, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 14)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (43, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 15)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (44, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 15)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (45, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 15)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (46, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 16)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (47, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 16)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (48, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 16)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (49, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 17)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (50, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 17)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (51, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 17)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (52, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 18)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (53, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 18)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (54, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 18)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (55, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 19)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (56, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 19)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (57, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 19)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (58, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 20)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (59, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 20)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (60, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 20)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (61, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 21)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (62, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 21)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (63, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 21)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (64, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 22)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (65, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 22)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (66, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 22)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (67, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 23)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (68, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 23)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (69, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 23)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (70, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 24)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (71, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 24)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (72, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 24)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (73, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 25)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (74, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 25)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (75, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 25)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (76, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 26)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (77, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 26)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (78, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 26)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (79, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 27)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (80, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 27)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (81, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 27)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (82, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 28)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (83, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 28)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (84, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 28)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (85, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 29)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (86, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 29)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (87, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 29)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (88, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 30)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (89, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 30)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (90, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 30)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (91, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 31)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (92, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 31)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (93, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 31)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (94, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 32)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (95, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 32)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (96, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 32)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (97, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 33)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (98, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 33)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (99, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 33)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (100, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 34)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (101, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 34)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (102, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 34)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (103, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 35)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (104, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 35)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (105, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 35)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (106, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 36)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (107, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 36)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (108, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 36)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (109, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 37)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (110, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 37)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (111, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 37)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (112, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 38)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (113, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 38)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (114, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 38)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (115, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 39)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (116, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 39)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (117, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 39)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (118, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 40)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (119, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 40)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (120, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 40)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (121, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 41)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (122, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 41)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (123, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 41)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (124, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 42)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (125, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 42)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (126, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 42)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (127, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 43)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (128, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 43)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (129, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 43)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (130, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 44)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (131, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 44)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (132, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 44)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (133, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 45)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (134, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 45)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (135, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 45)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (136, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 46)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (137, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 46)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (138, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 46)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (139, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 47)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (140, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 47)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (141, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 47)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (142, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 48)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (143, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 48)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (144, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 48)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (145, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 49)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (146, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 49)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (147, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 49)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (148, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 50)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (149, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 50)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (150, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 50)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (151, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 51)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (152, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 51)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (153, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 51)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (154, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 52)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (155, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 52)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (156, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 52)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (157, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 53)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (158, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 53)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (159, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 53)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (160, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 54)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (161, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 54)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (162, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 54)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (163, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 55)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (164, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 55)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (165, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 55)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (166, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 56)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (167, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 56)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (168, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 56)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (169, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 57)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (170, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 57)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (171, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 57)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (172, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 58)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (173, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 58)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (174, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 58)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (175, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 59)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (176, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 59)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (177, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 59)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (178, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 60)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (179, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 60)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (180, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 60)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (181, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 61)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (182, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 61)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (183, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 61)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (184, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 62)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (185, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 62)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (186, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 62)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (187, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 63)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (188, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 63)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (189, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 63)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (190, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 64)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (191, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 64)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (192, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 64)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (193, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 65)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (194, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 65)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (195, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 65)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (196, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 66)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (197, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 66)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (198, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 66)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (199, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 67)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (200, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 67)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (201, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 67)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (202, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 68)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (203, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 68)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (204, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 68)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (205, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 69)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (206, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 69)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (207, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 69)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (208, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 70)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (209, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 70)
GO
INSERT [dbo].[ImageProduct] ([ImageProductsID], [Image], [ProductID]) VALUES (210, N'https://i.pinimg.com/474x/fc/49/cd/fc49cdc728f73d3dd5e750a62c4b1525.jpg', 70)
GO
SET IDENTITY_INSERT [dbo].[ImageProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (1, N'Rose Plant', 50, N'A beautiful rose plant.', 15.99, 8, N'Flora Inc.', N'Imported', CAST(N'2024-07-20T02:14:56.4966667' AS DateTime2), CAST(N'2024-07-20T02:14:56.4966667' AS DateTime2), 1, CAST(N'2025-07-20T02:14:56.4966667' AS DateTime2), N'Rose extract, water', N'Keep in sunlight', 0.5, 12, 6, 6, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (2, N'Rose Plant', 50, N'A beautiful rose plant.', 15.99, 8, N'Flora Inc.', N'Imported', CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), 1, CAST(N'2025-07-20T02:15:19.8300000' AS DateTime2), N'Rose extract, water', N'Keep in sunlight', 0.5, 12, 6, 6, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (3, N'Sunflower Seed', 200, N'High-quality sunflower seeds.', 9.99, 4.5, N'GreenGrow Ltd.', N'Organic', CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), 1, CAST(N'2025-07-20T02:15:19.8300000' AS DateTime2), N'Sunflower extract', N'Plant in direct sunlight', 0.3, 10, 5, 5, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (4, N'Peace Lily', 75, N'A low-maintenance indoor plant.', 24.99, 12, N'Indoor Greens', N'Original', CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), 1, CAST(N'2025-01-20T02:15:19.8300000' AS DateTime2), N'Peace lily extract', N'Water weekly', 1, 8, 8, 8, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (5, N'Aquatic Fern', 150, N'A vibrant aquatic plant for water gardens.', 14.99, 7.5, N'WaterWorld Supplies', N'Freshwater', CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), 1, CAST(N'2025-07-20T02:15:19.8300000' AS DateTime2), N'Aquatic fern extract', N'Keep submerged', 0.4, 6, 6, 6, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (6, N'Basil Plant', 90, N'A fragrant herb for cooking.', 8.99, 5, N'Herb Haven', N'Organic', CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), 1, CAST(N'2030-07-20T02:15:19.8300000' AS DateTime2), N'Basil extract', N'Water regularly', 0.2, 7, 4, 4, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (7, N'Ficus Tree', 30, N'A decorative indoor tree.', 39.99, 20, N'Tropical Plants Inc.', N'Imported', CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), CAST(N'2024-07-20T02:15:19.8300000' AS DateTime2), 1, CAST(N'2025-07-20T02:15:19.8300000' AS DateTime2), N'Ficus extract', N'Water bi-weekly', 2.5, 24, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (8, N'Rose Plant', 50, N'A beautiful rose plant.', 15.99, 8, N'Flora Inc.', N'Imported', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:07.6500000' AS DateTime2), N'Rose extract, water', N'Keep in sunlight', 0.5, 12, 6, 6, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (9, N'Sunflower Seed', 200, N'High-quality sunflower seeds.', 9.99, 4.5, N'GreenGrow Ltd.', N'Organic', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:07.6500000' AS DateTime2), N'Sunflower extract', N'Plant in direct sunlight', 0.3, 10, 5, 5, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (10, N'Peace Lily', 75, N'A low-maintenance indoor plant.', 24.99, 12, N'Indoor Greens', N'Original', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2025-01-20T02:16:07.6500000' AS DateTime2), N'Peace lily extract', N'Water weekly', 1, 8, 8, 8, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (11, N'Aquatic Fern', 150, N'A vibrant aquatic plant for water gardens.', 14.99, 7.5, N'WaterWorld Supplies', N'Freshwater', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:07.6500000' AS DateTime2), N'Aquatic fern extract', N'Keep submerged', 0.4, 6, 6, 6, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (12, N'Basil Plant', 90, N'A fragrant herb for cooking.', 8.99, 5, N'Herb Haven', N'Organic', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2030-07-20T02:16:07.6500000' AS DateTime2), N'Basil extract', N'Water regularly', 0.2, 7, 4, 4, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (13, N'Ficus Tree', 30, N'A decorative indoor tree.', 39.99, 20, N'Tropical Plants Inc.', N'Imported', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:07.6500000' AS DateTime2), N'Ficus extract', N'Water bi-weekly', 2.5, 24, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (14, N'Rose Bush', 60, N'Beautiful rose bushes for gardens.', 19.99, 10, N'Garden Luxuries', N'Hybrid', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2026-07-20T02:16:07.6500000' AS DateTime2), N'Rose extract', N'Plant in sunny area', 1.2, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (15, N'Bamboo Plant', 120, N'A fast-growing bamboo for decoration.', 29.99, 15, N'Exotic Plants Ltd.', N'Fresh', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:07.6500000' AS DateTime2), N'Bamboo extract', N'Keep in bright light', 1.5, 20, 10, 10, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (16, N'Lavender Plant', 80, N'Lavender plant with aromatic flowers.', 15.99, 8, N'Herb & Flower Co.', N'Organic', CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), CAST(N'2024-07-20T02:16:07.6500000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:07.6500000' AS DateTime2), N'Lavender extract', N'Plant in well-drained soil', 0.5, 12, 8, 8, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (17, N'Bonsai Tree', 40, N'Artistic bonsai tree for indoor use.', 89.99, 45, N'Artistic Bonsai Inc.', N'Imported', CAST(N'2024-07-20T02:16:07.6533333' AS DateTime2), CAST(N'2024-07-20T02:16:07.6533333' AS DateTime2), 1, CAST(N'2027-07-20T02:16:07.6533333' AS DateTime2), N'Bonsai extract', N'Water sparingly', 1, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (18, N'Herb Garden Kit', 50, N'A complete kit to grow a variety of herbs.', 49.99, 25, N'Garden Essentials', N'Organic', CAST(N'2024-07-20T02:16:07.6533333' AS DateTime2), CAST(N'2024-07-20T02:16:07.6533333' AS DateTime2), 1, CAST(N'2025-07-20T02:16:07.6533333' AS DateTime2), N'Herb seeds', N'Follow the instructions included', 2, 10, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (19, N'Rose Plant', 50, N'A beautiful rose plant.', 15.99, 8, N'Flora Inc.', N'Imported', CAST(N'2024-07-20T02:16:30.3166667' AS DateTime2), CAST(N'2024-07-20T02:16:30.3166667' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3166667' AS DateTime2), N'Rose extract, water', N'Keep in sunlight', 0.5, 12, 6, 6, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (20, N'Sunflower Seed', 200, N'High-quality sunflower seeds.', 9.99, 4.5, N'GreenGrow Ltd.', N'Organic', CAST(N'2024-07-20T02:16:30.3166667' AS DateTime2), CAST(N'2024-07-20T02:16:30.3166667' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3166667' AS DateTime2), N'Sunflower extract', N'Plant in direct sunlight', 0.3, 10, 5, 5, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (21, N'Peace Lily', 75, N'A low-maintenance indoor plant.', 24.99, 12, N'Indoor Greens', N'Original', CAST(N'2024-07-20T02:16:30.3166667' AS DateTime2), CAST(N'2024-07-20T02:16:30.3166667' AS DateTime2), 1, CAST(N'2025-01-20T02:16:30.3166667' AS DateTime2), N'Peace lily extract', N'Water weekly', 1, 8, 8, 8, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (22, N'Aquatic Fern', 150, N'A vibrant aquatic plant for water gardens.', 14.99, 7.5, N'WaterWorld Supplies', N'Freshwater', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Aquatic fern extract', N'Keep submerged', 0.4, 6, 6, 6, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (23, N'Basil Plant', 90, N'A fragrant herb for cooking.', 8.99, 5, N'Herb Haven', N'Organic', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2030-07-20T02:16:30.3200000' AS DateTime2), N'Basil extract', N'Water regularly', 0.2, 7, 4, 4, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (24, N'Ficus Tree', 30, N'A decorative indoor tree.', 39.99, 20, N'Tropical Plants Inc.', N'Imported', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Ficus extract', N'Water bi-weekly', 2.5, 24, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (25, N'Rose Bush', 60, N'Beautiful rose bushes for gardens.', 19.99, 10, N'Garden Luxuries', N'Hybrid', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2026-07-20T02:16:30.3200000' AS DateTime2), N'Rose extract', N'Plant in sunny area', 1.2, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (26, N'Bamboo Plant', 120, N'A fast-growing bamboo for decoration.', 29.99, 15, N'Exotic Plants Ltd.', N'Fresh', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Bamboo extract', N'Keep in bright light', 1.5, 20, 10, 10, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (27, N'Lavender Plant', 80, N'Lavender plant with aromatic flowers.', 15.99, 8, N'Herb & Flower Co.', N'Organic', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Lavender extract', N'Plant in well-drained soil', 0.5, 12, 8, 8, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (28, N'Bonsai Tree', 40, N'Artistic bonsai tree for indoor use.', 89.99, 45, N'Artistic Bonsai Inc.', N'Imported', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2027-07-20T02:16:30.3200000' AS DateTime2), N'Bonsai extract', N'Water sparingly', 1, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (29, N'Herb Garden Kit', 50, N'A complete kit to grow a variety of herbs.', 49.99, 25, N'Garden Essentials', N'Organic', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Herb seeds', N'Follow the instructions included', 2, 10, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (30, N'Geranium Plant', 75, N'Vibrant geranium plant ideal for window boxes.', 12.99, 7, N'Floral World', N'Hybrid', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Geranium extract', N'Plant in full sun', 0.8, 14, 12, 12, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (31, N'Succulent Assortment', 100, N'A collection of assorted succulents in decorative pots.', 39.99, 20, N'Succulent Garden', N'Organic', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Succulent mix', N'Water sparingly', 1, 8, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (32, N'Cactus Plant', 90, N'Durable cactus suitable for indoor and outdoor use.', 14.99, 9, N'Desert Bloom', N'Fresh', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Cactus extract', N'Place in a sunny spot', 0.6, 6, 6, 6, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (33, N'Orchid', 40, N'Elegant orchids in a variety of colors.', 25.99, 15, N'Orchid World', N'Hybrid', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2026-07-20T02:16:30.3200000' AS DateTime2), N'Orchid extract', N'Keep in indirect light', 1, 18, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (34, N'Basil Plant', 70, N'Fresh basil plant for culinary use.', 9.99, 5, N'Herbal Haven', N'Organic', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-01-20T02:16:30.3200000' AS DateTime2), N'Basil extract', N'Water regularly', 0.4, 12, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (35, N'Rose Plant', 50, N'A beautiful rose plant.', 15.99, 8, N'Flora Inc.', N'Imported', CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2900000' AS DateTime2), N'Rose extract, water', N'Keep in sunlight', 0.5, 12, 6, 6, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (36, N'Sunflower Seed', 200, N'High-quality sunflower seeds.', 9.99, 4.5, N'GreenGrow Ltd.', N'Organic', CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2900000' AS DateTime2), N'Sunflower extract', N'Plant in direct sunlight', 0.3, 10, 5, 5, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (37, N'Peace Lily', 75, N'A low-maintenance indoor plant.', 24.99, 12, N'Indoor Greens', N'Original', CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), 1, CAST(N'2025-01-20T02:16:55.2900000' AS DateTime2), N'Peace lily extract', N'Water weekly', 1, 8, 8, 8, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (38, N'Aquatic Fern', 150, N'A vibrant aquatic plant for water gardens.', 14.99, 7.5, N'WaterWorld Supplies', N'Freshwater', CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2900000' AS DateTime2), N'Aquatic fern extract', N'Keep submerged', 0.4, 6, 6, 6, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (39, N'Basil Plant', 90, N'A fragrant herb for cooking.', 8.99, 5, N'Herb Haven', N'Organic', CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), 1, CAST(N'2030-07-20T02:16:55.2900000' AS DateTime2), N'Basil extract', N'Water regularly', 0.2, 7, 4, 4, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (40, N'Ficus Tree', 30, N'A decorative indoor tree.', 39.99, 20, N'Tropical Plants Inc.', N'Imported', CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2900000' AS DateTime2), N'Ficus extract', N'Water bi-weekly', 2.5, 24, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (41, N'Rose Bush', 60, N'Beautiful rose bushes for gardens.', 19.99, 10, N'Garden Luxuries', N'Hybrid', CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), CAST(N'2024-07-20T02:16:55.2900000' AS DateTime2), 1, CAST(N'2026-07-20T02:16:55.2900000' AS DateTime2), N'Rose extract', N'Plant in sunny area', 1.2, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (42, N'Bamboo Plant', 120, N'A fast-growing bamboo for decoration.', 29.99, 15, N'Exotic Plants Ltd.', N'Fresh', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2933333' AS DateTime2), N'Bamboo extract', N'Keep in bright light', 1.5, 20, 10, 10, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (43, N'Lavender Plant', 80, N'Lavender plant with aromatic flowers.', 15.99, 8, N'Herb & Flower Co.', N'Organic', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2933333' AS DateTime2), N'Lavender extract', N'Plant in well-drained soil', 0.5, 12, 8, 8, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (44, N'Bonsai Tree', 40, N'Artistic bonsai tree for indoor use.', 89.99, 45, N'Artistic Bonsai Inc.', N'Imported', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2027-07-20T02:16:55.2933333' AS DateTime2), N'Bonsai extract', N'Water sparingly', 1, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (45, N'Herb Garden Kit', 50, N'A complete kit to grow a variety of herbs.', 49.99, 25, N'Garden Essentials', N'Organic', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2933333' AS DateTime2), N'Herb seeds', N'Follow the instructions included', 2, 10, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (46, N'Geranium Plant', 75, N'Vibrant geranium plant ideal for window boxes.', 12.99, 7, N'Floral World', N'Hybrid', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2933333' AS DateTime2), N'Geranium extract', N'Plant in full sun', 0.8, 14, 12, 12, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (47, N'Succulent Assortment', 100, N'A collection of assorted succulents in decorative pots.', 39.99, 20, N'Succulent Garden', N'Organic', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2933333' AS DateTime2), N'Succulent mix', N'Water sparingly', 1, 8, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (48, N'Cactus Plant', 90, N'Durable cactus suitable for indoor and outdoor use.', 14.99, 9, N'Desert Bloom', N'Fresh', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2933333' AS DateTime2), N'Cactus extract', N'Place in a sunny spot', 0.6, 6, 6, 6, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (49, N'Orchid', 40, N'Elegant orchids in a variety of colors.', 25.99, 15, N'Orchid World', N'Hybrid', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2026-07-20T02:16:55.2933333' AS DateTime2), N'Orchid extract', N'Keep in indirect light', 1, 18, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (50, N'Basil Plant', 70, N'Fresh basil plant for culinary use.', 9.99, 5, N'Herbal Haven', N'Organic', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2025-01-20T02:16:55.2933333' AS DateTime2), N'Basil extract', N'Water regularly', 0.4, 12, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (51, N'Peace Lily', 50, N'Beautiful indoor plant with white flowers.', 22.5, 13, N'Indoor Plants Co.', N'Fresh', CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), CAST(N'2024-07-20T02:16:55.2933333' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2933333' AS DateTime2), N'Peace lily extract', N'Place in low light', 1.2, 16, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (52, N'Lemon Balm', 60, N'Aromatic herb known for its lemon scent.', 11.75, 6, N'Herbal Garden', N'Organic', CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2966667' AS DateTime2), N'Lemon balm extract', N'Water in moderate amounts', 0.5, 10, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (53, N'Lavender', 80, N'Scented lavender plant with purple flowers.', 18, 10, N'Fragrant Fields', N'Organic', CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2966667' AS DateTime2), N'Lavender oil', N'Grow in well-drained soil', 0.7, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (54, N'Golden Pothos', 65, N'Easy-to-care-for plant with attractive green leaves.', 15, 8, N'Green Oasis', N'Fresh', CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2966667' AS DateTime2), N'Pothos extract', N'Ideal for low light', 0.5, 12, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (55, N'Ficus Tree', 40, N'Robust indoor tree with lush foliage.', 35, 20, N'Home Greenery', N'Organic', CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), 1, CAST(N'2026-07-20T02:16:55.2966667' AS DateTime2), N'Ficus extract', N'Water moderately', 2, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (56, N'Chinese Evergreen', 55, N'Low-maintenance plant with striking patterns on leaves.', 17.5, 9.5, N'Exotic Plants Inc.', N'Hybrid', CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), CAST(N'2024-07-20T02:16:55.2966667' AS DateTime2), 1, CAST(N'2025-07-20T02:16:55.2966667' AS DateTime2), N'Chinese evergreen extract', N'Ideal for indoor conditions', 0.8, 14, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (57, N'Peace Lily', 50, N'Beautiful indoor plant with white flowers.', 22.5, 13, N'Indoor Plants Co.', N'Fresh', CAST(N'2024-07-20T02:22:09.8566667' AS DateTime2), CAST(N'2024-07-20T02:22:09.8566667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8566667' AS DateTime2), N'Peace lily extract', N'Place in low light', 1.2, 16, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (58, N'Lemon Balm', 60, N'Aromatic herb known for its lemon scent.', 11.75, 6, N'Herbal Garden', N'Organic', CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8666667' AS DateTime2), N'Lemon balm extract', N'Water in moderate amounts', 0.5, 10, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (59, N'Lavender', 80, N'Scented lavender plant with purple flowers.', 18, 10, N'Fragrant Fields', N'Organic', CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8666667' AS DateTime2), N'Lavender oil', N'Grow in well-drained soil', 0.7, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (60, N'Golden Pothos', 65, N'Easy-to-care-for plant with attractive green leaves.', 15, 8, N'Green Oasis', N'Fresh', CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8666667' AS DateTime2), N'Pothos extract', N'Ideal for low light', 0.5, 12, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (61, N'Ficus Tree', 40, N'Robust indoor tree with lush foliage.', 35, 20, N'Home Greenery', N'Organic', CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), 1, CAST(N'2026-07-20T02:22:09.8666667' AS DateTime2), N'Ficus extract', N'Water moderately', 2, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (62, N'Chinese Evergreen', 55, N'Low-maintenance plant with striking patterns on leaves.', 17.5, 9.5, N'Exotic Plants Inc.', N'Hybrid', CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8666667' AS DateTime2), N'Chinese evergreen extract', N'Ideal for indoor conditions', 0.8, 14, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (63, N'Geranium Plant', 75, N'Vibrant geranium plant ideal for window boxes.', 12.99, 7, N'Floral World', N'Hybrid', CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), CAST(N'2024-07-20T02:22:09.8666667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8666667' AS DateTime2), N'Geranium extract', N'Plant in full sun', 0.8, 14, 12, 12, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (64, N'Succulent Assortment', 100, N'A collection of assorted succulents in decorative pots.', 39.99, 20, N'Succulent Garden', N'Organic', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8700000' AS DateTime2), N'Succulent mix', N'Water sparingly', 1, 8, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (65, N'Cactus Plant', 90, N'Durable cactus suitable for indoor and outdoor use.', 14.99, 9, N'Desert Bloom', N'Fresh', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8700000' AS DateTime2), N'Cactus extract', N'Place in a sunny spot', 0.6, 6, 6, 6, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (66, N'Orchid', 40, N'Elegant orchids in a variety of colors.', 25.99, 15, N'Orchid World', N'Hybrid', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2026-07-20T02:22:09.8700000' AS DateTime2), N'Orchid extract', N'Keep in indirect light', 1, 18, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (67, N'Basil Plant', 70, N'Fresh basil plant for culinary use.', 9.99, 5, N'Herbal Haven', N'Organic', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2025-01-20T02:22:09.8700000' AS DateTime2), N'Basil extract', N'Water regularly', 0.4, 12, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (68, N'Rose Bush', 60, N'Beautiful rose bushes for gardens.', 19.99, 10, N'Garden Luxuries', N'Hybrid', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2026-07-20T02:22:09.8700000' AS DateTime2), N'Rose extract', N'Plant in sunny area', 1.2, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (69, N'Bamboo Plant', 120, N'A fast-growing bamboo for decoration.', 29.99, 15, N'Exotic Plants Ltd.', N'Fresh', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8700000' AS DateTime2), N'Bamboo extract', N'Keep in bright light', 1.5, 20, 10, 10, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (70, N'Lavender Plant', 80, N'Lavender plant with aromatic flowers.', 15.99, 8, N'Herb & Flower Co.', N'Organic', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8700000' AS DateTime2), N'Lavender extract', N'Plant in well-drained soil', 0.5, 12, 8, 8, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (71, N'Bonsai Tree', 40, N'Artistic bonsai tree for indoor use.', 89.99, 45, N'Artistic Bonsai Inc.', N'Imported', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2027-07-20T02:22:09.8700000' AS DateTime2), N'Bonsai extract', N'Water sparingly', 1, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (72, N'Herb Garden Kit', 50, N'A complete kit to grow a variety of herbs.', 49.99, 25, N'Garden Essentials', N'Organic', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8700000' AS DateTime2), N'Herb seeds', N'Follow the instructions included', 2, 10, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (73, N'Sunflower Seed', 200, N'High-quality sunflower seeds.', 9.99, 4.5, N'GreenGrow Ltd.', N'Organic', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8700000' AS DateTime2), N'Sunflower extract', N'Plant in direct sunlight', 0.3, 10, 5, 5, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (74, N'Peace Lily', 75, N'A low-maintenance indoor plant.', 24.99, 12, N'Indoor Greens', N'Original', CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), CAST(N'2024-07-20T02:22:09.8700000' AS DateTime2), 1, CAST(N'2025-01-20T02:22:09.8700000' AS DateTime2), N'Peace lily extract', N'Water weekly', 1, 8, 8, 8, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (75, N'Aquatic Fern', 150, N'A vibrant aquatic plant for water gardens.', 14.99, 7.5, N'WaterWorld Supplies', N'Freshwater', CAST(N'2024-07-20T02:22:09.8733333' AS DateTime2), CAST(N'2024-07-20T02:22:09.8733333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8733333' AS DateTime2), N'Aquatic fern extract', N'Keep submerged', 0.4, 6, 6, 6, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (76, N'Basil Plant', 90, N'A fragrant herb for cooking.', 8.99, 5, N'Herb Haven', N'Organic', CAST(N'2024-07-20T02:22:09.8733333' AS DateTime2), CAST(N'2024-07-20T02:22:09.8733333' AS DateTime2), 1, CAST(N'2030-07-20T02:22:09.8733333' AS DateTime2), N'Basil extract', N'Water regularly', 0.2, 7, 4, 4, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (77, N'Ficus Tree', 30, N'A decorative indoor tree.', 39.99, 20, N'Tropical Plants Inc.', N'Imported', CAST(N'2024-07-20T02:22:09.8733333' AS DateTime2), CAST(N'2024-07-20T02:22:09.8733333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8733333' AS DateTime2), N'Ficus extract', N'Water bi-weekly', 2.5, 24, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (78, N'Rose Plant', 50, N'A beautiful rose plant.', 15.99, 8, N'Flora Inc.', N'Imported', CAST(N'2024-07-20T02:22:09.8733333' AS DateTime2), CAST(N'2024-07-20T02:22:09.8733333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:09.8733333' AS DateTime2), N'Rose extract, water', N'Keep in sunlight', 0.5, 12, 6, 6, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (79, N'Peace Lily', 50, N'Beautiful indoor plant with white flowers.', 22.5, 13, N'Indoor Plants Co.', N'Fresh', CAST(N'2024-07-20T02:22:10.6033333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6033333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6033333' AS DateTime2), N'Peace lily extract', N'Place in low light', 1.2, 16, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (80, N'Lemon Balm', 60, N'Aromatic herb known for its lemon scent.', 11.75, 6, N'Herbal Garden', N'Organic', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Lemon balm extract', N'Water in moderate amounts', 0.5, 10, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (81, N'Lavender', 80, N'Scented lavender plant with purple flowers.', 18, 10, N'Fragrant Fields', N'Organic', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Lavender oil', N'Grow in well-drained soil', 0.7, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (82, N'Golden Pothos', 65, N'Easy-to-care-for plant with attractive green leaves.', 15, 8, N'Green Oasis', N'Fresh', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Pothos extract', N'Ideal for low light', 0.5, 12, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (83, N'Ficus Tree', 40, N'Robust indoor tree with lush foliage.', 35, 20, N'Home Greenery', N'Organic', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2026-07-20T02:22:10.6133333' AS DateTime2), N'Ficus extract', N'Water moderately', 2, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (84, N'Chinese Evergreen', 55, N'Low-maintenance plant with striking patterns on leaves.', 17.5, 9.5, N'Exotic Plants Inc.', N'Hybrid', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Chinese evergreen extract', N'Ideal for indoor conditions', 0.8, 14, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (85, N'Geranium Plant', 75, N'Vibrant geranium plant ideal for window boxes.', 12.99, 7, N'Floral World', N'Hybrid', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Geranium extract', N'Plant in full sun', 0.8, 14, 12, 12, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (86, N'Succulent Assortment', 100, N'A collection of assorted succulents in decorative pots.', 39.99, 20, N'Succulent Garden', N'Organic', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Succulent mix', N'Water sparingly', 1, 8, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (87, N'Cactus Plant', 90, N'Durable cactus suitable for indoor and outdoor use.', 14.99, 9, N'Desert Bloom', N'Fresh', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Cactus extract', N'Place in a sunny spot', 0.6, 6, 6, 6, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (88, N'Orchid', 40, N'Elegant orchids in a variety of colors.', 25.99, 15, N'Orchid World', N'Hybrid', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2026-07-20T02:22:10.6133333' AS DateTime2), N'Orchid extract', N'Keep in indirect light', 1, 18, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (89, N'Basil Plant', 70, N'Fresh basil plant for culinary use.', 9.99, 5, N'Herbal Haven', N'Organic', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-01-20T02:22:10.6133333' AS DateTime2), N'Basil extract', N'Water regularly', 0.4, 12, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (90, N'Rose Bush', 60, N'Beautiful rose bushes for gardens.', 19.99, 10, N'Garden Luxuries', N'Hybrid', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2026-07-20T02:22:10.6133333' AS DateTime2), N'Rose extract', N'Plant in sunny area', 1.2, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (91, N'Bamboo Plant', 120, N'A fast-growing bamboo for decoration.', 29.99, 15, N'Exotic Plants Ltd.', N'Fresh', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Bamboo extract', N'Keep in bright light', 1.5, 20, 10, 10, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (92, N'Lavender Plant', 80, N'Lavender plant with aromatic flowers.', 15.99, 8, N'Herb & Flower Co.', N'Organic', CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), CAST(N'2024-07-20T02:22:10.6133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6133333' AS DateTime2), N'Lavender extract', N'Plant in well-drained soil', 0.5, 12, 8, 8, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (93, N'Bonsai Tree', 40, N'Artistic bonsai tree for indoor use.', 89.99, 45, N'Artistic Bonsai Inc.', N'Imported', CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), 1, CAST(N'2027-07-20T02:22:10.6166667' AS DateTime2), N'Bonsai extract', N'Water sparingly', 1, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (94, N'Herb Garden Kit', 50, N'A complete kit to grow a variety of herbs.', 49.99, 25, N'Garden Essentials', N'Organic', CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6166667' AS DateTime2), N'Herb seeds', N'Follow the instructions included', 2, 10, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (95, N'Sunflower Seed', 200, N'High-quality sunflower seeds.', 9.99, 4.5, N'GreenGrow Ltd.', N'Organic', CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6166667' AS DateTime2), N'Sunflower extract', N'Plant in direct sunlight', 0.3, 10, 5, 5, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (96, N'Peace Lily', 75, N'A low-maintenance indoor plant.', 24.99, 12, N'Indoor Greens', N'Original', CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), 1, CAST(N'2025-01-20T02:22:10.6166667' AS DateTime2), N'Peace lily extract', N'Water weekly', 1, 8, 8, 8, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (97, N'Aquatic Fern', 150, N'A vibrant aquatic plant for water gardens.', 14.99, 7.5, N'WaterWorld Supplies', N'Freshwater', CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6166667' AS DateTime2), N'Aquatic fern extract', N'Keep submerged', 0.4, 6, 6, 6, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (98, N'Basil Plant', 90, N'A fragrant herb for cooking.', 8.99, 5, N'Herb Haven', N'Organic', CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), 1, CAST(N'2030-07-20T02:22:10.6166667' AS DateTime2), N'Basil extract', N'Water regularly', 0.2, 7, 4, 4, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (99, N'Ficus Tree', 30, N'A decorative indoor tree.', 39.99, 20, N'Tropical Plants Inc.', N'Imported', CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6166667' AS DateTime2), N'Ficus extract', N'Water bi-weekly', 2.5, 24, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (100, N'Rose Plant', 50, N'A beautiful rose plant.', 15.99, 8, N'Flora Inc.', N'Imported', CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), CAST(N'2024-07-20T02:22:10.6166667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:10.6166667' AS DateTime2), N'Rose extract, water', N'Keep in sunlight', 0.5, 12, 6, 6, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (101, N'Peace Lily', 50, N'Beautiful indoor plant with white flowers.', 22.5, 13, N'Indoor Plants Co.', N'Fresh', CAST(N'2024-07-20T02:22:11.3133333' AS DateTime2), CAST(N'2024-07-20T02:22:11.3133333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3133333' AS DateTime2), N'Peace lily extract', N'Place in low light', 1.2, 16, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (102, N'Lemon Balm', 60, N'Aromatic herb known for its lemon scent.', 11.75, 6, N'Herbal Garden', N'Organic', CAST(N'2024-07-20T02:22:11.3233333' AS DateTime2), CAST(N'2024-07-20T02:22:11.3233333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3233333' AS DateTime2), N'Lemon balm extract', N'Water in moderate amounts', 0.5, 10, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (103, N'Lavender', 80, N'Scented lavender plant with purple flowers.', 18, 10, N'Fragrant Fields', N'Organic', CAST(N'2024-07-20T02:22:11.3233333' AS DateTime2), CAST(N'2024-07-20T02:22:11.3233333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3233333' AS DateTime2), N'Lavender oil', N'Grow in well-drained soil', 0.7, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (104, N'Golden Pothos', 65, N'Easy-to-care-for plant with attractive green leaves.', 15, 8, N'Green Oasis', N'Fresh', CAST(N'2024-07-20T02:22:11.3233333' AS DateTime2), CAST(N'2024-07-20T02:22:11.3233333' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3233333' AS DateTime2), N'Pothos extract', N'Ideal for low light', 0.5, 12, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (105, N'Ficus Tree', 40, N'Robust indoor tree with lush foliage.', 35, 20, N'Home Greenery', N'Organic', CAST(N'2024-07-20T02:22:11.3233333' AS DateTime2), CAST(N'2024-07-20T02:22:11.3233333' AS DateTime2), 1, CAST(N'2026-07-20T02:22:11.3233333' AS DateTime2), N'Ficus extract', N'Water moderately', 2, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (106, N'Chinese Evergreen', 55, N'Low-maintenance plant with striking patterns on leaves.', 17.5, 9.5, N'Exotic Plants Inc.', N'Hybrid', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Chinese evergreen extract', N'Ideal for indoor conditions', 0.8, 14, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (107, N'Geranium Plant', 75, N'Vibrant geranium plant ideal for window boxes.', 12.99, 7, N'Floral World', N'Hybrid', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Geranium extract', N'Plant in full sun', 0.8, 14, 12, 12, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (108, N'Succulent Assortment', 100, N'A collection of assorted succulents in decorative pots.', 39.99, 20, N'Succulent Garden', N'Organic', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Succulent mix', N'Water sparingly', 1, 8, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (109, N'Cactus Plant', 90, N'Durable cactus suitable for indoor and outdoor use.', 14.99, 9, N'Desert Bloom', N'Fresh', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Cactus extract', N'Place in a sunny spot', 0.6, 6, 6, 6, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (110, N'Orchid', 40, N'Elegant orchids in a variety of colors.', 25.99, 15, N'Orchid World', N'Hybrid', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2026-07-20T02:22:11.3266667' AS DateTime2), N'Orchid extract', N'Keep in indirect light', 1, 18, 10, 10, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (111, N'Basil Plant', 70, N'Fresh basil plant for culinary use.', 9.99, 5, N'Herbal Haven', N'Organic', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-01-20T02:22:11.3266667' AS DateTime2), N'Basil extract', N'Water regularly', 0.4, 12, 8, 8, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (112, N'Rose Bush', 60, N'Beautiful rose bushes for gardens.', 19.99, 10, N'Garden Luxuries', N'Hybrid', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2026-07-20T02:22:11.3266667' AS DateTime2), N'Rose extract', N'Plant in sunny area', 1.2, 15, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (113, N'Bamboo Plant', 120, N'A fast-growing bamboo for decoration.', 29.99, 15, N'Exotic Plants Ltd.', N'Fresh', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Bamboo extract', N'Keep in bright light', 1.5, 20, 10, 10, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (114, N'Lavender Plant', 80, N'Lavender plant with aromatic flowers.', 15.99, 8, N'Herb & Flower Co.', N'Organic', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Lavender extract', N'Plant in well-drained soil', 0.5, 12, 8, 8, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (115, N'Bonsai Tree', 40, N'Artistic bonsai tree for indoor use.', 89.99, 45, N'Artistic Bonsai Inc.', N'Imported', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2027-07-20T02:22:11.3266667' AS DateTime2), N'Bonsai extract', N'Water sparingly', 1, 24, 15, 15, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (116, N'Herb Garden Kit', 50, N'A complete kit to grow a variety of herbs.', 49.99, 25, N'Garden Essentials', N'Organic', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Herb seeds', N'Follow the instructions included', 2, 10, 10, 10, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (117, N'Sunflower Seed', 200, N'High-quality sunflower seeds.', 9.99, 4.5, N'GreenGrow Ltd.', N'Organic', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Sunflower extract', N'Plant in direct sunlight', 0.3, 10, 5, 5, 4)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (118, N'Peace Lily', 75, N'A low-maintenance indoor plant.', 24.99, 12, N'Indoor Greens', N'Original', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-01-20T02:22:11.3266667' AS DateTime2), N'Peace lily extract', N'Water weekly', 1, 8, 8, 8, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (119, N'Aquatic Fern', 150, N'A vibrant aquatic plant for water gardens.', 14.99, 7.5, N'WaterWorld Supplies', N'Freshwater', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Aquatic fern extract', N'Keep submerged', 0.4, 6, 6, 6, 5)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (120, N'Basil Plant', 90, N'A fragrant herb for cooking.', 8.99, 5, N'Herb Haven', N'Organic', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2030-07-20T02:22:11.3266667' AS DateTime2), N'Basil extract', N'Water regularly', 0.2, 7, 4, 4, 1)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (121, N'Ficus Tree', 30, N'A decorative indoor tree.', 39.99, 20, N'Tropical Plants Inc.', N'Imported', CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), CAST(N'2024-07-20T02:22:11.3266667' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3266667' AS DateTime2), N'Ficus extract', N'Water bi-weekly', 2.5, 24, 12, 12, 3)
GO
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (122, N'Rose Plant', 50, N'A beautiful rose plant.', 15.99, 8, N'Flora Inc.', N'Imported', CAST(N'2024-07-20T02:22:11.3300000' AS DateTime2), CAST(N'2024-07-20T02:22:11.3300000' AS DateTime2), 1, CAST(N'2025-07-20T02:22:11.3300000' AS DateTime2), N'Rose extract, water', N'Keep in sunlight', 0.5, 12, 6, 6, 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Blogs_AccountID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_AccountID] ON [dbo].[Blogs]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CartItems_AccountApplicationId]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_CartItems_AccountApplicationId] ON [dbo].[CartItems]
(
	[AccountApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItems_CartID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_CartItems_CartID] ON [dbo].[CartItems]
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItems_ProductID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_CartItems_ProductID] ON [dbo].[CartItems]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Carts_AccountID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_AccountID] ON [dbo].[Carts]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImageBlog_BlogID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_ImageBlog_BlogID] ON [dbo].[ImageBlog]
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImageProduct_ProductID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_ImageProduct_ProductID] ON [dbo].[ImageProduct]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_AccountID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Order_AccountID] ON [dbo].[Order]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_ReportID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Order_ReportID] ON [dbo].[Order]
(
	[ReportID] ASC
)
WHERE ([ReportID] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_ShippingInforID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Order_ShippingInforID] ON [dbo].[Order]
(
	[ShippingInforID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_transactionID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Order_transactionID] ON [dbo].[Order]
(
	[transactionID] ASC
)
WHERE ([transactionID] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_OrderID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_OrderID] ON [dbo].[OrderDetail]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ProductID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ProductID] ON [dbo].[OrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryID] ON [dbo].[Product]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Rating_AccountID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Rating_AccountID] ON [dbo].[Rating]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rating_ProductID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Rating_ProductID] ON [dbo].[Rating]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Report_AccountID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Report_AccountID] ON [dbo].[Report]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_ProductID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Report_ProductID] ON [dbo].[Report]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Reviews_AccountID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_AccountID] ON [dbo].[Reviews]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_ProductID]    Script Date: 7/20/2024 2:51:37 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_ProductID] ON [dbo].[Reviews]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_AspNetUsers_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_AspNetUsers_AccountID]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItems_AspNetUsers_AccountApplicationId] FOREIGN KEY([AccountApplicationId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItems_AspNetUsers_AccountApplicationId]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItems_Carts_CartID] FOREIGN KEY([CartID])
REFERENCES [dbo].[Carts] ([CartID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItems_Carts_CartID]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItems_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItems_Product_ProductID]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AspNetUsers_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AspNetUsers_AccountID]
GO
ALTER TABLE [dbo].[ImageBlog]  WITH CHECK ADD  CONSTRAINT [FK_ImageBlog_Blogs_BlogID] FOREIGN KEY([BlogID])
REFERENCES [dbo].[Blogs] ([BlogID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageBlog] CHECK CONSTRAINT [FK_ImageBlog_Blogs_BlogID]
GO
ALTER TABLE [dbo].[ImageProduct]  WITH CHECK ADD  CONSTRAINT [FK_ImageProduct_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImageProduct] CHECK CONSTRAINT [FK_ImageProduct_Product_ProductID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AspNetUsers_AccountID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Report_ReportID] FOREIGN KEY([ReportID])
REFERENCES [dbo].[Report] ([ReportID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Report_ReportID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ShippingInfor_ShippingInforID] FOREIGN KEY([ShippingInforID])
REFERENCES [dbo].[ShippingInfor] ([ShippingInforID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ShippingInfor_ShippingInforID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Transaction_transactionID] FOREIGN KEY([transactionID])
REFERENCES [dbo].[Transaction] ([ResponseId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Transaction_transactionID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_OrderID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product_ProductID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_AspNetUsers_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_AspNetUsers_AccountID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Product_ProductID]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_AspNetUsers_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_AspNetUsers_AccountID]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Product_ProductID]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AspNetUsers_AccountID] FOREIGN KEY([AccountID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AspNetUsers_AccountID]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Product_ProductID]
GO
USE [master]
GO
ALTER DATABASE [Flowrist] SET  READ_WRITE 
GO
