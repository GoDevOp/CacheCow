SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Server_DeleteCacheById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Server_DeleteCacheById]
GO

-- =============================================
-- Author:		Ali Kheyrollahi
-- Create date: 2012-07-12
-- Description:	Deletes a CacheKey record by its id
-- =============================================
CREATE PROCEDURE Server_DeleteCacheById
	@CacheKeyHash BINARY(20) 
AS
BEGIN
	SET NOCOUNT OFF
	DELETE FROM dbo.CacheState WHERE CacheKeyHash = @CacheKeyHash
END
GO
