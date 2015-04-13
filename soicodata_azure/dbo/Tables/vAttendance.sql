CREATE TABLE [dbo].[vAttendance] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [Repflag]   SMALLINT      NULL,
    [Present]   INT           NULL,
    [Absent]    INT           NULL,
    [Late]      INT           NULL,
    [StoreName] NVARCHAR (50) NULL,
    [Level1]    NVARCHAR (50) NULL,
    [Level2]    NVARCHAR (50) NULL,
    [Level3]    NVARCHAR (50) NULL,
    CONSTRAINT [PrimaryKey_da46e9f0-0b99-43b4-9ae9-90bca57b886c] PRIMARY KEY CLUSTERED ([ID] ASC)
);

