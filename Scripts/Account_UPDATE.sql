USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Account_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Account_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Account_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Account_UPDATE]
(
     @AccountID INT = NULL
    ,@AccountTypeID INT = NULL
    ,@Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[Account]
    SET
         [AccountTypeID] = @AccountTypeID
        ,[Name] = @Name
        ,[Description] = @Description
    WHERE
        (@AccountID = AccountID)
END
