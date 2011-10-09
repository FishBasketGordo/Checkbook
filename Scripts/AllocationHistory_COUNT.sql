USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationHistory_COUNT]
(
     @AllocationHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@AllocationID INT = NULL
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
        COUNT(*) AS [Count]
    FROM
        [dbo].[AllocationHistory] a
    WHERE
            (@AllocationHistoryID IS NULL OR @AllocationHistoryID = a.[AllocationHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = a.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = a.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = a.[HistoryAction])
        AND (@AllocationID IS NULL OR @AllocationID = a.[AllocationID])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = a.[AllocationTypeID])
        AND (@AccountID IS NULL OR @AccountID = a.[AccountID])
        AND (@TransactionID IS NULL OR @TransactionID = a.[TransactionID])
        AND (@FundID IS NULL OR @FundID = a.[FundID])
        AND (@Amount IS NULL OR @Amount = a.[Amount])
        AND (@Description IS NULL OR @Description = a.[Description])
END