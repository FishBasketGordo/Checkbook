USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AccountType_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AccountType_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AccountType_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AccountType_INSERT]
(
     @Type VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[AccountType]
    (
         [Type]
        ,[Description]
    )
    VALUES
    (
         @Type
        ,@Description
    )
    SELECT SCOPE_IDENTITY()
END