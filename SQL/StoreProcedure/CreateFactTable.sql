USE [SuperStore]
GO
/****** Object:  StoredProcedure [dbo].[CreateFactTable]    Script Date: 9/4/2019 10:26:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[CreateFactTable] as

begin

	--Transaction Fact Table 

	insert into [dbo].[Transaction]
	select o.[Order ID]
		  ,d.[Order Date]
		  ,ds.[Ship Date]
		  ,c.[Customer ID]
		  ,p.[Product ID]
		  ,g.[GeoID]
		  ,tf.[Sales]
		  ,tf.[Quantity]
		  ,tf.[Discount]
		  ,tf.[Profit]
		  from [WareHouseOrder] tf 
		  
		  left join [Order] o on 
		   tf.[Order ID] = o.[Order ID] 
		   and tf.[Ship Mode] =o.[Ship Mode]

		   left join [CalanderOrderDate] d on 
		   tf.[Order Date] = d.[Order Date] 

		   left join [CalanderShipDate] ds on
		   tf.[Ship Date] = ds.[Ship Date]

		   left join [Customer] c on 
		   tf.[Customer ID] = c.[Customer ID] 
		   and tf.[Customer Name] = c.[Customer Name] 
		   and tf.Segment = c.Segment

		   left join [Product] p on 
		   tf.[Product ID] = p.[Product ID]
		   and tf.[Category] = p.[Category]
		   and tf.[Sub-Category] = p.[Sub-Category]
		   and tf.[Product Name] = p.[Product Name]

		   left join [Geography] g on 
		   tf.[Country] = g.[Country]
		   and tf.[Region] = g.[Region]
		   and tf.[State] = g.[State]
		   and tf.[City] = g.[City]
		   and tf.[Postal Code] = g.[Postal Code]
		   

	------------------------------------------------

	--Return Fact Table 

	insert into [dbo].[Return]
	SELECT distinct 
		   [Order ID]
		  ,[Order Date]
		  ,[Customer ID]
		  ,[Product ID]
		  ,[GeoID]
		  ,[Quantity]
	  FROM [SuperStore].[dbo].[Transaction] 
	  where [Order ID] IN (select distinct [Order ID] from [dbo].[WareHouseReturns])
end
