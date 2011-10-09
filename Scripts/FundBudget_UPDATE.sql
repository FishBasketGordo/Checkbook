USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundBudget_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundBudget_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundBudget_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundBudget_UPDATE]
(
     @FundID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@BudgetAmount MONEY = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[FundBudget]
    SET
         [FundID] = @FundID
        ,[AllocationTypeID] = @AllocationTypeID
        ,[BudgetAmount] = @BudgetAmount
    WHERE
            (@FundID = FundID)
        AND (@AllocationTypeID = AllocationTypeID)
END
