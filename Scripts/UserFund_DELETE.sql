USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserFund_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserFund_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserFund_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserFund_DELETE]
(
     @UserID INT = NULL
    ,@FundID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[UserFund]
    WHERE
             (@UserID = UserID)
         AND (@FundID = FundID)
END
