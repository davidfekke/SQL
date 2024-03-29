USE [pkgreview]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 02/21/2013 17:02:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[TagId] [int] IDENTITY(1,1) NOT NULL,
	[Tag] [nvarchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[TagId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
