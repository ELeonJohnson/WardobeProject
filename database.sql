USE [master]
GO
/****** Object:  Database [WardobeProject]    Script Date: 3/18/2018 3:38:36 PM ******/
CREATE DATABASE [WardobeProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardobeProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardobeProject.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardobeProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardobeProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardobeProject] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardobeProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardobeProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardobeProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardobeProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardobeProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardobeProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardobeProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardobeProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardobeProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardobeProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardobeProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardobeProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardobeProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardobeProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardobeProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardobeProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardobeProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardobeProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardobeProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardobeProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardobeProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardobeProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardobeProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardobeProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardobeProject] SET  MULTI_USER 
GO
ALTER DATABASE [WardobeProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardobeProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardobeProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardobeProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardobeProject] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardobeProject]
GO
/****** Object:  Table [dbo].[MensAccessories]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MensAccessories](
	[MensAccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MensAccessories] PRIMARY KEY CLUSTERED 
(
	[MensAccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MensBottoms]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MensBottoms](
	[MensBottomsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MensBottoms] PRIMARY KEY CLUSTERED 
(
	[MensBottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MensOutfits]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MensOutfits](
	[MensOutfitsID] [int] IDENTITY(1,1) NOT NULL,
	[MensAccessoriesID] [int] NOT NULL,
	[MensBottomsID] [int] NOT NULL,
	[MensShoesID] [int] NOT NULL,
	[MensTopsID] [int] NOT NULL,
 CONSTRAINT [PK_MensOutfits] PRIMARY KEY CLUSTERED 
(
	[MensOutfitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MensShoes]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MensShoes](
	[MensShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MensShoes] PRIMARY KEY CLUSTERED 
(
	[MensShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MensTops]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MensTops](
	[MensTopsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MensTops] PRIMARY KEY CLUSTERED 
(
	[MensTopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WomensAccessories]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WomensAccessories](
	[WomensAccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WomensAccessories] PRIMARY KEY CLUSTERED 
(
	[WomensAccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WomensBottoms]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WomensBottoms](
	[WomensBottomsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WomensBottoms] PRIMARY KEY CLUSTERED 
(
	[WomensBottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WomensOutfits]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WomensOutfits](
	[WomensOutfitID] [int] IDENTITY(1,1) NOT NULL,
	[WomensBottomsID] [int] NOT NULL,
	[WomensAccessoriesID] [int] NOT NULL,
	[WomensShoesID] [int] NOT NULL,
	[WomensTopsID] [int] NOT NULL,
 CONSTRAINT [PK_WomensOutfits] PRIMARY KEY CLUSTERED 
(
	[WomensOutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WomensShoes]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WomensShoes](
	[WomensShoesID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WomensShoes] PRIMARY KEY CLUSTERED 
(
	[WomensShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WomensTops]    Script Date: 3/18/2018 3:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WomensTops](
	[WomensTopsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WomensTops] PRIMARY KEY CLUSTERED 
(
	[WomensTopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[MensAccessories] ON 

INSERT [dbo].[MensAccessories] ([MensAccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (5, N'Off White Belt', N'\Content\images\off-white-belt.jpeg', N'Belt', N'Yellow', N'Spring/Summer', N'Casual')
INSERT [dbo].[MensAccessories] ([MensAccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (8, N'Red Doc Marten Shoe Laces', N'\Content\images\red-laces.jpg', N'Shoe Laces', N'Red', N'Fall/Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[MensAccessories] OFF
SET IDENTITY_INSERT [dbo].[MensBottoms] ON 

INSERT [dbo].[MensBottoms] ([MensBottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Fear Of God Denim', N'\Content\images\fear-of-god-blue-denim.jpeg', N'Jeans', N'light blue', N'Spring/Summer', N'Casual')
INSERT [dbo].[MensBottoms] ([MensBottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Rick Owen Trousers', N'\Content\images\rick-owens-black-trousers.jpg', N'Trousers', N'Black', N'Fall/Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[MensBottoms] OFF
SET IDENTITY_INSERT [dbo].[MensOutfits] ON 

INSERT [dbo].[MensOutfits] ([MensOutfitsID], [MensAccessoriesID], [MensBottomsID], [MensShoesID], [MensTopsID]) VALUES (1, 5, 1, 1, 1)
INSERT [dbo].[MensOutfits] ([MensOutfitsID], [MensAccessoriesID], [MensBottomsID], [MensShoesID], [MensTopsID]) VALUES (3, 8, 2, 2, 2)
SET IDENTITY_INSERT [dbo].[MensOutfits] OFF
SET IDENTITY_INSERT [dbo].[MensShoes] ON 

INSERT [dbo].[MensShoes] ([MensShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Common Projects Chelsea', N'\Content\images\tan-common-projects-chelsea.jpg', N'Boots', N'Tan', N'Spring/Summer', N'Casual')
INSERT [dbo].[MensShoes] ([MensShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Saint Laurent Combat Boots', N'\Content\images\saint-laurent-combat-boots.jpg', N'Boots', N'Black', N'Fall/Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[MensShoes] OFF
SET IDENTITY_INSERT [dbo].[MensTops] ON 

INSERT [dbo].[MensTops] ([MensTopsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Off White Denim Jacket', N'\Content\images\off-white-denim-jacket.jpg', N'Denim Jacket', N'light blue/ yellow', N'Spring/Summer', N'Casual')
INSERT [dbo].[MensTops] ([MensTopsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Raf Simons Turtleneck', N'\Content\images\raf-simons-turtleneck.jpg', N'Sweater', N'Red/Black Stripes', N'Fall/Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[MensTops] OFF
SET IDENTITY_INSERT [dbo].[WomensAccessories] ON 

INSERT [dbo].[WomensAccessories] ([WomensAccessoriesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Off White Belt', N' \Content\images\off-white-belt.jpeg', N'Belt', N'Yellow', N'Spring/Summer', N'Casual')
SET IDENTITY_INSERT [dbo].[WomensAccessories] OFF
SET IDENTITY_INSERT [dbo].[WomensBottoms] ON 

INSERT [dbo].[WomensBottoms] ([WomensBottomsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Adidas - Yeezy Track Pants', N'\Content\images\adi-yeezy-track.jpg', N'Track Pants', N'Black', N'Fall/Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[WomensBottoms] OFF
SET IDENTITY_INSERT [dbo].[WomensOutfits] ON 

INSERT [dbo].[WomensOutfits] ([WomensOutfitID], [WomensBottomsID], [WomensAccessoriesID], [WomensShoesID], [WomensTopsID]) VALUES (1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[WomensOutfits] OFF
SET IDENTITY_INSERT [dbo].[WomensShoes] ON 

INSERT [dbo].[WomensShoes] ([WomensShoesID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Yeezy Heels', N'\Content\images\yeezy-heels.jpg', N'Heels', N'Black', N'Fall/Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[WomensShoes] OFF
SET IDENTITY_INSERT [dbo].[WomensTops] ON 

INSERT [dbo].[WomensTops] ([WomensTopsID], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Off White Biker Jacket', N'\Content\images\w-off-white-biker.jpg', N'Leather Biker Jacket', N'Black', N'Fall/Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[WomensTops] OFF
ALTER TABLE [dbo].[MensOutfits]  WITH CHECK ADD  CONSTRAINT [FK_MensOutfits_MensAccessories] FOREIGN KEY([MensAccessoriesID])
REFERENCES [dbo].[MensAccessories] ([MensAccessoriesID])
GO
ALTER TABLE [dbo].[MensOutfits] CHECK CONSTRAINT [FK_MensOutfits_MensAccessories]
GO
ALTER TABLE [dbo].[MensOutfits]  WITH CHECK ADD  CONSTRAINT [FK_MensOutfits_MensBottoms] FOREIGN KEY([MensBottomsID])
REFERENCES [dbo].[MensBottoms] ([MensBottomsID])
GO
ALTER TABLE [dbo].[MensOutfits] CHECK CONSTRAINT [FK_MensOutfits_MensBottoms]
GO
ALTER TABLE [dbo].[MensOutfits]  WITH CHECK ADD  CONSTRAINT [FK_MensOutfits_MensShoes] FOREIGN KEY([MensShoesID])
REFERENCES [dbo].[MensShoes] ([MensShoesID])
GO
ALTER TABLE [dbo].[MensOutfits] CHECK CONSTRAINT [FK_MensOutfits_MensShoes]
GO
ALTER TABLE [dbo].[MensOutfits]  WITH CHECK ADD  CONSTRAINT [FK_MensOutfits_MensTops] FOREIGN KEY([MensTopsID])
REFERENCES [dbo].[MensTops] ([MensTopsID])
GO
ALTER TABLE [dbo].[MensOutfits] CHECK CONSTRAINT [FK_MensOutfits_MensTops]
GO
ALTER TABLE [dbo].[WomensOutfits]  WITH CHECK ADD  CONSTRAINT [FK_WomensOutfits_WomensAccessories] FOREIGN KEY([WomensAccessoriesID])
REFERENCES [dbo].[WomensAccessories] ([WomensAccessoriesID])
GO
ALTER TABLE [dbo].[WomensOutfits] CHECK CONSTRAINT [FK_WomensOutfits_WomensAccessories]
GO
ALTER TABLE [dbo].[WomensOutfits]  WITH CHECK ADD  CONSTRAINT [FK_WomensOutfits_WomensBottoms] FOREIGN KEY([WomensBottomsID])
REFERENCES [dbo].[WomensBottoms] ([WomensBottomsID])
GO
ALTER TABLE [dbo].[WomensOutfits] CHECK CONSTRAINT [FK_WomensOutfits_WomensBottoms]
GO
ALTER TABLE [dbo].[WomensOutfits]  WITH CHECK ADD  CONSTRAINT [FK_WomensOutfits_WomensShoes] FOREIGN KEY([WomensShoesID])
REFERENCES [dbo].[WomensShoes] ([WomensShoesID])
GO
ALTER TABLE [dbo].[WomensOutfits] CHECK CONSTRAINT [FK_WomensOutfits_WomensShoes]
GO
ALTER TABLE [dbo].[WomensOutfits]  WITH CHECK ADD  CONSTRAINT [FK_WomensOutfits_WomensTops] FOREIGN KEY([WomensTopsID])
REFERENCES [dbo].[WomensTops] ([WomensTopsID])
GO
ALTER TABLE [dbo].[WomensOutfits] CHECK CONSTRAINT [FK_WomensOutfits_WomensTops]
GO
USE [master]
GO
ALTER DATABASE [WardobeProject] SET  READ_WRITE 
GO
