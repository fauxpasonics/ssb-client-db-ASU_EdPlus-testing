CREATE TABLE [config].[ElementProcessMapping]
(
[ElementProcessId] [int] NOT NULL IDENTITY(1, 1),
[ElementId] [int] NULL,
[ProcessId] [int] NULL,
[DateCreated] [date] NULL CONSTRAINT [DF__ElementPr__DateC__1E8F7FEF] DEFAULT (getdate()),
[DateUpdated] [date] NULL CONSTRAINT [DF__ElementPr__DateU__1F83A428] DEFAULT (getdate()),
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__ElementPr__Creat__2077C861] DEFAULT (suser_sname()),
[UpdatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__ElementPr__Updat__216BEC9A] DEFAULT (suser_sname())
)
GO
