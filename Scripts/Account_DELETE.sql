USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Account_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Account_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Account_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Account_DELETE]
(
    @AccountID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[Account]
    WHERE
         (@AccountID = AccountID)
END
