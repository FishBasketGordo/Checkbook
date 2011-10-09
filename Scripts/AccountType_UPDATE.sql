USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AccountType_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AccountType_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AccountType_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AccountType_UPDATE]
(
     @AccountTypeID INT = NULL
    ,@Type VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[AccountType]
    SET
         [Type] = @Type
        ,[Description] = @Description
    WHERE
        (@AccountTypeID = AccountTypeID)
END
