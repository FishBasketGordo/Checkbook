USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AccountType_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AccountType_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AccountType_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AccountType_DELETE]
(
    @AccountTypeID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[AccountType]
    WHERE
         (@AccountTypeID = AccountTypeID)
END
