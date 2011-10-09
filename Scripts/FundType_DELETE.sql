USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundType_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundType_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundType_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundType_DELETE]
(
    @FundTypeID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[FundType]
    WHERE
         (@FundTypeID = FundTypeID)
END
