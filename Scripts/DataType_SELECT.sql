USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'DataType_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[DataType_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[DataType_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[DataType_SELECT]
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
    SELECT
         d.[DataTypeID]
        ,d.[Name]
        ,d.[Description]
        ,d.[InputFilter]
        ,d.[ValidationFilter]
        ,d.[Format]
        ,d.[System]
    FROM
        [dbo].[DataType] d
    WHERE
            (@DataTypeID IS NULL OR @DataTypeID = d.[DataTypeID])
        AND (@Name IS NULL OR @Name = d.[Name])
        AND (@Description IS NULL OR @Description = d.[Description])
        AND (@InputFilter IS NULL OR @InputFilter = d.[InputFilter])
        AND (@ValidationFilter IS NULL OR @ValidationFilter = d.[ValidationFilter])
        AND (@Format IS NULL OR @Format = d.[Format])
        AND (@System IS NULL OR @System = d.[System])
END