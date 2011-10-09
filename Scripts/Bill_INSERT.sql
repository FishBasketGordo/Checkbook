USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Bill_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Bill_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Bill_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Bill_INSERT]
(
     @BillID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@BillFrequencyID INT = NULL
    ,@BillerName VARCHAR(50) = NULL
    ,@Amount MONEY = NULL
    ,@DueDate DATE = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[Bill]
    (
         [BillID]
        ,[AllocationTypeID]
        ,[BillFrequencyID]
        ,[BillerName]
        ,[Amount]
        ,[DueDate]
    )
    VALUES
    (
         @BillID
        ,@AllocationTypeID
        ,@BillFrequencyID
        ,@BillerName
        ,@Amount
        ,@DueDate
    )
    SELECT SCOPE_IDENTITY()
END