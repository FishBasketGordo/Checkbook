USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundType_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundType_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundType_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundType_SELECT]
(
     @FundTypeID INT = NULL
    ,@Type VARCHAR(20) = NULL
)
AS
BEGIN
    SELECT
         f.[FundTypeID]
        ,f.[Type]
    FROM
        [dbo].[FundType] f
    WHERE
            (@FundTypeID IS NULL OR @FundTypeID = f.[FundTypeID])
        AND (@Type IS NULL OR @Type = f.[Type])
END