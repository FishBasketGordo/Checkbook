USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'DataType_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[DataType_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[DataType_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[DataType_DELETE]
(
    @DataTypeID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[DataType]
    WHERE
         (@DataTypeID = DataTypeID)
END
