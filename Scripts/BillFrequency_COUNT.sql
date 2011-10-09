USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'BillFrequency_COUNT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[BillFrequency_COUNT] AS BEGIN PRINT ''Stub Procedure for [dbo].[BillFrequency_COUNT]'' END')
END
GO

ALTER PROCEDURE [dbo].[BillFrequency_COUNT]
(
     @BillFrequencyID INT = NULL
    ,@FrequencyName VARCHAR(20) = NULL
    ,@ApproximateDays INT = NULL
)
AS
BEGIN
    SELECT
        COUNT(*) AS [Count]
    FROM
        [dbo].[BillFrequency] b
    WHERE
            (@BillFrequencyID IS NULL OR @BillFrequencyID = b.[BillFrequencyID])
        AND (@FrequencyName IS NULL OR @FrequencyName = b.[FrequencyName])
        AND (@ApproximateDays IS NULL OR @ApproximateDays = b.[ApproximateDays])
END