USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeField_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeField_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeField_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeField_INSERT]
(
     @AllocationTypeFieldID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@DataTypeID INT = NULL
    ,@Label VARCHAR(20) = NULL
    ,@Required BIT = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[AllocationTypeField]
    (
         [AllocationTypeFieldID]
        ,[AllocationTypeID]
        ,[DataTypeID]
        ,[Label]
        ,[Required]
    )
    VALUES
    (
         @AllocationTypeFieldID
        ,@AllocationTypeID
        ,@DataTypeID
        ,@Label
        ,@Required
    )
    SELECT SCOPE_IDENTITY()
END