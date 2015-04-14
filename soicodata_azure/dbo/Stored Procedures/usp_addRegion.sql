CREATE PROCEDURE [dbo].[usp_AddRegion]
	@regionid int
	, @EntityName nvarchar(50)
AS
BEGIN
   DECLARE @mOrgNode hierarchyid, @lc hierarchyid
   SELECT @mOrgNode = EntitiyHierarchyId 
   FROM EntitiyHierarchy 
   WHERE EntitiyHierarchyId = hierarchyid::GetRoot()
   SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
   BEGIN TRANSACTION
      SELECT @lc = max(EntitiyHierarchyId) 
      FROM EntitiyHierarchy 
      WHERE EntitiyHierarchyId.GetAncestor(1) =@mOrgNode ;

      INSERT EntitiyHierarchy (EntitiyHierarchyId, EntityId, EntityType, EntityName)
      VALUES(@mOrgNode.GetDescendant(@lc, NULL), @regionid, 1, @EntityName)
   COMMIT
END ;
