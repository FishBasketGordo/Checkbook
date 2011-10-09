USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundBudget_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundBudget_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundBudget_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundBudget_COUNT]
(
     @FundID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@BudgetAmount MONEY = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[FundBudget] f
    WHERE
            (@FundID IS NULL OR @FundID = f.[FundID])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = f.[AllocationTypeID])
        AND (@BudgetAmount IS NULL OR @BudgetAmount = f.[BudgetAmount])
END