USE [pkgreview]
GO
/****** Object:  StoredProcedure [dbo].[EntryDependency_xref_insert]    Script Date: 02/21/2013 17:02:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EntryDependency_xref_insert]
	@DependencyId bigint,
	@EntryId bigint
AS

INSERT INTO [dbo].[EntryDependency_xref]
           ([DependencyId]
           ,[EntryId])
     VALUES
           (@DependencyId
           ,@EntryId)
GO
