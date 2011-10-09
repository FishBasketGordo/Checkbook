USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationData_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationData_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationData_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationData_UPDATE]
(
     @AllocationDataID INT = NULL
    ,@AllocationTypeFieldID INT = NULL
    ,@AccountID INT = NULL
    ,@TransactionID INT = NULL
    ,@AllocationID INT = NULL
    ,@FundID INT = NULL
    ,@Value VARCHAR(50) = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[AllocationData]
    SET
         [AllocationDataID] = @AllocationDataID
        ,[AllocationTypeFieldID] = @AllocationTypeFieldID
        ,[AccountID] = @AccountID
        ,[TransactionID] = @TransactionID
        ,[AllocationID] = @AllocationID
        ,[FundID] = @FundID
        ,[Value] = @Value
    WHERE
        (@AllocationDataID = AllocationDataID)
END
