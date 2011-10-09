USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'User_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[User_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[User_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[User_SELECT]
(
     @UserID INT = NULL
    ,@UserName VARCHAR(50) = NULL
    ,@FirstName VARCHAR(50) = NULL
    ,@LastName VARCHAR(50) = NULL
    ,@Password VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
         u.[UserID]
        ,u.[UserName]
        ,u.[FirstName]
        ,u.[LastName]
        ,u.[Password]
    FROM
        [dbo].[User] u
    WHERE
            (@UserID IS NULL OR @UserID = u.[UserID])
        AND (@UserName IS NULL OR @UserName = u.[UserName])
        AND (@FirstName IS NULL OR @FirstName = u.[FirstName])
        AND (@LastName IS NULL OR @LastName = u.[LastName])
        AND (@Password IS NULL OR @Password = u.[Password])
END