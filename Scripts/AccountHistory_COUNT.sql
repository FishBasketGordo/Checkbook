USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AccountHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AccountHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AccountHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AccountHistory_COUNT]
(
     @AccountHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@AccountID INT = NULL
    ,@AccountTypeID INT = NULL
    ,@Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[AccountHistory] a
    WHERE
            (@AccountHistoryID IS NULL OR @AccountHistoryID = a.[AccountHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = a.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = a.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = a.[HistoryAction])
        AND (@AccountID IS NULL OR @AccountID = a.[AccountID])
        AND (@AccountTypeID IS NULL OR @AccountTypeID = a.[AccountTypeID])
        AND (@Name IS NULL OR @Name = a.[Name])
        AND (@Description IS NULL OR @Description = a.[Description])
END