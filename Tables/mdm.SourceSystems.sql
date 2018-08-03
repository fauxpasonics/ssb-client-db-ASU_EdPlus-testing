CREATE TABLE [mdm].[SourceSystems]
(
[SourceSystemID] [int] NOT NULL IDENTITY(1, 1),
[SourceSystem] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [bit] NULL,
[DateCreated] [date] NULL CONSTRAINT [DF_SourceSystems_DateCreated] DEFAULT (getdate()),
[DateUpdated] [date] NULL CONSTRAINT [DF_SourceSystems_DateUpdated] DEFAULT (getdate()),
[NameForReporting] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
WITH
(
DATA_COMPRESSION = PAGE
)
GO
ALTER TABLE [mdm].[SourceSystems] ADD CONSTRAINT [PK__SourceSy__8F4FFBF464F7BCBA] PRIMARY KEY CLUSTERED  ([SourceSystemID]) WITH (DATA_COMPRESSION = PAGE)
GO
GRANT DELETE ON  [mdm].[SourceSystems] TO [db_SSB_IE_Permitted]
GO
GRANT INSERT ON  [mdm].[SourceSystems] TO [db_SSB_IE_Permitted]
GO
GRANT UPDATE ON  [mdm].[SourceSystems] TO [db_SSB_IE_Permitted]
GO
