CREATE PROC [dbo].[usp_GetEmployees] 
@EmpId int
AS 
SET NOCOUNT ON 
SET XACT_ABORT ON
	BEGIN TRAN
		BEGIN TRY
   					SELECT		[EmpId], [EmpNum], [Email], [MobileNo], [StoreId], 
   								[MaxDistFromStore], [EmpImage],			[validationText],		
   								[FirstName], [MiddleName], [LastName], [Password], [DOJ], [Designation],   																				[WeeklyOff], [OfficeStart], [OfficeEnd] 
					FROM   [dbo].[Employee] 
					WHERE  ([EmpId] = @EmpId OR @EmpId IS NULL) 
					COMMIT
		END TRY
		BEGIN CATCH
			SELECT ERROR_NUMBER()
			ROLLBACK
		END CATCH
	
