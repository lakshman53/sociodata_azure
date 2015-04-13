CREATE TABLE [dbo].[Designation] (
    [DesignationId] INT           IDENTITY (1, 1) NOT NULL,
    [Designation]   NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED ([DesignationId] ASC)
);

