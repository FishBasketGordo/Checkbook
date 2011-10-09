USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'BillFrequency_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[BillFrequency_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[BillFrequency_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[BillFrequency_DELETE]
(
    @BillFrequencyID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[BillFrequency]
    WHERE
         (@BillFrequencyID = BillFrequencyID)
END
