USE [SuperStore]
GO
/****** Object:  StoredProcedure [dbo].[cleaningAllTable]    Script Date: 9/4/2019 4:25:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[cleaningAllTable] as

begin
	truncate table [dbo].[CalanderOrderDate]
	truncate table [dbo].[CalanderShipDate]
	truncate table [dbo].[Customer]
	truncate table [dbo].[Geography]
	truncate table [dbo].[Order]
	truncate table [dbo].[Product]
	truncate table [dbo].[Return]
	truncate table [dbo].[Transaction]
end
