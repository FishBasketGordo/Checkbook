USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundBudget_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundBudget_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundBudget_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundBudget_DELETE]
(
     @FundID INT = NULL
    ,@AllocationTypeID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[FundBudget]
    WHERE
             (@FundID = FundID)
         AND (@AllocationTypeID = AllocationTypeID)
END
