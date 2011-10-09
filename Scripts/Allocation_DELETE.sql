USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Allocation_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Allocation_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Allocation_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Allocation_DELETE]
(
    @AllocationID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[Allocation]
    WHERE
         (@AllocationID = AllocationID)
END
