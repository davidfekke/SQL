USE [pkgreview]
GO
/****** Object:  StoredProcedure [dbo].[entrytag_xref_insert]    Script Date: 02/21/2013 17:02:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[entrytag_xref_insert]
	@EntryId bigint,
	@TagId int
AS
BEGIN

INSERT INTO [dbo].[EntryTag_xref]
           ([EntryId],
           [TagId])
     VALUES
           (@EntryId,
           @TagId)

END
GO
