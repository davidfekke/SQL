USE [pkgreview]
GO
/****** Object:  StoredProcedure [dbo].[dependencies_insert]    Script Date: 02/21/2013 17:02:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dependencies_insert]
	@Dependancy varchar(64),
    @Version varchar(32)
AS

BEGIN

	DECLARE @RET_VALUE INT;
	DECLARE @IdentValues TABLE(v INT);
	
	IF NOT EXISTS(SELECT DependencyId
					FROM [dbo].[Dependencies]
					WHERE [Dependancy] = @Dependancy) 
	BEGIN 
	
		INSERT INTO [dbo].[Dependencies]
			   ([Dependancy]
			   ,[Version])
		OUTPUT INSERTED.DependencyId INTO @IdentValues(v)
			 VALUES
				   (@Dependancy,
				   @Version)
				   
		SET @RET_VALUE = (SELECT top 1 v AS IdentityValues 
		FROM @IdentValues);
	
	END ELSE BEGIN
	
		SELECT @RET_VALUE = DependencyId
		FROM [dbo].[Dependencies]
		WHERE [Dependancy] = @Dependancy
	
	END

	RETURN @RET_VALUE;
	
END
GO
