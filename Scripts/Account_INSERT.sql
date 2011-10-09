USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Account_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Account_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Account_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Account_INSERT]
(
     @AccountTypeID INT = NULL
    ,@Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[Account]
    (
         [AccountTypeID]
        ,[Name]
        ,[Description]
    )
    VALUES
    (
         @AccountTypeID
        ,@Name
        ,@Description
    )
    SELECT SCOPE_IDENTITY()
END