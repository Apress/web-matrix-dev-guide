exec sp_dboption N'MovieGuide', N'autoclose', N'false'

exec sp_dboption N'MovieGuide', N'bulkcopy', N'false'

exec sp_dboption N'MovieGuide', N'trunc. log', N'false'

exec sp_dboption N'MovieGuide', N'torn page detection', N'true'

exec sp_dboption N'MovieGuide', N'read only', N'false'

exec sp_dboption N'MovieGuide', N'dbo use', N'false'

exec sp_dboption N'MovieGuide', N'single', N'false'

exec sp_dboption N'MovieGuide', N'autoshrink', N'false'


exec sp_dboption N'MovieGuide', N'ANSI null default', N'false'


exec sp_dboption N'MovieGuide', N'recursive triggers', N'false'


exec sp_dboption N'MovieGuide', N'ANSI nulls', N'false'


exec sp_dboption N'MovieGuide', N'concat null yields null', N'false'


exec sp_dboption N'MovieGuide', N'cursor close on commit', N'false'


exec sp_dboption N'MovieGuide', N'default to local cursor', N'false'


exec sp_dboption N'MovieGuide', N'quoted identifier', N'false'


exec sp_dboption N'MovieGuide', N'ANSI warnings', N'false'


exec sp_dboption N'MovieGuide', N'auto create statistics', N'true'


exec sp_dboption N'MovieGuide', N'auto update statistics', N'true'


use [MovieGuide]


/****** Object:  Table [dbo].[ExistingMovies]    Script Date: 2/1/2002 9:23:29 AM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ExistingMovies]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ExistingMovies]


/****** Object:  User dbo    Script Date: 2/1/2002 9:23:26 AM ******/
/****** Object:  Table [dbo].[ExistingMovies]    Script Date: 2/1/2002 9:23:31 AM ******/
CREATE TABLE [dbo].[ExistingMovies] (
	[InventoryID] [int] IDENTITY (1, 1) NOT NULL ,
	[Name] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Rating] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Description] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LeadActor] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LeadActress] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SupportingCast] [char] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Director] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Producer] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Notes] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DatePurchased] [datetime] NOT NULL ,
	[Format] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[IsIn] [bit] NOT NULL 
) ON [PRIMARY]


ALTER TABLE [dbo].[ExistingMovies] WITH NOCHECK ADD 
	CONSTRAINT [PK_ExistingMovies] PRIMARY KEY  CLUSTERED 
	(
		[InventoryID]
	)  ON [PRIMARY] 


ALTER TABLE [dbo].[ExistingMovies] WITH NOCHECK ADD 
	CONSTRAINT [DF_ExistingMovies_Rating] DEFAULT ('NR') FOR [Rating],
	CONSTRAINT [DF_ExistingMovies_Description] DEFAULT ('No Description Available') FOR [Description],
	CONSTRAINT [DF_ExistingMovies_LeadActor] DEFAULT ('N/A') FOR [LeadActor],
	CONSTRAINT [DF_ExistingMovies_LeadActress] DEFAULT ('N/A') FOR [LeadActress],
	CONSTRAINT [DF_ExistingMovies_SupportingCast] DEFAULT ('N/A') FOR [SupportingCast],
	CONSTRAINT [DF_ExistingMovies_Director] DEFAULT ('N/A') FOR [Director],
	CONSTRAINT [DF_ExistingMovies_Notes] DEFAULT ('No special notes.') FOR [Notes],
	CONSTRAINT [DF_ExistingMovies_Format] DEFAULT ('VHS') FOR [Format],
	CONSTRAINT [DF_ExistingMovies_IsIn] DEFAULT (1) FOR [IsIn]


 CREATE  INDEX [IX_Name] ON [dbo].[ExistingMovies]([Name]) ON [PRIMARY]


 CREATE  INDEX [IX_LeadActor] ON [dbo].[ExistingMovies]([LeadActor]) ON [PRIMARY]


 CREATE  INDEX [IX_LeadActress] ON [dbo].[ExistingMovies]([LeadActress]) ON [PRIMARY]


 CREATE  INDEX [IX_Director] ON [dbo].[ExistingMovies]([Director]) ON [PRIMARY]


 CREATE  INDEX [IX_Producer] ON [dbo].[ExistingMovies]([Producer]) ON [PRIMARY]


 CREATE  INDEX [IX_DatePurchased] ON [dbo].[ExistingMovies]([DatePurchased]) ON [PRIMARY]



exec sp_addextendedproperty N'MS_Description', N'Movie Identifying Number', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'InventoryID'

exec sp_addextendedproperty N'MS_Description', N'Movie name.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'Name'

exec sp_addextendedproperty N'MS_Description', N'Contains the movie rating.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'Rating'

exec sp_addextendedproperty N'MS_Description', N'Description of the movie topic.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'Description'

exec sp_addextendedproperty N'MS_Description', N'Main film actor.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'LeadActor'

exec sp_addextendedproperty N'MS_Description', N'Main film actress.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'LeadActress'

exec sp_addextendedproperty N'MS_Description', N'Additional characters in film.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'SupportingCast'

exec sp_addextendedproperty N'MS_Description', N'File director.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'Director'

exec sp_addextendedproperty N'MS_Description', N'Special notes about the file that aren''t in the description.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'Notes'

exec sp_addextendedproperty N'MS_Description', N'Date the movie was originally purchased.', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'DatePurchased'

exec sp_addextendedproperty N'MS_Description', N'Film format including VHS, DVD, and Laserdisk', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'Format'

exec sp_addextendedproperty N'MS_Description', N'Is the movie currently in or out?', N'user', N'dbo', N'table', N'ExistingMovies', N'column', N'IsIn'



