CREATE PROCEDURE [dbo].[usp_getCities]
	@thisHId int 
	
AS

DECLARE @CurrentHId hierarchyid

SELECT @CurrentHId = EntitiyHierarchyId FROM EntitiyHierarchy WHERE EntityId = @thisHId ;

SELECT
  City.CityId, City.City FROM dbo.EntitiyHierarchy 
  INNER JOIN dbo.City ON EntitiyHierarchy.EntityId = City.CityId 
	WHERE 
		EntitiyHierarchy.EntitiyHierarchyId.IsDescendantOf(@CurrentHId) = 1
		AND EntitiyHierarchy.EntityType = 2;

