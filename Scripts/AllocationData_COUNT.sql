USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationData_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationData_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationData_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationData_COUNT]
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
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[AllocationData] a
    WHERE
            (@AllocationDataID IS NULL OR @AllocationDataID = a.[AllocationDataID])
        AND (@AllocationTypeFieldID IS NULL OR @AllocationTypeFieldID = a.[AllocationTypeFieldID])
        AND (@AccountID IS NULL OR @AccountID = a.[AccountID])
        AND (@TransactionID IS NULL OR @TransactionID = a.[TransactionID])
        AND (@AllocationID IS NULL OR @AllocationID = a.[AllocationID])
        AND (@FundID IS NULL OR @FundID = a.[FundID])
        AND (@Value IS NULL OR @Value = a.[Value])
END