USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserAccountHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserAccountHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserAccountHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserAccountHistory_SELECT]
(
     @UserAccountHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@UserID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    SELECT
         u.[UserAccountHistoryID]
        ,u.[HistoryUserName]
        ,u.[HistoryTimestamp]
        ,u.[HistoryAction]
        ,u.[UserID]
        ,u.[AccountID]
    FROM
        [dbo].[UserAccountHistory] u
    WHERE
            (@UserAccountHistoryID IS NULL OR @UserAccountHistoryID = u.[UserAccountHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = u.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = u.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = u.[HistoryAction])
        AND (@UserID IS NULL OR @UserID = u.[UserID])
        AND (@AccountID IS NULL OR @AccountID = u.[AccountID])
END