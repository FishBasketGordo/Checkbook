USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'BillHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[BillHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[BillHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[BillHistory_SELECT]
(
     @BillHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@BillID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@BillFrequencyID INT = NULL
    ,@BillerName VARCHAR(50) = NULL
    ,@Amount MONEY = NULL
    ,@DueDate DATE = NULL
)
AS
BEGIN
    SELECT
         b.[BillHistoryID]
        ,b.[HistoryUserName]
        ,b.[HistoryTimestamp]
        ,b.[HistoryAction]
        ,b.[BillID]
        ,b.[AllocationTypeID]
        ,b.[BillFrequencyID]
        ,b.[BillerName]
        ,b.[Amount]
        ,b.[DueDate]
    FROM
        [dbo].[BillHistory] b
    WHERE
            (@BillHistoryID IS NULL OR @BillHistoryID = b.[BillHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = b.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = b.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = b.[HistoryAction])
        AND (@BillID IS NULL OR @BillID = b.[BillID])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = b.[AllocationTypeID])
        AND (@BillFrequencyID IS NULL OR @BillFrequencyID = b.[BillFrequencyID])
        AND (@BillerName IS NULL OR @BillerName = b.[BillerName])
        AND (@Amount IS NULL OR @Amount = b.[Amount])
        AND (@DueDate IS NULL OR @DueDate = b.[DueDate])
END