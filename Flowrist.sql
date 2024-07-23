USE [master]
GO
/****** Object:  Database [Flowrist]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Blogs]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[CartItems]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Carts]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[ImageBlog]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[ImageProduct]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Rating]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Report]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Reviews]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[ShippingInfor]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Slider]    Script Date: 7/23/2024 10:40:13 AM ******/
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
/****** Object:  Table [dbo].[Transaction]    Script Date: 7/23/2024 10:40:13 AM ******/
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
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0034e1b5-6019-4657-9b96-bc350e363033', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'063ef78b-2c34-4627-94a3-d912038cf5ff', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d8e7829-f1d2-4387-a941-0445a6f8e338', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1ad72cca-4c91-4763-ac83-27ec644951d8', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'20eb0162-498a-402f-96ca-62e9ffeba872', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'282ef772-8111-446e-8ab1-4a51609ca361', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'47141f9b-0781-4277-a9a1-f9fd064e8708', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5cfd1e1d-ab2b-4fec-865f-7e272f0bf71d', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'725d44ef-912d-4736-a277-9a71eb0047ed', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'800060d1-5265-441f-a2b2-c96c8c1190fe', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'97b53f89-ca94-45af-937d-902cfbb3a449', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a1f56ac8-a7c9-410d-9a53-4efce50cf89e', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ce20ed79-03e8-43c0-980b-0776aa64d781', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'da4c8d13-47ec-41d5-a2ab-6bcef2195bdc', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e058a9b8-defe-4ad9-9b00-a6d420c63690', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2b8d5ce-7a00-4a1d-a000-2886e4e6e623', N'1c101f53-6913-4cc6-9e7b-994103e7a7c4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'595272e1-7d3d-4663-b200-a93b2fb72727', N'eea789bf-7eea-4232-93e8-4135072aa150')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0034e1b5-6019-4657-9b96-bc350e363033', N'Mai Thị Thanh Thảo', N'48 Trần Quốc Tuấn, P. 4, TP. Bến Tre', N'0988872617', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'thanhthaomai2345', N'THANHTHAOMAI2345', N'thanhthaomai2345@gmail.com', N'THANHTHAOMAI2345@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEwpVRbDiS1apnPRboIndyUVE1gqHHqH5pLAl0D8pY9icybY/cUVtCPzcwQNGMELRg==', N'7WXJRHTGY4YUTJ6N4UCWN5RMBA4OBSMF', N'6bbb86e5-0286-4e1c-bb52-efaac089fe0b', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'063ef78b-2c34-4627-94a3-d912038cf5ff', N'Nguyễn Hoàng Mỹ', N'148 Lương Ngọc Quyến, phường 5, quận Gò Vấp', N'0944435719', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'mumupi25112003', N'MUMUPI25112003', N'serein248@gmail.com', N'SEREIN248@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECPkoRLtKOhB2nhvDFq8s63nRTJRMfz9Q7bs+6JYiueHOX8PmeYcLeAzrFdw6Q6CbQ==', N'QWX6CMCLVIWN455F2DKR6EXWGEMYXRWQ', N'09fc3d9c-8869-451f-8d32-d6aef8d2066a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0d8e7829-f1d2-4387-a941-0445a6f8e338', N'Vương Cẩm Linh', N'142 Lê Văn Việt, Phường Hiệp Phú, TP. Thủ Đức, Tp. HCM', N'0945510234', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'camlinh98732', N'CAMLINH98732', N'camlinh978@gmail.com', N'CAMLINH978@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECHM33t7nggNA3inNHZCu3lmC4rbfBHiO54SVc5TNBZuA47ZuEBhHFgUPLFl1C537w==', N'6MCMCGCEFUTX3T3VEOK6G63F6NP4ZOOH', N'0c77a583-6340-4515-b5b6-b908fd1f40d2', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1279c6a0-e3ec-468d-954f-1afcf90eecf6', N'Thanh Vy', N'48 Lương Ngọc Quyến, phường 5, quận Gò Vấp', N'0347771189', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'thanhvy12345', N'THANHVY12345', N'nguyenhoangmyphuoc2511@gmail.com', N'NGUYENHOANGMYPHUOC2511@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJoPpvv+VPdP8UBrShDt1yAjrBp0mageBlKYBNS2kpTvWgZEJHNyKSQz13dxen27Dg==', N'BOJJ3COPG6HJWRIHBW4HTAE2MOX6AUTV', N'fff1d185-c119-4e18-8400-021f4a3524e5', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1ad72cca-4c91-4763-ac83-27ec644951d8', N'Vũ Thị Như Lan', N'514 Lê Trọng Tấn, Phường Tây Thạnh, Quận Tân Phú, TP.HCM', N'0347893345', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'nhulan12345', N'NHULAN12345', N'nhulan12345@gmail.com', N'NHULAN12345@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEL6SyvDUVou3VHbWWP0yahVpDbhjqigZ51hZ2e2lAOqZ5ncdm/Lo2wZ8PeIFvNbMg==', N'FWHSBVIXVCBWXH74E5B4KK6LLYWZFS6D', N'4058231e-9917-4998-9f86-04b7316c393a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'20eb0162-498a-402f-96ca-62e9ffeba872', N'Nguyễn Trương Như Ý', N'20 Trần Quốc Tuấn, phường 3, quận Gò Vấp', N'0935778191', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'nhuynguyen1234', N'NHUYNGUYEN1234', N'nguyennhuy@gmail.com', N'NGUYENNHUY@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC6mDNHk0Q6IdooN5BrIGc45X+yFcoxldJuTadYXJEhTS8IF5+rh+dhgKUUCHA3wsA==', N'NHVMYUNYZZPPGCVLYZS4LFFWLTFI6TGJ', N'a3b59404-0f1b-49f8-992e-81642d83e84c', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'282ef772-8111-446e-8ab1-4a51609ca361', N'Trương Mỹ Hạnh', N'44 Nguyễn Đình Chiểu, Khu Phố 5, Phường Phú Cường, TP. Thủ Dầu 1, Tỉnh Bình Dương', N'0542684478', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'babykachima123', N'BABYKACHIMA123', N'serein248@gmail.com', N'SEREIN248@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELxBi/tU0V9n+R5ZakIEPZ1jYvTyVm0AXpCzkbHmV+LaE3kjiTbezbwa5xijnEG1Ww==', N'2IIRGI4NVYO5A76SCUHRMMDZTZLOJGIE', N'44bddf62-e34a-40b6-b06b-f9e66049b90e', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'47141f9b-0781-4277-a9a1-f9fd064e8708', N'Hoàng Thị Linh', N'1 Hoàng Hoa Thám, phường 13, quận Tân Bình, TP. HCM', N'0977745689', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'linhhoang1234', N'LINHHOANG1234', N'linhhoang1234@gmail.com', N'LINHHOANG1234@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEM4/KDV8hEjlpgUzO+Gga0Wu33omNAdrq/j3fH68hrqaCEWnxLD5QrU5NDWb6SEaNg==', N'J2KD2MBOAD53SNVHRW5OKJGACROS5JSM', N'ecb43f02-a6e7-4482-b0aa-69e23f1ff7ce', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'595272e1-7d3d-4663-b200-a93b2fb72727', N'Thanh Vy', N'46 Lương Ngọc Quyến, phường 5, quận Gò Vấp', N'0347771189', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'tuilaadmin12345', N'TUILAADMIN12345', N'admin123@gmail.com', N'ADMIN123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDzmSizO2wMnznJRnwArqMCtjh4V32ohXyyigddDs+kZrKdgEsS3NrdS5yvlBtcK9A==', N'KDVOYK6SIG3NLL3ABPYVZOARHQ2GZ53U', N'164ec160-d8d8-45a6-9337-a89a02e74148', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5cfd1e1d-ab2b-4fec-865f-7e272f0bf71d', N'Nguyễn Thị Trà My', N'296 Hoà Bình, Phường Hiệp Tân, Quận Tân Phú, TP.HCM', N'0341816655', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'nguyenthitramy123', N'NGUYENTHITRAMY123', N'nguyenthitramy123@gmail.com', N'NGUYENTHITRAMY123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHLPt66i6mpCYYWq1KoH+9FipmkfbocuDwG3IwMWBJzCcSehkC1geHok/ja4o5qh8A==', N'LVIHPK2L4EJC6CWMDVUAF2SJUDGHYVRH', N'b4a8eb0f-fa01-4d11-9960-c8e21f8a5734', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'685d637b-7bca-4215-83c4-ae28b2dcc61b', N'My Phuoc', N'46 luong ngoc quyen', N'0347771189', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'myphuoc', N'MYPHUOC', N'nguyenhoangmyphuoc@gmail.com', N'NGUYENHOANGMYPHUOC@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFjO6XyyCaAGwX8GO4dhBtal4AiRBnwyRhXlD4m9MUZ/98Y+rjTLweo1p8ZcN6AJQg==', N'KPHZKAQTBTS4DGNDAV7E4C5SJRJBPF5E', N'25a3d6fe-6a0c-491c-801d-69210d7c1575', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'725d44ef-912d-4736-a277-9a71eb0047ed', N'Nguyễn Kim Ngân', N'20 Cộng Hòa, P.12, Q.Tân Bình, TP.HCM', N'0921103356', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'kimngan9302', N'KIMNGAN9302', N'kimngan9302@gmail.com', N'KIMNGAN9302@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAvabTd2WqnfBbuolvjCs+/hyXmn8QcNVXUCdnaaKQ99sNEXiOcIx2dQ1GYAclI0+g==', N'IRXWNOZ57TFX2PBUYIPK4EOTFZUT5IBY', N'09a865f9-96cd-4991-8584-2ee78c54dc8f', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'800060d1-5265-441f-a2b2-c96c8c1190fe', N'Trương Bảo Trân', N'258 Nguyễn Gia Thiều, P. Tiền An, TP. Bắc Ninh', N'0965729191', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'baotran12345', N'BAOTRAN12345', N'baotran123@gmail.com', N'BAOTRAN123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENEFYMrD/kGN88EwCKbQlkQlDi0ZxFaP1VzeSxaX42ywJiOKTtox0VU6L3KgoolX2g==', N'A6OL5KUFUCSETDD4P57P6LFFGSVJ26NB', N'e02bc0e2-cbd3-45bc-abd3-e2ac31b7da0a', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'97b53f89-ca94-45af-937d-902cfbb3a449', N'Trần Tuyết Nhung', N'	1A Nguyễn Thiếp, Phường Trần Phú, TP.Quy Nhơn, Tỉnh Bình Định', N'0375891145', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'trannhung12345', N'TRANNHUNG12345', N'trantuyetnhung@gmail.com', N'TRANTUYETNHUNG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIuXckahI8NR3UZ7smu2R8oJjTF2+/uC//CkVRmgQvVHZ2Fj9fXW2PqPV0Not0Fiqw==', N'JNOIAMUVPSAAV3LLEWJMMLJPPUCYKYIR', N'62e815ec-d7b6-421e-8bf9-334e121112c4', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a1f56ac8-a7c9-410d-9a53-4efce50cf89e', N'Nguyen Van A', N'Ha Noi', N'1234567890', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Donnieee', N'DONNIEEE', N'Donniee@gmail.com', N'DONNIEE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIT5jkbZhS/NC6SGCwtPVXU/utVEpjJw8HVMp6TyMGpgd4duqITuOEZ3YAVnWSDGZQ==', N'CBE7GYSVTLTMWCBMGVD347T62PIWSN6K', N'42b42738-5d6d-4c24-acf8-77fc89120fca', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ce20ed79-03e8-43c0-980b-0776aa64d781', N'Dương Thúy Vy', N'166 Nguyễn Xí, Phường 26, Quận Bình Thạnh, Tp.HCM', N'0348881189', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'thuyvy123456', N'THUYVY123456', N'thuyvy123456@gmail.com', N'THUYVY123456@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOBaelomngRHj9V1sfnc3ax5avATSMCtm0rEQQuqBTel/jw4ka3Y0lRH+KpQlm+ANw==', N'RYHXQ7MM2T2ZOQKT26XPIJ4PVLHCI4XM', N'7a28ebaa-0d64-4e19-88cf-b55c65ee4172', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd13f435d-d030-47f8-a41a-d0a4b13358af', N'beolaaDo', N'quang ngai', N'0949984425', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'ken123OPhj', N'KEN123OPHJ', N'kenKop12Loo@example.com', N'KENKOP12LOO@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAELjW4/qZXiFaQh6XvKKFy9Yg55XVka5PngiEeBTNUlVzXso722qiIveYVvlDGFqSGA==', N'QVBCGTPZJAYLQEHJI3V7R44VHNQUW7FH', N'6eadc394-1950-4206-a5a4-81f8991b2e3d', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'da4c8d13-47ec-41d5-a2ab-6bcef2195bdc', N'Vũ Hoàng Đức Vinh', N'354 Võ Văn Ngân, khu phố 3, phường Bình Thọ, Thủ Đức, TP. HCM', N'0976689000', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'ducvinh3092', N'DUCVINH3092', N'ducvinh3092@gmail.com', N'DUCVINH3092@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJxUjesQ2JdiPAteIfZ//Zwp33PGnbB18SVE3DF3cDR0B8Cyrhgz/3jULekTAYxLZQ==', N'72R3SDH4X4FX7SC77O7MWPKS6UUYEOV3', N'485b4567-ccb1-4909-ab1c-7814d7659a00', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'da93770a-4981-4edb-9759-23990a4790d5', N'ken123Loo', N'da nang', N'045323948393', N'', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'ken123Loo', N'KEN123LOO', N'ken123Loo@example.com', N'KEN123LOO@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEKHDHtN8prIdwItZjes5pyq6TcCeoRjuEEuLQq0xXw/C/LjymPUQud6NDMnUjqTvAg==', N'RV4VG6P7UJBW4XKQL2W6WU4WP4BMKGVM', N'ba6d57d9-2a6a-4f07-a25e-73953e071fd8', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e058a9b8-defe-4ad9-9b00-a6d420c63690', N'Nguyễn Hoàng Vĩ Kiên', N'25 Nguyễn Văn Nghi, phường 5, quận Gò Vấp', N'0944454759', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'vikien12345', N'VIKIEN12345', N'nguyenhoangvikien@gmail.com', N'NGUYENHOANGVIKIEN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEGeRUDLToBOF9hGvt1HH10cn8HGN1LeB183awxtqXvRV9zgLZNGlZyqJ9fN/1CXVNQ==', N'UY6KKJW32ZEOK332OGMENRFCMK3YLWFR', N'76672058-de9b-478e-9038-e8c116f9276f', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Phone], [Image], [DateOfBirth], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e2b8d5ce-7a00-4a1d-a000-2886e4e6e623', N'Trịnh Bảo Ánh', N'95 Phan Xích Long, phường 2, quận Phú Nhuận, TP.HCM', N'0977790789', NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'baoanhsiudepgai', N'BAOANHSIUDEPGAI', N'baoanhsiudepgai@gmail.com', N'BAOANHSIUDEPGAI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENtWgUIN+P+xbvUuzvA/5TRO6QIgnEbxKAMxepq2c5fBzeiA5sKtlC/p7xHnArIIfw==', N'U32TL7FX4YUVTXNQ4LR4UFJWXVD4W7II', N'e5eeb653-4aaa-4301-a7f1-12a2052be82f', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 
GO
INSERT [dbo].[Carts] ([CartID], [AccountID]) VALUES (1, N'a1f56ac8-a7c9-410d-9a53-4efce50cf89e')
GO
SET IDENTITY_INSERT [dbo].[Carts] OFF
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
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1, CAST(N'2024-05-09T16:11:09.7840695' AS DateTime2), 4, 814000, NULL, N'1279c6a0-e3ec-468d-954f-1afcf90eecf6', NULL, 1, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (2, CAST(N'2024-05-09T16:21:34.8397210' AS DateTime2), 4, 516000, NULL, N'e058a9b8-defe-4ad9-9b00-a6d420c63690', NULL, 2, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (3, CAST(N'2024-05-09T16:24:21.0312956' AS DateTime2), 4, 140000, NULL, N'e058a9b8-defe-4ad9-9b00-a6d420c63690', NULL, 3, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (5, CAST(N'2024-05-08T18:28:37.0788659' AS DateTime2), 4, 630000, NULL, N'685d637b-7bca-4215-83c4-ae28b2dcc61b', N'14500137', 5, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (6, CAST(N'2024-05-08T20:22:17.2641479' AS DateTime2), 4, 853000, NULL, N'685d637b-7bca-4215-83c4-ae28b2dcc61b', NULL, 6, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (7, CAST(N'2024-06-08T20:28:47.9098455' AS DateTime2), 4, 1894000, NULL, N'd13f435d-d030-47f8-a41a-d0a4b13358af', N'14500275', 7, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (8, CAST(N'2024-06-08T20:30:31.7388608' AS DateTime2), 4, 1440000, NULL, N'da93770a-4981-4edb-9759-23990a4790d5', N'14500279', 8, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (9, CAST(N'2024-07-09T17:01:25.6527354' AS DateTime2), 3, 1108000, NULL, N'282ef772-8111-446e-8ab1-4a51609ca361', N'14502493', 9, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1002, CAST(N'2024-07-11T12:56:16.0357055' AS DateTime2), 2, 625000, NULL, N'282ef772-8111-446e-8ab1-4a51609ca361', N'14506495', 1002, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1003, CAST(N'2024-07-11T13:07:26.3629483' AS DateTime2), 2, 199500, NULL, N'20eb0162-498a-402f-96ca-62e9ffeba872', N'14506505', 1003, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1004, CAST(N'2024-06-11T18:47:46.6677601' AS DateTime2), 5, 620000, NULL, N'282ef772-8111-446e-8ab1-4a51609ca361', NULL, 1004, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1005, CAST(N'2024-06-11T18:53:33.2613322' AS DateTime2), 4, 325000, NULL, N'063ef78b-2c34-4627-94a3-d912038cf5ff', NULL, 1005, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1006, CAST(N'2024-06-11T18:58:26.0569884' AS DateTime2), 4, 124000, NULL, N'1279c6a0-e3ec-468d-954f-1afcf90eecf6', NULL, 1006, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1007, CAST(N'2024-06-11T19:02:07.9359595' AS DateTime2), 5, 660000, NULL, N'd13f435d-d030-47f8-a41a-d0a4b13358af', NULL, 1007, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1008, CAST(N'2024-06-11T19:14:57.6528226' AS DateTime2), 5, 850000, NULL, N'800060d1-5265-441f-a2b2-c96c8c1190fe', NULL, 1008, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1009, CAST(N'2024-06-11T19:16:23.4574980' AS DateTime2), 4, 1210000, NULL, N'800060d1-5265-441f-a2b2-c96c8c1190fe', NULL, 1009, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1010, CAST(N'2024-07-11T19:36:57.6973439' AS DateTime2), 5, 1044000, NULL, N'97b53f89-ca94-45af-937d-902cfbb3a449', NULL, 1010, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1011, CAST(N'2024-07-11T19:37:54.8978637' AS DateTime2), 4, 569000, NULL, N'97b53f89-ca94-45af-937d-902cfbb3a449', NULL, 1011, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1012, CAST(N'2024-06-11T19:41:42.5855498' AS DateTime2), 4, 365000, NULL, N'0d8e7829-f1d2-4387-a941-0445a6f8e338', NULL, 1012, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1013, CAST(N'2024-06-08T19:45:16.7499595' AS DateTime2), 4, 408000, NULL, N'da4c8d13-47ec-41d5-a2ab-6bcef2195bdc', NULL, 1013, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1014, CAST(N'2024-07-03T20:01:20.9777834' AS DateTime2), 5, 248000, NULL, N'47141f9b-0781-4277-a9a1-f9fd064e8708', NULL, 1014, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1015, CAST(N'2024-07-06T20:09:06.2523640' AS DateTime2), 4, 304500, NULL, N'47141f9b-0781-4277-a9a1-f9fd064e8708', N'14507453', 1015, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1016, CAST(N'2024-07-11T20:15:50.1129915' AS DateTime2), 1, 156000, NULL, N'5cfd1e1d-ab2b-4fec-865f-7e272f0bf71d', N'14507461', 1016, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1017, CAST(N'2024-07-04T20:24:22.6898432' AS DateTime2), 5, 1156000, NULL, N'0034e1b5-6019-4657-9b96-bc350e363033', NULL, 1017, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1018, CAST(N'2024-07-05T20:26:38.6801251' AS DateTime2), 4, 318000, NULL, N'0034e1b5-6019-4657-9b96-bc350e363033', N'14507475', 1018, 1)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1019, CAST(N'2024-07-01T20:36:36.0496753' AS DateTime2), 5, 610000, NULL, N'1ad72cca-4c91-4763-ac83-27ec644951d8', NULL, 1019, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1020, CAST(N'2024-07-01T20:37:10.8799699' AS DateTime2), 4, 829000, NULL, N'1ad72cca-4c91-4763-ac83-27ec644951d8', NULL, 1020, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1021, CAST(N'2024-07-11T20:40:17.2864461' AS DateTime2), 1, 249000, NULL, N'725d44ef-912d-4736-a277-9a71eb0047ed', NULL, 1021, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1022, CAST(N'2024-07-11T20:43:03.1453750' AS DateTime2), 1, 248000, NULL, N'e2b8d5ce-7a00-4a1d-a000-2886e4e6e623', NULL, 1022, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1023, CAST(N'2024-07-11T20:45:49.2524351' AS DateTime2), 1, 1810000, NULL, N'ce20ed79-03e8-43c0-980b-0776aa64d781', NULL, 1023, 0)
GO
INSERT [dbo].[Order] ([OrderID], [OrderDate], [Status], [Total], [ReportID], [AccountID], [transactionID], [ShippingInforID], [PaymentMethod]) VALUES (1024, CAST(N'2024-07-23T10:30:30.8077731' AS DateTime2), 1, 50007.5, NULL, N'a1f56ac8-a7c9-410d-9a53-4efce50cf89e', N'14527029', 1024, 1)
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1, 1, 590000, 0, 590000, 1, 38)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (2, 1, 85000, 0, 85000, 1, 69)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (3, 1, 109000, 0, 109000, 1, 70)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (4, 3, 109000, 0, 327000, 2, 70)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (5, 1, 49000, 0, 49000, 2, 68)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (6, 1, 110000, 0, 110000, 2, 60)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (7, 1, 110000, 0, 110000, 3, 60)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (8, 1, 580000, 0, 580000, 5, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (9, 1, 219000, 0, 219000, 6, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (10, 1, 505000, 0, 505000, 6, 50)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (11, 1, 79000, 0, 79000, 6, 65)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (12, 1, 575000, 0, 575000, 7, 20)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (13, 1, 539000, 0, 539000, 7, 5)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (14, 1, 730000, 0, 730000, 7, 17)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (15, 1, 615000, 0, 615000, 8, 24)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (16, 1, 270000, 0, 270000, 8, 34)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (17, 1, 505000, 0, 505000, 8, 50)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (18, 2, 539000, 0, 1078000, 9, 3)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1002, 1, 575000, 0, 575000, 1002, 29)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1003, 3, 56500, 0, 169500, 1003, 66)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1004, 1, 570000, 0, 570000, 1004, 33)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1005, 1, 295000, 0, 295000, 1005, 25)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1006, 1, 45000, 0, 45000, 1006, 67)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1007, 1, 49000, 0, 49000, 1006, 68)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1008, 2, 305000, 0, 610000, 1007, 23)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1009, 2, 110000, 0, 220000, 1008, 60)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1010, 1, 580000, 0, 580000, 1008, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1011, 2, 580000, 0, 1160000, 1009, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1012, 1, 539000, 0, 539000, 1010, 3)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1013, 1, 455000, 0, 455000, 1010, 6)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1014, 1, 519000, 0, 519000, 1011, 9)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1015, 1, 335000, 0, 335000, 1012, 18)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1016, 2, 79000, 0, 158000, 1013, 65)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1017, 2, 110000, 0, 220000, 1013, 60)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1018, 2, 109000, 0, 218000, 1014, 70)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1019, 2, 109000, 0, 218000, 1015, 70)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1020, 1, 56500, 0, 56500, 1015, 66)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1021, 2, 63000, 0, 126000, 1016, 56)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1022, 2, 505000, 0, 1010000, 1017, 50)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1023, 1, 96000, 0, 96000, 1017, 51)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1024, 3, 96000, 0, 288000, 1018, 51)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1025, 1, 580000, 0, 580000, 1019, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1026, 1, 580000, 0, 580000, 1020, 1)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1027, 1, 219000, 0, 219000, 1020, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1028, 1, 219000, 0, 219000, 1021, 2)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1029, 2, 109000, 0, 218000, 1022, 70)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1030, 2, 890000, 0, 1780000, 1023, 44)
GO
INSERT [dbo].[OrderDetail] ([OrderDetailID], [Quantity], [unitPrice], [promotionPrice], [TotalAmount], [OrderID], [ProductID]) VALUES (1031, 1, 7.5, 0, 7.5, 1024, 22)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
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
INSERT [dbo].[Product] ([ProductID], [Name], [InventoryQuantity], [Description], [UnitPrice], [PurchasePrice], [Supplier], [Original], [CreateAt], [UpdateAt], [Status], [ExpiredDate], [Ingredient], [Instruction], [Weight], [Height], [Width], [Length], [CategoryID]) VALUES (22, N'Aquatic Fern', 149, N'A vibrant aquatic plant for water gardens.', 14.99, 7.5, N'WaterWorld Supplies', N'Freshwater', CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), CAST(N'2024-07-20T02:16:30.3200000' AS DateTime2), 1, CAST(N'2025-07-20T02:16:30.3200000' AS DateTime2), N'Aquatic fern extract', N'Keep submerged', 0.4, 6, 6, 6, 5)
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
SET IDENTITY_INSERT [dbo].[Rating] ON 
GO
INSERT [dbo].[Rating] ([RatingID], [Rate], [CreatedAt], [UpdatedAt], [ProductID], [AccountID]) VALUES (1, 5, CAST(N'2024-07-11T20:49:23.7513305' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 38, N'1279c6a0-e3ec-468d-954f-1afcf90eecf6')
GO
INSERT [dbo].[Rating] ([RatingID], [Rate], [CreatedAt], [UpdatedAt], [ProductID], [AccountID]) VALUES (2, 5, CAST(N'2024-07-11T20:49:47.4602517' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 69, N'1279c6a0-e3ec-468d-954f-1afcf90eecf6')
GO
INSERT [dbo].[Rating] ([RatingID], [Rate], [CreatedAt], [UpdatedAt], [ProductID], [AccountID]) VALUES (3, 5, CAST(N'2024-07-11T20:50:07.5449086' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 70, N'1279c6a0-e3ec-468d-954f-1afcf90eecf6')
GO
INSERT [dbo].[Rating] ([RatingID], [Rate], [CreatedAt], [UpdatedAt], [ProductID], [AccountID]) VALUES (4, 5, CAST(N'2024-07-11T20:50:49.1743439' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 70, N'e058a9b8-defe-4ad9-9b00-a6d420c63690')
GO
INSERT [dbo].[Rating] ([RatingID], [Rate], [CreatedAt], [UpdatedAt], [ProductID], [AccountID]) VALUES (5, 4, CAST(N'2024-07-11T20:52:06.9377755' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 70, N'47141f9b-0781-4277-a9a1-f9fd064e8708')
GO
INSERT [dbo].[Rating] ([RatingID], [Rate], [CreatedAt], [UpdatedAt], [ProductID], [AccountID]) VALUES (6, 4, CAST(N'2024-07-11T20:52:59.9365130' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'1ad72cca-4c91-4763-ac83-27ec644951d8')
GO
INSERT [dbo].[Rating] ([RatingID], [Rate], [CreatedAt], [UpdatedAt], [ProductID], [AccountID]) VALUES (7, 3, CAST(N'2024-07-11T20:53:52.2342670' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'800060d1-5265-441f-a2b2-c96c8c1190fe')
GO
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[ShippingInfor] ON 
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1, N'48 Lương Ngọc Quyến, phường 5, quận Gò Vấp', N'Hồ Chí Minh', N'phường 5', N'Gò Vấp', N'Mỹ Phước', N'0347771189', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (2, N'25 Nguyễn Văn Nghi, phường 5, quận Gò Vấp', N'Hồ Chí Minh', N'phường 5', N'Gò Vấp', N'Vĩ Kiên', N'0944454759', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (3, N'25 Nguyễn Văn Nghi, phường 5, quận Gò Vấp', N'Ho Chi Minh', N'phường 5', N'Gò Vấp', N'Thùy Trang', N'0379992301', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (5, N'230 Phan Trung, P. Tân Tiến, TP. Biên Hòa, Đồng Nai', N'Đồng Nai', N'Tân Tiến', N'Biên Hòa', N'Hoàng Dương', N'0933410759', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (6, N'ĐT747, Ấp 3, Tân Uyên, Bình Dương', N'Bình Dương', N'Bắc Tân Uyên', N'Bắc Tân Uyên', N'Toàn', N'0370982234', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (7, N'13 ĐT747, Bình Mỹ, Tân Uyên, Bình Dương', N'Bình Dương', N'Bình Mỹ', N'Tân Uyên', N'Hào', N'0944588119', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (8, N'117 Hùng Vương, P. 5, TP. Đông Hà, Tỉnh Quảng Trị', N'Quảng Trị', N'5', N'Đông Hà', N'Giang', N'0335460088', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (9, N'44 Nguyễn Đình Chiểu, Khu Phố 5, Phường Phú Cường, TP. Thủ Dầu 1, Tỉnh Bình Dương', N'Bình Dương', N'Phú Cường', N'Thủ Dầu 1', N'Thùy Trang', N'0379992301', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1002, N'44 Nguyễn Đình Chiểu, Khu Phố 5, Phường Phú Cường, TP. Thủ Dầu 1, Tỉnh Bình Dương', N'Bình Dương', N'Phú Cường', N'Thủ Dầu 1', N'Thanh Huyền', N'0379992301', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1003, N'20 Trần Quốc Tuấn, phường 3, quận Gò Vấp', N'Hồ Chí Minh', N'Phường 5', N'Quận Gò Vấp', N'Như Ý', N'0944454759', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1004, N'44 Nguyễn Đình Chiểu, Khu Phố 5, Phường Phú Cường, TP. Thủ Dầu 1, Tỉnh Bình Dương', N'Bình Dương', N'Phú Cường', N'Thủ Dầu 1', N'Mỹ Hạnh', N'0542684478', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1005, N'148 Lương Ngọc Quyến, phường 5, quận Gò Vấp', N'Hồ Chí Minh', N'phường 5', N'Gò Vấp', N'Hoàng Dung', N'0977732189', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1006, N'48 Lương Ngọc Quyến, phường 5, quận Gò Vấp', N'Hồ Chí Minh', N'phường 5', N'Lương Ngọc Quyến', N'Thanh Hà', N'0347771189', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1007, N'13 ĐT747, Bình Mỹ, Tân Uyên, Bình Dương', N'Bình Dương', N'Bình Mỹ', N'Tân Uyên', N'Kenji', N'0944619333', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1008, N'258 Nguyễn Gia Thiều, P. Tiền An, TP. Bắc Ninh', N'Bắc Ninh', N'Tiền An', N'Bắc Ninh', N'Bảo ', N'0965729191', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1009, N'258 Nguyễn Gia Thiều, P. Tiền An, TP. Bắc Ninh', N'Bắc Ninh', N'Tiền An', N'Bắc Ninh', N'Bảo ', N'0965729191', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1010, N'1A Nguyễn Thiếp, Phường Trần Phú, TP.Quy Nhơn, Tỉnh Bình Định', N'Bình Định', N'Trần Phú', N'Quy Nhơn', N'Hồng Nhung', N'0375891145', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1011, N'1A Nguyễn Thiếp, Phường Trần Phú, TP.Quy Nhơn, Tỉnh Bình Định', N'Bình Định', N'Trần Phú', N'Quy Nhơn', N'Hồng Nhung', N'0375891145', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1012, N'142 Lê Văn Việt, Phường Hiệp Phú, TP. Thủ Đức, Tp. HCM', N'Hồ Chí Minh', N'Hiệp Phú', N'Thủ Đức', N'Cẩm Linh', N'0945510234', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1013, N'354 Võ Văn Ngân, khu phố 3, phường Bình Thọ, Thủ Đức, TP. HCM', N'Hồ Chí Minh', N'Bình Thọ', N'Thủ Đức', N'Đức Vinh', N'0976689000', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1014, N'1 Hoàng Hoa Thám, phường 13, quận Tân Bình, TP. HCM', N'Hồ Chí Minh', N'Phường 13', N'Tân Bình', N'', N'0977745689', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1015, N'1 Hoàng Hoa Thám, phường 13, quận Tân Bình, TP. HCM', N'Hồ Chí Minh', N'Phường 13', N'Tân Bình', N'Hoàng ', N'0977745689', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1016, N'296 Hoà Bình, Phường Hiệp Tân, Quận Tân Phú, TP.HCM', N'Hồ Chí Minh', N'Phường Hiệp Tân', N'Tân Phú', N'Hoàng', N'0341816655', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1017, N'48 Trần Quốc Tuấn, P. 4, TP. Bến Tre', N'Bến Tre', N'phường 4', N'Bến Tre', N'Thảo', N'0988872617', 50000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1018, N'296 Hoà Bình, Phường Hiệp Tân, Quận Tân Phú, TP.HCM', N'Hồ Chí Minh', N'Phường Hiệp Tân', N'Tân Phú', N'Hoàng', N'0341816655', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1019, N'514 Lê Trọng Tấn, Phường Tây Thạnh, Quận Tân Phú, TP.HCM', N'Hồ Chí Minh', N'phường Tây Thạnh', N'Tân Phú', N'', N'0347893345', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1020, N'514 Lê Trọng Tấn, Phường Tây Thạnh, Quận Tân Phú, TP.HCM', N'Hồ Chí Minh', N'phường Tây Thạnh', N'Tân Phú', N'', N'0347893345', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1021, N'20 Cộng Hòa, P.12, Q.Tân Bình, TP.HCM', N'Hồ Chí Minh', N'phường 12', N'Tân Bình', N'Ngân', N'0921103356', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1022, N'95 Phan Xích Long, phường 2, quận Phú Nhuận, TP.HCM', N'Hồ Chí Minh', N'phường 2', N'Phú Nhuận', N'Ánh', N'0977790789', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1023, N'166 Nguyễn Xí, Phường 26, Quận Bình Thạnh, Tp.HCM', N'Hồ Chí Minh', N'phường 26', N'Bình Thạnh', N'Ánh', N'0348881189', 30000)
GO
INSERT [dbo].[ShippingInfor] ([ShippingInforID], [DetailAddress], [Province], [Ward], [District], [ReceiverName], [Phone], [ShippingCost]) VALUES (1024, N'Ha Noi', N'Hà Nội', N'Phúc Xá', N'Ba Đình', N'Nguyen Van A', N'1234567890', 50000)
GO
SET IDENTITY_INSERT [dbo].[ShippingInfor] OFF
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14500137', N'MEL0TKZB', N'1-638560601173007352', 63000000, N'1', N'00', N'00', N'VNP14500137', CAST(N'2024-07-08T18:28:58.0000000' AS DateTime2), N'NCB', N'14500137', N'ATM', N'00', N'06a3f202b924fa40eb579de8227e5194d3fe55a5dd491ecde0c5184805bb281121020ecb9d5572d7af4b668fb9c0f773c24044b64b6e742c269c99cb6134dcc3')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14500275', N'MEL0TKZB', N'3-638560673279706602', 189400000, N'3', N'00', N'00', N'VNP14500275', CAST(N'2024-07-08T20:29:11.0000000' AS DateTime2), N'NCB', N'14500275', N'ATM', N'00', N'a43f0adfd3909e25dc6e78654135d01de506e877fe4e4867cc2135e22483228c0041597898d958eabb0b9f6630d45d9d4a5e3e70002a0a9944b6a274e8e33bfc')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14500279', N'MEL0TKZB', N'4-638560674317978794', 144000000, N'4', N'00', N'00', N'VNP14500279', CAST(N'2024-07-08T20:30:58.0000000' AS DateTime2), N'NCB', N'14500279', N'ATM', N'00', N'620f90316d4a49c7c90269886061e099b7f435d5b9046c4cc71bcbe07c904f8571acbbbb2326923d75708dbc2925b0d2197daeb2ed84f5efe387926c7a45ad18')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14502493', N'MEL0TKZB', N'9-638561412857155937', 110800000, N'9', N'00', N'00', N'VNP14502493', CAST(N'2024-07-09T17:03:42.0000000' AS DateTime2), N'NCB', N'14502493', N'ATM', N'00', N'083eaf812e2297772cb9cb0459f7718461ebaf329bcfbe70933eda983a8202c2bed1c43f68bcc5f1d65a98dc88c049c8ac0d6080bf03a81c2e5909d6ded3d230')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14506495', N'MEL0TKZB', N'1002-638562993761727159', 62500000, N'1002', N'00', N'00', N'VNP14506495', CAST(N'2024-07-11T12:57:26.0000000' AS DateTime2), N'NCB', N'14506495', N'ATM', N'00', N'2de1e7ee23b963a0c9f7c602a7c23e5400059714f470381930a80008c766df0692ed71cd1b9b096621257e5bc068873f564872df024d5242ee23eb60f7fc31b4')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14506505', N'MEL0TKZB', N'1003-638563000463858768', 19950000, N'1003', N'00', N'00', N'VNP14506505', CAST(N'2024-07-11T13:08:02.0000000' AS DateTime2), N'NCB', N'14506505', N'ATM', N'00', N'0a306c59c7986e438853f0c8e5ebaa7e4984a5cae1431be89baa9fd26e29d2ad1c57f3404ecf702d9bd3b8b523d6a7a8b05ddd4985146cc956a166053edfd57b')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14507453', N'MEL0TKZB', N'1015-638563253462815109', 30450000, N'1015', N'00', N'00', N'VNP14507453', CAST(N'2024-07-11T20:10:04.0000000' AS DateTime2), N'NCB', N'14507453', N'ATM', N'00', N'8f8f9fe290674e2687a467bf94224cdfb09356e6534fada6b6a45b5baa477db7749be8ac780384b28b069bdd39c7ddd8e57f8c57c8bbfbffd083621c004013f3')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14507461', N'MEL0TKZB', N'1016-638563257501407525', 15600000, N'1016', N'00', N'00', N'VNP14507461', CAST(N'2024-07-11T20:16:56.0000000' AS DateTime2), N'NCB', N'14507461', N'ATM', N'00', N'a918f10ff7947ebde3a518b6a8fddc98563dc5dae4e9bf11c1ca532ba14cd47698f3747f81d4c038b50797fc70ab6cebb800af14adcf952e41d4434038866244')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14507475', N'MEL0TKZB', N'1018-638563263987078899', 31800000, N'1018', N'00', N'00', N'VNP14507475', CAST(N'2024-07-11T20:29:06.0000000' AS DateTime2), N'NCB', N'14507475', N'ATM', N'00', N'1914964f04c604b6bbcecec1eb0113bebe3f81f43e906aba6383431be3678416de3c284e88b701cfc0f31e3cba2150a3cbcfeba464e4fbb0fd8a894d57a6fb9e')
GO
INSERT [dbo].[Transaction] ([ResponseId], [TmnCode], [TxnRef], [Amount], [OrderInfo], [ResponseCode], [Message], [BankTranNo], [PayDate], [BankCode], [TransactionNo], [TransactionType], [TransactionStatus], [SecureHash]) VALUES (N'14527029', N'TNTWH49B', N'1024-638573274343367429', 5000700, N'1024', N'00', N'00', N'VNP14527029', CAST(N'2024-07-23T10:31:11.0000000' AS DateTime2), N'NCB', N'14527029', N'ATM', N'00', N'd5d979f80014730ced9325a9d5a6f8341d6afa3d810719566db4d5566f695e029a0dcb8b835a03934e753718b5c4d434e8f41144a9dd3ae01eaab3d1a834e55f')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Blogs_AccountID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_AccountID] ON [dbo].[Blogs]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CartItems_AccountApplicationId]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_CartItems_AccountApplicationId] ON [dbo].[CartItems]
(
	[AccountApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItems_CartID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_CartItems_CartID] ON [dbo].[CartItems]
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CartItems_ProductID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_CartItems_ProductID] ON [dbo].[CartItems]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Carts_AccountID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Carts_AccountID] ON [dbo].[Carts]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImageBlog_BlogID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ImageBlog_BlogID] ON [dbo].[ImageBlog]
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ImageProduct_ProductID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_ImageProduct_ProductID] ON [dbo].[ImageProduct]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_AccountID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Order_AccountID] ON [dbo].[Order]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_ReportID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Order_ReportID] ON [dbo].[Order]
(
	[ReportID] ASC
)
WHERE ([ReportID] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_ShippingInforID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Order_ShippingInforID] ON [dbo].[Order]
(
	[ShippingInforID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Order_transactionID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Order_transactionID] ON [dbo].[Order]
(
	[transactionID] ASC
)
WHERE ([transactionID] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_OrderID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_OrderID] ON [dbo].[OrderDetail]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ProductID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ProductID] ON [dbo].[OrderDetail]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_CategoryID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Product_CategoryID] ON [dbo].[Product]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Rating_AccountID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Rating_AccountID] ON [dbo].[Rating]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Rating_ProductID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Rating_ProductID] ON [dbo].[Rating]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Report_AccountID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Report_AccountID] ON [dbo].[Report]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Report_ProductID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Report_ProductID] ON [dbo].[Report]
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Reviews_AccountID]    Script Date: 7/23/2024 10:40:14 AM ******/
CREATE NONCLUSTERED INDEX [IX_Reviews_AccountID] ON [dbo].[Reviews]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reviews_ProductID]    Script Date: 7/23/2024 10:40:14 AM ******/
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
