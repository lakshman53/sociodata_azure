CREATE TABLE [dbo].[Area] (
    [AreaId]          INT           IDENTITY (1, 1) NOT NULL,
    [Area]            NVARCHAR (50) NOT NULL,
    [PersResponsible] INT           NULL,
    CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED ([AreaId] ASC),
    CONSTRAINT [FK_Area_Employee] FOREIGN KEY ([PersResponsible]) REFERENCES [dbo].[Employee] ([EmpId])
);

