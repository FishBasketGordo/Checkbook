USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserAccount_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserAccount_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserAccount_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserAccount_UPDATE]
(
     @UserID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[UserAccount]
    SET
         [UserID] = @UserID
        ,[AccountID] = @AccountID
    WHERE
            (@UserID = UserID)
        AND (@AccountID = AccountID)
END
