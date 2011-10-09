USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundBudget_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundBudget_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundBudget_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundBudget_INSERT]
(
     @FundID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@BudgetAmount MONEY = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[FundBudget]
    (
         [FundID]
        ,[AllocationTypeID]
        ,[BudgetAmount]
    )
    VALUES
    (
         @FundID
        ,@AllocationTypeID
        ,@BudgetAmount
    )
    SELECT SCOPE_IDENTITY()
END