USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Bill_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Bill_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Bill_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Bill_SELECT]
(
     @BillID INT = NULL
    ,@AllocationTypeID INT = NULL
    ,@BillFrequencyID INT = NULL
    ,@BillerName VARCHAR(50) = NULL
    ,@Amount MONEY = NULL
    ,@DueDate DATE = NULL
)
AS
BEGIN
    SELECT
         b.[BillID]
        ,b.[AllocationTypeID]
        ,b.[BillFrequencyID]
        ,b.[BillerName]
        ,b.[Amount]
        ,b.[DueDate]
    FROM
        [dbo].[Bill] b
    WHERE
            (@BillID IS NULL OR @BillID = b.[BillID])
        AND (@AllocationTypeID IS NULL OR @AllocationTypeID = b.[AllocationTypeID])
        AND (@BillFrequencyID IS NULL OR @BillFrequencyID = b.[BillFrequencyID])
        AND (@BillerName IS NULL OR @BillerName = b.[BillerName])
        AND (@Amount IS NULL OR @Amount = b.[Amount])
        AND (@DueDate IS NULL OR @DueDate = b.[DueDate])
END