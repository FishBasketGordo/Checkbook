USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Bill_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Bill_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Bill_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Bill_DELETE]
(
    @BillID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[Bill]
    WHERE
         (@BillID = BillID)
END
