USE [SuperStore]
GO
/****** Object:  StoredProcedure [dbo].[CreateDimensionTable]    Script Date: 9/4/2019 4:26:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[CreateDimensionTable] as

begin
	
--CalanderOrderDate Dimension

insert into [dbo].[CalanderOrderDate]
SELECT distinct
	   CAST([Order Date] as date) as [Order Date]
  FROM [SuperStore].[dbo].[WareHouseOrder]

------------------------------------------------

--CalanderShipDate Dimension

insert into [dbo].[CalanderShipDate]
SELECT distinct
	   CAST([Ship Date] as date) as [Ship Date]
  FROM [SuperStore].[dbo].[WareHouseOrder]

------------------------------------------------

--Customer Dimension

insert into [dbo].[Customer]
SELECT distinct
	   [Customer ID]
      ,[Customer Name]
      ,[Segment]
  FROM [SuperStore].[dbo].[WareHouseOrder]

------------------------------------------------

--Geography Dimension

;with GeographyCTE as
(
	SELECT distinct
		   [Country]
		  ,[Region]
		  ,[State]
		  ,[City]
		  ,[Postal Code]
	  FROM [SuperStore].[dbo].[WareHouseOrder]
)
insert into [dbo].[Geography]
	select ROW_NUMBER()OVER(ORDER BY [Country]) as [GeoID]
			,[Country]
			,[Region]
			,[State]
			,[City]
			,[Postal Code]
			from GeographyCTE 
			ORDER BY 
			 [Country]
			,[Region]
			,[State]
			,[City]
			,[Postal Code]
------------------------------------------------

--Product Dimension

insert into [dbo].[Product]
SELECT distinct
	   [Product ID]
      ,[Category]
      ,[Sub-Category]
      ,[Product Name]
  FROM [SuperStore].[dbo].[WareHouseOrder]

------------------------------------------------

--Order Dimension

insert into [dbo].[Order]
SELECT  distinct
	   [Order ID]
      ,[Ship Mode]
      
  FROM [SuperStore].[dbo].[WareHouseOrder]

------------------------------------------------

end
