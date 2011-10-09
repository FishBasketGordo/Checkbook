USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserAccount_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserAccount_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserAccount_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserAccount_INSERT]
(
     @UserID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[UserAccount]
    (
         [UserID]
        ,[AccountID]
    )
    VALUES
    (
         @UserID
        ,@AccountID
    )
    SELECT SCOPE_IDENTITY()
END