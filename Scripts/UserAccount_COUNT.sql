USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserAccount_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserAccount_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserAccount_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserAccount_COUNT]
(
     @UserID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[UserAccount] u
    WHERE
            (@UserID IS NULL OR @UserID = u.[UserID])
        AND (@AccountID IS NULL OR @AccountID = u.[AccountID])
END