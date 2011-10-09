USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'BillFrequency_UPDATE'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[BillFrequency_UPDATE] AS BEGIN PRINT ''Stub Procedure for [dbo].[BillFrequency_UPDATE]'' END')
END
GO

ALTER PROCEDURE [dbo].[BillFrequency_UPDATE]
(
     @BillFrequencyID INT = NULL
    ,@FrequencyName VARCHAR(20) = NULL
    ,@ApproximateDays INT = NULL
)
AS
BEGIN
    UPDATE
        [dbo].[BillFrequency]
    SET
         [FrequencyName] = @FrequencyName
        ,[ApproximateDays] = @ApproximateDays
    WHERE
        (@BillFrequencyID = BillFrequencyID)
END
