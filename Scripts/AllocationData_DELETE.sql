USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationData_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationData_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationData_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationData_DELETE]
(
    @AllocationDataID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[AllocationData]
    WHERE
         (@AllocationDataID = AllocationDataID)
END
