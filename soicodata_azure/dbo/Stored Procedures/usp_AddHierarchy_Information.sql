Create PROCEDURE [usp_AddHierarchy_Information] 
@EntityID int,
@EntityType int
AS 
SET NOCOUNT ON 
	BEGIN TRAN
		BEGIN TRY
   		  Insert into dbo.EntitiyHierarchy(EntittyId,EntityType) 
   		  values(@EntityID,@EntityType)
		COMMIT
		END TRY
		BEGIN CATCH
			SELECT ERROR_NUMBER()
			ROLLBACK
		END CATCH
	
