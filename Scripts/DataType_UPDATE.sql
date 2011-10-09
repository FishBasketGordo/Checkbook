USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'DataType_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[DataType_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[DataType_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[DataType_UPDATE]
(
     @DataTypeID INT = NULL
    ,@Name VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
    ,@InputFilter VARCHAR(50) = NULL
    ,@ValidationFilter VARCHAR(50) = NULL
    ,@Format VARCHAR(50) = NULL
    ,@System BIT = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[DataType]
    SET
         [Name] = @Name
        ,[Description] = @Description
        ,[InputFilter] = @InputFilter
        ,[ValidationFilter] = @ValidationFilter
        ,[Format] = @Format
        ,[System] = @System
    WHERE
        (@DataTypeID = DataTypeID)
END
