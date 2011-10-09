USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeField_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeField_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeField_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeField_DELETE]
(
    @AllocationTypeFieldID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[AllocationTypeField]
    WHERE
         (@AllocationTypeFieldID = AllocationTypeFieldID)
END
