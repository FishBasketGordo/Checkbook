USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Allocation_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Allocation_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Allocation_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Allocation_SELECT]
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
    SELECT
         a.[AllocationID]
        ,a.[AllocationTypeID]
        ,a.[AccountID]
        ,a.[TransactionID]
        ,a.[FundID]
        ,a.[Amount]
        ,a.[Description]
    FROM
        [dbo].[Allocation] a
    WHERE
            (@AllocationID IS NULL OR @AllocationID = a.[AllocationID])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = a.[AllocationTypeID])
        AND (@AccountID IS NULL OR @AccountID = a.[AccountID])
        AND (@TransactionID IS NULL OR @TransactionID = a.[TransactionID])
        AND (@FundID IS NULL OR @FundID = a.[FundID])
        AND (@Amount IS NULL OR @Amount = a.[Amount])
        AND (@Description IS NULL OR @Description = a.[Description])
END