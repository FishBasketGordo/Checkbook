USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Account_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Account_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Account_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Account_SELECT]
(
     @AccountID INT = NULL
    ,@AccountTypeID INT = NULL
    ,@Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
         a.[AccountID]
        ,a.[AccountTypeID]
        ,a.[Name]
        ,a.[Description]
    FROM
        [dbo].[Account] a
    WHERE
            (@AccountID IS NULL OR @AccountID = a.[AccountID])
        AND (@AccountTypeID IS NULL OR @AccountTypeID = a.[AccountTypeID])
        AND (@Name IS NULL OR @Name = a.[Name])
        AND (@Description IS NULL OR @Description = a.[Description])
END