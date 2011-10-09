USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'BillFrequencyHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[BillFrequencyHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[BillFrequencyHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[BillFrequencyHistory_COUNT]
(
     @BillFrequencyHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@BillFrequencyID INT = NULL
    ,@FrequencyName VARCHAR(20) = NULL
    ,@ApproximateDays INT = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[BillFrequencyHistory] b
    WHERE
            (@BillFrequencyHistoryID IS NULL OR @BillFrequencyHistoryID = b.[BillFrequencyHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = b.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = b.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = b.[HistoryAction])
        AND (@BillFrequencyID IS NULL OR @BillFrequencyID = b.[BillFrequencyID])
        AND (@FrequencyName IS NULL OR @FrequencyName = b.[FrequencyName])
        AND (@ApproximateDays IS NULL OR @ApproximateDays = b.[ApproximateDays])
END