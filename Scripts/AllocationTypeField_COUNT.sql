USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeField_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeField_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeField_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeField_COUNT]
(
     @AllocationTypeFieldID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@DataTypeID INT = NULL
    ,@Label VARCHAR(20) = NULL
    ,@Required BIT = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[AllocationTypeField] a
    WHERE
            (@AllocationTypeFieldID IS NULL OR @AllocationTypeFieldID = a.[AllocationTypeFieldID])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = a.[AllocationTypeID])
        AND (@DataTypeID IS NULL OR @DataTypeID = a.[DataTypeID])
        AND (@Label IS NULL OR @Label = a.[Label])
        AND (@Required IS NULL OR @Required = a.[Required])
END