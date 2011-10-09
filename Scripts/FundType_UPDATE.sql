USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundType_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundType_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundType_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundType_UPDATE]
(
     @FundTypeID INT = NULL
    ,@Type VARCHAR(20) = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[FundType]
    SET
         [Type] = @Type
    WHERE
        (@FundTypeID = FundTypeID)
END
