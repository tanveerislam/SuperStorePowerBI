USE [SuperStore]
GO
/****** Object:  StoredProcedure [dbo].[updateProductID]    Script Date: 9/4/2019 11:54:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[updateProductID] as

begin
	declare @ProductIDTable table
	(
		RowNumberID varchar(500),
		ProductID varchar(500),
		ProductName varchar(500)
	)

	;with CTE as
	(
	SELECT  
		  ROW_NUMBER()OVER(partition by [Product ID] ORDER BY [Product ID]) as RowNumberID
		  ,[Product ID]
		  ,[Category]
		  ,[Sub-Category]
		  ,[Product Name]
	  FROM [SuperStore].[dbo].[Product]
	)
	insert into @ProductIDTable
		select RowNumberID,[Product ID],[Product Name] from CTE where RowNumberID > 1


	SELECT * from @ProductIDTable



	update [dbo].[Product] 
			set [Product ID] = [Product ID] + '00' 
			where [Product Name] IN (SELECT ProductName from @ProductIDTable)

	update [dbo].[WareHouseOrder]
			set [Product ID] = [Product ID] + '00' 
			where [Product Name] IN (SELECT ProductName from @ProductIDTable)
end
