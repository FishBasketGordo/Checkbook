USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Fund_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Fund_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Fund_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Fund_COUNT]
(
     @FundID INT = NULL
    ,@FundTypeID INT = NULL
    ,@Name VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[Fund] f
    WHERE
            (@FundID IS NULL OR @FundID = f.[FundID])
        AND (@FundTypeID IS NULL OR @FundTypeID = f.[FundTypeID])
        AND (@Name IS NULL OR @Name = f.[Name])
        AND (@Description IS NULL OR @Description = f.[Description])
END