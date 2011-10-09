USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'User_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[User_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[User_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[User_INSERT]
(
     @UserName VARCHAR(50) = NULL
    ,@FirstName VARCHAR(50) = NULL
    ,@LastName VARCHAR(50) = NULL
    ,@Password VARCHAR(50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[User]
    (
         [UserName]
        ,[FirstName]
        ,[LastName]
        ,[Password]
    )
    VALUES
    (
         @UserName
        ,@FirstName
        ,@LastName
        ,@Password
    )
    SELECT SCOPE_IDENTITY()
END