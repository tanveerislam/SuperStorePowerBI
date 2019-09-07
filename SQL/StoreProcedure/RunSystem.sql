USE [SuperStore]
GO
/****** Object:  StoredProcedure [dbo].[RunSystem]    Script Date: 9/4/2019 4:21:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[RunSystem] as

begin
	exec [dbo].[cleaningAllTable]
	exec [dbo].[CreateDimensionTable]
	exec [dbo].[updateProductID]
	exec [dbo].[CreateFactTable]
end
