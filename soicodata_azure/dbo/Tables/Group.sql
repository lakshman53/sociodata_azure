CREATE TABLE [dbo].[Group] (
    [GroupId]   INT            IDENTITY (1, 1) NOT NULL,
    [GroupName] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED ([GroupId] ASC)
);

