CREATE TABLE [dbo].[EntitiyHierarchy] (
    [EntitiyHierarchyId] [sys].[hierarchyid] NOT NULL,
    [EntityId]          INT                 NOT NULL,
    [EntityType]         INT                 NOT NULL,
    PRIMARY KEY CLUSTERED ([EntitiyHierarchyId] ASC)
);

