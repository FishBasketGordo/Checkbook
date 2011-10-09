USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'UserHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[UserHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[UserHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[UserHistory_SELECT]
(
     @UserHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@UserID INT = NULL
    ,@UserName VARCHAR(50) = NULL
    ,@FirstName VARCHAR(50) = NULL
    ,@LastName VARCHAR(50) = NULL
    ,@Password VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
         u.[UserHistoryID]
        ,u.[HistoryUserName]
        ,u.[HistoryTimestamp]
        ,u.[HistoryAction]
        ,u.[UserID]
        ,u.[UserName]
        ,u.[FirstName]
        ,u.[LastName]
        ,u.[Password]
    FROM
        [dbo].[UserHistory] u
    WHERE
            (@UserHistoryID IS NULL OR @UserHistoryID = u.[UserHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = u.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = u.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = u.[HistoryAction])
        AND (@UserID IS NULL OR @UserID = u.[UserID])
        AND (@UserName IS NULL OR @UserName = u.[UserName])
        AND (@FirstName IS NULL OR @FirstName = u.[FirstName])
        AND (@LastName IS NULL OR @LastName = u.[LastName])
        AND (@Password IS NULL OR @Password = u.[Password])
END