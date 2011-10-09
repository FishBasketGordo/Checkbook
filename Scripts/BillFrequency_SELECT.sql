USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'BillFrequency_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[BillFrequency_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[BillFrequency_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[BillFrequency_SELECT]
(
     @BillFrequencyID INT = NULL
    ,@FrequencyName VARCHAR(20) = NULL
    ,@ApproximateDays INT = NULL
)
AS
BEGIN
    SELECT
         b.[BillFrequencyID]
        ,b.[FrequencyName]
        ,b.[ApproximateDays]
    FROM
        [dbo].[BillFrequency] b
    WHERE
            (@BillFrequencyID IS NULL OR @BillFrequencyID = b.[BillFrequencyID])
        AND (@FrequencyName IS NULL OR @FrequencyName = b.[FrequencyName])
        AND (@ApproximateDays IS NULL OR @ApproximateDays = b.[ApproximateDays])
END