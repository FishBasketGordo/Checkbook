USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserAccount_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserAccount_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserAccount_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserAccount_DELETE]
(
     @UserID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[UserAccount]
    WHERE
             (@UserID = UserID)
         AND (@AccountID = AccountID)
END
