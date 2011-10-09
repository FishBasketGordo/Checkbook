USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AllocationTypeAccount_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AllocationTypeAccount_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AllocationTypeAccount_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AllocationTypeAccount_INSERT]
(
     @AllocationTypeID INT = NULL
    ,@AccountID INT = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[AllocationTypeAccount]
    (
         [AllocationTypeID]
        ,[AccountID]
    )
    VALUES
    (
         @AllocationTypeID
        ,@AccountID
    )
    SELECT SCOPE_IDENTITY()
END