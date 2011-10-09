USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Fund_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Fund_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[Fund_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[Fund_INSERT]
(
     @FundTypeID INT = NULL
    ,@Name VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[Fund]
    (
         [FundTypeID]
        ,[Name]
        ,[Description]
    )
    VALUES
    (
         @FundTypeID
        ,@Name
        ,@Description
    )
    SELECT SCOPE_IDENTITY()
END