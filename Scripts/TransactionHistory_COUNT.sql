USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'TransactionHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[TransactionHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[TransactionHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[TransactionHistory_COUNT]
(
     @TransactionHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@TransactionID INT = NULL
    ,@AccountID INT = NULL
    ,@TransactionDate DATE = NULL
    ,@PostingDate DATE = NULL
    ,@EntryDate DATE = NULL
    ,@ModifiedDate DATE = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[TransactionHistory] t
    WHERE
            (@TransactionHistoryID IS NULL OR @TransactionHistoryID = t.[TransactionHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = t.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = t.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = t.[HistoryAction])
        AND (@TransactionID IS NULL OR @TransactionID = t.[TransactionID])
        AND (@AccountID IS NULL OR @AccountID = t.[AccountID])
        AND (@TransactionDate IS NULL OR @TransactionDate = t.[TransactionDate])
        AND (@PostingDate IS NULL OR @PostingDate = t.[PostingDate])
        AND (@EntryDate IS NULL OR @EntryDate = t.[EntryDate])
        AND (@ModifiedDate IS NULL OR @ModifiedDate = t.[ModifiedDate])
        AND (@Description IS NULL OR @Description = t.[Description])
END