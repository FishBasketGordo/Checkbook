USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Allocation_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Allocation_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Allocation_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Allocation_UPDATE]
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
    UPDATE
        [dbo].[Allocation]
    SET
         [AllocationID] = @AllocationID
        ,[AllocationTypeID] = @AllocationTypeID
        ,[AccountID] = @AccountID
        ,[TransactionID] = @TransactionID
        ,[FundID] = @FundID
        ,[Amount] = @Amount
        ,[Description] = @Description
    WHERE
        (@AllocationID = AllocationID)
END
