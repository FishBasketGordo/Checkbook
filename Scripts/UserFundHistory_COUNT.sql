USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserFundHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserFundHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserFundHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserFundHistory_COUNT]
(
     @UserFundHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@UserID INT = NULL
    ,@FundID INT = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[UserFundHistory] u
    WHERE
            (@UserFundHistoryID IS NULL OR @UserFundHistoryID = u.[UserFundHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = u.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = u.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = u.[HistoryAction])
        AND (@UserID IS NULL OR @UserID = u.[UserID])
        AND (@FundID IS NULL OR @FundID = u.[FundID])
END