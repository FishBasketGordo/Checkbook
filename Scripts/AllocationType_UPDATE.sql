USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationType_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationType_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationType_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationType_UPDATE]
(
     @AllocationTypeID INT = NULL
    ,@Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[AllocationType]
    SET
         [Name] = @Name
        ,[Description] = @Description
    WHERE
        (@AllocationTypeID = AllocationTypeID)
END
