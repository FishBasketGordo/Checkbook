USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeAccount_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeAccount_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeAccount_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeAccount_SELECT]
(
     @AllocationTypeID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    SELECT
         a.[AllocationTypeID]
        ,a.[AccountID]
    FROM
        [dbo].[AllocationTypeAccount] a
    WHERE
            (@AllocationTypeID IS NULL OR @AllocationTypeID = a.[AllocationTypeID])
        AND (@AccountID IS NULL OR @AccountID = a.[AccountID])
END