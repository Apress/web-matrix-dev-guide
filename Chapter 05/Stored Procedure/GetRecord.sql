if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GetRecord]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[GetRecord]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

CREATE PROCEDURE [dbo].[GetRecord] @SearchName Varchar(50)
AS
SELECT * FROM ExistingMovies
WHERE Name = @SearchName
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

