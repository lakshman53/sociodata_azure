CREATE TABLE [dbo].[Region] (
    [RegionId]        INT           IDENTITY (1, 1) NOT NULL,
    [Region]          NVARCHAR (50) NOT NULL,
    [PersResponsible] INT           NULL,
    [RegionCode] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED ([RegionId] ASC),
    CONSTRAINT [FK_Region_Employee] FOREIGN KEY ([PersResponsible]) REFERENCES [dbo].[Employee] ([EmpId])
);

