USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Transaction_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Transaction_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Transaction_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Transaction_DELETE]
(
    @TransactionID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[Transaction]
    WHERE
         (@TransactionID = TransactionID)
END
