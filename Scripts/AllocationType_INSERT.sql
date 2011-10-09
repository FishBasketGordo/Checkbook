USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationType_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationType_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationType_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationType_INSERT]
(
     @Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[AllocationType]
    (
         [Name]
        ,[Description]
    )
    VALUES
    (
         @Name
        ,@Description
    )
    SELECT SCOPE_IDENTITY()
END