CREATE TABLE [dbo].[Attendance] (
    [ID]           INT             IDENTITY (1, 1) NOT NULL,
    [LogDate]      DATE            NULL,
    [EmpId]        INT             NOT NULL,
    [InEmpImage]   VARBINARY (MAX) NULL,
    [InLatitude]   FLOAT (53)      NULL,
    [InLongitude]  FLOAT (53)      NULL,
    [InDistance]   INT             NULL,
    [InTime]       TIME (7)        NULL,
    [OutEmpImage]  VARBINARY (MAX) NULL,
    [OutLatitude]  FLOAT (53)      NULL,
    [OutLongitude] FLOAT (53)      NULL,
    [OutDistance]  INT             NULL,
    [OutTime]      TIME (7)        NULL,
    CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Attendance_Employee] FOREIGN KEY ([EmpId]) REFERENCES [dbo].[Employee] ([EmpId])
);

