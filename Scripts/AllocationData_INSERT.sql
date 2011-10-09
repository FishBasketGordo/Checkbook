USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationData_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationData_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationData_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationData_INSERT]
(
     @AllocationDataID INT = NULL
    ,@AllocationTypeFieldID INT = NULL
    ,@AccountID INT = NULL
    ,@TransactionID INT = NULL
    ,@AllocationID INT = NULL
    ,@FundID INT = NULL
    ,@Value VARCHAR(50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[AllocationData]
    (
         [AllocationDataID]
        ,[AllocationTypeFieldID]
        ,[AccountID]
        ,[TransactionID]
        ,[AllocationID]
        ,[FundID]
        ,[Value]
    )
    VALUES
    (
         @AllocationDataID
        ,@AllocationTypeFieldID
        ,@AccountID
        ,@TransactionID
        ,@AllocationID
        ,@FundID
        ,@Value
    )
    SELECT SCOPE_IDENTITY()
END