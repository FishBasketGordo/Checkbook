USE [Checkbook]
GO

IF NOT EXISTS (
    SELECT TOP 1 1 FROM INFORMATION_SCHEMA.ROUTINES WHERE
            ROUTINE_CATALOG = 'Checkbook'
        AND ROUTINE_SCHEMA = 'dbo'
        AND ROUTINE_NAME = 'DataTypeHistory_SELECT'
)
BEGIN
    EXEC ('CREATE PROCEDURE [dbo].[DataTypeHistory_SELECT] AS BEGIN PRINT ''Stub Procedure for [dbo].[DataTypeHistory_SELECT]'' END')
END
GO

ALTER PROCEDURE [dbo].[DataTypeHistory_SELECT]
(
     @DataTypeHistoryID INT = NULL
    ,@HistoryUserName VARCHAR(30) = NULL
    ,@HistoryTimestamp DATETIME = NULL
    ,@HistoryAction VARCHAR(1) = NULL
    ,@DataTypeID INT = NULL
    ,@Name VARCHAR(20) = NULL
    ,@Description VARCHAR(50) = NULL
    ,@InputFilter VARCHAR(50) = NULL
    ,@ValidationFilter VARCHAR(50) = NULL
    ,@Format VARCHAR(50) = NULL
    ,@System BIT = NULL
)
AS
BEGIN
    SELECT
         d.[DataTypeHistoryID]
        ,d.[HistoryUserName]
        ,d.[HistoryTimestamp]
        ,d.[HistoryAction]
        ,d.[DataTypeID]
        ,d.[Name]
        ,d.[Description]
        ,d.[InputFilter]
        ,d.[ValidationFilter]
        ,d.[Format]
        ,d.[System]
    FROM
        [dbo].[DataTypeHistory] d
    WHERE
            (@DataTypeHistoryID IS NULL OR @DataTypeHistoryID = d.[DataTypeHistoryID])
        AND (@HistoryUserName IS NULL OR @HistoryUserName = d.[HistoryUserName])
        AND (@HistoryTimestamp IS NULL OR @HistoryTimestamp = d.[HistoryTimestamp])
        AND (@HistoryAction IS NULL OR @HistoryAction = d.[HistoryAction])
        AND (@DataTypeID IS NULL OR @DataTypeID = d.[DataTypeID])
        AND (@Name IS NULL OR @Name = d.[Name])
        AND (@Description IS NULL OR @Description = d.[Description])
        AND (@InputFilter IS NULL OR @InputFilter = d.[InputFilter])
        AND (@ValidationFilter IS NULL OR @ValidationFilter = d.[ValidationFilter])
        AND (@Format IS NULL OR @Format = d.[Format])
        AND (@System IS NULL OR @System = d.[System])
END