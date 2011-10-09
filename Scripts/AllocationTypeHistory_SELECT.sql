USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeHistory_SELECT]
(
     @AllocationTypeHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@AllocationTypeID INT = NULL
    ,@Name VARCHAR(50) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
         a.[AllocationTypeHistoryID]
        ,a.[HistoryUserName]
        ,a.[HistoryTimestamp]
        ,a.[HistoryAction]
        ,a.[AllocationTypeID]
        ,a.[Name]
        ,a.[Description]
    FROM
        [dbo].[AllocationTypeHistory] a
    WHERE
            (@AllocationTypeHistoryID IS NULL OR @AllocationTypeHistoryID = a.[AllocationTypeHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = a.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = a.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = a.[HistoryAction])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = a.[AllocationTypeID])
        AND (@Name IS NULL OR @Name = a.[Name])
        AND (@Description IS NULL OR @Description = a.[Description])
END