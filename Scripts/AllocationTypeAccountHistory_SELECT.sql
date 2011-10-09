USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeAccountHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeAccountHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeAccountHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeAccountHistory_SELECT]
(
     @AllocationTypeAccountHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@AllocationTypeID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    SELECT
         a.[AllocationTypeAccountHistoryID]
        ,a.[HistoryUserName]
        ,a.[HistoryTimestamp]
        ,a.[HistoryAction]
        ,a.[AllocationTypeID]
        ,a.[AccountID]
    FROM
        [dbo].[AllocationTypeAccountHistory] a
    WHERE
            (@AllocationTypeAccountHistoryID IS NULL OR @AllocationTypeAccountHistoryID = a.[AllocationTypeAccountHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = a.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = a.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = a.[HistoryAction])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = a.[AllocationTypeID])
        AND (@AccountID IS NULL OR @AccountID = a.[AccountID])
END