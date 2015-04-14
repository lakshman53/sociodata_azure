﻿CREATE PROCEDURE [dbo].[usp_AddStore] (@level3id int, @level4id int,  @EntityName nvarchar(50))
AS 
BEGIN
   DECLARE @mEntitiyHierarchyId hierarchyid, @lc hierarchyid
   
   SELECT @mEntitiyHierarchyId = EntitiyHierarchyId 
   FROM EntitiyHierarchy 
   WHERE EntityId = @level3id
   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
   
   BEGIN TRANSACTION
	  SELECT @lc = max(EntitiyHierarchyId) 
      FROM EntitiyHierarchy 
      WHERE EntitiyHierarchyId.GetAncestor(1) = @mEntitiyHierarchyId ;
      
	  INSERT EntitiyHierarchy (EntitiyHierarchyId, EntityId, EntityType, EntityName)
      VALUES(@mEntitiyHierarchyId.GetDescendant(@lc, NULL), @level4id, 4, @EntityName)
   COMMIT

END;
GO
