USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'FundType_INSERT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[FundType_INSERT] AS BEGIN PRINT ''Stub Procedure for [dbo].[FundType_INSERT]'' END')
END
GO

ALTER PROCEDURE [dbo].[FundType_INSERT]
(
    @Type VARCHAR(20) = NULL
)
AS
BEGIN
    INSERT INTO [dbo].[FundType]
    (
         [Type]
    )
    VALUES
    (
        @Type
    )
    SELECT SCOPE_IDENTITY()
END