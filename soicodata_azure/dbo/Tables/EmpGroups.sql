CREATE TABLE [dbo].[EmpGroups] (
    [Id]      INT IDENTITY (1, 1) NOT NULL,
    [EmpId]   INT NOT NULL,
    [GroupId] INT NOT NULL,
    CONSTRAINT [PK_EmpGroups] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_EmpGroups_Employee] FOREIGN KEY ([EmpId]) REFERENCES [dbo].[Employee] ([EmpId]),
    CONSTRAINT [FK_EmpGroups_Group] FOREIGN KEY ([GroupId]) REFERENCES [dbo].[Group] ([GroupId])
);

