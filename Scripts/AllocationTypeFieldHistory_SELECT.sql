USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeFieldHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeFieldHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeFieldHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeFieldHistory_SELECT]
(
     @AllocationTypeFieldHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@AllocationTypeFieldID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@DataTypeID INT = NULL
    ,@Label VARCHAR(20) = NULL
    ,@Required BIT = NULL
)
AS
BEGIN
    SELECT
         a.[AllocationTypeFieldHistoryID]
        ,a.[HistoryUserName]
        ,a.[HistoryTimestamp]
        ,a.[HistoryAction]
        ,a.[AllocationTypeFieldID]
        ,a.[AllocationTypeID]
        ,a.[DataTypeID]
        ,a.[Label]
        ,a.[Required]
    FROM
        [dbo].[AllocationTypeFieldHistory] a
    WHERE
            (@AllocationTypeFieldHistoryID IS NULL OR @AllocationTypeFieldHistoryID = a.[AllocationTypeFieldHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = a.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = a.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = a.[HistoryAction])
        AND (@AllocationTypeFieldID IS NULL OR @AllocationTypeFieldID = a.[AllocationTypeFieldID])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = a.[AllocationTypeID])
        AND (@DataTypeID IS NULL OR @DataTypeID = a.[DataTypeID])
        AND (@Label IS NULL OR @Label = a.[Label])
        AND (@Required IS NULL OR @Required = a.[Required])
END