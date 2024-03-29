USE [pkgreview]
GO
/****** Object:  Table [dbo].[EntryDependency_xref]    Script Date: 02/21/2013 17:02:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntryDependency_xref](
	[DependencyId] [bigint] NOT NULL,
	[EntryId] [bigint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_EntryDependency_xref] PRIMARY KEY CLUSTERED 
(
	[DependencyId] ASC,
	[EntryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EntryDependency_xref] ADD  CONSTRAINT [DF_EntryDependency_xref_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
