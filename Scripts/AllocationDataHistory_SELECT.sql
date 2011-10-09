USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationDataHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationDataHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationDataHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationDataHistory_SELECT]
(
     @AllocationDataHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@AllocationDataID INT = NULL
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
         a.[AllocationDataHistoryID]
        ,a.[HistoryUserName]
        ,a.[HistoryTimestamp]
        ,a.[HistoryAction]
        ,a.[AllocationDataID]
        ,a.[AllocationTypeFieldID]
        ,a.[AccountID]
        ,a.[TransactionID]
        ,a.[AllocationID]
        ,a.[FundID]
        ,a.[Value]
    FROM
        [dbo].[AllocationDataHistory] a
    WHERE
            (@AllocationDataHistoryID IS NULL OR @AllocationDataHistoryID = a.[AllocationDataHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = a.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = a.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = a.[HistoryAction])
        AND (@AllocationDataID IS NULL OR @AllocationDataID = a.[AllocationDataID])
        AND (@AllocationTypeFieldID IS NULL OR @AllocationTypeFieldID = a.[AllocationTypeFieldID])
        AND (@AccountID IS NULL OR @AccountID = a.[AccountID])
        AND (@TransactionID IS NULL OR @TransactionID = a.[TransactionID])
        AND (@AllocationID IS NULL OR @AllocationID = a.[AllocationID])
        AND (@FundID IS NULL OR @FundID = a.[FundID])
        AND (@Value IS NULL OR @Value = a.[Value])
END