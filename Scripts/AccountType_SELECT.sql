USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'AccountType_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[AccountType_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[AccountType_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[AccountType_SELECT]
(
     @AccountTypeID INT = NULL
    ,@Type VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
)
AS
BEGIN
    SELECT
         a.[AccountTypeID]
        ,a.[Type]
        ,a.[Description]
    FROM
        [dbo].[AccountType] a
    WHERE
            (@AccountTypeID IS NULL OR @AccountTypeID = a.[AccountTypeID])
        AND (@Type IS NULL OR @Type = a.[Type])
        AND (@Description IS NULL OR @Description = a.[Description])
END