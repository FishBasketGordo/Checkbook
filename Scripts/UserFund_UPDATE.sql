USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserFund_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserFund_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserFund_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserFund_UPDATE]
(
     @UserID INT = NULL
    ,@FundID INT = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[UserFund]
    SET
         [UserID] = @UserID
        ,[FundID] = @FundID
    WHERE
            (@UserID = UserID)
        AND (@FundID = FundID)
END
