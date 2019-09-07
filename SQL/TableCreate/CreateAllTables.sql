CREATE DATABASE [SuperStore]
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[WareHouseReturns]    Script Date: 9/8/2019 3:02:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[WareHouseReturns](
	[Returned] [varchar](50) NULL,
	[Order ID] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[WareHouseOrder]    Script Date: 9/8/2019 3:02:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[WareHouseOrder](
	[Order ID] [varchar](500) NULL,
	[Order Date] [datetime] NULL,
	[Ship Date] [datetime] NULL,
	[Ship Mode] [varchar](500) NULL,
	[Customer ID] [varchar](500) NULL,
	[Customer Name] [varchar](500) NULL,
	[Segment] [varchar](500) NULL,
	[Country] [varchar](500) NULL,
	[City] [varchar](500) NULL,
	[State] [varchar](500) NULL,
	[Postal Code] [varchar](500) NULL,
	[Region] [varchar](500) NULL,
	[Product ID] [varchar](500) NULL,
	[Category] [varchar](500) NULL,
	[Sub-Category] [varchar](500) NULL,
	[Product Name] [varchar](500) NULL,
	[Sales] [real] NULL,
	[Quantity] [real] NULL,
	[Discount] [real] NULL,
	[Profit] [real] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[Transaction]    Script Date: 9/8/2019 3:02:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Transaction](
	[Order ID] [varchar](500) NULL,
	[Order Date] [datetime] NULL,
	[Ship Date] [datetime] NULL,
	[Customer ID] [varchar](500) NULL,
	[Product ID] [varchar](500) NULL,
	[GeoID] [varchar](500) NULL,
	[Sales] [real] NULL,
	[Quantity] [real] NULL,
	[Discount] [real] NULL,
	[Profit] [real] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[Return]    Script Date: 9/8/2019 3:02:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Return](
	[Order ID] [varchar](500) NULL,
	[Order Date] [date] NULL,
	[Customer ID] [varchar](500) NULL,
	[Product ID] [varchar](500) NULL,
	[GeoID] [varchar](500) NULL,
	[Quantity] [real] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 9/8/2019 3:02:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Product](
	[Product ID] [varchar](500) NULL,
	[Category] [varchar](500) NULL,
	[Sub-Category] [varchar](500) NULL,
	[Product Name] [varchar](500) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[Order]    Script Date: 9/8/2019 3:02:10 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Order](
	[Order ID] [varchar](500) NULL,
	[Ship Mode] [varchar](500) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[Geography]    Script Date: 9/8/2019 3:02:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Geography](
	[GeoID] [varchar](500) NULL,
	[Country] [varchar](500) NULL,
	[Region] [varchar](500) NULL,
	[State] [varchar](500) NULL,
	[City] [varchar](500) NULL,
	[Postal Code] [varchar](500) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 9/8/2019 3:01:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customer](
	[Customer ID] [varchar](500) NULL,
	[Customer Name] [varchar](500) NULL,
	[Segment] [varchar](500) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[CalanderShipDate]    Script Date: 9/8/2019 3:01:42 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CalanderShipDate](
	[Ship Date] [date] NULL
) ON [PRIMARY]

GO


USE [SuperStore]
GO

/****** Object:  Table [dbo].[CalanderOrderDate]    Script Date: 9/8/2019 3:01:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CalanderOrderDate](
	[Order Date] [date] NULL
) ON [PRIMARY]

GO


