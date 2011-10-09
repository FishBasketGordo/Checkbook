USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'User_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[User_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[User_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[User_UPDATE]
(
     @UserID INT = NULL
    ,@UserName VARCHAR(50) = NULL
    ,@FirstName VARCHAR(50) = NULL
    ,@LastName VARCHAR(50) = NULL
    ,@Password VARCHAR(50) = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[User]
    SET
         [UserName] = @UserName
        ,[FirstName] = @FirstName
        ,[LastName] = @LastName
        ,[Password] = @Password
    WHERE
        (@UserID = UserID)
END
