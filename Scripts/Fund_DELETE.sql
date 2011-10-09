USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Fund_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Fund_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Fund_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Fund_DELETE]
(
    @FundID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[Fund]
    WHERE
         (@FundID = FundID)
END
