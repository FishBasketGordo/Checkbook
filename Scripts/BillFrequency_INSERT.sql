USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'BillFrequency_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[BillFrequency_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[BillFrequency_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[BillFrequency_INSERT]
(
     @FrequencyName VARCHAR(20) = NULL
    ,@ApproximateDays INT = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[BillFrequency]
    (
         [FrequencyName]
        ,[ApproximateDays]
    )
    VALUES
    (
         @FrequencyName
        ,@ApproximateDays
    )
    SELECT SCOPE_IDENTITY()
END