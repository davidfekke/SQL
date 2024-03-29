USE [pkgreview]
GO
/****** Object:  Table [dbo].[Entry]    Script Date: 02/21/2013 17:02:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entry](
	[EntryId] [bigint] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](256) NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[Summary] [nvarchar](max) NULL,
	[UpdateDate] [datetime] NOT NULL,
	[AuthorName] [nvarchar](64) NOT NULL,
	[Category] [nvarchar](32) NOT NULL,
	[ContentType] [varchar](32) NOT NULL,
	[Copyright] [nvarchar](64) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DownloadCount] [int] NOT NULL,
	[GalleryDetailsUrl] [nvarchar](256) NULL,
	[IconUrl] [nvarchar](256) NULL,
	[IsLatestVersion] [bit] NOT NULL,
	[IsAbsoluteLatestVersion] [bit] NOT NULL,
	[IsPrerelease] [bit] NOT NULL,
	[PublishedDate] [datetime] NOT NULL,
	[LicenseUrl] [nvarchar](256) NULL,
	[PackageHash] [nvarchar](256) NULL,
	[PackageHashAlgorithm] [nvarchar](32) NULL,
	[PackageSize] [bigint] NOT NULL,
	[ProjectUrl] [nvarchar](256) NULL,
	[ReportAbuseUrl] [nvarchar](256) NULL,
	[ReleaseNotes] [nvarchar](max) NULL,
	[RequireLicenseAcceptance] [bit] NOT NULL,
	[PropertyTitle] [nvarchar](64) NOT NULL,
	[VersionDownloadCount] [int] NOT NULL,
	[PropertySummary] [nvarchar](max) NULL,
 CONSTRAINT [PK_Entry] PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
