USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundBudgetHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundBudgetHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundBudgetHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundBudgetHistory_SELECT]
(
     @FundBudgetHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@FundID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@BudgetAmount MONEY = NULL
)
AS
BEGIN
    SELECT
         f.[FundBudgetHistoryID]
        ,f.[HistoryUserName]
        ,f.[HistoryTimestamp]
        ,f.[HistoryAction]
        ,f.[FundID]
        ,f.[AllocationTypeID]
        ,f.[BudgetAmount]
    FROM
        [dbo].[FundBudgetHistory] f
    WHERE
            (@FundBudgetHistoryID IS NULL OR @FundBudgetHistoryID = f.[FundBudgetHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = f.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = f.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = f.[HistoryAction])
        AND (@FundID IS NULL OR @FundID = f.[FundID])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = f.[AllocationTypeID])
        AND (@BudgetAmount IS NULL OR @BudgetAmount = f.[BudgetAmount])
END