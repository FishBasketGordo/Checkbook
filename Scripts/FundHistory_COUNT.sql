USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundHistory_COUNT]
(
     @FundHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@FundID INT = NULL
    ,@FundTypeID INT = NULL
    ,@Name VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[FundHistory] f
    WHERE
            (@FundHistoryID IS NULL OR @FundHistoryID = f.[FundHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = f.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = f.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = f.[HistoryAction])
        AND (@FundID IS NULL OR @FundID = f.[FundID])
        AND (@FundTypeID IS NULL OR @FundTypeID = f.[FundTypeID])
        AND (@Name IS NULL OR @Name = f.[Name])
        AND (@Description IS NULL OR @Description = f.[Description])
END