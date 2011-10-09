USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'User_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[User_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[User_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[User_DELETE]
(
    @UserID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[User]
    WHERE
         (@UserID = UserID)
END
