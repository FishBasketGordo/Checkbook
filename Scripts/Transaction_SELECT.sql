USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Transaction_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Transaction_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Transaction_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Transaction_SELECT]
(
     @TransactionID INT = NULL
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
         t.[TransactionID]
        ,t.[AccountID]
        ,t.[TransactionDate]
        ,t.[PostingDate]
        ,t.[EntryDate]
        ,t.[ModifiedDate]
        ,t.[Description]
    FROM
        [dbo].[Transaction] t
    WHERE
            (@TransactionID IS NULL OR @TransactionID = t.[TransactionID])
        AND (@AccountID IS NULL OR @AccountID = t.[AccountID])
        AND (@TransactionDate IS NULL OR @TransactionDate = t.[TransactionDate])
        AND (@PostingDate IS NULL OR @PostingDate = t.[PostingDate])
        AND (@EntryDate IS NULL OR @EntryDate = t.[EntryDate])
        AND (@ModifiedDate IS NULL OR @ModifiedDate = t.[ModifiedDate])
        AND (@Description IS NULL OR @Description = t.[Description])
END