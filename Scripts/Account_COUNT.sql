USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Account_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Account_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Account_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Account_COUNT]
(
     @AccountID INT = NULL
    ,@AccountTypeID INT = NULL
    ,@Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[Account] a
    WHERE
            (@AccountID IS NULL OR @AccountID = a.[AccountID])
        AND (@AccountTypeID IS NULL OR @AccountTypeID = a.[AccountTypeID])
        AND (@Name IS NULL OR @Name = a.[Name])
        AND (@Description IS NULL OR @Description = a.[Description])
END