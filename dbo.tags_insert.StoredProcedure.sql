USE [pkgreview]
GO
/****** Object:  StoredProcedure [dbo].[tags_insert]    Script Date: 02/21/2013 17:02:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tags_insert]
	@tag nvarchar(100)
AS
BEGIN
	
	DECLARE @RET_VALUE INT
	DECLARE @IdentValues TABLE(v INT);
	
	IF NOT EXISTS(SELECT TagId
					FROM [dbo].[Tags]
					WHERE [Tag] = @tag) BEGIN 
	
		INSERT INTO [dbo].[Tags]
				   ([Tag])
		OUTPUT INSERTED.TagId INTO @IdentValues(v)
			 VALUES
				   (@Tag);
				   
		SET @RET_VALUE = (SELECT top 1 v AS IdentityValues 
		FROM @IdentValues);

	END ELSE BEGIN 
	
		SELECT @RET_VALUE = TagId
		FROM [dbo].[Tags]
		WHERE [Tag] = @tag
	
	END

	RETURN @RET_VALUE;
	
END
GO
