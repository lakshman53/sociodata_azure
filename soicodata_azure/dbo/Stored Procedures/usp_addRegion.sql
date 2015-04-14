CREATE PROCEDURE [dbo].[usp_AddRegion]
	@regionid int
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

      INSERT EntitiyHierarchy (EntitiyHierarchyId, EntityId, EntityType)
      VALUES(@mOrgNode.GetDescendant(@lc, NULL), @regionid, 1)
   COMMIT
END ;
