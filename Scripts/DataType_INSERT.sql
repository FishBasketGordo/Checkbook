USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'DataType_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[DataType_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[DataType_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[DataType_INSERT]
(
     @Name VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
    ,@InputFilter VARCHAR(50) = NULL
    ,@ValidationFilter VARCHAR(50) = NULL
    ,@Format VARCHAR(50) = NULL
    ,@System BIT = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[DataType]
    (
         [Name]
        ,[Description]
        ,[InputFilter]
        ,[ValidationFilter]
        ,[Format]
        ,[System]
    )
    VALUES
    (
         @Name
        ,@Description
        ,@InputFilter
        ,@ValidationFilter
        ,@Format
        ,@System
    )
    SELECT SCOPE_IDENTITY()
END