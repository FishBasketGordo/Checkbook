USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Transaction_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Transaction_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Transaction_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Transaction_UPDATE]
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
    UPDATE
        [dbo].[Transaction]
    SET
         [AccountID] = @AccountID
        ,[TransactionDate] = @TransactionDate
        ,[PostingDate] = @PostingDate
        ,[EntryDate] = @EntryDate
        ,[ModifiedDate] = @ModifiedDate
        ,[Description] = @Description
    WHERE
        (@TransactionID = TransactionID)
END
