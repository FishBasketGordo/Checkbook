USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationType_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationType_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationType_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationType_DELETE]
(
    @AllocationTypeID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[AllocationType]
    WHERE
         (@AllocationTypeID = AllocationTypeID)
END
