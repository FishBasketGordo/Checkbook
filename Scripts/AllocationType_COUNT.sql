USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationType_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationType_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationType_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationType_COUNT]
(
     @AllocationTypeID INT = NULL
    ,@Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[AllocationType] a
    WHERE
            (@AllocationTypeID IS NULL OR @AllocationTypeID = a.[AllocationTypeID])
        AND (@Name IS NULL OR @Name = a.[Name])
        AND (@Description IS NULL OR @Description = a.[Description])
END