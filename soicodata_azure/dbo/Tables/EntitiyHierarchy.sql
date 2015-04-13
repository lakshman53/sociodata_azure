CREATE TABLE [dbo].[EntitiyHierarchy] (
    [EntitiyHierarchyId] [sys].[hierarchyid] NOT NULL,
    [EntittyId]          INT                 NOT NULL,
    [EntityType]         INT                 NOT NULL,
    PRIMARY KEY CLUSTERED ([EntitiyHierarchyId] ASC)
);

