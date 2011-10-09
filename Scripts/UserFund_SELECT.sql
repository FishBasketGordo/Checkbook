USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserFund_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserFund_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserFund_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserFund_SELECT]
(
     @UserID INT = NULL
    ,@FundID INT = NULL
)
AS
BEGIN
    SELECT
         u.[UserID]
        ,u.[FundID]
    FROM
        [dbo].[UserFund] u
    WHERE
            (@UserID IS NULL OR @UserID = u.[UserID])
        AND (@FundID IS NULL OR @FundID = u.[FundID])
END