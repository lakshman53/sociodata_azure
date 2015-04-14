CREATE TABLE [dbo].[City] (
    [CityId]          INT           IDENTITY (1, 1) NOT NULL,
    [City]            NVARCHAR (50) NOT NULL,
    [PersResponsible] INT           NULL,
    [CityCode] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED ([CityId] ASC),
    CONSTRAINT [FK_City_Employee] FOREIGN KEY ([PersResponsible]) REFERENCES [dbo].[Employee] ([EmpId])
);

