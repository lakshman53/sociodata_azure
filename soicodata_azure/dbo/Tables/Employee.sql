CREATE TABLE [dbo].[Employee] (
    [EmpId]            INT            IDENTITY (1, 1) NOT NULL,
    [EmpNum]           NVARCHAR (30)  NOT NULL,
    [Email]            NVARCHAR (50)  NOT NULL,
    [MobileNo]         NVARCHAR (10)  NOT NULL,
    [StoreId]          INT            NULL,
    [MaxDistFromStore] INT            NULL,
    [validationText]   INT            NULL,
    [FirstName]        NVARCHAR (50)  NOT NULL,
    [MiddleName]       NVARCHAR (50)  NULL,
    [LastName]         NVARCHAR (50)  NOT NULL,
    [Password]         NVARCHAR (255) NULL,
    [DOJ]              DATE           NULL,
    [Designation]      INT            NULL,
    [WeeklyOff]        SMALLINT       NULL,
    [OfficeStart]      TIME (7)       NULL,
    [OfficeEnd]        TIME (7)       NULL,
    [ClientEmpNum] NVARCHAR(50) NULL, 
    [EmpImage] NVARCHAR(100) NULL, 
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EmpId] ASC),
    CONSTRAINT [FK_Employee_Designation] FOREIGN KEY ([Designation]) REFERENCES [dbo].[Designation] ([DesignationId]),
    CONSTRAINT [FK_Employee_Store] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([StoreId])
);

