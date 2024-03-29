USE [pkgreview]
GO
/****** Object:  Table [dbo].[EntryTag_xref]    Script Date: 02/21/2013 17:02:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryTag_xref](
	[EntryId] [bigint] NOT NULL,
	[TagId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_TagEntry_xref] PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC,
	[TagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EntryTag_xref] ADD  CONSTRAINT [DF_TagEntry_xref_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
