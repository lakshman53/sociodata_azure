CREATE PROCEDURE [dbo].[usp_AddArea] (@level2id int, @level3id int, @EntityName nvarchar(50))
AS 
BEGIN
   DECLARE @mEntitiyHierarchyId hierarchyid, @lc hierarchyid
   
   SELECT @mEntitiyHierarchyId = EntitiyHierarchyId 
   FROM EntitiyHierarchy 
   WHERE EntityId = @level2id
   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
   
   BEGIN TRANSACTION
	  SELECT @lc = max(EntitiyHierarchyId) 
      FROM EntitiyHierarchy 
      WHERE EntitiyHierarchyId.GetAncestor(1) = @mEntitiyHierarchyId ;
      
	  INSERT EntitiyHierarchy (EntitiyHierarchyId, EntityId, EntityType, EntityName)
      VALUES(@mEntitiyHierarchyId.GetDescendant(@lc, NULL), @level3id, 3, @EntityName)
   COMMIT

END;
GO
