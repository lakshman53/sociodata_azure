CREATE PROC [dbo].[usp_AddEmployee] 
    @EmpNum nvarchar(30),
    @Email nvarchar(50),
    @MobileNo nvarchar(10),
    @StoreId int = NULL,
    @MaxDistFromStore int = NULL,
    @EmpImage varbinary(max) = NULL,
    @validationText int = NULL,
    @FirstName nvarchar(50),
    @MiddleName nvarchar(50) = NULL,
    @LastName nvarchar(50),
    @Password nvarchar(255) = NULL,
    @DOJ date = NULL,
    @Designation int = NULL,
    @WeeklyOff smallint = NULL,
    @OfficeStart time(7) = NULL,
    @OfficeEnd time(7) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
		BEGIN TRAN
			BEGIN TRY
	
	INSERT INTO [dbo].[Employee] ([EmpNum], [Email], [MobileNo], [StoreId], [MaxDistFromStore], 
									[EmpImage], [validationText], [FirstName], [MiddleName], [LastName], 
									[Password], [DOJ], [Designation], [WeeklyOff], [OfficeStart], [OfficeEnd])
									SELECT @EmpNum, @Email, @MobileNo, @StoreId, @MaxDistFromStore, @EmpImage, 
										   @validationText, @FirstName, @MiddleName, @LastName, 
										   @Password, @DOJ, @Designation, @WeeklyOff, @OfficeStart, @OfficeEnd
	
	-- Begin Return Select <- do not remove
									SELECT [EmpId], [EmpNum], [Email], [MobileNo], [StoreId], [MaxDistFromStore], [EmpImage], [validationText], 
									[FirstName], [MiddleName], [LastName], [Password], [DOJ], [Designation], [WeeklyOff], [OfficeStart], [OfficeEnd]
									FROM   [dbo].[Employee]
									WHERE  [EmpId] = SCOPE_IDENTITY()
									-- End Return Select <- do not remove
               
		COMMIT
		END TRY
		BEGIN CATCH
			SELECT @@ROWCOUNT, @@ERROR
			ROLLBACK
		END CATCH
