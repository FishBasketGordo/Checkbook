USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AccountTypeHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AccountTypeHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AccountTypeHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AccountTypeHistory_COUNT]
(
     @AccountTypeHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@AccountTypeID INT = NULL
    ,@Type VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[AccountTypeHistory] a
    WHERE
            (@AccountTypeHistoryID IS NULL OR @AccountTypeHistoryID = a.[AccountTypeHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = a.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = a.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = a.[HistoryAction])
        AND (@AccountTypeID IS NULL OR @AccountTypeID = a.[AccountTypeID])
        AND (@Type IS NULL OR @Type = a.[Type])
        AND (@Description IS NULL OR @Description = a.[Description])
END