USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Allocation_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Allocation_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Allocation_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Allocation_INSERT]
(
     @AllocationID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@AccountID INT = NULL
    ,@TransactionID INT = NULL
    ,@FundID INT = NULL
    ,@Amount MONEY = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[Allocation]
    (
         [AllocationID]
        ,[AllocationTypeID]
        ,[AccountID]
        ,[TransactionID]
        ,[FundID]
        ,[Amount]
        ,[Description]
    )
    VALUES
    (
         @AllocationID
        ,@AllocationTypeID
        ,@AccountID
        ,@TransactionID
        ,@FundID
        ,@Amount
        ,@Description
    )
    SELECT SCOPE_IDENTITY()
END