USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundTypeHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundTypeHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundTypeHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundTypeHistory_COUNT]
(
     @FundTypeHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@FundTypeID INT = NULL
    ,@Type VARCHAR(20) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[FundTypeHistory] f
    WHERE
            (@FundTypeHistoryID IS NULL OR @FundTypeHistoryID = f.[FundTypeHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = f.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = f.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = f.[HistoryAction])
        AND (@FundTypeID IS NULL OR @FundTypeID = f.[FundTypeID])
        AND (@Type IS NULL OR @Type = f.[Type])
END