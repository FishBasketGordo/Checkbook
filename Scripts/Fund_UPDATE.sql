USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'Fund_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[Fund_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[Fund_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[Fund_UPDATE]
(
     @FundID INT = NULL
    ,@FundTypeID INT = NULL
    ,@Name VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[Fund]
    SET
         [FundTypeID] = @FundTypeID
        ,[Name] = @Name
        ,[Description] = @Description
    WHERE
        (@FundID = FundID)
END
