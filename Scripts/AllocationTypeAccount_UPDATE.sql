USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeAccount_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeAccount_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeAccount_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeAccount_UPDATE]
(
     @AllocationTypeID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[AllocationTypeAccount]
    SET
         [AllocationTypeID] = @AllocationTypeID
        ,[AccountID] = @AccountID
    WHERE
            (@AllocationTypeID = AllocationTypeID)
        AND (@AccountID = AccountID)
END
