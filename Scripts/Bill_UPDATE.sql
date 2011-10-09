USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Bill_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Bill_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Bill_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Bill_UPDATE]
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
    UPDATE
        [dbo].[Bill]
    SET
         [BillID] = @BillID
        ,[AllocationTypeID] = @AllocationTypeID
        ,[BillFrequencyID] = @BillFrequencyID
        ,[BillerName] = @BillerName
        ,[Amount] = @Amount
        ,[DueDate] = @DueDate
    WHERE
        (@BillID = BillID)
END
