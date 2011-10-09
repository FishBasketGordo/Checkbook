USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Transaction_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Transaction_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Transaction_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Transaction_INSERT]
(
     @AccountID INT = NULL
    ,@TransactionDate DATE = NULL
    ,@PostingDate DATE = NULL
    ,@EntryDate DATE = NULL
    ,@ModifiedDate DATE = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[Transaction]
    (
         [AccountID]
        ,[TransactionDate]
        ,[PostingDate]
        ,[EntryDate]
        ,[ModifiedDate]
        ,[Description]
    )
    VALUES
    (
         @AccountID
        ,@TransactionDate
        ,@PostingDate
        ,@EntryDate
        ,@ModifiedDate
        ,@Description
    )
    SELECT SCOPE_IDENTITY()
END