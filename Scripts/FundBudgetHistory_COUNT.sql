USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundBudgetHistory_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundBudgetHistory_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundBudgetHistory_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundBudgetHistory_COUNT]
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
        COUNT(*) AS [Count]
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