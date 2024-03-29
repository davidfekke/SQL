USE [pkgreview]
GO
/****** Object:  Table [dbo].[Dependencies]    Script Date: 02/21/2013 17:02:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dependencies](
	[DependencyId] [bigint] IDENTITY(1,1) NOT NULL,
	[Dependancy] [varchar](64) NOT NULL,
	[Version] [varchar](32) NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Dependencies] PRIMARY KEY CLUSTERED 
(
	[DependencyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Dependencies] ADD  CONSTRAINT [DF_Dependencies_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
