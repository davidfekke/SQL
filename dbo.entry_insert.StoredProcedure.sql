USE [pkgreview]
GO
/****** Object:  StoredProcedure [dbo].[entry_insert]    Script Date: 02/21/2013 17:02:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[entry_insert]
	@Id nvarchar(256),
	@Title nvarchar(128),
	@Summary nvarchar(max),
	@UpdateDate datetime,
	@AuthorName nvarchar(64),
	@Category nvarchar(32),
	@ContentType varchar(32),
	@Copyright nvarchar(64),
	@Description nvarchar(max),
	@DownloadCount int = 0,
	@GalleryDetailsUrl nvarchar(256),
	@IconUrl nvarchar(256),
	@IsLatestVersion bit = 1,
	@IsAbsoluteLatestVersion bit = 1,
	@IsPrerelease bit = 0,
	@PublishedDate datetime,
	@LicenseUrl nvarchar(256),
	@PackageHash nvarchar(256),
	@PackageHashAlgorithm nvarchar(32),
	@PackageSize bigint = 0,
	@ProjectUrl nvarchar(256),
	@ReportAbuseUrl nvarchar(256),
	@ReleaseNotes nvarchar(max),
	@RequireLicenseAcceptance bit = 0,
	@PropertyTitle nvarchar(64),
	@VersionDownloadCount int = 0,
	@PropertySummary nvarchar(max)
AS
BEGIN

	DECLARE @RET_VALUE INT
	DECLARE @IdentValues TABLE(v INT);

	INSERT INTO [dbo].[Entry]
			   ([Id]
			   ,[Title]
			   ,[Summary]
			   ,[UpdateDate]
			   ,[AuthorName]
			   ,[Category]
			   ,[ContentType]
			   ,[Copyright]
			   ,[Description]
			   ,[DownloadCount]
			   ,[GalleryDetailsUrl]
			   ,[IconUrl]
			   ,[IsLatestVersion]
			   ,[IsAbsoluteLatestVersion]
			   ,[IsPrerelease]
			   ,[PublishedDate]
			   ,[LicenseUrl]
			   ,[PackageHash]
			   ,[PackageHashAlgorithm]
			   ,[PackageSize]
			   ,[ProjectUrl]
			   ,[ReportAbuseUrl]
			   ,[ReleaseNotes]
			   ,[RequireLicenseAcceptance]
			   ,[PropertyTitle]
			   ,[VersionDownloadCount]
			   ,[PropertySummary])
	OUTPUT INSERTED.EntryId INTO @IdentValues(v)
		 VALUES
			   (@Id,
			   @Title,
			   @Summary, 
			   @UpdateDate,
			   @AuthorName,
			   @Category,
			   @ContentType,
			   @Copyright,
			   @Description,
			   @DownloadCount,
			   @GalleryDetailsUrl,
			   @IconUrl,
			   @IsLatestVersion,
			   @IsAbsoluteLatestVersion,
			   @IsPrerelease,
			   @PublishedDate,
			   @LicenseUrl,
			   @PackageHash,
			   @PackageHashAlgorithm,
			   @PackageSize,
			   @ProjectUrl,
			   @ReportAbuseUrl,
			   @ReleaseNotes,
			   @RequireLicenseAcceptance,
			   @PropertyTitle,
			   @VersionDownloadCount,
			   @PropertySummary)
	 
	SET @RET_VALUE = (SELECT top 1 v AS IdentityValues 
	FROM @IdentValues);

	RETURN @RET_VALUE;

END
GO
