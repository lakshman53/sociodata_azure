CREATE TABLE [dbo].[Entity] (
    [EntityId]    INT           IDENTITY (1, 1) NOT NULL,
    [EntityName]  NVARCHAR (50) NOT NULL,
    [EntityOrder] SMALLINT      NOT NULL,
    CONSTRAINT [PK_Entity] PRIMARY KEY CLUSTERED ([EntityId] ASC)
);

