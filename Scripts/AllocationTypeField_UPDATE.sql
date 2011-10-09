USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeField_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeField_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeField_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeField_UPDATE]
(
     @AllocationTypeFieldID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@DataTypeID INT = NULL
    ,@Label VARCHAR(20) = NULL
    ,@Required BIT = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[AllocationTypeField]
    SET
         [AllocationTypeFieldID] = @AllocationTypeFieldID
        ,[AllocationTypeID] = @AllocationTypeID
        ,[DataTypeID] = @DataTypeID
        ,[Label] = @Label
        ,[Required] = @Required
    WHERE
        (@AllocationTypeFieldID = AllocationTypeFieldID)
END
