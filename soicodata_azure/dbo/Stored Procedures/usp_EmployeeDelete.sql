CREATE PROC [dbo].[usp_EmployeeDelete] 
    @EmpId int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
		BEGIN TRY
			DELETE
			FROM   [dbo].[Employee]
			WHERE  [EmpId] = @EmpId			
			COMMIT
			SELECT @@ROWCOUNT, @@ERROR
		END TRY
		BEGIN CATCH
			SELECT @@ROWCOUNT, @@ERROR			
			ROLLBACK
		END CATCH
