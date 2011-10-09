USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AccountType_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AccountType_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AccountType_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AccountType_COUNT]
(
     @AccountTypeID INT = NULL
    ,@Type VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[AccountType] a
    WHERE
            (@AccountTypeID IS NULL OR @AccountTypeID = a.[AccountTypeID])
        AND (@Type IS NULL OR @Type = a.[Type])
        AND (@Description IS NULL OR @Description = a.[Description])
END