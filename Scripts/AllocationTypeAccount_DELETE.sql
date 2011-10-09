USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeAccount_DELETE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeAccount_DELETE] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeAccount_DELETE]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeAccount_DELETE]
(
     @AllocationTypeID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    DELETE FROM
         [dbo].[AllocationTypeAccount]
    WHERE
             (@AllocationTypeID = AllocationTypeID)
         AND (@AccountID = AccountID)
END
