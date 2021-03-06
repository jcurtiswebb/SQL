USE [master]
GO
/****** Object:  Database [dbamaint]    Script Date: 10/07/2012 15:10:07 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'dbamaint')
BEGIN
CREATE DATABASE [dbamaint] ON  PRIMARY 
( NAME = N'dbamaint_data', FILENAME = N'E:\MSSQL10.MSSQLSERVER\MSSQL\DATA\dbamaint_Data.mdf' , SIZE = 109504KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'dbamaint_log', FILENAME = N'F:\MSSQL10.MSSQLSERVER\MSSQL\LDF\dbamaint_Log.ldf' , SIZE = 194816KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
END
GO
ALTER DATABASE [dbamaint] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbamaint].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [dbamaint] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [dbamaint] SET ANSI_NULLS OFF
GO
ALTER DATABASE [dbamaint] SET ANSI_PADDING OFF
GO
ALTER DATABASE [dbamaint] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [dbamaint] SET ARITHABORT OFF
GO
ALTER DATABASE [dbamaint] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [dbamaint] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [dbamaint] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [dbamaint] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [dbamaint] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [dbamaint] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [dbamaint] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [dbamaint] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [dbamaint] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [dbamaint] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [dbamaint] SET  DISABLE_BROKER
GO
ALTER DATABASE [dbamaint] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [dbamaint] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [dbamaint] SET TRUSTWORTHY ON
GO
ALTER DATABASE [dbamaint] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [dbamaint] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [dbamaint] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [dbamaint] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [dbamaint] SET  READ_WRITE
GO
ALTER DATABASE [dbamaint] SET RECOVERY FULL
GO
ALTER DATABASE [dbamaint] SET  MULTI_USER
GO
ALTER DATABASE [dbamaint] SET PAGE_VERIFY TORN_PAGE_DETECTION
GO
ALTER DATABASE [dbamaint] SET DB_CHAINING OFF
GO
USE [dbamaint]
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Jobs_Report_timestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jobs_Report]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Jobs_Report_timestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Jobs_Report] DROP CONSTRAINT [DF_Jobs_Report_timestamp]
END


End
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__filespace__repor__77BFCB91]') AND parent_object_id = OBJECT_ID(N'[dbo].[filespacestats]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__filespace__repor__77BFCB91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[filespacestats] DROP CONSTRAINT [DF__filespace__repor__77BFCB91]
END


End
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__DTSPackag__Packa__49AFB375]') AND parent_object_id = OBJECT_ID(N'[dbo].[DTSPackages]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DTSPackag__Packa__49AFB375]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DTSPackages] DROP CONSTRAINT [DF__DTSPackag__Packa__49AFB375]
END


End
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Lock_Monitor_Occurs]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lock_Monitor]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Lock_Monitor_Occurs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Lock_Monitor] DROP CONSTRAINT [DF_Lock_Monitor_Occurs]
END


End
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_dbcchistory_TimeStamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBCCHistory]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_dbcchistory_TimeStamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBCCHistory] DROP CONSTRAINT [DF_dbcchistory_TimeStamp]
END


End
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BlockedQry_InsDate_getdate]') AND parent_object_id = OBJECT_ID(N'[dbo].[BlockedQry]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BlockedQry_InsDate_getdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlockedQry] DROP CONSTRAINT [DF_BlockedQry_InsDate_getdate]
END


End
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AUSCondition_DefaultProcessPoint]') AND parent_object_id = OBJECT_ID(N'[dbo].[AUSCondition]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AUSCondition_DefaultProcessPoint]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AUSCondition] DROP CONSTRAINT [DF_AUSCondition_DefaultProcessPoint]
END


End
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AUSCondition_DefaultStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[AUSCondition]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AUSCondition_DefaultStatus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AUSCondition] DROP CONSTRAINT [DF_AUSCondition_DefaultStatus]
END


End
GO
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AUSCondition_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[AUSCondition]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AUSCondition_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AUSCondition] DROP CONSTRAINT [DF_AUSCondition_DateCreated]
END


End
GO
/****** Object:  ForeignKey [FK_SQLFiles_SQLDirPaths]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SQLFiles_SQLDirPaths]') AND parent_object_id = OBJECT_ID(N'[dbo].[SQLFiles]'))
ALTER TABLE [dbo].[SQLFiles] DROP CONSTRAINT [FK_SQLFiles_SQLDirPaths]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLFilesAudit]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLFilesAudit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SQLFilesAudit]
GO
/****** Object:  StoredProcedure [dbo].[sel_AuditTrackingReportStatus]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sel_AuditTrackingReportStatus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sel_AuditTrackingReportStatus]
GO
/****** Object:  StoredProcedure [dbo].[sel_TRNSizing]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sel_TRNSizing]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sel_TRNSizing]
GO
/****** Object:  StoredProcedure [dbo].[dbm_GatherServerTopDuration]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_GatherServerTopDuration]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_GatherServerTopDuration]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SSAJ_SQL_Server_System_Report]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SSAJ_SQL_Server_System_Report]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SSAJ_SQL_Server_System_Report]
GO
/****** Object:  StoredProcedure [dbo].[sp_permissions_all]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_permissions_all]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_permissions_all]
GO
/****** Object:  StoredProcedure [dbo].[sp_filespacestats]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_filespacestats]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_filespacestats]
GO
/****** Object:  StoredProcedure [dbo].[dbm_TableStructure]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_TableStructure]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_TableStructure]
GO
/****** Object:  StoredProcedure [dbo].[dbm_TRNSizing]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_TRNSizing]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_TRNSizing]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLIndicesAudit]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLIndicesAudit]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SQLIndicesAudit]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLServerDetails]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLServerDetails]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SQLServerDetails]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SpaceUsedByObject]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SpaceUsedByObject]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SpaceUsedByObject]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SprocsWithServerNames]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SprocsWithServerNames]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SprocsWithServerNames]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLDatabases]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLDatabases]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SQLDatabases]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ReplicationLatencyMonitor]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ReplicationLatencyMonitor]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ReplicationLatencyMonitor]
GO
/****** Object:  StoredProcedure [dbo].[dbm_RestoreBAK]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_RestoreBAK]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_RestoreBAK]
GO
/****** Object:  StoredProcedure [dbo].[dbm_RestoreTRN]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_RestoreTRN]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_RestoreTRN]
GO
/****** Object:  StoredProcedure [dbo].[dbm_GetReplicationInfo]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_GetReplicationInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_GetReplicationInfo]
GO
/****** Object:  StoredProcedure [dbo].[dbm_JobReport_2000]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_JobReport_2000]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_JobReport_2000]
GO
/****** Object:  StoredProcedure [dbo].[dbm_JobReport_2005]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_JobReport_2005]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_JobReport_2005]
GO
/****** Object:  StoredProcedure [dbo].[dbm_JobsReport]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_JobsReport]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_JobsReport]
GO
/****** Object:  StoredProcedure [dbo].[dbm_LinkedServers]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_LinkedServers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_LinkedServers]
GO
/****** Object:  StoredProcedure [dbo].[dbm_LockTree]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_LockTree]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_LockTree]
GO
/****** Object:  StoredProcedure [dbo].[dbm_LogShippingStatus]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_LogShippingStatus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_LogShippingStatus]
GO
/****** Object:  StoredProcedure [dbo].[dbm_PermissionsAll]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_PermissionsAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_PermissionsAll]
GO
/****** Object:  StoredProcedure [dbo].[dbm_persist_dm_db_index_operational_stats]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_persist_dm_db_index_operational_stats]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_persist_dm_db_index_operational_stats]
GO
/****** Object:  StoredProcedure [dbo].[dbm_persist_dm_db_index_usage_stats]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_persist_dm_db_index_usage_stats]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_persist_dm_db_index_usage_stats]
GO
/****** Object:  StoredProcedure [dbo].[dbm_persist_missing_index_DMV_data]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_persist_missing_index_DMV_data]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_persist_missing_index_DMV_data]
GO
/****** Object:  StoredProcedure [dbo].[dbm_autogrow_db]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_autogrow_db]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_autogrow_db]
GO
/****** Object:  StoredProcedure [dbo].[dbm_BlockInputbuffer]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_BlockInputbuffer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_BlockInputbuffer]
GO
/****** Object:  StoredProcedure [dbo].[dbm_CDCStatus]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CDCStatus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_CDCStatus]
GO
/****** Object:  StoredProcedure [dbo].[dbm_CDCVerify]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CDCVerify]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_CDCVerify]
GO
/****** Object:  StoredProcedure [dbo].[dbm_CheckDBIntegrity]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CheckDBIntegrity]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_CheckDBIntegrity]
GO
/****** Object:  StoredProcedure [dbo].[dbm_CollectTempMigrationTables]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CollectTempMigrationTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_CollectTempMigrationTables]
GO
/****** Object:  StoredProcedure [dbo].[dbm_DMartDRRecovery]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_DMartDRRecovery]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_DMartDRRecovery]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ETLDuplicates]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ETLDuplicates]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ETLDuplicates]
GO
/****** Object:  StoredProcedure [dbo].[dbm_FileSpaceStats]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_FileSpaceStats]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_FileSpaceStats]
GO
/****** Object:  StoredProcedure [dbo].[dbm_Find]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_Find]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_Find]
GO
/****** Object:  StoredProcedure [dbo].[dbm_FindOpenTransactions]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_FindOpenTransactions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_FindOpenTransactions]
GO
/****** Object:  Table [dbo].[SQLSSISPackages]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLSSISPackages]') AND type in (N'U'))
DROP TABLE [dbo].[SQLSSISPackages]
GO
/****** Object:  Table [dbo].[SQLTableIndexRebuilds]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLTableIndexRebuilds]') AND type in (N'U'))
DROP TABLE [dbo].[SQLTableIndexRebuilds]
GO
/****** Object:  StoredProcedure [dbo].[SSTraceAll]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSTraceAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SSTraceAll]
GO
/****** Object:  StoredProcedure [dbo].[StopSSTraceAll]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StopSSTraceAll]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[StopSSTraceAll]
GO
/****** Object:  StoredProcedure [dbo].[upd_SupportPasswords_AcrossSites]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upd_SupportPasswords_AcrossSites]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[upd_SupportPasswords_AcrossSites]
GO
/****** Object:  StoredProcedure [dbo].[upd_SupportSMCPasswords_AcrossSites]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upd_SupportSMCPasswords_AcrossSites]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[upd_SupportSMCPasswords_AcrossSites]
GO
/****** Object:  StoredProcedure [dbo].[dbm_DTSOwnershipToSA]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_DTSOwnershipToSA]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_DTSOwnershipToSA]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_ConvertBytes]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udf_ConvertBytes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udf_ConvertBytes]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_TableDate]    Script Date: 10/07/2012 15:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udf_TableDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udf_TableDate]
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectDailyTrace]    Script Date: 10/07/2012 15:10:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectDailyTrace]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SelectDailyTrace]
GO
/****** Object:  StoredProcedure [dbo].[dbm_FindTextInSP]    Script Date: 10/07/2012 15:10:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_FindTextInSP]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_FindTextInSP]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ForEachDB]    Script Date: 10/07/2012 15:10:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ForEachDB]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ForEachDB]
GO
/****** Object:  StoredProcedure [dbo].[dbm_FailedLoginsPermissions]    Script Date: 10/07/2012 15:10:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_FailedLoginsPermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_FailedLoginsPermissions]
GO
/****** Object:  StoredProcedure [dbo].[dbm_EnumerateSQLServers]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_EnumerateSQLServers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_EnumerateSQLServers]
GO
/****** Object:  StoredProcedure [dbo].[dbm_CompareDB]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CompareDB]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_CompareDB]
GO
/****** Object:  StoredProcedure [dbo].[dbm_CompareTables]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CompareTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_CompareTables]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ConnectionSummary]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ConnectionSummary]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ConnectionSummary]
GO
/****** Object:  StoredProcedure [dbo].[dbm_DatabaseOwners]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_DatabaseOwners]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_DatabaseOwners]
GO
/****** Object:  StoredProcedure [dbo].[dbm_DefragIndexes]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_DefragIndexes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_DefragIndexes]
GO
/****** Object:  Table [dbo].[ActiveOrders]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActiveOrders]') AND type in (N'U'))
DROP TABLE [dbo].[ActiveOrders]
GO
/****** Object:  StoredProcedure [dbo].[ActiveOrdersAllQuery]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActiveOrdersAllQuery]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[ActiveOrdersAllQuery]
GO
/****** Object:  Table [dbo].[AUSCondition]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AUSCondition]') AND type in (N'U'))
DROP TABLE [dbo].[AUSCondition]
GO
/****** Object:  Table [dbo].[BlockedQry]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BlockedQry]') AND type in (N'U'))
DROP TABLE [dbo].[BlockedQry]
GO
/****** Object:  Table [dbo].[CDCEnabled]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CDCEnabled]') AND type in (N'U'))
DROP TABLE [dbo].[CDCEnabled]
GO
/****** Object:  Table [dbo].[CDCStatus]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CDCStatus]') AND type in (N'U'))
DROP TABLE [dbo].[CDCStatus]
GO
/****** Object:  Table [dbo].[Client_Services]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client_Services]') AND type in (N'U'))
DROP TABLE [dbo].[Client_Services]
GO
/****** Object:  StoredProcedure [dbo].[cspDefragIndexes]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cspDefragIndexes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[cspDefragIndexes]
GO
/****** Object:  Table [dbo].[DBCCHistory]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBCCHistory]') AND type in (N'U'))
DROP TABLE [dbo].[DBCCHistory]
GO
/****** Object:  Table [dbo].[DBGrowthRate]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBGrowthRate]') AND type in (N'U'))
DROP TABLE [dbo].[DBGrowthRate]
GO
/****** Object:  StoredProcedure [dbo].[dbm_RepairOrphanUsersAllDBS]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_RepairOrphanUsersAllDBS]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_RepairOrphanUsersAllDBS]
GO
/****** Object:  StoredProcedure [dbo].[dbm_MergeSQLErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_MergeSQLErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_MergeSQLErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ListFiles]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ListFiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ListFiles]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ListIndexes]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ListIndexes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ListIndexes]
GO
/****** Object:  StoredProcedure [dbo].[dbm_GetTopDuration]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_GetTopDuration]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_GetTopDuration]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ImportAgentErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ImportAgentErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ImportAgentErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ImportErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ImportErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ImportErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ImportReplicatedArticles]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ImportReplicatedArticles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ImportReplicatedArticles]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ImportReplicationAgentHistory]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ImportReplicationAgentHistory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ImportReplicationAgentHistory]
GO
/****** Object:  StoredProcedure [dbo].[dbm_IndexDefragAndRebuild]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_IndexDefragAndRebuild]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_IndexDefragAndRebuild]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ScriptDatabase]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ScriptDatabase]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ScriptDatabase]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SearchSqlErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SearchSqlErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SearchSqlErrorLog]
GO
/****** Object:  Table [dbo].[Lock_Monitor]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lock_Monitor]') AND type in (N'U'))
DROP TABLE [dbo].[Lock_Monitor]
GO
/****** Object:  StoredProcedure [dbo].[dbm_ServerStatsDaily]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ServerStatsDaily]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_ServerStatsDaily]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SMCLoanIDUpdate]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SMCLoanIDUpdate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SMCLoanIDUpdate]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLExpressMaintPlan]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLExpressMaintPlan]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SQLExpressMaintPlan]
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLServerStats]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLServerStats]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_SQLServerStats]
GO
/****** Object:  StoredProcedure [dbo].[dbm_WriteStringToFile]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_WriteStringToFile]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_WriteStringToFile]
GO
/****** Object:  Table [dbo].[DBOptions]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBOptions]') AND type in (N'U'))
DROP TABLE [dbo].[DBOptions]
GO
/****** Object:  Table [dbo].[DTSPackages]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DTSPackages]') AND type in (N'U'))
DROP TABLE [dbo].[DTSPackages]
GO
/****** Object:  Table [dbo].[etl_duplicates]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[etl_duplicates]') AND type in (N'U'))
DROP TABLE [dbo].[etl_duplicates]
GO
/****** Object:  Table [dbo].[FinalKBMessages]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FinalKBMessages]') AND type in (N'U'))
DROP TABLE [dbo].[FinalKBMessages]
GO
/****** Object:  StoredProcedure [dbo].[sp_IndexDefragAndRebuild]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_IndexDefragAndRebuild]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_IndexDefragAndRebuild]
GO
/****** Object:  Table [dbo].[IndexRebuilds]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IndexRebuilds]') AND type in (N'U'))
DROP TABLE [dbo].[IndexRebuilds]
GO
/****** Object:  Table [dbo].[ReplicatedItems]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReplicatedItems]') AND type in (N'U'))
DROP TABLE [dbo].[ReplicatedItems]
GO
/****** Object:  Table [dbo].[ReplicationAgentHistory]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReplicationAgentHistory]') AND type in (N'U'))
DROP TABLE [dbo].[ReplicationAgentHistory]
GO
/****** Object:  Table [dbo].[SQLAgentErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLAgentErrorLog]') AND type in (N'U'))
DROP TABLE [dbo].[SQLAgentErrorLog]
GO
/****** Object:  Table [dbo].[SQLDBOptions]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLDBOptions]') AND type in (N'U'))
DROP TABLE [dbo].[SQLDBOptions]
GO
/****** Object:  Table [dbo].[SQLErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLErrorLog]') AND type in (N'U'))
DROP TABLE [dbo].[SQLErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[dbm_StopFailedLoginsPermissions]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_StopFailedLoginsPermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_StopFailedLoginsPermissions]
GO
/****** Object:  StoredProcedure [dbo].[dbm_TableSize]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_TableSize]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_TableSize]
GO
/****** Object:  StoredProcedure [dbo].[dbm_GenerateDifferentialBackups]    Script Date: 10/07/2012 15:10:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_GenerateDifferentialBackups]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[dbm_GenerateDifferentialBackups]
GO
/****** Object:  Table [dbo].[SMCReplicatedArticles]    Script Date: 10/07/2012 15:10:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SMCReplicatedArticles]') AND type in (N'U'))
DROP TABLE [dbo].[SMCReplicatedArticles]
GO
/****** Object:  Role [ProdOpsMonitor]    Script Date: 10/07/2012 15:10:07 ******/
DECLARE @RoleName sysname
set @RoleName = N'ProdOpsMonitor'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'ProdOpsMonitor' AND type = 'R')
DROP ROLE [ProdOpsMonitor]
GO
/****** Object:  User [HOME_OFFICE\Dex Prod services]    Script Date: 10/07/2012 15:10:07 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'HOME_OFFICE\Dex Prod services')
DROP USER [HOME_OFFICE\Dex Prod services]
GO
/****** Object:  User [home_office\dexprosql]    Script Date: 10/07/2012 15:10:07 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'home_office\dexprosql')
DROP USER [home_office\dexprosql]
GO
/****** Object:  User [HOME_OFFICE\iisprodops]    Script Date: 10/07/2012 15:10:07 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'HOME_OFFICE\iisprodops')
DROP USER [HOME_OFFICE\iisprodops]
GO
/****** Object:  User [HOME_OFFICE\SQL Production Monitoring]    Script Date: 10/07/2012 15:10:07 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'HOME_OFFICE\SQL Production Monitoring')
DROP USER [HOME_OFFICE\SQL Production Monitoring]
GO
/****** Object:  User [linkserver_rw]    Script Date: 10/07/2012 15:10:07 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'linkserver_rw')
DROP USER [linkserver_rw]
GO
/****** Object:  User [linkserverread]    Script Date: 10/07/2012 15:10:07 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'linkserverread')
DROP USER [linkserverread]
GO
/****** Object:  Role [ProdOpsMonitor]    Script Date: 10/07/2012 15:10:07 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'ProdOpsMonitor' AND type = 'R')
CREATE ROLE [ProdOpsMonitor] AUTHORIZATION [dbo]
GO
/****** Object:  User [linkserverread]    Script Date: 10/07/2012 15:10:07 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'linkserverread')
CREATE USER [linkserverread] FOR LOGIN [linkserverread] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [linkserver_rw]    Script Date: 10/07/2012 15:10:07 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'linkserver_rw')
CREATE USER [linkserver_rw] FOR LOGIN [linkserver_rw] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [HOME_OFFICE\SQL Production Monitoring]    Script Date: 10/07/2012 15:10:07 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'HOME_OFFICE\SQL Production Monitoring')
CREATE USER [HOME_OFFICE\SQL Production Monitoring] FOR LOGIN [HOME_OFFICE\SQL Production Monitoring]
GO
/****** Object:  User [HOME_OFFICE\iisprodops]    Script Date: 10/07/2012 15:10:07 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'HOME_OFFICE\iisprodops')
CREATE USER [HOME_OFFICE\iisprodops] FOR LOGIN [HOME_OFFICE\iisprodops] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [home_office\dexprosql]    Script Date: 10/07/2012 15:10:07 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'home_office\dexprosql')
CREATE USER [home_office\dexprosql] FOR LOGIN [HOME_OFFICE\dexprosql] WITH DEFAULT_SCHEMA=[home_office\dexprosql]
GO
/****** Object:  User [HOME_OFFICE\Dex Prod services]    Script Date: 10/07/2012 15:10:07 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'HOME_OFFICE\Dex Prod services')
CREATE USER [HOME_OFFICE\Dex Prod services] FOR LOGIN [HOME_OFFICE\Dex Prod services]
GO
/****** Object:  Table [dbo].[SMCReplicatedArticles]    Script Date: 10/07/2012 15:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SMCReplicatedArticles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SMCReplicatedArticles](
	[PublicationServer] [sysname] NOT NULL,
	[PublisherDB] [sysname] NOT NULL,
	[PublicationName] [sysname] NOT NULL,
	[Article] [sysname] NOT NULL,
	[ArticleID] [int] NULL,
	[DestinationObject] [sysname] NOT NULL,
	[SubscriptionServer] [sysname] NOT NULL,
	[SubscriberDB] [sysname] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_GenerateDifferentialBackups]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_GenerateDifferentialBackups]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[dbm_GenerateDifferentialBackups] 
   @strBackupPath NVARCHAR (35) =''E:\MSSQL10.MSSQLSERVER\MSSQL\BAK\''--variable for location of DIFFERENTIAL backups 
AS 
SET NOCOUNT ON  
-- Get the name of all user databases   
DECLARE @strTimeStamp NVARCHAR(12)   --variable for timestamp value  
DECLARE @strSQL NVARCHAR(100)        -- used for generating dynamic SQL statements  
DECLARE @databaseName NVARCHAR(128)  -- used as variable to store database names  
DECLARE dbCursor CURSOR FOR       -- used for cursor allocation  
   SELECT NAME 
   FROM MASTER.SYS.DATABASES 
   WHERE [database_id] > 0 
   AND NAME NOT IN (''MASTER'',''MODEL'',''MSDB'',''TEMPDB'') --does not include the system databases  

OPEN dbCursor  
  
FETCH NEXT FROM dbCursor INTO @databaseName  
  
WHILE (@@FETCH_STATUS = 0)  
BEGIN  
   PRINT ''Checking for the latest FULL database backup for: ['' + @databaseName +'']'' 
      
   DECLARE @strphysical_device_name NVARCHAR(100) -- variable for physical_device_name  
   DECLARE @cursor NVARCHAR(400)  

   -- Reads the MSDB database to check for the latest FULL database backup        
   SELECT @cursor=(''DECLARE TabCursor CURSOR FAST_FORWARD GLOBAL FOR '' +  
   ''SELECT TOP 1 physical_device_name  
   FROM msdb.dbo.backupset a INNER JOIN msdb.dbo.backupmediafamily b     
   ON a.media_set_id = b.media_set_id     
   WHERE database_name='''''' + @databaseName + ''''''  
   AND type=''''D''''  
   ORDER BY backup_finish_date desc'')  
   EXEC sp_executesql @cursor  
   OPEN TabCursor  
  
   FETCH NEXT FROM TabCursor INTO @strphysical_device_name  
   --Check if the database does not have any FULL backups at all 
   IF @@FETCH_STATUS <> 0 
   BEGIN 
      PRINT ''*****WARNING: Database ['' + @databaseName + ''] does not have any FULL database backups at all. Generate the FULL database backup first. Aborting DIFFERENTIAL backup command.*****'' 
   END 
   ELSE    
   --If the database has FULL backups, 
   WHILE @@FETCH_STATUS = 0  
   BEGIN  
      DECLARE @result INT  
      EXEC xp_fileexist @strphysical_device_name, @result output   
      IF (@result = 1)  --@result will return 1 if the specified file exists, if it doesn''t, it will return 0  
      BEGIN  
         SET @strTimeStamp=CONVERT(CHAR(8), GETDATE(), 112)  
         SET @strTimeStamp=@strTimeStamp + REPLACE(CONVERT(CHAR(8), GETDATE(), 108),'':'','''')  
         EXEC (''BACKUP DATABASE '' + @databaseName + '' TO DISK='''''' + @strBackupPath + @databaseName + ''_DIFF_'' + @strTimeStamp + ''.BAK'''' WITH INIT, DIFFERENTIAL, DESCRIPTION=''''DIFFERENTIAL Backup for '' + @databasename + '' database'''''') -- change this value should you decide to change the backup type to something other than differential   
         PRINT ''===========================================================================================''  
         PRINT ''DIFFERENTIAL Backup generated for database: ['' + @databaseName  + '']'' 
         PRINT ''Corresponding FULL database backup: '' + @strphysical_device_name  
         PRINT ''DIFFERENTIAL database backup: '' + @strBackupPath + @databaseName + ''_DIFF_'' + @strTimeStamp + ''.BAK''  
      END  
      ELSE  
         PRINT  ''*********WARNING: FULL database backup file is missing. Generate the FULL database backup first. Aborting DIFFERENTIAL backup command.*********''  
         
      FETCH NEXT FROM TabCursor INTO @strphysical_device_name  
   END  
   CLOSE TabCursor  
   DEALLOCATE TabCursor  
       
   PRINT ''===========================================================================================''  
   PRINT ''                                                                                           ''  
   PRINT ''                                                                                           ''  
   PRINT ''                                                                                           ''  
   
   FETCH NEXT FROM dbCursor INTO @databaseName  
END  
  
CLOSE dbCursor  
DEALLOCATE dbCursor  

PRINT ''FINISHED''  

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_TableSize]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_TableSize]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[dbm_TableSize]
AS
/**************************************************************************** 
   Creation Date: 03/30/02      Created By: Randy Dyess
                              Web Site: www.TransactSQL.Com
                              Email: RandyDyess@TransactSQL.Com
   Purpose: Loops through all databases and all user tables to obtain space used
	    without the use of a cursor or an undocumented stored procedure
   Location: master database
   Output Parameters: None
   Return Status: None
   Called By: None        
   Calls: None
   Data Modifications: None
   Updates: None                                                                
   Date        Author                      Purpose                                    
   ----------  --------------------------  ---------------------------------  
****************************************************************************/ 
SET NOCOUNT ON

--Declare variables 
DECLARE @strDBName SYSNAME --holds database names
DECLARE @lngDBCount INTEGER --holds database count
DECLARE @lngCounter1 INTEGER --loop counter
DECLARE @strTableName SYSNAME --holds table names
DECLARE @lngTabCount INTEGER --holds table count
DECLARE @lngCounter2 INTEGER --loop counter
DECLARE @strSQL NVARCHAR(4000) --dynamic sql string

--Create temp tables to hold database and table names
CREATE TABLE #tDBName
(
numID INTEGER IDENTITY(1,1)
,strDBName SYSNAME
)

CREATE TABLE #tTableName
(
numID INTEGER IDENTITY(1,1)
,strTableName SYSNAME
)

--Populate database names
INSERT INTO #tDBName (strDBName)
SELECT name from master.dbo.sysdatabases
--You can place an optional WHERE name NOT IN (''master'',''model'',''msdb'',''tempdb'') here
SET @lngDBCount = @@ROWCOUNT --How many databases
SET @lngCounter1 = @lngDBCount --Preserves original count for future use

--Loop through database names
WHILE @lngCounter1 <> 0
BEGIN
--Populate database name variable
SET @strDBName = (SELECT strDBName FROM #tDBName WHERE numID = @lngCounter1)

--Populate table names
SET @strSQL = ''INSERT INTO #tTableName (strTableName)
SELECT name FROM '' + @strDBName + ''.dbo.sysobjects WHERE xtype = ''''u'''''' --only use user tables
EXEC sp_executesql @strSQL

SET @lngTabCount = (SELECT @@ROWCOUNT) --how many tables in this database
SET @lngCounter2 = @lngTabCount --Preserve table number for future use
--Header
SELECT @strDBName + '' Database''

--Loop through all tables
WHILE @lngCounter2 <> 0
BEGIN

--Populate table name variable
SET @strTableName = (SELECT strTableName FROM #tTableName WHERE numID = @lngCounter2)

--Perform action
SET @strSQL = ''EXEC '' + @strDBName + ''.dbo.'' + ''sp_spaceused '' + @strTableName 
EXEC sp_executesql @strSQL

--Move backward through tables
SET @lngCounter2 = @lngCounter2 - 1
END

--Move backward through databases
SET @lngCounter1 = @lngCounter1 - 1

--Clean out table name temp table
TRUNCATE TABLE #tTableName
END

DROP TABLE #tDBName
DROP TABLE #tTableName
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_StopFailedLoginsPermissions]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_StopFailedLoginsPermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE PROCEDURE [dbo].[dbm_StopFailedLoginsPermissions]
AS
SET NOCOUNT ON


DECLARE	@RC		INT		-- Return status for stored procedures
DECLARE	@TRACE_NAME	VARCHAR(40)	-- Name of Trace(SlowQry, NdxUsed, etc.)
DECLARE @old_traceid	INT		-- TRACE ID of currently running trace queue

SET @TRACE_NAME = ''FailedLoginsPermissions''

-- -----------------------------------------------------------------------
-- Stop the trace queue if running
-- -----------------------------------------------------------------------
if exists	(
	select *
	FROM 	:: fn_trace_getinfo(default) 
	WHERE 	property = 2	-- trace file name
	AND	convert(varchar(200),Value)  LIKE ''%''+@TRACE_NAME+''%'')
BEGIN
	select 	@old_traceid = traceid
	FROM 	:: fn_trace_getinfo(default) 
	WHERE 	property = 2	-- trace file name
	AND	convert(varchar(200),Value)  LIKE ''%''+@TRACE_NAME+''%''
	EXEC @RC = sp_trace_setstatus @old_traceid, 0	-- stops specified trace
	IF @RC = 0  PRINT ''sp_trace_setstatus: Stopped Trace ID '' + convert( varchar(20),@old_traceid )
	IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
	IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
	IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
	IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory'' 
	IF @RC <> 0 GOTO ERROR

	EXEC sp_trace_setstatus @old_traceid, 2 -- delete specified trace

	IF @RC = 0  PRINT ''sp_trace_setstatus: Deleted Trace ID '' + convert( varchar(20),@old_traceid )
	IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
	IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
	IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
	IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory'' 
	IF @RC <> 0 GOTO ERROR
END

ERROR:
select @RC


' 
END
GO
/****** Object:  Table [dbo].[SQLErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLErrorLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SQLErrorLog](
	[ServerName] [nvarchar](128) NULL,
	[Date] [datetime] NULL,
	[spid] [varchar](10) NULL,
	[Message] [varchar](max) NULL,
	[LastUpdate] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SQLDBOptions]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLDBOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SQLDBOptions](
	[ServerName] [varchar](64) NULL,
	[DatabaseName] [nvarchar](128) NULL,
	[DBOption] [varchar](64) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SQLAgentErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLAgentErrorLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SQLAgentErrorLog](
	[ServerName] [nvarchar](128) NULL,
	[Date] [datetime] NULL,
	[ErrorLevel] [int] NULL,
	[Message] [varchar](max) NULL,
	[LastUpdate] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReplicationAgentHistory]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReplicationAgentHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReplicationAgentHistory](
	[Publisher] [sysname] NOT NULL,
	[Publication] [sysname] NOT NULL,
	[PublicationDB] [sysname] NOT NULL,
	[Subscriber] [sysname] NOT NULL,
	[SubscriberDB] [sysname] NOT NULL,
	[Comments] [nvarchar](max) NULL,
	[Error_Text] [nvarchar](max) NULL,
	[AgentName] [nvarchar](128) NULL,
	[DistHistorytime] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReplicatedItems]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReplicatedItems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReplicatedItems](
	[TableName] [varchar](128) NULL,
	[ColumnName] [varchar](64) NULL,
	[Type] [varchar](16) NULL,
	[MaxLength] [int] NULL,
	[Precision] [int] NULL,
	[Scale] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IndexRebuilds]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IndexRebuilds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IndexRebuilds](
	[ServerName] [nvarchar](128) NULL,
	[DBName] [nvarchar](128) NOT NULL,
	[SQLStatement] [nvarchar](256) NOT NULL,
	[IndexType] [nvarchar](16) NOT NULL,
	[FragPercent] [float] NOT NULL,
	[LastUpdate] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_IndexDefragAndRebuild]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_IndexDefragAndRebuild]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[sp_IndexDefragAndRebuild]
	@dbname varchar(100)
AS

SET NOCOUNT ON

CREATE TABLE #tables(
	rid int identity (1,1),
	tabid int,
	[name] varchar(100)
)

CREATE TABLE #indexes(
	rid int identity (1,1),
	indid int,
	[name] varchar(100)
)

CREATE TABLE #fragreport(
	fid int identity (1,1),
	[timestamp] datetime default getdate(),
	ObjectName sysname,
	ObjectId int,
	IndexName sysname,
	IndexId int,
	[Level] int,
	Pages int,
	[Rows] int,
	MinimumRecordSize int,
	MaximumRecordSize int,
	AverageRecordSize float,
	ForwardedRecords int,
	Extents int,
	ExtentSwitches int,
	AverageFreeBytes float,
	AveragePageDensity float,
	ScanDensity float,
	BestCount int,
	ActualCount int,
	LogicalFragmentation float,
	ExtentFragmentation float,
	DBName varchar(100) NULL,
	PrePost varchar(20) NULL
)

CREATE TABLE #reindex(
	rid int identity (1,1),
	ObjectName sysname,
	IndexName sysname
)

DECLARE @numtables int,
	@numindexes int,
	@numreindexes int,
	@tabcount int,
	@indcount int,
	@recount int,
	@currtable int,
	@tabname varchar(100),
	@currind int,
	@indname varchar(100)


SET @tabcount = 1

INSERT INTO #tables([tabid], [name])
EXEC (''SELECT [id], ltrim(rtrim(su.[name] + ''''.'''' + so.[name])) FROM '' + @dbname + ''.dbo.sysobjects so INNER JOIN '' + @dbname + ''.dbo.sysusers su ON su.uid = so.uid WHERE so.xtype = ''''U'''' AND so.[name] <> ''''dtproperties'''''')

SELECT @numtables = count(*) FROM #tables

WHILE @tabcount <= @numtables
BEGIN
	SET @indcount = 1

	SELECT @currtable = tabid,
	       @tabname = ltrim(rtrim([name]))
	FROM #tables
	WHERE rid = @tabcount 
	
	INSERT INTO #fragreport([ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation])
	EXEC(''USE '' + @dbname + '' DBCC SHOWCONTIG (['' + @tabname + '']) WITH ALL_INDEXES, TABLERESULTS'')

	DELETE FROM #fragreport
	WHERE IndexID IN (0,255)

	UPDATE #fragreport
	SET PrePost = ''PRE''
	WHERE PrePost is NULL

	INSERT #indexes([indid], [name])
	EXEC (''SELECT indid, [name] FROM '' + @dbname + ''.dbo.sysindexes WHERE [id] = '' + @currtable + '' AND [name] not like ''''_WA%'''' AND indid NOT IN (0, 255)'')

	SELECT @numindexes = count(*) FROM #indexes

	WHILE @indcount <= @numindexes
	BEGIN
		SELECT @currind = indid,
		       @indname = ltrim(rtrim([name]))
		FROM #indexes
		WHERE rid = @indcount
		EXEC (''DBCC INDEXDEFRAG ('''''' + @dbname + '''''','''''' + @tabname + '''''','''''' + @indname + '''''')'')
		SET @indcount = @indcount + 1
 	END

	INSERT INTO #fragreport([ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation])
	EXEC(''USE '' + @dbname + '' DBCC SHOWCONTIG (['' + @tabname + '']) WITH ALL_INDEXES, TABLERESULTS'')

	DELETE FROM #fragreport
	WHERE IndexID IN (0,255)

	UPDATE #fragreport
	SET PrePost = ''POST''
	WHERE PrePost is NULL

	SET @tabcount = @tabcount + 1
	TRUNCATE TABLE #indexes
END

INSERT INTO #reindex([ObjectName],[IndexName])
SELECT #tables.[name], #fragreport.[IndexName]
FROM #fragreport
INNER JOIN #tables on #tables.tabid = #fragreport.objectid
WHERE #fragreport.IndexId NOT IN (0, 255)
AND (#fragreport.ScanDensity < 90 OR #fragreport.LogicalFragmentation > 10)
AND #fragreport.PrePost = ''POST''

SELECT @numreindexes = count(*) FROM #reindex

SET @recount = 1

WHILE @recount <= @numreindexes
BEGIN
	SELECT @tabname = ObjectName,
	       @indname = IndexName
	FROM #reindex
	WHERE rid = @recount
	
	EXEC(''DBCC DBREINDEX(['' + @dbname + ''.'' + @tabname + ''],['' + @indname + ''])'')

	INSERT INTO #fragreport([ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation])
	EXEC(''USE '' + @dbname + '' DBCC SHOWCONTIG (['' + @tabname + ''],['' + @indname + '']) WITH TABLERESULTS'')

	SET @recount = @recount + 1
END

UPDATE #fragreport
SET PrePost = ''REINDEXED''
WHERE PrePost is NULL

UPDATE #fragreport
SET DBName = @dbname

INSERT INTO [dbamaint].[dbo].[fragreport]([timestamp], [ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation], [DBName], [PrePost])
SELECT [timestamp], [ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation], [DBName], [PrePost] FROM #fragreport

DROP TABLE #tables
DROP TABLE #indexes
DROP TABLE #fragreport
DROP TABLE #reindex


' 
END
GO
/****** Object:  Table [dbo].[FinalKBMessages]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FinalKBMessages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FinalKBMessages](
	[Status] [varchar](255) NULL,
	[ID] [varchar](255) NULL,
	[Name] [varchar](255) NULL,
	[Severity] [varchar](255) NULL,
	[Category] [varchar](255) NULL,
	[Type] [varchar](255) NULL,
	[Lender Text] [varchar](255) NULL,
	[Consumer Text] [varchar](255) NULL,
	[Source] [varchar](255) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[etl_duplicates]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[etl_duplicates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[etl_duplicates](
	[Server_Name] [varchar](64) NOT NULL,
	[DB_Name] [varchar](32) NOT NULL,
	[Loan_ID] [int] NOT NULL,
	[comment] [varchar](512) NOT NULL,
	[timestamp] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DTSPackages]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DTSPackages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DTSPackages](
	[Server] [nvarchar](64) NULL,
	[Name] [sysname] NOT NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[VersionID] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[CreateDate] [datetime] NULL,
	[Owner] [sysname] NOT NULL,
	[Size] [int] NOT NULL,
	[PackageData] [image] NULL,
	[IsOwner] [bit] NULL,
	[PackageType] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DBOptions]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBOptions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBOptions](
	[ServerName] [varchar](16) NULL,
	[DatabaseName] [varchar](128) NULL,
	[DBOption] [varchar](64) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[dbm_WriteStringToFile]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_WriteStringToFile]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dbm_WriteStringToFile]
 (
@String Varchar(8000), 
@Path VARCHAR(255),
@Filename VARCHAR(100)

--
)
AS
DECLARE  @objFileSystem int
        ,@objTextStream int,
		@objErrorObject int,
		@strErrorMessage Varchar(1000),
	    @Command varchar(1000),
	    @hr int,
		@fileAndPath varchar(80)

set nocount on

select @strErrorMessage=''opening the File System Object''
EXECUTE @hr = sp_OACreate  ''Scripting.FileSystemObject'' , @objFileSystem OUT

Select @FileAndPath=@path+''\''+@filename
if @HR=0 Select @objErrorObject=@objFileSystem , @strErrorMessage=''Creating file "''+@FileAndPath+''"''
if @HR=0 execute @hr = sp_OAMethod   @objFileSystem   , ''CreateTextFile''
	, @objTextStream OUT, @FileAndPath,2,True

if @HR=0 Select @objErrorObject=@objTextStream, 
	@strErrorMessage=''writing to the file "''+@FileAndPath+''"''
if @HR=0 execute @hr = sp_OAMethod  @objTextStream, ''Write'', Null, @String

if @HR=0 Select @objErrorObject=@objTextStream, @strErrorMessage=''closing the file "''+@FileAndPath+''"''
if @HR=0 execute @hr = sp_OAMethod  @objTextStream, ''Close''

if @hr<>0
	begin
	Declare 
		@Source varchar(255),
		@Description Varchar(255),
		@Helpfile Varchar(255),
		@HelpID int
	
	EXECUTE sp_OAGetErrorInfo  @objErrorObject, 
		@source output,@Description output,@Helpfile output,@HelpID output
	Select @strErrorMessage=''Error whilst ''
			+coalesce(@strErrorMessage,''doing something'')
			+'', ''+coalesce(@Description,'''')
	raiserror (@strErrorMessage,16,1)
	end
--EXECUTE  sp_OADestroy @objTextStream
EXECUTE sp_OADestroy @objTextStream
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLServerStats]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLServerStats]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROC [dbo].[dbm_SQLServerStats]
AS

PRINT '' SQL 2005/2008 Server Statistics''
PRINT '' -------------------------------''
PRINT ''''
PRINT '' Displaying statistics of SQL server ''
PRINT '' ''
PRINT ''...Buffer Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE 

   ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Buffer cache hit ratio'')
OR ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Buffer cache hit ratio base'')
OR ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Page lookups/sec'')
OR ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Free pages'')
OR ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Total pages'')
OR ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Readahead pages/sec'') 
OR ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Page reads/sec'')      
OR ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Page writes/sec'')     
OR ([object_name] LIKE ''%Buffer Manager%''and [counter_name] = ''Page life expectancy'')


PRINT ''...Memory Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE 
   ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Connection Memory (KB)'')       
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Granted Workspace Memory (KB)'')
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Lock Memory (KB)'')             
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Lock Blocks Allocated'')        
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Lock Owner Blocks Allocated'')  
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Lock Blocks'')                  
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Lock Owner Blocks'')            
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Maximum Workspace Memory (KB)'')
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Memory Grants Outstanding'')    
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Memory Grants Pending'')        
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Optimizer Memory (KB)'')        
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''SQL Cache Memory (KB)'')        
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Target Server Memory (KB)'')    
OR ([object_name] LIKE ''%memory manager%''and [counter_name] = ''Total Server Memory (KB)'')     


PRINT ''...General Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE
   ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Active Temp Tables'')                  	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Temp Tables Creation Rate'')
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Logins/sec'')                          	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Logouts/sec'')                         	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''User Connections'')                    	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Logical Connections'')                 	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Transactions'')                        	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Mars Deadlocks'')                      	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''HTTP Authenticated Requests'')
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Processes blocked'')                   	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Temp Tables For Destruction'')         	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Event Notifications Delayed Drop'')    	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''Trace Event Notification Queue'')      	
OR ([object_name] LIKE ''%General Statistics%''and [counter_name] = ''SQL Trace IO Provider Lock Waits'')    	
			

PRINT ''...Locks Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE

   ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Timeouts/sec'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Number of Deadlocks/sec'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Waits/sec'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Wait Time (ms)'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Average Wait Time (ms)'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Average Wait Time Base'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Timeouts (timeout > 0)/sec'')

PRINT ''...Total for Locks Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE

   ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Requests/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Timeouts/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Number of Deadlocks/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Waits/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Wait Time (ms)'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Average Wait Time (ms)'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Average Wait Time Base'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Locks%''and [counter_name] = ''Lock Timeouts (timeout > 0)/sec'' and [instance_name] =''_Total'')
			

PRINT ''...Temp DB Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE

   ([object_name] LIKE ''%Databases%''and [counter_name] = ''Data File(s) Size (KB)'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log File(s) Size (KB)'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log File(s) Used Size (KB)'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Percent Log Used'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Active Transactions'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Transactions/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Repl. Pending Xacts'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Repl. Trans. Rate'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Cache Reads/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Cache Hit Ratio'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Cache Hit Ratio Base'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Bulk Copy Rows/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Bulk Copy Throughput/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Backup/Restore Throughput/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''DBCC Logical Scan Bytes/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Shrink Data Movement Bytes/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Flushes/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Bytes Flushed/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Flush Waits/sec'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Flush Wait Time'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Truncations'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Growths'' and [instance_name] =''tempdb'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Shrinks'' and [instance_name] =''tempdb'')
																	


PRINT ''...Totals of Database Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE

   ([object_name] LIKE ''%Databases%''and [counter_name] = ''Data File(s) Size (KB)'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log File(s) Size (KB)'' and [instance_name] =''_Total'')          
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log File(s) Used Size (KB)'' and [instance_name] =''_Total'')     
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Percent Log Used'' and [instance_name] =''_Total'')               
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Active Transactions'' and [instance_name] =''_Total'')            
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Transactions/sec'' and [instance_name] =''_Total'')               
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Repl. Pending Xacts'' and [instance_name] =''_Total'')            
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Repl. Trans. Rate'' and [instance_name] =''_Total'')              
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Cache Reads/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Cache Hit Ratio'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Cache Hit Ratio Base'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Bulk Copy Rows/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Bulk Copy Throughput/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Backup/Restore Throughput/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''DBCC Logical Scan Bytes/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Shrink Data Movement Bytes/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Flushes/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Bytes Flushed/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Flush Waits/sec'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Flush Wait Time'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Truncations'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Growths'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Databases%''and [counter_name] = ''Log Shrinks'' and [instance_name] =''_Total'')



PRINT ''...SQL Error Statistics''
PRINT '' ''
SELECT 
  [instance_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE

   ([object_name] LIKE ''%SQL Errors%''and [counter_name] = ''Errors/sec'')
OR ([object_name] LIKE ''%SQL Errors%''and [counter_name] = ''Errors/sec'')
OR ([object_name] LIKE ''%SQL Errors%''and [counter_name] = ''Errors/sec'')
OR ([object_name] LIKE ''%SQL Errors%''and [counter_name] = ''Errors/sec'')
OR ([object_name] LIKE ''%SQL Errors%''and [counter_name] = ''Errors/sec'')



PRINT ''...SQL Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE
   ([object_name] LIKE ''%SQL Statistics%''and [counter_name] = ''SQL Compilations/sec'')
OR ([object_name] LIKE ''%SQL Statistics%''and [counter_name] = ''SQL Re-Compilations/sec'')



PRINT ''...Plan Cache Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE
   ([object_name] LIKE ''%Plan Cache%''and [counter_name] = ''Cache Hit Ratio'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Plan Cache%''and [counter_name] = ''Cache Hit Ratio Base'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Plan Cache%''and [counter_name] = ''Cache Pages'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Plan Cache%''and [counter_name] = ''Cache Object Counts'' and [instance_name] =''_Total'')
OR ([object_name] LIKE ''%Plan Cache%''and [counter_name] = ''Cache Objects in use'' and [instance_name] =''_Total'')


PRINT ''...Transactions Statistics''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE ([object_name] LIKE ''%Transactions%'')


PRINT ''...Wait Statistics. Average execution time (ms)''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE ([object_name] LIKE ''%Wait Statistics%''and [instance_name] = ''Average execution time (ms)'')                          

--
PRINT ''...Wait Statistics. Waits in progress''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE ([object_name] LIKE ''%Wait Statistics%''and [instance_name] = ''Waits in progress'')    

--
PRINT ''...SQL Execution Statistics. Average execution time (ms)''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE
   ([object_name] LIKE ''%Exec Statistics%''and [counter_name] = ''Extended Procedures'')  
OR ([object_name] LIKE ''%Exec Statistics%''and [counter_name] = ''DTC calls'')            
OR ([object_name] LIKE ''%Exec Statistics%''and [counter_name] = ''OLEDB calls'')          
OR ([object_name] LIKE ''%Exec Statistics%''and [counter_name] = ''Distributed Query'')    
																				
--
PRINT ''...SQL Execution Statistics. Execution in progress''
PRINT '' ''
SELECT 
[counter_name] AS ''Description''
, [cntr_value] AS ''Current Value''
 from sys.dm_os_performance_counters 
WHERE ([object_name] LIKE ''%Exec Statistics'' and [instance_name] =''Execs in progress'')

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLExpressMaintPlan]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLExpressMaintPlan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[dbm_SQLExpressMaintPlan]
(
   @database      sysname,                   -- database name | ALL_USER | ALL_SYSTEM
   @optype        varchar(7),                -- LOG | DB | DIFF | REINDEX | REORG | CHECKDB
   @backupwith    varchar(500) = NULL,       -- additional backup options
   @backupfldr    varchar(200) = NULL,       -- folder to write backup to 
   @reportfldr    varchar(200) = NULL,       -- folder to write text report 
   @verify        bit = 1,                   -- verify backup
   @verifywith    varchar(500) = NULL,       -- additional verify options
   @dbretainunit  varchar(10)  = NULL,       -- minutes | hours | days | weeks | months | copies
   @dbretainval   int = 1,                   -- specifies how many retainunits to keep backup
   @report        bit = 1,                   -- flag to indicate whether to generate report
   @rptretainunit varchar(10)  = NULL,       -- minutes | hours | days | weeks | months | copies
   @rptretainval  int = 1,                   -- specifies how many retainunits to keep reports
   @checkattrib   bit = 0,                   -- check if archive bit is cleared before deleting
   @delfirst      bit = 0,                   -- delete before backup (handy if space issues)
   @debug         bit = 0,                   -- print commands to be executed
   @compression   bit = 0                    -- backup compression (SQL 2008 Enterprise Edition only)
)
AS
/* 
   ExpressMaintTSQL
   
   see http://www.sqldbatips.com/showarticle.asp?ID=27 for documentation
   
   Date           Author                  Notes
   24/07/2004     Jasper Smith            Initial release
   28/07/2008     Jasper Smith            Fixed datepart issue with MONTHS retention unit
   06/12/2008     Jasper Smith            Added SQL 2008 support plus some minor fixes

*/
SET NOCOUNT ON
SET ARITHABORT ON
SET DATEFORMAT YMD

/************************
   VARIABLE DECLARATION
************************/

   DECLARE @fso             int 
   DECLARE @file            int 
   DECLARE @reportfilename  varchar(500) 
   DECLARE @backupfilename  varchar(500) 
   DECLARE @delfilename     varchar(500)
   DECLARE @cmd             varchar(650)
   DECLARE @backupfldrorig  varchar(200)
   DECLARE @databaseorig    sysname
   DECLARE @table           nvarchar(600)
   DECLARE @exists          varchar(5)
   DECLARE @err             int
   DECLARE @start           datetime
   DECLARE @finish          datetime
   DECLARE @runtime         datetime
   DECLARE @output          varchar(200)
   DECLARE @errormsg        varchar(210)
   DECLARE @datepart        nchar(2)
   DECLARE @execmd          nvarchar(1000)
   DECLARE @delcmd          nvarchar(1000)
   DECLARE @exemsg          varchar(8000)
   DECLARE @filecount       int              ; SET @filecount    = 0
   DECLARE @delcount        int              ; SET @delcount     = 0
   DECLARE @hr              int              ; SET @hr           = 0
   DECLARE @ret             int              ; SET @ret          = 0
   DECLARE @cmdret          int              ; SET @cmdret       = 0
   DECLARE @delbkflag       int              ; SET @delbkflag    = 0
   DECLARE @delrptflag      int              ; SET @delrptflag   = 0
   DECLARE @filecrt         int              ; SET @filecrt      = 0
   DECLARE @user            sysname          ; SET @user         = SUSER_SNAME()
   DECLARE @jobdt           datetime         ; SET @jobdt        = GETDATE()
   DECLARE @jobstart        char(12)         ; 
   DECLARE @stage           int              ; SET @stage        = 1
   DECLARE @compressok      bit              ; SET @compressok   = 0
   DECLARE @versionmajor    int              
   DECLARE @engineedition   int

   SET @jobstart = CONVERT(char(8),@jobdt,112)+LEFT(REPLACE(CONVERT(char(8),@jobdt,108),'':'',''''),4)   
   IF RIGHT(@reportfldr,1)<>''\'' SET @reportfldr = @reportfldr + ''\''
   IF RIGHT(@backupfldr,1)<>''\'' SET @backupfldr = @backupfldr + ''\''
   SET @backupfldrorig = @backupfldr
   SET @databaseorig = @database

   SELECT @versionmajor = CAST(LEFT(CAST(SERVERPROPERTY(''ProductVersion'') as varchar(128)),CHARINDEX(''.'',CAST(SERVERPROPERTY(''ProductVersion'') as varchar(128)))-1) as int),
          @engineedition = CAST(SERVERPROPERTY(''EngineEdition'') as int)
   IF (@versionmajor>=10 AND @engineedition = 3) SET @compressok = 1

   CREATE TABLE #files(filename varchar(255))  
   CREATE TABLE #exists(exist int,isdir int,parent int)
   CREATE TABLE #databases(dbname sysname)

/**********************************
     INITIALIZE FSO IF @report = 1
***********************************/

   IF @report = 1
   BEGIN
      EXEC @hr=sp_OACreate ''Scripting.FileSystemObject'',@fso OUT 
      IF @hr <> 0 
      BEGIN   
         EXEC sp_OAGetErrorInfo @fso
         RAISERROR(''Error creating File System Object'',16,1)
         SET @ret = 1
      	GOTO CLEANUP	
      END
   END

/************************
       CHECK INPUT
************************/

   -- check SQL2005 or higher
   IF @versionmajor<9
	BEGIN                   				
   	RAISERROR(''SQL2005 or higher is required for sp_expressmaint'',16,1)
      SET @ret = 1
   	GOTO CLEANUP	
	END
   
   -- check sysadmin
   IF IS_SRVROLEMEMBER(''sysadmin'') = 0
	BEGIN                   				
   	RAISERROR(''The current user %s is not a member of the sysadmin role'',16,1,@user)
      SET @ret = 1
   	GOTO CLEANUP	
	END

   -- check database exists and is online
   IF @database NOT IN (''ALL_USER'',''ALL_SYSTEM'')
   BEGIN
      IF (DB_ID(@database) IS NULL) OR ((select state from sys.databases where name = @database) <>0)
   	BEGIN                   				
      	RAISERROR(''Database %s is invalid or database status is not ONLINE'',16,1,@database)
         SET @ret = 1
      	GOTO CLEANUP		
   	END
   END

   -- check @optype is valid
   IF UPPER(@optype) NOT IN (''LOG'',''DB'',''DIFF'',''REINDEX'',''REORG'',''CHECKDB'')
	BEGIN                   				
   	RAISERROR(''%s is not a valid option for @optype'',16,1,@optype)
      SET @ret = 1
   	GOTO CLEANUP		
	END

   -- check recovery mode is correct if trying log backup
   IF @database NOT IN (''ALL_USER'',''ALL_SYSTEM'')
   BEGIN
      IF (@optype = ''LOG'' and ((select recovery_model from sys.databases where name = @database) = 3))
   	BEGIN                   				
      	RAISERROR(''%s is not a valid option for database %s because it is in SIMPLE recovery mode'',16,1,@optype,@database)
         SET @ret = 1
      	GOTO CLEANUP	
   	END
   END

   -- no log backups for system databases
   IF @database = ''ALL_SYSTEM''
   BEGIN
      IF @optype = ''LOG''
   	BEGIN                   				
      	RAISERROR(''%s is not a valid option for the option ALL_SYSTEM'',16,1,@optype)
         SET @ret = 1
      	GOTO CLEANUP	
   	END
   END

   -- check that @backupfldr exists on the server
   IF @optype NOT IN (''REINDEX'',''CHECKDB'',''REORG'')
   BEGIN
      IF @report = 1
      BEGIN
         EXEC sp_OAMethod @fso,''FolderExists'',@exists OUT,@backupfldr
         IF @exists <> ''True''
      	BEGIN                   				
         	RAISERROR(''The folder %s does not exist on this server'',16,1,@backupfldr)
            SET @ret = 1
         	GOTO CLEANUP	
      	END
      END
      ELSE
      BEGIN
         INSERT #exists
         EXEC master.dbo.xp_fileexist @backupfldr
         IF (SELECT MAX(isdir) FROM #exists)<>1
      	BEGIN                   				
         	RAISERROR(''The folder %s does not exist on this server'',16,1,@backupfldr)
            SET @ret = 1
         	GOTO CLEANUP	
      	END
      END
   END

   -- check that @reportfldr exists on the server
   IF @reportfldr IS NOT NULL or @report = 1
   BEGIN
      IF @report = 1
      BEGIN
         EXEC sp_OAMethod @fso,''FolderExists'',@exists OUT,@reportfldr
         IF @exists <> ''True''
      	BEGIN                   				
         	RAISERROR(''The folder %s does not exist on this server'',16,1,@reportfldr)
            SET @ret = 1
         	GOTO CLEANUP	
      	END
      END
      ELSE
      BEGIN
         DELETE #exists
         INSERT #exists
         EXEC master.dbo.xp_fileexist @reportfldr
         IF (SELECT MAX(isdir) FROM #exists)<>1
      	BEGIN                   				
         	RAISERROR(''The folder %s does not exist on this server'',16,1,@reportfldr)
            SET @ret = 1
         	GOTO CLEANUP	
      	END
      END
   END

   -- check @dbretainunit is a vaild value
   IF @optype NOT IN (''REINDEX'',''CHECKDB'',''REORG'')
   BEGIN
      IF UPPER(@dbretainunit) NOT IN (''MINUTES'',''HOURS'',''DAYS'',''WEEKS'',''MONTHS'',''COPIES'')
    	BEGIN                   				
      	RAISERROR(''%s is not a valid value for @dbretainunit (''''minutes | hours | days | weeks | months | copies'''')'',16,1,@dbretainunit)
         SET @ret = 1
      	GOTO CLEANUP	
   	END
   END

   --check @dbretainval is a vaild value
   IF @dbretainval<1
 	BEGIN                   				
   	RAISERROR(''%i is not a valid value for @dbretainval (must be >0)'',16,1,@dbretainval)
      SET @ret = 1
   	GOTO CLEANUP	
	END

   -- check @rptretainunit is a vaild value if present
   IF UPPER(@rptretainunit) NOT IN (''MINUTES'',''HOURS'',''DAYS'',''WEEKS'',''MONTHS'',''COPIES'') and @rptretainunit IS NOT NULL
 	BEGIN                   				
   	RAISERROR(''%s is not a valid value for @rptretainunit (''''minutes | hours | days | weeks | months | copies'''')'',16,1,@rptretainunit)
      SET @ret = 1
   	GOTO CLEANUP	
	END

   --check @rptretainval is a vaild value
   IF @rptretainval<1
 	BEGIN                   				
   	RAISERROR(''%i is not a valid value for @rptretainval (must be >0)'',16,1,@rptretainval)
      SET @ret = 1
   	GOTO CLEANUP	
	END


/***********************************
   list of databases to process
************************************/

   IF @database IN (''ALL_USER'',''ALL_SYSTEM'')
   BEGIN
      IF @database = ''ALL_USER''
         INSERT #databases(dbname) 
         SELECT [name] from sys.databases where database_id > 4
         AND (@optype <> ''LOG'' OR recovery_model <> ''3'')
      ELSE
         INSERT #databases(dbname) 
         SELECT [name] from sys.databases where database_id in (1,3,4)
   END
   ELSE
      INSERT #databases(dbname) SELECT @database


/***********************************
   INITIALIZE REPORT IF @report = 1
************************************/

   -- generate report filename
   SELECT @reportfilename = @reportfldr + REPLACE(REPLACE(@database,'' '',''_''),'''''''',''_'') +
   CASE WHEN UPPER(@optype) = ''DB''   THEN ''_FullDBBackup_report_''
        WHEN UPPER(@optype) = ''DIFF'' THEN ''_DiffDBBackup_report_''
        WHEN UPPER(@optype) = ''LOG''  THEN ''_LogBackup_report_''   
        WHEN UPPER(@optype) = ''REINDEX''  THEN ''_Reindex_report_''    
        WHEN UPPER(@optype) = ''REORG''  THEN ''_Reorg_report_''   
        WHEN UPPER(@optype) = ''CHECKDB''  THEN ''_CheckDB_report_''      
   END + @jobstart + ''.txt''

   -- if no report just set @reportfilename to NULL
   IF @report = 0 SET @reportfilename = NULL

   IF @debug = 1
   BEGIN
      PRINT ''@reportfilename = '' + ISNULL(@reportfilename,''NULL'')
   END

   IF @report = 1
   BEGIN
      -- create report file
      EXEC @hr=sp_OAMethod @fso, ''CreateTextFile'',@file OUT, @reportfilename
      IF (@hr <> 0)
      BEGIN
         EXEC sp_OAGetErrorInfo @fso 
         RAISERROR(''Error creating log file'',16,1)
         SET @ret = 1
      	GOTO CLEANUP	
      END
      ELSE
         -- set global flag to indicate we have created a report file
         SET @filecrt = 1

      -- write header   
      EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
      SET @output = ''Expressmaint utility, Logged on to SQL Server ['' + @@SERVERNAME + ''] as '' + ''['' + @user + '']''
      IF @debug = 1 PRINT @output
      EXEC sp_OAMethod @file,''WriteLine'',NULL,@output       
      

      IF UPPER(@optype) NOT IN (''REINDEX'',''CHECKDB'',''REORG'')
      BEGIN
         SET @output = ''Starting backup on '' + convert(varchar(25),getdate(),100)
      END
      IF UPPER(@optype) = ''CHECKDB''
      BEGIN
         SET @output = ''Starting CheckDB on '' + convert(varchar(25),getdate(),100)
      END      
      IF UPPER(@optype) IN (''REINDEX'',''REORG'')
      BEGIN
         SET @output = ''Starting Reindex on '' + convert(varchar(25),getdate(),100)
      END 

      IF @debug = 1 PRINT @output
      EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
      EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
   END

/************************
     BACKUP ACTIONS
************************/

   IF  UPPER(@optype) = ''CHECKDB'' GOTO CHECK_DB
   IF  UPPER(@optype) IN (''REINDEX'',''REORG'') GOTO REINDEX
   
   -- if @delfirst = 1  we need to delete prior backups that qualify
   IF @delfirst = 1 GOTO DELFIRST

   -- this label is so that we can return here after deleting files if @delfirst = 1
   DOBACKUP:

   DECLARE dcur CURSOR LOCAL FAST_FORWARD
   FOR SELECT dbname FROM #databases ORDER BY dbname
   OPEN dcur
   FETCH NEXT FROM dcur into @database
   WHILE @@FETCH_STATUS=0
   BEGIN
   
      -- set backup start time
      SET @start = GETDATE()
   
      -- write to text report
      IF @report = 1
      BEGIN
         SET @output = ''['' + CAST(@stage as varchar(10)) + ''] Database '' + @database + '': '' +
                       CASE WHEN UPPER(@optype) = ''DB''   THEN ''Full Backup ''
                            WHEN UPPER(@optype) = ''DIFF'' THEN ''Differential Backup ''
                            WHEN UPPER(@optype) = ''LOG''  THEN ''Log Backup ''         
                       END + ''starting at '' + CONVERT(varchar(25),@start,100)
         IF @debug = 1 PRINT @output
         EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
      END

      -- backup subfolder
      SET @execmd = ''IF NOT EXIST "'' + @backupfldrorig + REPLACE(@database,'''''''','''') + ''\" MKDIR "'' + @backupfldrorig + REPLACE(@database,'''''''','''') + ''\"''
      EXEC master.dbo.xp_cmdshell @execmd,no_output
      SET @backupfldr = @backupfldrorig + REPLACE(@database,'''''''','''') + ''\''

      SELECT @backupfilename = @backupfldr + REPLACE(REPLACE(@database,'' '',''_''),'''''''',''_'') +
      CASE WHEN UPPER(@optype) = ''DB''   THEN ''_FullDBBackup_''
           WHEN UPPER(@optype) = ''DIFF'' THEN ''_DiffDBBackup_''
           WHEN UPPER(@optype) = ''LOG''  THEN ''_LogBackup_''         
      END + @jobstart + 
      CASE WHEN UPPER(@optype) = ''LOG'' THEN ''.TRN'' ELSE ''.BAK'' END
         
      /************************
             FULL BACKUP
      ************************/
   
      IF UPPER(@optype) = ''DB''
      BEGIN
   
         IF @compression=1 AND @compressok=1 
            SET @execmd = N''BACKUP DATABASE ['' + @database + ''] TO DISK = '''''' + @backupfilename + '''''''' +
                           '' WITH COMPRESSION'' + CASE WHEN @backupwith IS NULL THEN '''' ELSE ('','' + @backupwith) END
         ELSE
            SET @execmd = N''BACKUP DATABASE ['' + @database + ''] TO DISK = '''''' + @backupfilename + '''''''' +
                          CASE WHEN @backupwith IS NULL THEN '''' ELSE ('' WITH '' + @backupwith) END
   
         IF @debug = 1 PRINT ''FULL BACKUP : '' + @execmd

         BEGIN TRY
   
            EXEC(@execmd)
   
         END TRY
         BEGIN CATCH -- backup failure
            SELECT @err = @@ERROR,@ret = @err
            SELECT @errormsg = ''Full backup of database '' + @database + '' failed with error : '' +  CAST(@err as varchar(10))
            SET @output = SPACE(4) + ''*** '' + @errormsg + '' ***''
            IF @debug = 1 PRINT @output
            IF @report = 1
            BEGIN
               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
               SET @output = SPACE(4) + ''Refer to SQL Error Log and NT Event Log for further details''
               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
               EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
            END
            CLOSE dcur
            DEALLOCATE dcur
            GOTO CLEANUP
   
         END CATCH 
         
         -- backup success
         SET @finish = GETDATE()
         SET @output = SPACE(4) + ''Database backed up to '' + @backupfilename
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
         END
   
         --calculate backup runtime
         SET @runtime = (@finish - @start)
         SET @output = SPACE(4) + ''Full database backup completed in ''
                     + CAST(DATEPART(hh,@runtime) as varchar(2)) + '' hour(s) ''
                     + CAST(DATEPART(mi,@runtime) as varchar(2)) + '' min(s) ''
                     + CAST(DATEPART(ss,@runtime) as varchar(2)) + '' second(s)''
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
         END
   
      END
   
   
      /************************
         DIFFERENTIAL BACKUP
      ************************/
   
      IF UPPER(@optype) = ''DIFF''
      BEGIN

         IF @compression=1 AND @compressok=1 
            SET @execmd = N''BACKUP DATABASE ['' + @database + ''] TO DISK = '''''' + @backupfilename + '''''''' +
                          N'' WITH DIFFERENTIAL,COMPRESSION'' + CASE WHEN @backupwith IS NULL THEN N'''' ELSE (N'','' + @backupwith) END
         ELSE
            SET @execmd = N''BACKUP DATABASE ['' + @database + ''] TO DISK = '''''' + @backupfilename + N'''''' WITH DIFFERENTIAL'' +
                          CASE WHEN @backupwith IS NULL THEN N'''' ELSE (N'','' + @backupwith) END

         IF @debug = 1 PRINT ''DIFFERENTIAL BACKUP : '' + @execmd

         BEGIN TRY
   
            EXEC(@execmd)
   
         END TRY
         BEGIN CATCH -- backup failure
   
            SELECT @err = @@ERROR,@ret = @err
            SELECT @errormsg = ''Differential backup of database '' + @database + '' failed with error : '' +  CAST(@err as varchar(10))
            SET @output = SPACE(4) + ''*** '' + @errormsg + '' ***''
            IF @debug = 1 PRINT @output
            IF @report = 1
            BEGIN
               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
               SET @output = SPACE(4) + ''Refer to SQL Error Log and NT Event Log for further details''
               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            END
            CLOSE dcur
            DEALLOCATE dcur
            GOTO CLEANUP
   
         END CATCH 
         
         -- backup success
         SET @finish = GETDATE()
         SET @output = SPACE(4) + ''Database backed up to '' + @backupfilename
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
         END
   
         --calculate backup runtime
         SET @runtime = (@finish - @start)
         SET @output = SPACE(4) + ''Differential database backup completed in ''
                     + CAST(DATEPART(hh,@runtime) as varchar(2)) + '' hour(s) ''
                     + CAST(DATEPART(mi,@runtime) as varchar(2)) + '' min(s) ''
                     + CAST(DATEPART(ss,@runtime) as varchar(2)) + '' second(s)''
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
         END
   
      END
   
      /************************
             LOG BACKUP
      ************************/
      
      IF UPPER(@optype) = ''LOG''
      BEGIN

         IF @compression=1 AND @compressok=1 
            SET @execmd = N''BACKUP LOG ['' + @database + ''] TO DISK = '''''' + @backupfilename + '''''''' +
                           '' WITH COMPRESSION'' + CASE WHEN @backupwith IS NULL THEN '''' ELSE ('','' + @backupwith) END
         ELSE
            SET @execmd = N''BACKUP LOG ['' + @database + ''] TO DISK = '''''' + @backupfilename + '''''''' +
                          CASE WHEN @backupwith IS NULL THEN '''' ELSE ('' WITH '' + @backupwith) END
      
         IF @debug = 1 PRINT ''LOG BACKUP : '' + @execmd
   
         BEGIN TRY
   
            EXEC(@execmd)
   
         END TRY
         BEGIN CATCH -- backup failure
   
            SELECT @err = @@ERROR,@ret = @err
            SELECT @errormsg = ''Log backup of database '' + @database + '' failed with error : '' +  CAST(@err as varchar(10))        
            SET @output = SPACE(4) + ''*** '' + @errormsg + '' ***''
            IF @debug = 1 PRINT @output
            IF @report = 1
            BEGIN
               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
               SET @output = SPACE(4) + ''Refer to SQL Error Log and NT Event Log for further details''
               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            END
            CLOSE dcur
            DEALLOCATE dcur
            GOTO CLEANUP
   
         END CATCH 
         
         -- backup success
         SET @finish = GETDATE()
         SET @output = SPACE(4) + ''Log backed up to '' + @backupfilename
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
         END
   
         --calculate backup runtime
         SET @runtime = (@finish - @start)
         SET @output = SPACE(4) + ''Log backup completed in ''
                     + CAST(DATEPART(hh,@runtime) as varchar(2)) + '' hour(s) ''
                     + CAST(DATEPART(mi,@runtime) as varchar(2)) + '' min(s) ''
                     + CAST(DATEPART(ss,@runtime) as varchar(2)) + '' second(s)''
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
         END
   
      END

      SET @stage = (@stage + 1)

      FETCH NEXT FROM dcur into @database
   END

   CLOSE dcur
   DEALLOCATE dcur
     
   /************************
         VERIFY BACKUP
   ************************/

   IF @verify = 1
   BEGIN

      DECLARE dcur CURSOR LOCAL FAST_FORWARD
      FOR SELECT dbname FROM #databases ORDER BY dbname
      OPEN dcur
      FETCH NEXT FROM dcur into @database
      WHILE @@FETCH_STATUS=0
      BEGIN
   
         SELECT @backupfilename = @backupfldrorig + REPLACE(@database,'''''''','''') + ''\'' + REPLACE(REPLACE(@database,'' '',''_''),'''''''',''_'') +
         CASE WHEN UPPER(@optype) = ''DB''   THEN ''_FullDBBackup_''
              WHEN UPPER(@optype) = ''DIFF'' THEN ''_DiffDBBackup_''
              WHEN UPPER(@optype) = ''LOG''  THEN ''_LogBackup_''         
         END + @jobstart + 
         CASE WHEN UPPER(@optype) = ''LOG'' THEN ''.TRN'' ELSE ''.BAK'' END
      
         SET @start = GETDATE()
   
         -- write to text report
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
            SET @output = ''['' + CAST(@stage as varchar(10)) + ''] Database '' + @database + '': Verify Backup File...''
            IF @debug = 1 PRINT @output
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output  
         END
         
         SET @execmd = N''RESTORE VERIFYONLY FROM DISK = '''''' + @backupfilename + '''''''' +
                       CASE WHEN @verifywith IS NULL THEN '''' ELSE ('' WITH '' + @verifywith) END
         
         BEGIN TRY
   
            EXEC(@execmd)
   
         END TRY
         BEGIN CATCH
   
            SELECT @err = @@ERROR,@ret = @err
            SET @errormsg = ''Verify of '' + @backupfilename + '' failed with Native Error : '' + CAST(@err as varchar(10))
            SET @output = SPACE(4) + ''*** '' + @errormsg + '' ***''
            IF @debug = 1 PRINT @output
            IF @report = 1
            BEGIN
               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            END
            CLOSE dcur
            DEALLOCATE dcur
            GOTO CLEANUP
   
         END CATCH
   
         -- verify success
         SET @finish = GETDATE()
         SET @output = SPACE(4) + ''Backup file '' + @backupfilename + '' verified''
         IF @debug = 1 PRINT @output
   
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
         END
   
         --calculate verify runtime
         SET @runtime = (@finish - @start)
         SET @output = SPACE(4) + ''Verify backup completed in ''
                     + CAST(DATEPART(hh,@runtime) as varchar(2)) + '' hour(s) ''
                     + CAST(DATEPART(mi,@runtime) as varchar(2)) + '' min(s) ''
                     + CAST(DATEPART(ss,@runtime) as varchar(2)) + '' second(s)''
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
         END

         SET @stage = (@stage + 1)
         FETCH NEXT FROM dcur into @database 
      END     

      CLOSE dcur
      DEALLOCATE dcur
   END

/************************
    DELETE OLD FILES
************************/


   -- we have already deleted files so skip to the end
   IF @delfirst = 1 GOTO CLEANUP

   -- this label is so that we can delete files prior to backup if @delfirst = 1
   DELFIRST:

   /************************
      DELETE OLD BACKUPS
   ************************/

   SET @datepart = CASE 
      WHEN UPPER(@dbretainunit) = ''MINUTES'' THEN N''mi''
      WHEN UPPER(@dbretainunit) = ''HOURS''   THEN N''hh''
      WHEN UPPER(@dbretainunit) = ''DAYS''    THEN N''dd''
      WHEN UPPER(@dbretainunit) = ''WEEKS''   THEN N''ww''
      WHEN UPPER(@dbretainunit) = ''MONTHS''  THEN N''mm''
   END

   IF @debug = 1 PRINT ''@datepart for backups = '' + @datepart

   -- write to text report
   IF @report = 1
   BEGIN
      EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
   END
   SET @output = ''['' + CAST(@stage as varchar(10)) + ''] Delete Old Backup Files...''
   IF @debug = 1 PRINT @output
   IF @report = 1
   BEGIN
      EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
   END

   DECLARE dcur CURSOR LOCAL FAST_FORWARD
   FOR SELECT dbname FROM #databases ORDER BY dbname
   OPEN dcur
   FETCH NEXT FROM dcur into @database
   WHILE @@FETCH_STATUS=0
   BEGIN

      SET @backupfldr = + @backupfldrorig + REPLACE(@database,'''''''','''') + ''\''
      SELECT @backupfilename = @backupfldr + REPLACE(REPLACE(@database,'' '',''_''),'''''''',''_'') +
      CASE WHEN UPPER(@optype) = ''DB''   THEN ''_FullDBBackup_''
           WHEN UPPER(@optype) = ''DIFF'' THEN ''_DiffDBBackup_''
           WHEN UPPER(@optype) = ''LOG''  THEN ''_LogBackup_''         
      END + @jobstart + 
      CASE WHEN UPPER(@optype) = ''LOG'' THEN ''.TRN'' ELSE ''.BAK'' END
   
      -- load files in @backupfldr
      IF @checkattrib = 1
         SET @cmd = ''dir /B /A-D-A /OD "'' + @backupfldr + REPLACE(REPLACE(@database,'' '',''_''),'''''''',''_'') +
         CASE WHEN UPPER(@optype) = ''DB'' THEN ''_FullDBBackup_''
              WHEN UPPER(@optype) = ''DIFF'' THEN ''_DiffDBBackup_''
              WHEN UPPER(@optype) = ''LOG''  THEN ''_LogBackup_'' END + ''*'' +
         CASE WHEN UPPER(@optype) = ''LOG'' THEN ''.TRN'' ELSE ''.BAK'' END + ''"''
      ELSE 
         SET @cmd = ''dir /B /A-D /OD "'' + @backupfldr + REPLACE(REPLACE(@database,'' '',''_''),'''''''',''_'') +
         CASE WHEN UPPER(@optype) = ''DB'' THEN ''_FullDBBackup_''
              WHEN UPPER(@optype) = ''DIFF'' THEN ''_DiffDBBackup_''
              WHEN UPPER(@optype) = ''LOG''  THEN ''_LogBackup_'' END + ''*'' +
         CASE WHEN UPPER(@optype) = ''LOG'' THEN ''.TRN'' ELSE ''.BAK'' END + ''"''
   
      IF @debug = 1 PRINT ''@cmd = '' + @cmd

      DELETE #files
      INSERT #files EXEC master.dbo.xp_cmdshell @cmd
      DELETE #files WHERE filename IS NULL or filename = ISNULL(REPLACE(@backupfilename,@backupfldr,''''),''nothing'')
   
      IF @debug = 1 SELECT * FROM #files
      
      -- get count of files that match pattern
      SELECT @filecount = COUNT(*) from #files 
      WHERE PATINDEX(''%File Not Found%'',filename) = 0
      AND PATINDEX(''%The system cannot find%'',filename) = 0 
   
      -- remove files that don''t meet retention criteria if there are any files that match pattern
      IF UPPER(@dbretainunit) <> ''COPIES''
      BEGIN
         IF @filecount>0
         BEGIN
            SET @delcmd = N''DELETE #files WHERE DATEADD('' + @datepart + N'','' + CAST(@dbretainval as nvarchar(10)) + N'','' +
                    ''CONVERT(datetime,(SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),7,2) +''''/''''
                    + SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),5,2) +''''/''''
                    + SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),1,4) +'''' ''''
                    + SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),9,2) +'''':''''
                    + SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),11,2)),103)) > '''''' + CAST(@jobdt as nvarchar(25)) + N''''''''
            
            IF @debug = 1 PRINT ''@delcmd='' + @delcmd
            EXEC master.dbo.sp_executesql @delcmd
      
            SELECT @delcount = COUNT(*) from #files
         END
         ELSE
         BEGIN
            SELECT @delcount = 0
         END
      END
      ELSE  -- number of copies not date based (include current backup that''s not in #files)
      BEGIN
         IF @filecount>0
         BEGIN
            IF @dbretainval>1 
            BEGIN
               SET @delcmd = N''DELETE #files WHERE filename IN(SELECT TOP '' + CAST((@dbretainval-1) as nvarchar(10)) +
                             N'' filename FROM #files ORDER BY substring(filename,((len(filename)+2)-charindex(''''_'''',reverse(filename))),12) DESC)''
      
               IF @debug = 1 PRINT ''@delcmd='' + @delcmd
               EXEC master.dbo.sp_executesql @delcmd
            END
      
            SELECT @delcount = COUNT(*) from #files
   
         END
         ELSE
         BEGIN
            SELECT @delcount = 0
         END
      END
   
      IF @debug = 1 PRINT ''@delcount = '' + STR(@delcount)
   
      -- if there are any matching files
      IF @filecount>0
      BEGIN
         -- are there any files that need deleting
         IF @delcount>0
         BEGIN
            DECLARE FCUR CURSOR FORWARD_ONLY FOR
            SELECT * FROM #files
            OPEN FCUR
            FETCH NEXT FROM FCUR INTO @delfilename
            WHILE @@FETCH_STATUS=0
            BEGIN
               SET @cmd = ''DEL /Q "'' + @backupfldr + @delfilename + ''"''
               EXEC @cmdret = master.dbo.xp_cmdshell @cmd,no_output   
   
               -- log failure to delete but don''t abort procedure
               IF @cmdret<>0
               BEGIN
                  SET @output = SPACE(4) + ''*** Error: Failed to delete file '' + @backupfldr + @delfilename + '' ***''
                  IF @debug = 1 PRINT @output
                  IF @report = 1
                  BEGIN
                     EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
                  END
                  SELECT @delbkflag = 1 , @cmdret = 0, @delcount = (@delcount-1)
               END
               ELSE
               BEGIN
                  SET @output = SPACE(4) + ''Deleted file '' + @backupfldr + @delfilename
                  IF @debug = 1 PRINT @output
                  IF @report = 1
                  BEGIN
                     EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
                  END
               END
   
               FETCH NEXT FROM FCUR INTO @delfilename
            END
            CLOSE FCUR
            DEALLOCATE FCUR
         END
      END
   
      -- write to text report
      SET @output = SPACE(4) + CAST(@delcount as varchar(10)) + '' file(s) deleted.''
      IF @debug = 1 PRINT @output
      IF @report = 1
      BEGIN
         EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
         EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
      END

      FETCH NEXT FROM dcur into @database
   END

   CLOSE dcur
   DEALLOCATE dcur

   -- clear temporary table and variables
   DELETE #files
   SET @cmd = ''''
   SET @delcmd = ''''
   SET @delfilename = ''''
   SET @datepart = ''''
   SET @filecount = 0
   SET @delcount = 0
   SET @cmdret = 0
   SET @stage = @stage + 1


   /************************
      DELETE OLD REPORTS
   ************************/

   DELREPORTS:

   IF @rptretainunit IS NOT NULL
   BEGIN
      SET @datepart = CASE 
         WHEN UPPER(@rptretainunit) = ''MINUTES'' THEN N''mi''
         WHEN UPPER(@rptretainunit) = ''HOURS''   THEN N''hh''
         WHEN UPPER(@rptretainunit) = ''DAYS''    THEN N''dd''
         WHEN UPPER(@rptretainunit) = ''WEEKS''   THEN N''ww''
         WHEN UPPER(@rptretainunit) = ''MONTHS''  THEN N''mm''
   END

   IF @debug = 1 PRINT ''@datepart for reports = '' + @datepart

   -- write to text report
   SET @output = ''['' + CAST(@stage as varchar(10)) + ''] Delete Old Report Files...''
   IF @debug = 1 PRINT @output
   IF @report = 1
   BEGIN
      EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
   END

   -- load files in @reportfldr
   SET @cmd = ''dir /B /A-D /OD "'' + @reportfldr + REPLACE(REPLACE(@databaseorig,'' '',''_''),'''''''','''') +
   CASE WHEN UPPER(@optype) = ''DB'' THEN ''_FullDBBackup_report_''
        WHEN UPPER(@optype) = ''DIFF'' THEN ''_DiffDBBackup_report_''
        WHEN UPPER(@optype) = ''REINDEX''  THEN ''_Reindex_report_''     
        WHEN UPPER(@optype) = ''CHECKDB''  THEN ''_CheckDB_report_''     
        WHEN UPPER(@optype) = ''REORG''  THEN ''_Reorg_report_'' 
        WHEN UPPER(@optype) = ''LOG''  THEN ''_LogBackup_report_'' END + ''*.txt"''

   IF @debug = 1 PRINT ''@cmd = '' + @cmd

   INSERT #files EXEC master.dbo.xp_cmdshell @cmd
   DELETE #files WHERE filename IS NULL

   IF @debug = 1 SELECT * FROM #files
   
   -- get count of files that match pattern
   SELECT @filecount = COUNT(*) from #files 
   WHERE PATINDEX(''%File Not Found%'',filename) = 0
   AND PATINDEX(''%The system cannot find%'',filename) = 0 

   -- remove files that don''t meet retention criteria if there are any files that match pattern
   IF UPPER(@rptretainunit) <> ''COPIES''
   BEGIN
      IF @filecount>0
      BEGIN
         SET @delcmd = N''DELETE #files WHERE DATEADD('' + @datepart + N'','' + CAST(@rptretainval as nvarchar(10)) + N'','' +
                 ''CONVERT(datetime,(SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),7,2) +''''/''''
                 + SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),5,2) +''''/''''
                 + SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),1,4) +'''' ''''
                 + SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),9,2) +'''':''''
                 + SUBSTRING(SUBSTRING(filename,((LEN(filename)-CHARINDEX(''''_'''',REVERSE(filename)))+2),12),11,2)),103)) > '''''' + CAST(@jobdt as nvarchar(25)) + N''''''''
         
         IF @debug = 1 PRINT ''@delcmd='' + @delcmd
         EXEC master.dbo.sp_executesql @delcmd
   
         SELECT @delcount = COUNT(*) from #files
      END
      ELSE
      BEGIN
         SELECT @delcount = 0
      END
   END
   ELSE  -- number of copies not date based
   BEGIN
      IF @filecount>0
      BEGIN
         SET @delcmd = N''DELETE #files WHERE filename IN(SELECT TOP '' + CAST(@rptretainval as nvarchar(10)) +
                       N'' filename FROM #files ORDER BY substring(filename,((len(filename)+2)-charindex(''''_'''',reverse(filename))),12) DESC)''

         IF @debug = 1 PRINT ''@delcmd='' + @delcmd
         EXEC master.dbo.sp_executesql @delcmd
   
         SELECT @delcount = COUNT(*) from #files
      END
      ELSE
      BEGIN
         SELECT @delcount = 0
      END
   END
   
   IF @debug = 1 PRINT STR(@delcount)

   -- if there are any matching files
   IF @filecount>0
   BEGIN
      -- are there any files that need deleting
      IF @delcount>0
      BEGIN
         DECLARE FCUR CURSOR FORWARD_ONLY FOR
         SELECT * FROM #files
         OPEN FCUR
         FETCH NEXT FROM FCUR INTO @delfilename
         WHILE @@FETCH_STATUS=0
         BEGIN
            SET @cmd = ''DEL /Q "'' + @reportfldr + @delfilename + ''"''
            EXEC @cmdret = master.dbo.xp_cmdshell @cmd,no_output   

            -- log failure to delete but don''t abort procedure
            IF @cmdret<>0
            BEGIN

               SET @output = SPACE(4) + ''*** Error: Failed to delete file '' + @reportfldr + @delfilename + '' ***''
               IF @debug = 1 PRINT @output
               IF @report = 1
               BEGIN
                  EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
               END
               SELECT @delrptflag = 1 , @cmdret = 0, @delcount = (@delcount-1)
            END
            BEGIN
               SET @output = SPACE(4) + ''Deleted file '' + @reportfldr + @delfilename
               IF @debug = 1 PRINT @output
               IF @report = 1
               BEGIN
                  EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
               END
            END

            FETCH NEXT FROM FCUR INTO @delfilename
         END
         CLOSE FCUR
         DEALLOCATE FCUR
      END
   END

   -- write to text report
   SET @output = SPACE(4) + CAST(@delcount as varchar(10)) + '' file(s) deleted.''
   IF @debug = 1 PRINT @output
   IF @report = 1
   BEGIN
      EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
      EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
   END

   -- update stage
   SET @stage = @stage + 1
   END
   -- if we got here due to @delfirst = 1 go back and do the backups
   IF @delfirst = 1 
      GOTO DOBACKUP
   ELSE 
      GOTO CLEANUP


/************************
         CHECKDB 
************************/

   CHECK_DB:

   IF @optype = ''CHECKDB''
   BEGIN

      DECLARE dcur CURSOR LOCAL FAST_FORWARD
      FOR SELECT dbname FROM #databases ORDER BY dbname
      OPEN dcur
      FETCH NEXT FROM dcur into @database
      WHILE @@FETCH_STATUS=0
      BEGIN

         -- write to text report
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
            SET @output = ''['' + CAST(@stage as varchar(10)) + ''] Database '' + @database + '': Check Data and Index Linkage...''
            IF @debug = 1 PRINT @output
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output  
         END

         -- set backup start time
         SET @start = GETDATE()

         SET @execmd = N''DBCC CHECKDB(['' + @database + N'']) WITH NO_INFOMSGS''
         IF @debug = 1 PRINT ''DBCC Command : '' + @execmd
         
         BEGIN TRY

            EXEC(@execmd)

         END TRY
         BEGIN CATCH

            SELECT @err = @@ERROR,@ret = @err
            SET @errormsg = ''CheckDB of '' + @database + '' failed with Native Error : '' + CAST(@err as varchar(10))
            SET @output = SPACE(4) + ''*** '' + @errormsg + '' ***''
            PRINT @output
            IF @report = 1
            BEGIN
               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            END
            CLOSE dcur
            DEALLOCATE dcur
            GOTO CLEANUP

         END CATCH
         
         SET @finish = GETDATE()

         --calculate checkdb runtime
         SET @runtime = (@finish - @start)
         SET @output = SPACE(4) + ''CheckDB completed in ''
                     + CAST(DATEPART(hh,@runtime) as varchar(2)) + '' hour(s) ''
                     + CAST(DATEPART(mi,@runtime) as varchar(2)) + '' min(s) ''
                     + CAST(DATEPART(ss,@runtime) as varchar(2)) + '' second(s)''
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
         END   
         SET @stage = (@stage + 1)
         FETCH NEXT FROM dcur into @database      
      
      END

      CLOSE dcur
      DEALLOCATE dcur
      
      -- delete reports
      IF @report = 1
      BEGIN
         EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
      END
      GOTO DELREPORTS
   END

/************************
     REINDEX/REORG
************************/

   REINDEX:

   IF @optype in (''REINDEX'',''REORG'')
   BEGIN

      DECLARE dcur CURSOR LOCAL FAST_FORWARD
      FOR SELECT dbname FROM #databases ORDER BY dbname
      OPEN dcur
      FETCH NEXT FROM dcur into @database
      WHILE @@FETCH_STATUS=0
      BEGIN

         -- write to text report
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
            IF @optype = ''REINDEX''
               SET @output = ''['' + CAST(@stage as varchar(10)) + ''] Database '' + @database + '': Index Rebuild (using original fillfactor)...''
            ELSE
               SET @output = ''['' + CAST(@stage as varchar(10)) + ''] Database '' + @database + '': Index Reorganize...''

            IF @debug = 1 PRINT @output
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output  
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''  
         END

         -- set start time
         SET @start = GETDATE()

         -- all user tables
         CREATE TABLE #tables(tablename sysname)
         EXEC(N''INSERT #tables(tablename) SELECT DISTINCT(''''['''' + s.[name] + ''''].['''' + t.[name] + '''']'''') FROM ['' + @database + N''].sys.tables t '' +
              N''JOIN ['' + @database + N''].sys.schemas s on t.schema_id=s.schema_id '' +
              N''JOIN ['' + @database + N''].sys.indexes i on t.object_id=i.object_id '' +
              N''WHERE t.is_ms_shipped = 0 AND i.type>0'')

         DECLARE tcur CURSOR LOCAL FAST_FORWARD 
         FOR SELECT tablename FROM #tables ORDER BY tablename
         OPEN tcur
         FETCH NEXT FROM tcur INTO @table
         WHILE @@FETCH_STATUS = 0
         BEGIN

            IF @report = 1
            BEGIN
               IF @optype = ''REINDEX''
                  SET @output = SPACE(4) + N''Rebuilding indexes for table '' + @table
               ELSE
                  SET @output = SPACE(4) + N''Reorganizing indexes for table '' + @table

               EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            END   

            
            IF @optype = ''REINDEX''
               SET @execmd = N''ALTER INDEX ALL ON ['' + @database + N''].'' + @table + N'' REBUILD''
            ELSE
               SET @execmd = N''ALTER INDEX ALL ON ['' + @database + N''].'' + @table + N'' REORGANIZE''
   
            IF @debug = 1 PRINT ''Reindex Command : '' + @execmd

            BEGIN TRY
   
               EXEC(@execmd)
   
            END TRY
            BEGIN CATCH
            
               SELECT @err = @@ERROR,@ret = @err
               SET @errormsg = ''Rebuild of indexes on ['' + @database + N''].'' + @table + '' failed with Native Error : '' + CAST(@err as varchar(10))
               SET @output = SPACE(4) + ''*** '' + @errormsg + '' ***''
               PRINT @output
               IF @report = 1
               BEGIN
                  EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
               END
               CLOSE tcur
               DEALLOCATE tcur
               DROP TABLE #tables
               GOTO CLEANUP
   
            END CATCH

            FETCH NEXT FROM tcur INTO @table
         END

         CLOSE tcur
         DEALLOCATE tcur
    
         SET @finish = GETDATE()

         --calculate runtime
         SET @runtime = (@finish - @start)
         SET @output = SPACE(4) + ''Index maintenance completed in ''
                     + CAST(DATEPART(hh,@runtime) as varchar(2)) + '' hour(s) ''
                     + CAST(DATEPART(mi,@runtime) as varchar(2)) + '' min(s) ''
                     + CAST(DATEPART(ss,@runtime) as varchar(2)) + '' second(s)''
         IF @debug = 1 PRINT @output
         IF @report = 1
         BEGIN
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
            EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
            EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
         END   

         DROP TABLE #tables

         SET @stage = (@stage + 1)
         FETCH NEXT FROM dcur into @database   
      
      END

      CLOSE dcur
      DEALLOCATE dcur
      
      -- delete reports
      GOTO DELREPORTS
   END

      
/************************
         CLEAN UP 
************************/

   CLEANUP:

   DROP TABLE #files
   DROP TABLE #exists
   DROP TABLE #databases

   -- if we encountered errors deleting old backups return failure
   IF @delbkflag<>0
   BEGIN
      SET @errormsg = ''Expressmaint encountered errors deleting old backup files'' + CHAR(13)
                    + CASE WHEN @report = 1 THEN (''Please see '' + @reportfilename + CHAR(13) + '' for further details'') ELSE '''' END
      RAISERROR(@errormsg,16,1)
      SET @ret = 1
   END

   -- if we encountered errors deleting old reports return failure
   IF (@delrptflag<>0 AND @delbkflag = 0)
   BEGIN
      SET @errormsg = ''Expressmaint encountered errors deleting old report files'' + CHAR(13)
                    + CASE WHEN @report = 1 THEN (''Please see '' + @reportfilename + CHAR(13) + '' for further details'') ELSE '''' END
      RAISERROR(@errormsg,16,1)
      SET @ret = 1
   END
   
   -- if we created a file make sure we write trailer and destroy object
   IF @filecrt = 1
   BEGIN
      -- write final part of report
      EXEC sp_OAMethod @file,''WriteLine'',NULL,''''
      SET @output = ''Expressmaint processing finished at '' + CONVERT(varchar(25),GETDATE(),100) 
                  + '' (Return Code : '' + CAST(@ret as varchar(10)) + '')'' 
      IF @debug = 1 PRINT @output
      EXEC sp_OAMethod @file,''WriteLine'',NULL,@output
      EXEC sp_OAMethod @file,''WriteLine'',NULL,''''

      -- destroy file object
      EXEC @hr=sp_OADestroy @file
      IF @hr <> 0 EXEC sp_OAGetErrorInfo @file
   END

   IF @report = 1
   BEGIN
      EXEC @hr=sp_OADestroy @fso
      IF @hr <> 0 EXEC sp_OAGetErrorInfo @fso
   END

RETURN @ret
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SMCLoanIDUpdate]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SMCLoanIDUpdate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		mmessano
-- Create date: 8/19/2010
-- Description:	Select loan_id''s from the SMC tables newer than the specified time 
-- and insert them into the LendingSuiteImport table for further processing.
-- Accepts a date and databasename as inputs.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_SMCLoanIDUpdate] 
	@StartDate datetime,
	@ClientSMCDB varchar(32), 
	@ServerName varchar(32) = NULL
	
AS
BEGIN


DECLARE @borrower varchar(128)
DECLARE @br_address varchar(128)
DECLARE @br_income varchar(128)
DECLARE @br_liability varchar(128)
DECLARE @br_reo varchar(128)
DECLARE @customer_elements varchar(128)
DECLARE @funding varchar(128)
DECLARE @loan_appl varchar(128)
DECLARE @loan_fees varchar(128)
DECLARE @loan_price_history varchar(128)
DECLARE @loan_prod varchar(128)
DECLARE @loan_status varchar(128)
DECLARE @servicing varchar(128)
DECLARE @shipping varchar(128)
DECLARE @underwriting varchar(128)
DECLARE @UpdLoans varchar(128)
DECLARE @loanid int
DECLARE @CMD varchar(MAX)

-- create temp table to populate with loan_id''s
CREATE TABLE #LoanIDs ( loan_id int )

SELECT @CMD = ''INSERT INTO #LoanIDs ''

SELECT @borrower = ''
	SELECT ln_loan_id
		FROM '' + @ClientSMCDB + ''.dbo.borrower
		WHERE br_last_update > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @br_address = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.br_address
		WHERE ba_last_update > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @br_income = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.br_income
		WHERE bi_last_update > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @br_liability = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.br_liability
		WHERE bt_last_update > '''''' + convert(varchar(23),@StartDate) + ''''''		
	UNION''
SELECT @br_reo = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.br_reo
		WHERE breo_last_updated > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @customer_elements = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.customer_elements
		WHERE ce_last_update > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @funding = ''
	SELECT loanid
		from '' + @ClientSMCDB + ''.dbo.funding
		WHERE LastUpdated > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @loan_appl = ''
	SELECT la_loan_appl_id
		from '' + @ClientSMCDB + ''.dbo.loan_appl
		WHERE la_last_update > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @loan_fees = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.loan_fees
		WHERE lf_last_updated > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @loan_price_history = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.loan_price_history
		WHERE lph_last_update_date > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @loan_prod = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.loan_prod
		WHERE lp_last_update > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @loan_status = ''
	SELECT ln_loan_id
		from '' + @ClientSMCDB + ''.dbo.loan_status
		WHERE ls_last_updated > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @servicing = ''
	SELECT loanid
		from '' + @ClientSMCDB + ''.dbo.servicing
		WHERE LastUpdated > '''''' + convert(varchar(23),@StartDate) + ''''''					
	UNION''
SELECT @shipping = ''
	SELECT loanid
		from '' + @ClientSMCDB + ''.dbo.shipping
		WHERE LastUpdated > '''''' + convert(varchar(23),@StartDate) + ''''''
	UNION''
SELECT @underwriting = ''
	SELECT loanid
		from '' + @ClientSMCDB + ''.dbo.underwriting
		WHERE LastUpdated > '''''' + convert(varchar(23),@StartDate) + ''''''
''
-- end loan_id selection

-- agggregate select statements
SELECT @CMD =	@CMD
				+ @borrower
				+ @br_address
				+ @br_income
				+ @br_liability
				+ @br_reo
				+ @customer_elements
				+ @funding
				+ @loan_appl
				+ @loan_fees
				+ @loan_price_history
				+ @loan_prod
				+ @loan_status
				+ @servicing
				+ @shipping
				+ @underwriting

--PRINT @CMD
EXEC(@CMD)

declare loanid cursor for 
	SELECT distinct loan_id FROM #LoanIDs
		order by loan_id

open loanid 
	fetch next from loanid into @loanid 
	while @@fetch_status=0 
begin 


-- exec clientsmcdb.dbo.upd_ImportedLoan @loanid
SELECT @UpdLoans = ''EXEC '' + @ClientSMCDB + ''.dbo.upd_ImportedLoan '''''' + cast( @loanid as varchar(10)) + ''''''''

print @UpdLoans
--EXEC(@UpdLoans)

fetch next from loanid into @loanid 
end
 
CLOSE loanid 
DEALLOCATE loanid 

DROP TABLE #LoanIDs


END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ServerStatsDaily]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ServerStatsDaily]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

Create PROCEDURE [dbo].[dbm_ServerStatsDaily]  ( @BIT_DELETE_RESULTS BIT = 0 )
AS

SET NOCOUNT ON

Declare @weekday 		INT
		, @count 		INT
		, @sql_started	DATETIME

Declare @id_prior 			INT
	, @sampletime_prior		DATETIME
	, @cpu_busy_prior 		INT
	, @io_busy_prior 		INT
	, @idle_prior 			INT
	, @pack_received_prior 	INT
	, @pack_send_prior 		INT
	, @packed_errors_prior 	INT
	, @connections_prior 	INT
	, @total_read_prior 	INT
	, @total_write_prior 	INT
	, @total_errors_prior 	INT

------------------------------------------ 
SET @sql_started   = ( SELECT login_time  FROM master..sysprocesses WHERE spid = 1 )
SET @weekday = (SELECT DATEPART ( weekday , GETDATE() ))
IF  @weekday  <>  7 
BEGIN
------------------------------------------
   IF OBJECT_ID(''ServerStatistics_Prior'') IS  NULL      
      CREATE TABLE  ServerStatistics_Prior (
          [ID]          INT IDENTITY,
          SQL_Started   DATETIME,
          SAMPLETIME    DATETIME,
          cpu_busy      INT,
          io_busy       INT,
          idle          INT,
          pack_received INT,
          pack_send     INT,
          packed_errors INT,
          connections   INT,
          total_read    INT,
          total_write   INT,
          total_errors  INT )
    
   SET @count = ( SELECT COUNT(*) FROM ServerStatistics_Prior )
   IF @count = 0
   BEGIN
      TRUNCATE TABLE ServerStatistics_Prior
      INSERT INTO ServerStatistics_Prior  
      SELECT @sql_started,getdate(),@@cpu_busy/1000,@@io_busy/1000,  @@idle /1000,
             @@pack_received  ,@@pack_sent, @@packet_errors  , @@connections , @@total_read ,
             @@total_write , @@total_errors 
   END

   IF OBJECT_ID(''ServerStatistics'') IS NOT NULL
      BEGIN
         IF @BIT_DELETE_RESULTS = 1     --Warning !!!
            TRUNCATE TABLE ServerStatistics
   END  
   ELSE  
      CREATE TABLE  ServerStatistics (
          [ID]          INT IDENTITY,
          LastRunTIME   DATETIME,
          SAMPLETIME    DATETIME,
          cpu_busy      INT,
          io_busy       INT,
          idle          INT,
          pack_received INT,
          pack_send     INT,
          packed_errors INT,
          connections   INT,
          total_read    INT,
          total_write   INT,
          total_errors  INT )

   IF EXISTS ( SELECT sampletime  FROM ServerStatistics_Prior   WHERE id = 1 )
      SET @sampletime_prior = (SELECT sampletime  FROM ServerStatistics_Prior 
                                                  WHERE id = 1)
   ELSE  BEGIN
      PRINT ''Data not found in table ServerStatistics_Prior.'' 
      RETURN 1
   END

   IF   @sql_started <= @sampletime_prior  
   BEGIN
     DECLARE c_table_prior CURSOR FOR 
	 SELECT cpu_busy, io_busy, idle, pack_received, pack_send,packed_errors,
                connections, total_read, total_write, total_errors
         FROM ServerStatistics_Prior
         WHERE [id] = 1

       OPEN c_table_prior 
       FETCH NEXT FROM c_table_prior 
          INTO @cpu_busy_prior,@io_busy_prior,@idle_prior,@pack_received_prior,@pack_send_prior,
               @packed_errors_prior, @connections_prior, @total_read_prior, 
               @total_write_prior, @total_errors_prior 
     
       INSERT INTO ServerStatistics
          SELECT @sampletime_prior,getdate(),@@cpu_busy/1000 - @cpu_busy_prior,@@io_busy/1000 - @io_busy_prior, 
                 @@idle/1000 - @idle_prior,@@pack_received - @pack_received_prior ,
                 @@pack_sent - @pack_send_prior , @@packet_errors - @packed_errors_prior ,
                 @@connections - @connections_prior , @@total_read - @total_read_prior,
                 @@total_write - @total_write_prior, @@total_errors - @total_errors_prior 
         
       CLOSE c_table_prior
       DEALLOCATE c_table_prior       
   END
   ELSE BEGIN
      PRINT ''Daily statistic Row not inserted because of REBOOT server.'' 
      PRINT ''SQL Server started - '' + cast(@sql_started AS CHAR(17))
   END 
--since SQL Server last started   
   TRUNCATE TABLE ServerStatistics_Prior
   INSERT INTO ServerStatistics_Prior
      SELECT @sql_started,getdate(),@@cpu_busy/1000 ,@@io_busy/1000, @@idle/1000 ,@@pack_received ,@@pack_sent ,
             @@packet_errors ,@@connections , @@total_read,@@total_write, @@total_errors 

END  --Close First IF

--Delete history statistic rows (more than one year)
DELETE 
   FROM ServerStatistics
   WHERE SAMPLETIME < ( getdate() - 365 )  

RETURN 0

' 
END
GO
/****** Object:  Table [dbo].[Lock_Monitor]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Lock_Monitor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Lock_Monitor](
	[Occurs] [datetime] NOT NULL,
	[Proc_blocked] [int] NULL,
	[Proc_blocking] [int] NULL,
	[Qry_blocked] [varchar](255) NULL,
	[Qry_blocking] [varchar](255) NULL,
	[User_Blocking] [varchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[dbm_SearchSqlErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SearchSqlErrorLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE proc  [dbo].[dbm_SearchSqlErrorLog] 

@lookfor varchar(25)= '''', @LogNum char(2)= ''''

  AS
/******************************

sql-scripting 04/04/2001 

Visit www.sql-scripting.com 
Edward J Pochinski III 

******************************/ 

/******************************

This script creates an sp that can be used to search the
SQL Error Log for a user specified search criteria.
This can be very handy when trying to find a particular
problem in very large SQL Error Logs.
I can not take full credit for this idea as
I first found the script on www.sql-scripting.com.
I have since modified  it to 
1) read the registry to determine 
where Your SQL install exists so that you do not have to tell
it where your SQL Error Logs reside;
2) accept a log number variable for searching offline error logs;
3) tell you if it does not find anything in the error log for the search
criteria you specified.

Phillip D. Snipes

*******************************/

DECLARE @SQLLogPath varchar(20)

EXEC master..xp_regread @rootkey=''HKEY_LOCAL_MACHINE'', 
@key=''SOFTWARE\Microsoft\MSSQLServer\Setup'', @value_name=''SQLDataRoot'',
@value=@SQLLogPath OUTPUT
 

Declare @cmd varchar(65) 

/*********************
Print help message if no search criteria specified.
**********************/
     if @lookfor = '''' 

Begin  

    Print ''#################################################'' 

   Print char(13)+''You must pass a string to search for.'' 

   Print char(13)+''example: To search current SQL Error Log for the word kernel''

Print char(13)+''exec dbm_SearchSqlErrorLog kernel'' 

   Print char(13)+''Optional parameter to pass is the Log Number. '' 

   Print char(13)+''The SQL Server starts a new Error Log each time it is started.'' 

	Print char(13)+''To search a previous SQL Error Log You must specify the Log Number.'' 

Print char(13)+''If you do not pass a Log Number the procedure will default to searching the current SQL Error Log.'' 

Print char(13)+''If you want to search previous Logs, then specify which Log to search by passing a number.'' 

   Print char(13)+''example: To search the most recent previous SQL Error Log for the word kernel''

Print char(13)+''exec dbm_SearchSqlErrorLog kernel, 1'' 

    Print
char(13)+''#################################################'' 

  Return


End 

/********************
Defaults to searching current SQL Error Log if no LogNum specified.
*********************/
If @LogNum = ''''
Begin
Set NoCount On
    set @cmd = ''FINDSTR /I /C:"''+@lookfor+''" '' + @SQLLogPath +
''\Log\errorlog''
Create Table #Results ( Results varchar(8000))
insert into #Results
Exec master..xp_cmdshell @cmd
Select * from #Results
IF @@ROWCOUNT = 0 
BEGIN 
Print char(13)+''There are no entries in the
Current SQL Error Log matching the search criteria "''+@lookfor+''".''
End
Drop Table #Results
Set NoCount Off

End
/****************
Print which SQL Error Log file is being searched.
*****************/ 
If @LogNum > 0 And @LogNum < 7
Begin
If @logNum = 1 
Begin
Print char(13)+''SQL Error Log Archive #1''
End
If @logNum = 2 
Begin
Print char(13)+''SQL Error Log Archive #2''
End
If @logNum = 3 
Begin
Print char(13)+''SQL Error Log Archive #3''
End
If @logNum = 4 
Begin
Print char(13)+''SQL Error Log Archive #4''
End
If @logNum = 5 
Begin
Print char(13)+''SQL Error Log Archive #5''
End
If @logNum = 6 
Begin
Print char(13)+''SQL Error Log Archive #6''
End

Set NoCount On
set @cmd = ''FINDSTR /I /C:"''+@lookfor+''" '' + @SQLLogPath + ''\Log\errorlog.'' + @LogNum 
Create Table #Results1 ( Results varchar(8000))
insert into #Results1
Exec master..xp_cmdshell @cmd
Select * from #Results1
IF @@ROWCOUNT = 0 
BEGIN 
Print char(13)+''There are no entries in the
SQL Error Log Archive #''+@LogNum+'' matching the search criteria
"''+@lookfor+''".''
End
Drop Table #Results1
Set NoCount Off
End

/*************************
Prinnt an error message if the LogNum specified is too high.
**************************/
If @logNum > 6 
Begin
Print char(13)+''SQL Error Log Number out of
Range. MS SQL Server does not maintain more than 6 Archived Error Logs.''
End' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ScriptDatabase]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ScriptDatabase]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[dbm_ScriptDatabase]
        @pDatabaseName varchar(255),
        @workingFolder varchar(255),
        @pInstanceName varchar(30) = null
as

-- common
declare @dmoServer int,
        @path varchar(255),
        @cmd varchar(1200),
        @returnstatus int,
        @dmoMethod varchar(255),
        @dmoProperty varchar(255),
        @dmoCollection varchar(255),
        @scriptFile varchar(255),
        @hr int,
        @hrhex char(10),
        @OleErrorSource varchar(255),
        @OleErrorDescription varchar(1000),
        @scriptType int,
        @databaseScriptType int,
        @procedureName sysname,
        @Processflowerror varchar(255),
        @pTempFolder varchar(255),
-- defaults
        @defaultCount int,
        @curDefaultNbr int,
        @defaultName varchar(255),
-- full text catalog
        @catalogCount int,
        @curCatalogNbr int,
        @catalogName varchar(255),
-- roles
        @roleCount int,
        @curRoleNbr int,
        @roleName varchar(255),
        @isFixedRole bit,
-- rules
        @ruleCount int,
        @curRuleNbr int,
        @ruleName varchar(255),
-- stored procedures
        @storedProcedureCount int,
        @curStoredProcedureNbr int,
        @storedProcedureName varchar(255),
        @isSystemStoredProcedure bit,
        @procedureScriptType int,
-- user data types
        @dataTypeCount int,
        @curDataTypeNbr int,
        @dataTypeName varchar(255),
-- user functions
        @functionCount int,
        @curFunctionNbr int,
        @functionName varchar(255),
-- users
        @userCount int,
        @curUserNbr int,
        @userName varchar(255),
        @loginName varchar(255),
        @loginScriptType int,
        @userScriptType int,
-- views
        @viewCount int,
        @curViewNbr int,
        @viewName varchar(255),
        @isSystemView bit,
        @viewScriptType int

-- Directory Structure Temp Directory
Declare @prefix varchar(1000)
Declare @prefix_fil  varchar (1000)
Declare @prefix_tab varchar (1000)
Declare @prefix_cns varchar (1000)
Declare @prefix_viw varchar (1000)
Declare @prefix_trg varchar (1000)
Declare @prefix_rul varchar (1000)
Declare @prefix_ind varchar (1000)
Declare @prefix_prc varchar (1000)
Declare @prefix_udf varchar (1000)
Declare @prefix_def varchar (1000)
Declare @prefix_ftc varchar (1000)
Declare @prefix_rol varchar (1000)
Declare @prefix_udt varchar (1000)
Declare @prefix_usr varchar (1000)
-- Memory Table For logging
Declare @ActivityLog table
( id int identity,
  activity varchar(1000))

-- Ok here we begin with the stuff

set nocount on
set @Processflowerror = ''''
set @prefix = @workingFolder + ''\DB-Framework\''
set @prefix_fil  = @prefix + ''01. Filegroups\''
set @prefix_tab = @prefix + ''02. Tables (only columns)\''
set @prefix_cns = @prefix + ''03. PK + FKs + Constraints\''
set @prefix_viw = @prefix + ''04. Views\''
set @prefix_trg = @prefix + ''06. Triggers\''
set @prefix_rul = @prefix + ''07. Rules\''
set @prefix_ind = @prefix + ''08. Indexes\''
set @prefix_prc = @prefix + ''09. Stored Procedures\''
set @prefix_udf = @prefix + ''10. User Defined Functions\''
set @prefix_def = @prefix + ''11. Defaults\''
set @prefix_FTC = @prefix + ''12. Full Text Catalogs\''
set @prefix_rol = @prefix + ''13. Roles\''
set @prefix_UDT = @prefix + ''14. User Defined Datatypes\''
set @prefix_USR = @prefix + ''15. Database users\''
-- init
set @procedureName = db_name() + ''.''
                        + user_name(objectproperty(@@procid,''OwnerId''))
                        + ''.'' + object_name(@@procid)

-- file system project working folder must exist
set @cmd = ''dir '' + ''"''+@workingFolder+''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                set @cmd = ''MD '' + @workingFolder
                exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
                if @returnstatus <> 0
                        begin
                                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                                set @Processflowerror = ''Could not create working Directory :'' + @CMD
                                goto ErrorHandler
                        end
                else
                        begin
                           insert @ActivityLog (activity) values (''Working directory sucessfully created'')
                        end
        end
else
        begin
           insert @ActivityLog (activity) values (''Target directory sucessfully located'')
        end

-- The Target Direcory does Exist now kill all the files in it

set @cmd = ''RMDIR '' + ''"''+@workingFolder + ''\"'' + '' /q /s''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not delete Target Directory :'' + @CMD
        end
else
        begin
           insert @ActivityLog (activity) values (''Target directory sucessfully deleted'')
        end

-- Create the Dir structure

set @cmd = ''MD '' + ''"'' + @prefix_fil + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create filegoups Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Filegroup directory sucessfully created'')
        end

set @cmd = ''MD '' +''"'' +  @prefix_tab + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Table Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Table directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_cns + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Constraints Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Constraints directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_viw + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Views Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''View directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_trg + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Trigger Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Trigger directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_rul + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Rules Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Rules directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_ind + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Index Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Index directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_prc + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Stored Procedure Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Stored Procedure directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_udf + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create User defined functions Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''User defined functions Procedure directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_def + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Defaults Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Defaults directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_ftc + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Full Text Catalog Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Full Text Catalog  directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_rol + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create Roles Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''Roles Catalog  directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_udt + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create User defined Datatypes Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''User defined Datatypes directory sucessfully created'')
        end

set @cmd = ''MD '' + ''"'' + @prefix_usr + ''"''
exec @returnstatus = master.dbo.xp_cmdshell @CMD, no_output
if @returnstatus <> 0
        begin
                raiserror (59007,16,1,@procedureName, @pTempFolder,@@servername)
                set @Processflowerror = ''Could not create User Directory :'' + @CMD
                goto ErrorHandler
        end
else
        begin
           insert @ActivityLog (activity) values (''User directory sucessfully created'')
        end

set @path = @workingFolder



-- new file, script drop object and create object
set @scriptType         = 1             -- drop
                        + 4             -- primary object
                        + 64            -- to file only
                        + 4096          -- if not exists
                        + 262144        -- owner qualify

-- database script type - non destructive
set @databaseScriptType         = 4             -- primary object
                                + 64            -- to file only
                                + 4096          -- if not exists

-- new file, script create object only
set @loginScriptType           =  4             -- primary object
                                + 64            -- to file only
                                + 4096          -- if not exists

-- new file, script create object only
set @userScriptType             = 1             -- drop
                                + 4             -- primary object
                                + 64            -- to file only
                                + 256           -- append (login script will create)
                                + 4096          -- if not exists

-- script drop object, create object, and permissions
set @procedureScriptType        = 1             -- drop
                                + 2             -- object permissions
                                + 4             -- primary object
                                + 32            -- database permissions
                                + 64            -- to file only
                                + 4096          -- if not exists
                                + 262144        -- owner qualify

-- script drop object, create object, and permissions
set @viewScriptType             = 1             -- drop
                                + 2             -- object permissions
                                + 4             -- primary object
                                + 32            -- database permissions
                                + 64            -- to file only
                                + 4096          -- if not exists
                                + 262144        -- owner qualify



-- open an in-process COM/DMO connection to this server
exec @hr = master.dbo.sp_OACreate       ''SQLDMO.SQLServer'',
                                        @dmoServer OUT
if @hr <> 0
        goto ErrorHandler

-- set the security context to integrated
exec @hr = master.dbo.sp_OASetProperty  @dmoServer,
                                        ''loginSecure'',
                                        1 -- NT Authentication
if @hr <> 0
        goto ErrorHandler

-- connect to the specified server
exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                        ''Connect'',
                                        NULL,
                                        @@servername
if @hr <> 0
        goto ErrorHandler

-- script each object to a separate file
-- database
select @dmoMethod       = ''Databases("'' + @pDatabaseName + ''").Script''
select @scriptFile      = @prefix_fil +@pdatabasename+''.Db''
exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                        @dmoMethod,
                                        NULL,
                                        @databaseScriptType,
                                        @scriptFile
if @hr <> 0 goto ErrorHandler
insert @ActivityLog (activity) values (''Database Successfully scripted'')
-- defaults
select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Defaults.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@defaultCount OUT
if @hr <> 0     goto ErrorHandler
set @curDefaultNbr = 1
while @curDefaultNbr <= @defaultCount
        begin
                -- get the name
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Defaults.Item(''  + cast(@curDefaultNbr as varchar(10))+ '').Name''

                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@defaultName OUT
                if @hr <> 0 goto ErrorHandler
                select @dmoMethod       = ''Databases("'' + @pDatabaseName + ''").Defaults("'' + @defaultName + ''").Script''
                select @scriptFile      = @prefix_def + @defaultName + ''.def''
                exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                                        @dmoMethod,
                                                        NULL,
                                                        @scriptType,
                                                        @scriptFile
                if @hr <> 0 goto ErrorHandler
                select @curDefaultNbr = @curDefaultNbr + 1
      end
insert @ActivityLog (activity) values (''Defaults Successfully scripted'')
-- full text catalogs
select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").FullTextCatalogs.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,
                                        @dmoProperty,
                                        @catalogCount OUT
if @hr <> 0     goto ErrorHandler
set @curCatalogNbr = 1
while @curCatalogNbr <= @catalogCount
        begin
                -- get the name
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").FullTextCatalogs.Item(''  + cast(@curCatalogNbr as varchar(10))+ '').Name''

                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,
                                                        @dmoProperty,
                                                        @catalogName OUT
                if @hr <> 0 goto ErrorHandler
                select @dmoMethod       = ''Databases("'' + @pDatabaseName + ''").FullTextCatalogs("'' + @catalogName + ''").Script''

                select @scriptFile      = @prefix_def   + @catalogName  + ''.cat''
                exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                                        @dmoMethod,
                                                        NULL,
                                                        @scriptType,
                                                        @scriptFile
                if @hr <> 0                     goto ErrorHandler
                select @curCatalogNbr = @curCatalogNbr + 1
      end
insert @ActivityLog (activity) values (''FullTextCatalogs Successfully scripted'')
-- roles
select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").DatabaseRoles.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,
                                        @dmoProperty,
                                        @roleCount OUT
if @hr <> 0 goto ErrorHandler
set @curRoleNbr = 1
while @curRoleNbr <= @RoleCount
        begin
                -- fixed roles cannot be removed so don''t try to script
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").DatabaseRoles.Item('' + cast(@curRoleNbr as varchar(10))  + '').IsFixedRole''

                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,
                                                        @dmoProperty,
                                                        @isFixedRole OUT
                if @hr <> 0 goto ErrorHandler
                -- get the name
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").DatabaseRoles.Item('' + cast(@curRoleNbr as varchar(10))  + '').Name''

                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,
                                                        @dmoProperty,
                                                        @roleName OUT
                if @hr <> 0 goto ErrorHandler
                if @isFixedRole = 0 and @roleName <> ''Public''
                        begin
                                select @dmoMethod       = ''Databases("'' + @pDatabaseName + ''").DatabaseRoles("'' + @roleName+ ''").Script''

                                select @scriptFile      = @prefix_rol + @roleName + ''.rol''
                                exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                                                        @dmoMethod,
                                                                        NULL,
                                                                        @scriptType,
                                                                        @scriptFile
                                if @hr <> 0 goto ErrorHandler
                        end
                select @curRoleNbr = @curRoleNbr + 1
      end
insert @ActivityLog (activity) values (''Roles Successfully scripted'')
-- rules
select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Rules.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@ruleCount OUT
if @hr <> 0 goto ErrorHandler
set @curRuleNbr = 1
while @curRuleNbr <= @RuleCount
        begin
                -- get the name
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Rules.Item('' + cast(@curRuleNbr as varchar(10))  + '').Name''

                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,
                                                        @dmoProperty,
                                                        @ruleName OUT
                if @hr <> 0 goto ErrorHandler
                select @dmoMethod       = ''Databases("'' + @pDatabaseName + ''").Rules("'' + @ruleName + ''").Script''
                select @scriptFile      = @prefix_rul+@ruleName + ''.rul''
                exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                                        @dmoMethod,
                                                        NULL,
                                                        @scriptType,
                                                        @scriptFile
                if @hr <> 0 goto ErrorHandler
                select @curRuleNbr = @curRuleNbr + 1
      end
insert @ActivityLog (activity) values (''Rules Successfully scripted'')
-- stored procedures
select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").StoredProcedures.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@storedProcedureCount OUT
if @hr <> 0 goto ErrorHandler
set @curStoredProcedureNbr = 1
while @curStoredProcedureNbr <= @StoredProcedureCount
        begin
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").StoredProcedures.Item('' + cast(@curStoredProcedureNbr as varchar(5)) + '').SystemObject''

                exec @hr = master..sp_OAGetProperty     @dmoServer,
                                                        @dmoProperty,
                                                        @isSystemStoredProcedure OUT
                if @hr <> 0 goto ErrorHandler
                if @isSystemStoredProcedure = 0
                        begin
                                -- get the name
                                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").StoredProcedures.Item(''  + cast(@curStoredProcedureNbr as varchar(10))+ '').Name''

                                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@storedProcedureName OUT

                                if @hr <> 0 goto ErrorHandler
                                select @dmoMethod       = ''Databases("''
                                                        + @pDatabaseName
                                                        + ''").StoredProcedures("''
                                                        + @StoredProcedureName
                                                        + ''").Script''

                                select @scriptFile      = @prefix_prc+ @StoredProcedureName + ''.prc''
                                exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                                                        @dmoMethod,
                                                                        NULL,
                                                                        @ProcedureScriptType,
                                                                        @scriptFile
                                if @hr <> 0 goto ErrorHandler
                        end
                select @curStoredProcedureNbr = @curStoredProcedureNbr + 1
      end
insert @ActivityLog (activity) values (''Stored procedures Successfully scripted'')
-- user data types
select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").UserDefinedDataTypes.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@dataTypeCount OUT
if @hr <> 0 goto ErrorHandler
set @curDataTypeNbr = 1
while @curDataTypeNbr <= @dataTypeCount
        begin
                -- get the name
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").UserDefinedDataTypes.Item('' + cast(@curDataTypeNbr as varchar(10))+ '').Name''

                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@dataTypeName OUT
                if @hr <> 0 goto ErrorHandler
                select @dmoMethod       = ''Databases("''
                                        + @pDatabaseName
                                        + ''").UserDefinedDataTypes("''
                                        + @dataTypeName
                                        + ''").Script''
                select @scriptFile      = @prefix_udt + @dataTypeName   + ''.udt''
                exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                                        @dmoMethod,
                                                        NULL,
                                                        @scriptType,
                                                        @scriptFile
                if @hr <> 0 goto ErrorHandler
                select @curDataTypeNbr = @curDataTypeNbr + 1
      end
insert @ActivityLog (activity) values (''User defined datatypes Successfully scripted'')
-- user functions (sql2000 or greater)
select @dmoProperty     = ''Databases("''
                        + @pDatabaseName
                        + ''").UserDefinedFunctions.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,
                                        @dmoProperty,
                                        @functionCount OUT
if @hr <> 0
        goto ErrorHandler
set @curFunctionNbr = 1
while @curFunctionNbr <= @functionCount
        begin
                -- get the name
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").UserDefinedFunctions.Item('' + cast(@curFunctionNbr as varchar(10))+ '').Name''

                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@functionName OUT
                if @hr <> 0 goto ErrorHandler
                select @dmoMethod       = ''Databases("''
                                        + @pDatabaseName
                                        + ''").UserDefinedFunctions("''
                                        + @functionName
                                        + ''").Script''
                select @scriptFile      = @prefix_udf+ @functionName + ''.udf''
                exec @hr = master.dbo.sp_OAMethod       @dmoServer,@dmoMethod,NULL,@scriptType,@scriptFile
                if @hr <> 0 goto ErrorHandler
                select @curFunctionNbr = @curFunctionNbr + 1
      end
insert @ActivityLog (activity) values (''User defined functions Successfully scripted'')
-- users
select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Users.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@userCount OUT
if @hr <> 0 goto ErrorHandler
set @curUserNbr = 1
while @curUserNbr <= @userCount
        begin
                -- get the name
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Users.Item('' + cast(@curUserNbr as varchar(10))  + '').Name''

                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@userName OUT
                if @hr <> 0 goto ErrorHandler
                if @userName <> ''guest''
                        begin
                                -- get the login name
                                select @dmoProperty     = ''Databases("''+ @pDatabaseName + ''").Users.Item('' + cast(@curUserNbr as varchar(10))+ '').Login''

                                exec @hr = master.dbo.sp_OAGetProperty @dmoServer, @dmoProperty, @loginName OUT
                                        if @hr <> 0 goto ErrorHandler
                                -- start the file with the login script but do not drop existing
                                if @loginName is not null
                                        begin
                                                select @scriptFile      = @prefix_usr + replace(@userName ,''\'',''~'') + ''.usr''

                                                select @dmoMethod       = ''Logins("''
                                                                        + @loginName
                                                                        + ''").Script''
                                                        exec @hr = master.dbo.sp_OAMethod
                                                                                @dmoServer,
                                                                                @dmoMethod,
                                                                                NULL,
                                                                                @loginScriptType,
                                                                                @scriptFile
                                                if @hr <> 0 goto ErrorHandler
                                        end
                                -- append the user script
                                select @dmoMethod       = ''Databases("''
                                                        + @pDatabaseName
                                                        + ''").Users("''
                                                        + @userName
                                                        + ''").Script''
                                select @scriptFile      = @prefix_usr+ replace(@userName ,''\'',''~'')+ ''.usr''
                                exec @hr = master.dbo.sp_OAMethod @dmoServer,@dmoMethod,NULL,@userScriptType,@scriptFile

                                if @hr <> 0 goto ErrorHandler
                        end
                select @curUserNbr = @curUserNbr + 1
        end
insert @ActivityLog (activity) values (''Users Successfully scripted'')
-- views
select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Views.Count''
exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@viewCount OUT
if @hr <> 0 goto ErrorHandler
set @curViEwNbr = 1
while @curViewNbr <= @viewCount
        begin
                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Views.Item('' + cast(@curViewNbr as varchar(5)) + '').SystemObject''

                exec @hr = master..sp_OAGetProperty     @dmoServer,@dmoProperty,@isSystemView OUT
                if @hr <> 0 goto ErrorHandler
                if @isSystemView = 0
                        begin
                                -- get the name
                                select @dmoProperty     = ''Databases("'' + @pDatabaseName + ''").Views.Item('' + cast(@curViewNbr as varchar(10))  + '').Name''

                                exec @hr = master.dbo.sp_OAGetProperty  @dmoServer,@dmoProperty,@viewName OUT
                                if @hr <> 0 goto ErrorHandler
                                select @dmoMethod       = ''Databases("''
                                                        + @pDatabaseName
                                                        + ''").Views("''
                                                        + @viewName
                                                        + ''").Script''
                                select @scriptFile      = @prefix_viw + @viewName + ''.viw''
                                exec @hr = master.dbo.sp_OAMethod       @dmoServer,
                                                                        @dmoMethod,
                                                                        NULL,
                                                                        @viewScriptType,
                                                                        @scriptFile
                                if @hr <> 0 goto ErrorHandler
                        end
                select @curViewNbr = @curViewNbr + 1
end
insert @ActivityLog (activity) values (''Views Successfully scripted'')

-- close and cleanup the COM/DMO database connection
exec @hr = master.dbo.sp_OAMethod @dmoServer,''DisConnect''
if @hr <> 0
        goto ErrorHandler
exec @hr = master.dbo.sp_OADestroy @dmoServer
if @hr <> 0
        goto ErrorHandler
-- audit completion
select * from @Activitylog
return

ErrorHandler:
insert @ActivityLog (activity) values (''Command Was :''+@Processflowerror)
if (@hr is not null)
        begin
                exec master.dbo.sp_OAGetErrorInfo       @dmoServer,
                                                        @OleErrorSource OUT,
                                                        @OleErrorDescription OUT

                insert @ActivityLog (activity)
                select @procedureName + '' '' + @pDatabaseName
                        + '' ended with error: '' + cast(@hr as varchar(20)) + ''
                        OLE ERROR: ''
                --+ isnull(Admin.dbo.binToHex (@hr),''not defined'') no function in 7 so skip conversion of error number
                + cast(@hr as varchar(20)) + ''
                        Source: '' + isnull(@OleErrorSource,''unknown'') + ''
                        Description: '' + isnull(@OleErrorDescription,''unknown'')

                -- still need to cleanup
                exec master.dbo.sp_OAMethod @dmoServer,''DisConnect''
                exec master.dbo.sp_OADestroy @dmoServer

                --raiserror (59001,16,1,@procedureName)
        end
else
        if @cmd is not null
                begin
                        insert @ActivityLog (activity)
                        select @procedureName + '' '' + @pDatabaseName
                                + '' '' + isNull(@pTempFolder,'''')
                                + '' failed with returnstatus ''
                                + cast(@returnstatus as varchar(10)) + '' at: '' + @cmd
                        raiserror(59001,16,1,@procedureName)
                end
        else
                raiserror (59000,16,1,@procedureName)
select * from @activitylog
return -1


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_IndexDefragAndRebuild]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_IndexDefragAndRebuild]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_IndexDefragAndRebuild]
	@dbname varchar(100)
AS

SET NOCOUNT ON

CREATE TABLE #tables(
	rid int identity (1,1),
	tabid int,
	[name] varchar(100)
)

CREATE TABLE #indexes(
	rid int identity (1,1),
	indid int,
	[name] varchar(100)
)

CREATE TABLE #fragreport(
	fid int identity (1,1),
	[timestamp] datetime default getdate(),
	ObjectName sysname,
	ObjectId int,
	IndexName sysname,
	IndexId int,
	[Level] int,
	Pages int,
	[Rows] int,
	MinimumRecordSize int,
	MaximumRecordSize int,
	AverageRecordSize float,
	ForwardedRecords int,
	Extents int,
	ExtentSwitches int,
	AverageFreeBytes float,
	AveragePageDensity float,
	ScanDensity float,
	BestCount int,
	ActualCount int,
	LogicalFragmentation float,
	ExtentFragmentation float,
	DBName varchar(100) NULL,
	PrePost varchar(20) NULL
)

CREATE TABLE #reindex(
	rid int identity (1,1),
	ObjectName sysname,
	IndexName sysname
)

DECLARE @numtables int,
	@numindexes int,
	@numreindexes int,
	@tabcount int,
	@indcount int,
	@recount int,
	@currtable int,
	@tabname varchar(100),
	@currind int,
	@indname varchar(100)


SET @tabcount = 1

INSERT INTO #tables([tabid], [name])
EXEC (''SELECT [id], ltrim(rtrim(su.[name] + ''''.'''' + so.[name])) FROM '' + @dbname + ''.dbo.sysobjects so INNER JOIN '' + @dbname + ''.dbo.sysusers su ON su.uid = so.uid WHERE so.xtype = ''''U'''' AND so.[name] <> ''''dtproperties'''''')

SELECT @numtables = count(*) FROM #tables

WHILE @tabcount <= @numtables
BEGIN
	SET @indcount = 1

	SELECT @currtable = tabid,
	       @tabname = ltrim(rtrim([name]))
	FROM #tables
	WHERE rid = @tabcount 
	
	INSERT INTO #fragreport([ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation])
	EXEC(''USE '' + @dbname + '' DBCC SHOWCONTIG (['' + @tabname + '']) WITH ALL_INDEXES, TABLERESULTS'')

	DELETE FROM #fragreport
	WHERE IndexID IN (0,255)

	UPDATE #fragreport
	SET PrePost = ''PRE''
	WHERE PrePost is NULL

	INSERT #indexes([indid], [name])
	EXEC (''SELECT indid, [name] FROM '' + @dbname + ''.dbo.sysindexes WHERE [id] = '' + @currtable + '' AND [name] not like ''''_WA%'''' AND indid NOT IN (0, 255)'')

	SELECT @numindexes = count(*) FROM #indexes

	WHILE @indcount <= @numindexes
	BEGIN
		SELECT @currind = indid,
		       @indname = ltrim(rtrim([name]))
		FROM #indexes
		WHERE rid = @indcount
		EXEC (''DBCC INDEXDEFRAG ('''''' + @dbname + '''''','''''' + @tabname + '''''','''''' + @indname + '''''')'')
		SET @indcount = @indcount + 1
 	END

	INSERT INTO #fragreport([ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation])
	EXEC(''USE '' + @dbname + '' DBCC SHOWCONTIG (['' + @tabname + '']) WITH ALL_INDEXES, TABLERESULTS'')

	DELETE FROM #fragreport
	WHERE IndexID IN (0,255)

	UPDATE #fragreport
	SET PrePost = ''POST''
	WHERE PrePost is NULL

	SET @tabcount = @tabcount + 1
	TRUNCATE TABLE #indexes
END

INSERT INTO #reindex([ObjectName],[IndexName])
SELECT #tables.[name], #fragreport.[IndexName]
FROM #fragreport
INNER JOIN #tables on #tables.tabid = #fragreport.objectid
WHERE #fragreport.IndexId NOT IN (0, 255)
AND (#fragreport.ScanDensity < 90 OR #fragreport.LogicalFragmentation > 10)
AND #fragreport.PrePost = ''POST''

SELECT @numreindexes = count(*) FROM #reindex

SET @recount = 1

WHILE @recount <= @numreindexes
BEGIN
	SELECT @tabname = ObjectName,
	       @indname = IndexName
	FROM #reindex
	WHERE rid = @recount
	
	EXEC(''DBCC DBREINDEX(['' + @dbname + ''.'' + @tabname + ''],['' + @indname + ''])'')

	INSERT INTO #fragreport([ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation])
	EXEC(''USE '' + @dbname + '' DBCC SHOWCONTIG (['' + @tabname + ''],['' + @indname + '']) WITH TABLERESULTS'')

	SET @recount = @recount + 1
END

UPDATE #fragreport
SET PrePost = ''REINDEXED''
WHERE PrePost is NULL

UPDATE #fragreport
SET DBName = @dbname

INSERT INTO [dbamaint].[dbo].[fragreport]([timestamp], [ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation], [DBName], [PrePost])
SELECT [timestamp], [ObjectName], [ObjectId], [IndexName], [IndexId], [Level], [Pages], [Rows], [MinimumRecordSize], [MaximumRecordSize], [AverageRecordSize], [ForwardedRecords], [Extents], [ExtentSwitches], [AverageFreeBytes], [AveragePageDensity], [ScanDensity], [BestCount], [ActualCount], [LogicalFragmentation], [ExtentFragmentation], [DBName], [PrePost] FROM #fragreport

DROP TABLE #tables
DROP TABLE #indexes
DROP TABLE #fragreport
DROP TABLE #reindex


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ImportReplicationAgentHistory]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ImportReplicationAgentHistory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE PROC [dbo].[dbm_ImportReplicationAgentHistory]

AS

BEGIN

SET NOCOUNT ON

-- clean the local table
TRUNCATE TABLE dbamaint..ReplicationAgentHistory

IF EXISTS (SELECT * from sys.databases WHERE name = ''distribution'')
BEGIN
	INSERT INTO dbamaint..ReplicationAgentHistory
SELECT
		RTRIM(mp.srvname) AS Publisher
		, RTRIM(da.Publication) AS Publication
		, RTRIM(da.publisher_db) AS PublicationDB
		, RTRIM(ms.srvname) AS Subscriber
		, RTRIM(da.subscriber_db) AS SubscribeDB
		, RTRIM(dh.comments) AS Comments
		, '''' AS ErrorText
		, RTRIM(da.name) AS AgentName
		, dh.time AS [Time]
	FROM distribution..MSdistribution_history dh WITH (NOLOCK)
		JOIN distribution..MSdistribution_agents da WITH (NOLOCK) ON (dh.agent_id = da.id)
		JOIN master..sysservers ms with (nolock) ON (da.subscriber_id = ms.srvid)
		JOIN master..sysservers mp with (nolock) ON (da.publisher_id = mp.srvid)
	WHERE comments NOT LIKE ''%No replicated transactions are available.%''
	AND comments NOT LIKE ''<stats%>%</stats>''
	--AND comments NOT LIKE ''%transaction(s) with%command(s) were delivered.''
	AND comments NOT LIKE ''%Creating Primary Key%''
	AND comments NOT LIKE ''%Bulk cop%data into%''
	AND comments NOT LIKE ''%Applied script%''
	AND comments NOT LIKE ''%Initializing%''

UNION ALL

select RTRIM(p.srvname) AS Publisher
	, RTRIM(da.Publication) AS Publication
	, RTRIM(da.publisher_db) AS PublicationDB
	, RTRIM(s.srvname) AS Subscriber
	, RTRIM(da.subscriber_db) AS SubscribeDB
	, RTRIM(dh.comments) AS Comments
	, error_text AS ErrorText
	, RTRIM(da.name) AS AgentName
	, dh.[time] AS Time
FROM distribution..MSdistribution_history dh			WITH (NOLOCK) 
	JOIN distribution..msrepl_errors re					WITH (NOLOCK) ON (dh.error_id = re.id)
	JOIN distribution..msdistribution_agents	AS da	WITH (NOLOCK) ON (da.id = dh.agent_id)
	JOIN master.dbo.sysservers					AS p	WITH (NOLOCK) ON (p.srvid = publisher_id)
	JOIN master.dbo.sysservers					AS s	WITH (NOLOCK) ON (s.srvid = subscriber_id)	
	ORDER BY TIME DESC
END

SET NOCOUNT OFF

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ImportReplicatedArticles]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ImportReplicatedArticles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		mmessano
-- Create date: 6/13/2012
-- Description:	Queries the distribution database for all replicated articles on the server.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_ImportReplicatedArticles] 

AS
BEGIN

SET NOCOUNT ON;

-- clean the local table
TRUNCATE TABLE dbamaint..SMCReplicatedArticles

IF EXISTS (SELECT * from sys.databases WHERE name = ''distribution'')
BEGIN

INSERT INTO dbamaint..SMCReplicatedArticles
SELECT DISTINCT  
	srv.srvname AS PublicationServer  
	, a.publisher_db AS PublisherDB
	, p.publication AS PublicationName 
	, a.article AS Article
	, a.article_id AS ArticleID
	, a.destination_object  AS DestinationObject
	, ss.srvname AS SubscriptionServer 
	, s.subscriber_db AS SubscriberDB 
FROM distribution.dbo.MSArticles a  
JOIN distribution.dbo.MSpublications p ON a.publication_id = p.publication_id 
JOIN distribution.dbo.MSsubscriptions s ON p.publication_id = s.publication_id 
JOIN master..sysservers ss ON s.subscriber_id = ss.srvid 
JOIN master..sysservers srv ON srv.srvid = p.publisher_id 
JOIN distribution.dbo.MSdistribution_agents da ON da.publisher_id = p.publisher_id  
	 AND da.subscriber_id = s.subscriber_id 


END


SET NOCOUNT OFF

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ImportErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ImportErrorLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROC [dbo].[dbm_ImportErrorLog]
(
	@table_name sysname,
	@log_number int = 0,
	@overwrite bit = 0
)
AS

BEGIN

SET NOCOUNT ON

DECLARE @table varchar(1000)
DECLARE @Version VARCHAR(1000)
DECLARE @servername varchar(64)
DECLARE @sql varchar(1152)		--Holds to SQL needed to create columns from error log
								--This will need to be bumped as the exclusions increase
DECLARE @Trim VARCHAR(512)		--Cleans the duplicates from the temp table

SELECT @servername = @@SERVERNAME 
SELECT @Version = @@VERSION

--Drop everything before the dash
SELECT @Version = SUBSTRING( @Version, CHARINDEX( ''-'', @Version ) + 2, 12 )
--Clean up the string, grab the major number
SELECT @Version = SUBSTRING( @Version, 0, CHARINDEX( ''.'', @Version))

IF (SELECT OBJECT_ID(@table_name,''U'')) IS NOT NULL
	BEGIN
		IF @overwrite = 0
			BEGIN
				RAISERROR(''Table already exists. Specify another name or pass 1 to @overwrite parameter'',18,1)
				RETURN -1
			END
		ELSE
			BEGIN
				EXEC(''DROP TABLE '' + @table_name)
			END
	END

IF ( @Version = ''8'' )
	BEGIN
		SELECT @table = '' CREATE TABLE ##errlog(Text varchar(1000),controw tinyint)''
		SELECT @sql =	'' SELECT @@SERVERNAME AS [ServerName] '' +
						'' , CONVERT(DATETIME,LEFT(Text,23)) AS [Date], '' + 
						'' SUBSTRING(Text,24,10) AS [spid], '' +
						'' RIGHT(Text,LEN(Text) - 33) AS [Message],  '' +
						'' controw, '' +
						'' GetDate() AS [LastUpdate] '' +
						'' INTO dbo.'' + QUOTENAME(@table_name) + 
						'' FROM ##errlog '' + 
						'' WHERE controw = 0 AND Text LIKE ''''20%'''' AND ''
	END
ELSE 
	BEGIN
		SELECT @table = '' CREATE TABLE ##errlog(Date datetime,ProcessInfo varchar(10),Text varchar(max)) ''
		SELECT @Trim =	''delete from a '' +
						'' from ##errlog a join '' +
						''     (select Date '' +
						''		, ProcessInfo '' +
						''		, Text '' +
						''		, max(seq_num) AS max_seq_num  '' +
						''	from ##errlog '' +
						''	group by Date, ProcessInfo, Text '' +
						''	having count(*) > 1) b '' +
						'' on a.Date = b.Date and '' +
						''	a.ProcessInfo = b.ProcessInfo and '' +
						''	a.Text = b.Text and '' +
						''	a.seq_num < b.max_seq_num ''
		SELECT @sql =	'' SELECT  @@SERVERNAME AS [ServerName] '' +
						'' , Date AS [Date], ProcessInfo AS [spid], Text AS [Message], GetDate() AS [LastUpdate] '' +
						'' INTO dbo.'' + QUOTENAME(@table_name) +
						'' FROM ##errlog '' +
						'' where ''
	END

SELECT @sql = @sql +	'' Text NOT LIKE ''''%Log%backed up%'''' AND '' +
						'' Text NOT LIKE ''''%.TRN%'''' AND '' +
						'' Text NOT LIKE ''''%Database backed up%'''' AND '' +
						'' Text NOT LIKE ''''%.BAK%'''' AND '' +
						'' Text NOT LIKE ''''%Run the RECONFIGURE%'''' AND '' +
						'' Text NOT LIKE ''''%All rights reserved%''''  AND '' +
						'' Text NOT LIKE ''''%Starting up database%'''' AND '' +
						'' Text NOT LIKE ''''%Recovery%checkpoint%'''' AND '' +
						'' Text NOT LIKE ''''%0 transactions rolled back%'''' AND '' +
						'' Text NOT LIKE ''''%CHECKDB%'''' AND '' +
						'' Text NOT LIKE ''''%dll%'''' AND '' +
						'' Text NOT LIKE ''''%Recovery%complete%'''' AND '' +
						'' Text NOT LIKE ''''%Analysis of database%complete%'''' AND '' +
						'' Text NOT LIKE ''''%Database restored:%'''' AND '' +
						'' Text NOT LIKE ''''%Bypassing recovery%'''' AND '' +
						'' Text NOT LIKE ''''%Free Data%'''' AND '' +
						'' Text NOT LIKE ''''%Server resumed execution after being idle%'''' AND '' +
						'' Text NOT LIKE ''''%This instance of SQL Server has been using a process ID%'''' AND '' +
						'' Text NOT LIKE ''''%Changing the status to % for full-text catalog%'''' AND '' +
						'' Text NOT LIKE ''''%Copyright (c)%''''''

--Populate the temp table using sp_readerrorlog
exec(@table)
INSERT ##errlog 
EXEC sp_readerrorlog @log_number

--This will remove the header from the errorlog
SET ROWCOUNT 4
DELETE ##errlog
SET ROWCOUNT 0

alter table ##errlog
add seq_num int identity

--Delete duplicate rows
EXEC (@Trim)
	
--Creates the table with the columns Date, spid, message and controw
EXEC (@sql)
PRINT(@sql)
--Dropping the temporary table
DROP TABLE ##errlog

SET NOCOUNT OFF
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ImportAgentErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ImportAgentErrorLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROC [dbo].[dbm_ImportAgentErrorLog]
(
	@table_name sysname,
	@log_number int = 0,
	@overwrite bit = 0
)
AS

BEGIN

SET NOCOUNT ON

DECLARE @table varchar(1000)
DECLARE @Version VARCHAR(1000)
DECLARE @servername varchar(64)
DECLARE @sql varchar(1152)		--Holds to SQL needed to create columns from error log
								--This will need to be bumped as the exclusions increase
DECLARE @Trim VARCHAR(512)		--Cleans the duplicates from the temp table

SELECT @servername = @@SERVERNAME 
SELECT @Version = @@VERSION

--Drop everything before the dash
SELECT @Version = SUBSTRING( @Version, CHARINDEX( ''-'', @Version ) + 2, 12 )
--Clean up the string, grab the major number
SELECT @Version = SUBSTRING( @Version, 0, CHARINDEX( ''.'', @Version))

IF (SELECT OBJECT_ID(@table_name,''U'')) IS NOT NULL
	BEGIN
		IF @overwrite = 0
			BEGIN
				RAISERROR(''Table already exists. Specify another name or pass 1 to @overwrite parameter'',18,1)
				RETURN -1
			END
		ELSE
			BEGIN
				EXEC(''DROP TABLE '' + @table_name)
			END
	END

IF ( @Version = ''8'' )
	BEGIN
		SELECT @table = '' CREATE TABLE ##agenterrlog(Text varchar(1000),controw tinyint)''
		SELECT @sql =	'' SELECT @@SERVERNAME AS [ServerName] '' +
						'' , CONVERT(DATETIME,LEFT(Text,23)) AS [Date], '' + 
						'' SUBSTRING(Text,24,10) AS [spid], '' +
						'' RIGHT(Text,LEN(Text) - 33) AS [Message],  '' +
						'' controw, '' +
						'' GetDate() AS [LastUpdate] '' +
						'' INTO dbo.'' + QUOTENAME(@table_name) + 
						'' FROM ##agenterrlog '' + 
						'' WHERE controw = 0 AND Text LIKE ''''20%'''' AND ''
	END
ELSE 
	BEGIN
		SELECT @table = '' CREATE TABLE ##agenterrlog(Date datetime,ErrorLevel int,Text varchar(max)) ''
		SELECT @Trim =	'' delete from a '' + CHAR(10) +
						'' from ##agenterrlog a join '' + CHAR(10) +
						''	(select Date '' + CHAR(10) +
						''		, ErrorLevel '' + CHAR(10) +
						''		, Text '' + CHAR(10) +
						''		, max(seq_num) AS max_seq_num  '' + CHAR(10) +
     					'' from ##agenterrlog '' + CHAR(10) +
						'' group by Date, ErrorLevel, Text '' + CHAR(10) +
						'' having count(*) > 1) b '' + CHAR(10) +
						'' on a.Date = b.Date and '' + CHAR(10) +
						''	a.ErrorLevel = b.ErrorLevel and '' + CHAR(10) +
						''	a.Text = b.Text and '' + CHAR(10) +
						''	a.seq_num < b.max_seq_num''
		SELECT @sql =	'' SELECT  @@SERVERNAME AS [ServerName] '' +  CHAR(10) +
						'' , Date AS [Date], ErrorLevel AS [ErrorLevel], Text AS [Message], GetDate() AS [LastUpdate] '' + CHAR(10) +
						'' INTO dbo.'' + QUOTENAME(@table_name) + CHAR(10) +
						'' FROM ##agenterrlog '' + CHAR(10) +
						'' where '' + CHAR(10)
	END

SELECT @sql = @sql +	'' Text NOT LIKE ''''%Step%of job%is being queued for the CMDEXEC subsystem%'''' AND '' + CHAR(10) +
						'' Text NOT LIKE ''''%processor%MB RAM detected%'''' AND '' + CHAR(10) +
						'' Text NOT LIKE ''''%Step%Job%subsystem%'''' AND '' + CHAR(10) +
						'' Text NOT LIKE ''''%Local computer is%running Windows%'''' --AND '' + CHAR(10) +
						'' --Text NOT LIKE ''''%Bypassing recovery%'''' AND '' + CHAR(10) +
						'' --Text NOT LIKE ''''%Free Data%'''' AND '' + CHAR(10) +
						'' --Text NOT LIKE ''''%Server resumed execution after being idle%'''' AND '' + CHAR(10) +
						'' --Text NOT LIKE ''''%This instance of SQL Server has been using a process ID%'''' AND '' + CHAR(10) +
						'' --Text NOT LIKE ''''%Changing the status to % for full-text catalog%'''' AND '' + CHAR(10) +
						'' --Text NOT LIKE ''''%Copyright (c)%'''''' + CHAR(10)


--Populate the temp table using sp_readerrorlog
exec(@table)
INSERT ##agenterrlog 
EXEC sp_readerrorlog @log_number, 2

alter table ##agenterrlog
add seq_num int identity

--Delete duplicate rows
EXEC (@Trim)

--Creates the table with the columns Date, ErrorLevel and message
EXEC (@sql)

--Dropping the temporary table
DROP TABLE ##agenterrlog

SET NOCOUNT OFF
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_GetTopDuration]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_GetTopDuration]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[dbm_GetTopDuration]
	@trcpath varchar(200),
	@duration int = 1
AS
set nocount on
SET ANSI_WARNINGS OFF
exec( ''
INSERT INTO [dbamaint].[dbo].[TopDuration]	(ServerName,DbName,StartTime,Duration,Reads,Writes,CPU,TextData,EventClass)
SELECT	CONVERT(varchar(80),ServerName) as ServerName,
	CONVERT(varchar(80),DB_Name(DatabaseID)) as DbName,
	StartTime,
	Duration,
	Reads,
	Writes,
	CPU,
	TextData,
	EventClass
from ::fn_trace_gettable( '''''' + @trcpath + '''''', 0)
WHERE DATEPART(hh,StartTime) between 7 and 18 -- comment out to get more testing data
AND duration > '' + @duration + '''' )
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ListIndexes]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ListIndexes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/**
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
dbm_ListIndexes.sql
By Jesse Roberge - YeshuaAgapao@Yahoo.com
Update - Fixed existance check for drop

Lists details for all indexes on one or more tables / schemas, including row count and size.
If you want data types and other column information and one row per index instead of one row per member column,
  then use Util_ListIndexes_Columns instead.

Update 2009-01-14:
	Added IndexDepth and FillFactor output columns
	Added @Delimiter parameter for the column listing output (Defaults to ,) for accomodating export to delimited files.
	Removed duplicate output of ''is_unique''

Required Input Parameters
	none

Optional Input Parameters
	@SchemaName sysname=''''		Filters to a single schema.  Can use LIKE wildcards.  All schemas if blank.  Accepts LIKE Wildcards.
	@TableName sysname=''''		Filters to a single table.  Can use LIKE wildcards.  All tables if blank.  Accepts LIKE Wildcards.
	@Delimiter VarChar(1)='',''	Delimiter for the horizontal delimited seek and include column listings. For accomdating csv export.

Usage
	EXECUTE dbm_ListIndexes ''dbo'', ''Cart''

Copyright:
	Licensed under the L-GPL - a weak copyleft license - you are permitted to use this as a component of a proprietary database and call this from proprietary software.
	Copyleft lets you do anything you want except plagarize, conceal the source, proprietarize modifications, or prohibit copying & re-distribution of this script/proc.

	This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    see <http://www.fsf.org/licensing/licenses/lgpl.html> for the license text.

*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
**/

CREATE PROCEDURE [dbo].[dbm_ListIndexes]
	@SchemaName sysname='''',
	@TableName sysname='''',
	@Delimiter VarChar(1)='',''
AS

SELECT
	sys.schemas.schema_id, sys.schemas.name AS schema_name,
	sys.objects.object_id, sys.objects.name AS object_name,
	sys.indexes.index_id, ISNULL(sys.indexes.name, ''---'') AS index_name,
	partitions.Rows, partitions.SizeMB, IndexProperty(sys.objects.object_id, sys.indexes.name, ''IndexDepth'') AS IndexDepth,
	sys.indexes.type, sys.indexes.type_desc, sys.indexes.fill_factor,
	sys.indexes.is_unique, sys.indexes.is_primary_key, sys.indexes.is_unique_constraint,
	ISNULL(Index_Columns.index_columns_key, ''---'') AS index_columns_key,
	ISNULL(Index_Columns.index_columns_include, ''---'') AS index_columns_include
FROM
	sys.objects
	JOIN sys.schemas ON sys.objects.schema_id=sys.schemas.schema_id
	JOIN sys.indexes ON sys.objects.object_id=sys.indexes.object_id
	JOIN (
		SELECT
			object_id, index_id, SUM(row_count) AS Rows,
			CONVERT(numeric(19,3), CONVERT(numeric(19,3), SUM(in_row_reserved_page_count+lob_reserved_page_count+row_overflow_reserved_page_count))/CONVERT(numeric(19,3), 128)) AS SizeMB
		FROM sys.dm_db_partition_stats
		GROUP BY object_id, index_id
	) AS partitions ON sys.indexes.object_id=partitions.object_id AND sys.indexes.index_id=partitions.index_id
	CROSS APPLY (
		SELECT
			LEFT(index_columns_key, LEN(index_columns_key)-1) AS index_columns_key,
			LEFT(index_columns_include, LEN(index_columns_include)-1) AS index_columns_include
		FROM
			(
				SELECT
					(
						SELECT sys.columns.name + @Delimiter + '' ''
						FROM
							sys.index_columns
							JOIN sys.columns ON
								sys.index_columns.column_id=sys.columns.column_id
								AND sys.index_columns.object_id=sys.columns.object_id
						WHERE
							sys.index_columns.is_included_column=0
							AND sys.indexes.object_id=sys.index_columns.object_id AND sys.indexes.index_id=sys.index_columns.index_id
						ORDER BY key_ordinal
						FOR XML PATH('''')
					) AS index_columns_key,
					(
						SELECT sys.columns.name + @Delimiter + '' ''
						FROM
							sys.index_columns
							JOIN sys.columns ON
								sys.index_columns.column_id=sys.columns.column_id
								AND sys.index_columns.object_id=sys.columns.object_id
						WHERE
							sys.index_columns.is_included_column=1
							AND sys.indexes.object_id=sys.index_columns.object_id AND sys.indexes.index_id=sys.index_columns.index_id
						ORDER BY index_column_id
						FOR XML PATH('''')
					) AS index_columns_include
			) AS Index_Columns
	) AS Index_Columns
WHERE
	sys.schemas.name LIKE CASE WHEN @SchemaName='''' THEN sys.schemas.name ELSE @SchemaName END
	AND sys.objects.name LIKE CASE WHEN @TableName='''' THEN sys.objects.name ELSE @TableName END
ORDER BY sys.schemas.name, sys.objects.name, sys.indexes.name
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ListFiles]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ListFiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[dbm_ListFiles]
    @PCWrite varchar(2000),
    @DBTable varchar(100)= NULL,
    @PCIntra varchar(100)= NULL,
    @PCExtra varchar(100)= NULL,
    @DBUltra bit = 0,
    @FileDate varchar(21) = 0

AS

/*
The dbm_ListFiles stored procedure accepts six parameters. Only the first one is required.
Parameter 1 is a path to a directory. The path must be accessible to SQL Server (the service account or the proxy account).
Parameter 2 is a table name in which to insert the file/folder names. It can be a normal user table or a temporary table. If no table name is provided, the list is returned as a result set.
Parameter 3 is a filter for including certain names. Each name is compared to the filter using a LIKE operator, so wildcards are acceptable. For example, the value "%.doc" would include all Word documents.
Parameter 4 is a filter for excluding certain names. Each name is compared to the filter using a NOT LIKE operator, so wildcards are acceptable.
Parameter 5 determines whether files or folders are listed. A value of zero (0) returns files and a value of one (1) returns folders. 
Parameter 6 returns the file TimeStamp when given a value of 1.

Usage Example:
CREATE TABLE #Files (MyFile varchar(200))

DECLARE @MyFile varchar(200), @SQL varchar(2000), @Path varchar(400)

SET @Path = ''e:\MSSQL.1\MSSQL\DATA\''

EXECUTE dbm_ListFiles @Path,''#Files'',NULL,NULL,0,0
EXECUTE dbm_ListFiles @Path,''#Files'',NULL,NULL,0,1  -- returns TimeStamp

SELECT * FROM #Files

DROP TABLE #Files
*/

SET NOCOUNT ON

DECLARE @Return int
DECLARE @Retain int
DECLARE @Status int

SET @Status = 0

DECLARE @Task varchar(2000)
DECLARE @Work varchar(2000)
DECLARE @Wish varchar(2000)

SET @Work = ''DIR '' + ''"'' + @PCWrite + ''"''

CREATE TABLE #DBAZ (Name varchar(400), Work int IDENTITY(1,1))

INSERT #DBAZ EXECUTE @Return = master.dbo.xp_cmdshell @Work

SET @Retain = @@ERROR

IF @Status = 0 SET @Status = @Retain
IF @Status = 0 SET @Status = @Return

IF (SELECT COUNT(*) FROM #DBAZ) < 4
    BEGIN

    SELECT @Wish = Name FROM #DBAZ WHERE Work = 1
    IF @Wish IS NULL
        BEGIN
        RAISERROR (''General error [%d]'',16,1,@Status)
        END
    ELSE
        BEGIN
        RAISERROR (@Wish,16,1)
        END
    END
ELSE
    SET @Task = ''SET NOCOUNT ON;'' + CHAR(10)
    IF @DBTable IS NOT NULL
		BEGIN
			SET @Task = @Task + '' INSERT '' + REPLACE(@DBTable,CHAR(32),CHAR(95))
			--PRINT ''DBTable NOT NULL '' + @Task
		END 
	ELSE
		BEGIN
			SET @Task = @Task + ''''
		END
		
		BEGIN
		DELETE #DBAZ WHERE ISDATE(SUBSTRING(Name,1,10)) = 0 OR SUBSTRING(Name,40,1) = ''.'' OR Name LIKE ''%.lnk''
			IF @FileDate = 1
				BEGIN
					SET @Task = @Task
							+ '' SELECT SUBSTRING(Name,40,100) AS Files''
							+ '' ,SUBSTRING(Name,0,21) AS FileTime ''
					--PRINT ''FileDate NOT NULL '' + @Task
				END
			ELSE
				BEGIN
					SET @Task = @Task
							+ '' SELECT SUBSTRING(Name,40,100) AS Files ''
					--PRINT ''FileDate NULL '' + @Task
				END
			SET @Task = @Task 
						+ ''  FROM #DBAZ''
						+ ''  WHERE 0 = 0''
						+ CASE WHEN @DBUltra  = 0    THEN '''' ELSE '' AND Name LIKE '' + CHAR(39) + ''%<DIR>%'' + CHAR(39) END
						+ CASE WHEN @DBUltra != 0    THEN '''' ELSE '' AND Name NOT LIKE '' + CHAR(39) + ''%<DIR>%'' + CHAR(39) END
						+ CASE WHEN @PCIntra IS NULL THEN '''' ELSE '' AND SUBSTRING(Name,40,100)     LIKE '' + CHAR(39) + @PCIntra + CHAR(39) END
						+ CASE WHEN @PCExtra IS NULL THEN '''' ELSE '' AND SUBSTRING(Name,40,100) NOT LIKE '' + CHAR(39) + @PCExtra + CHAR(39) END
						+ '' ORDER BY 1''
		END

	--PRINT @Task
	IF @Status = 0 EXECUTE (@Task) SET @Return = @@ERROR
	IF @Status = 0 SET @Status = @Return
	
DROP TABLE #DBAZ

SET NOCOUNT OFF

RETURN (@Status)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_MergeSQLErrorLog]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_MergeSQLErrorLog]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		mmessano
-- Create date: 4/28/2011
-- Description:	Merges the dbamaint SQLErrorLog table to the Status aggregate table.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_MergeSQLErrorLog] 
	@dbamaintServer VARCHAR(62), 
	@StatusServer VARCHAR(62)
AS

BEGIN
	SET NOCOUNT ON;
DECLARE @cmd NVARCHAR(MAX)

SELECT @cmd =
''MERGE '' + @StatusServer + ''.'' + @StatusServer + ''.dbo.SQLErrorLogs AS T
USING SQLErrorLog AS S
ON (
	T.ServerName = S.ServerName 
	AND T.Message = S.Message 
	AND T.spid = S.spid 
	AND S.Date = T.Date 
	)
WHEN NOT MATCHED BY TARGET
	THEN INSERT 
	(ServerName, Date, spid, Message, LastUpdate)
	VALUES
	(S.ServerName, S.Date, S.spid, S.Message, S.LastUpdate)
OUTPUT $action, inserted.*, deleted.*;''

print @cmd
exec(@cmd)
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_RepairOrphanUsersAllDBS]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_RepairOrphanUsersAllDBS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE  PROC [dbo].[dbm_RepairOrphanUsersAllDBS]
AS

set nocount on

DECLARE @cmd varchar(4000) 

BEGIN
	Create table #Orphan_User_Tbl 
	(
		[Database_Name] sysname COLLATE Latin1_General_CI_AS, 
		[Orphaned_User] sysname COLLATE Latin1_General_CI_AS
	)

	SET NOCOUNT ON	

	DECLARE @DBName sysname, @Qry nvarchar(4000)

	SET @Qry = ''''
	SET @DBName = ''''

	WHILE @DBName IS NOT NULL
	BEGIN
		SET @DBName = 
				(
					SELECT MIN(name) 
					FROM master..sysdatabases 
					WHERE 	name NOT IN 
						(
						 ''master'', ''model'', ''tempdb'', ''msdb'', 
						 ''distribution'', ''pubs'', ''northwind''
						)
						AND DATABASEPROPERTY(name, ''IsOffline'') = 0 
						AND DATABASEPROPERTY(name, ''IsSuspect'') = 0 
						AND DATABASEPROPERTY(name, ''IsInload'') = 0 
						AND DATABASEPROPERTY(name, ''IsInRecovery'') = 0 
						AND DATABASEPROPERTY(name, ''IsInStandBy'') = 0 
						AND DATABASEPROPERTY(name, ''IsReadOnly'') = 0 
						AND DATABASEPROPERTY(name, ''IsNotRecovered'') = 0 
						AND name > @DBName
				)
		
		IF @DBName IS NULL BREAK

		SET @Qry = ''SELECT '''''' + @DBName + '''''' AS [Database Name], 
						CAST(su.name AS sysname) COLLATE Latin1_General_CI_AS  AS [Orphaned User]
						FROM '' + QUOTENAME(@DBName) + ''..sysusers su
						inner join master..sysxlogins b
							on su.name=b.name
						where 
							su.sid is not null 
							and su.sid not in (0x00,0x01)
						and su.sid <> b.sid''

		INSERT INTO #Orphan_User_Tbl EXEC (@Qry)
	END

	DECLARE MC CURSOR 
 	READ_ONLY 
 	FOR 
		
	SELECT [Database_Name]+ ''..sp_change_users_login  ''''Update_One'''' , '''''' + Orphaned_User  +  '''''','''''' + Orphaned_User + ''''''''
	FROM #Orphan_User_Tbl 
	ORDER BY [Database_Name], [Orphaned_User]
		
	OPEN MC 
	 	
	FETCH NEXT FROM MC INTO @cmd 
	WHILE (@@fetch_status <> -1) 
		BEGIN 

		        IF (@@fetch_status <> -2) 
		 	        BEGIN 
					Print @cmd
					--Execute (@cmd)
		        	END 
		FETCH NEXT FROM MC INTO @cmd 
		END 
	
	CLOSE MC 
	DEALLOCATE MC 

	DROP Table #Orphan_User_Tbl

END



' 
END
GO
/****** Object:  Table [dbo].[DBGrowthRate]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBGrowthRate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBGrowthRate](
	[DBGrowthID] [int] IDENTITY(1,1) NOT NULL,
	[DBName] [varchar](100) NULL,
	[DBID] [int] NULL,
	[NumPages] [int] NULL,
	[OrigSize] [decimal](10, 2) NULL,
	[CurSize] [decimal](10, 2) NULL,
	[GrowthAmt] [varchar](100) NULL,
	[MetricDate] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBCCHistory]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBCCHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBCCHistory](
	[DBName] [nvarchar](128) NULL,
	[Error] [int] NULL,
	[Level] [int] NULL,
	[State] [int] NULL,
	[MessageText] [varchar](7000) NULL,
	[RepairLevel] [int] NULL,
	[Status] [int] NULL,
	[DbId] [int] NULL,
	[Id] [int] NULL,
	[IndId] [int] NULL,
	[PartitionID] [int] NULL,
	[AllocUnitID] [int] NULL,
	[File] [int] NULL,
	[Page] [int] NULL,
	[Slot] [int] NULL,
	[RefFile] [int] NULL,
	[RefPage] [int] NULL,
	[RefSlot] [int] NULL,
	[Allocation] [int] NULL,
	[TimeStamp] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[cspDefragIndexes]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cspDefragIndexes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create procedure [dbo].[cspDefragIndexes]
	( @tableIn		varchar(200) = NULL
	, @ExecuteDefrag	chAR(1)		 = ''N'' )

AS
SET NOCOUNT ON;
DECLARE @objectid       int;
declare @holdOid        int
DECLARE @indexid        int;
declare @DBid           int
DECLARE @partitioncount bigint;
DECLARE @schemaname     sysname;
DECLARE @objectname     sysname;
DECLARE @indexname		sysname;
DECLARE @partitionnum	bigint;
DECLARE @IndexFragmentationCursor	bigint;
DECLARE @frag			float;
DECLARE @command		varchar(8000);
declare @PageLock       int
declare @cnt			int

select @dbid = db_id()
print ''Database id = '' + convert(varchar(10), @dbid)

--************************************************************************
-- Usage
--cspDefragIndexes ''Customer'', ''N'' -- Display only option
--cspDefragIndexes ''Customer'', ''Y'' -- Defrag indexes option
--cspDefragIndexes ''All'', ''N''      -- Display only option all tables
--************************************************************************

--************************************************************************
-- If Table id is Null will run for ALL tables
--************************************************************************
if @tablein is null
	set @objectid = NULL
else
	select @objectid = object_id from sys.objects where name = @tableIN

SELECT
    object_id AS objectid,
    index_id AS indexid,
    partition_number AS partitionnum,
    avg_fragmentation_in_percent AS frag
INTO #IndexFragmentationTable
FROM sys.dm_db_index_physical_stats (@dbid, @objectid, NULL , NULL, ''LIMITED'')
order by Object_Id

select @cnt = count(*) from #IndexFragmentationTable

-- Declare the cursor for the list of IndexFragmentationCursor to be processed.
If @ExecuteDefrag = ''Y'' --> then defrag, else print defrag table
  begin

	if @tableIn is not null
		print ''Defrag indexes for table '' + @tableIn
	else
		Print ''Defrag Indexes for entire database''

	print ''Starting process for '' + convert(varchar(10), @cnt) + '' indexes''

	DECLARE IndexFragmentationCursor CURSOR
	FOR
		SELECT *
		FROM #IndexFragmentationTable
		order by objectId, IndexId;

	-- Open the cursor.
	OPEN IndexFragmentationCursor;

	-- Loop through the IndexFragmentationCursor.
	FETCH NEXT
	   FROM IndexFragmentationCursor
	   INTO @objectid, @indexid, @partitionnum, @frag;

	set @holdOid = @objectid

	WHILE @@FETCH_STATUS = 0
		BEGIN
			SELECT @objectname = o.name, @schemaname = s.name
			FROM sys.objects AS o
			JOIN sys.schemas as s ON s.schema_id = o.schema_id
			WHERE o.object_id = @objectid;

			if @objectid != @HoldOid
			  begin
				set @command = ''update statistics '' + @objectname
				print @command
				execute(@command)
				set @holdOid = @objectId
			  end


			SELECT	@indexname	= name
				,	@PageLock	= Allow_Page_locks
			FROM sys.indexes
			WHERE  object_id = @objectid AND index_id = @indexid;

			SELECT @partitioncount = count (*)
			FROM sys.partitions
			WHERE object_id = @objectid AND index_id = @indexid;

		IF  @frag < 30.0
		and @frag > 5.0
		and @PageLock = 1
			  BEGIN
				SELECT @command = ''ALTER INDEX '' + @indexname + '' ON '' + @schemaname + ''.'' + @objectname + '' REORGANIZE'';
				IF @partitioncount > 1
					SELECT @command = @command + '' PARTITION='' + CONVERT (CHAR, @partitionnum);
				EXEC (@command);
				PRINT ''Executed '' + @command;

			  END;
		else
		IF @frag >= 30.0
		or  ( @PageLock = 0 and @frag > 5.0 )
		  BEGIN
			SELECT @command = ''ALTER INDEX '' + @indexname +'' ON '' + @schemaname + ''.'' + @objectname + '' REBUILD'';
			IF @partitioncount > 1
				SELECT @command = @command + '' PARTITION='' + CONVERT (CHAR, @partitionnum);
			EXEC (@command);
			PRINT ''Executed '' + @command;
		  END;
		else
			Print ''Bypassed fragmentation for '' + @indexname

		FETCH NEXT FROM IndexFragmentationCursor INTO @objectid, @indexid, @partitionnum, @frag;
	  END;

	set @command = ''update statistics '' + @objectname
	print @command
	execute(@command)

	-- Close and deallocate the cursor.
	CLOSE IndexFragmentationCursor;
	DEALLOCATE IndexFragmentationCursor;
  end
else
	select	 t.name			as TableName
			,i.name			as IndexName
			,w.IndexId
			,w.Partitionnum	As Part
			,w.frag			as FragPct
			, fill_factor
			,i.type_Desc     as IndexType
			, Case is_unique
				when 1	then ''Y''
				else '' ''
			  end as ''Unique''
			, case is_primary_key
				when 1	then ''Y''
				else '' ''
			  end as PKIndex
	 from #IndexFragmentationTable w
	 inner join sys.objects t on w.objectId = t.object_id
	 inner join sys.indexes i on w.objectId = i.object_id and w.indexId = i.index_id
	order by t.name, i.Index_Id

-- drop the temporary table

	drop table #IndexFragmentationTable
' 
END
GO
/****** Object:  Table [dbo].[Client_Services]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client_Services]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Client_Services](
	[client] [varchar](50) NULL,
	[service] [varchar](50) NULL,
	[service_count] [int] NULL,
	[week] [tinyint] NULL,
	[year] [smallint] NULL,
	[reporting_date] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CDCStatus]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CDCStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CDCStatus](
	[DBName] [nvarchar](128) NULL,
	[logscan_StartTime] [smalldatetime] NULL,
	[logscan_LastCommitTime] [smalldatetime] NULL,
	[logscan_delay]  AS (datediff(minute,[logscan_LastCommitTime],getdate())),
	[lsn_EndTime] [smalldatetime] NULL,
	[lsn_delay]  AS (datediff(minute,[lsn_EndTime],getdate())),
	[cdc_enabled_tables] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CDCEnabled]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CDCEnabled]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CDCEnabled](
	[record_number] [int] IDENTITY(1,1) NOT NULL,
	[ServerName] [varchar](32) NOT NULL,
	[DBname] [varchar](128) NOT NULL,
	[DB_cdc_enabled] [int] NULL,
	[tables_cdc_enabled] [int] NULL,
	[LSVersion] [varchar](10) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BlockedQry]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BlockedQry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BlockedQry](
	[InsDate] [datetime] NOT NULL,
	[status] [varchar](30) NOT NULL,
	[DBName] [varchar](40) NULL,
	[SPID] [smallint] NOT NULL,
	[CPU] [int] NOT NULL,
	[Physical_IO] [bigint] NOT NULL,
	[WaitTime] [int] NOT NULL,
	[BlockedBy] [smallint] NOT NULL,
	[HostName] [nvarchar](36) NULL,
	[ProgramName] [varchar](50) NULL,
	[NT_Username] [varchar](50) NULL,
	[LastCmd] [varchar](500) NULL,
	[Login_Time] [datetime] NOT NULL,
	[Last_Batch] [datetime] NOT NULL,
	[Open_Tran] [smallint] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[BlockedQry]') AND name = N'CIX_BlockedQry_InsDate_OpenTran')
CREATE CLUSTERED INDEX [CIX_BlockedQry_InsDate_OpenTran] ON [dbo].[BlockedQry] 
(
	[InsDate] DESC,
	[Open_Tran] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 96) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AUSCondition]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AUSCondition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AUSCondition](
	[AUSConditionId] [int] IDENTITY(1,1) NOT NULL,
	[AUSEngine] [varchar](20) NOT NULL,
	[AUSId] [varchar](10) NOT NULL,
	[Source] [varchar](100) NULL,
	[Link] [varchar](100) NULL,
	[Category] [varchar](50) NOT NULL,
	[Severity] [varchar](50) NULL,
	[ConditionText] [varchar](2000) NOT NULL,
	[DefaultProcessPoint] [varchar](100) NOT NULL,
	[DefaultStatus] [int] NOT NULL,
	[ContainsTableData] [bit] NOT NULL,
	[Reviewed] [bit] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_aus_conditions] PRIMARY KEY CLUSTERED 
(
	[AUSConditionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 96) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ActiveOrdersAllQuery]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActiveOrdersAllQuery]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[ActiveOrdersAllQuery] 

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET NOCOUNT ON

--TRUNCATE TABLE ActiveOrdersAllQuery

SELECT COUNT(do_document_category) AS ''Count'', customer, do_document_category, 
[minutes] = 
	CASE  
		WHEN datediff(mi, do_date_initiated, getdate())<= 5 THEN ''00-05''
		WHEN datediff(mi, do_date_initiated, getdate())> 5 and datediff(mi, do_date_initiated, getdate()) < 10 THEN ''05-10''
		WHEN datediff(mi, do_date_initiated, getdate())>= 10 and datediff(mi, do_date_initiated, getdate()) < 20 THEN ''10-20''
		WHEN datediff(mi, do_date_initiated, getdate())>= 20 and datediff(d, do_date_initiated, getdate()) < 1 THEN ''20plus''
		WHEN datediff(d, do_date_initiated, getdate())>= 1 THEN ''Days''
	END
FROM ActiveOrdersQuery
GROUP BY customer, do_document_category, 
	CASE  
		WHEN datediff(mi, do_date_initiated, getdate())<= 5 THEN ''00-05''
		WHEN datediff(mi, do_date_initiated, getdate())> 5 and datediff(mi, do_date_initiated, getdate()) < 10 THEN ''05-10''
		WHEN datediff(mi, do_date_initiated, getdate())>= 10 and datediff(mi, do_date_initiated, getdate()) < 20 THEN ''10-20''
		WHEN datediff(mi, do_date_initiated, getdate())>= 20 and datediff(d, do_date_initiated, getdate()) < 1 THEN ''20plus''
		WHEN datediff(d, do_date_initiated, getdate())>= 1 THEN ''Days''
	END
ORDER BY customer, do_document_category, [minutes]


' 
END
GO
/****** Object:  Table [dbo].[ActiveOrders]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ActiveOrders]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ActiveOrders](
	[do_id] [int] NOT NULL,
	[server] [varchar](50) NULL,
	[customer] [varchar](50) NULL,
	[do_order_status] [varchar](50) NULL,
	[do_document_category] [varchar](50) NULL,
	[do_date_initiated] [smalldatetime] NULL,
	[do_last_update] [smalldatetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[dbm_DefragIndexes]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_DefragIndexes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[dbm_DefragIndexes]
	( @tableIn		varchar(200) = NULL
	, @ExecuteDefrag	chAR(1)		 = ''N'' )

AS
SET NOCOUNT ON;
DECLARE @objectid       int;
declare @holdOid        int
DECLARE @indexid        int;
declare @DBid           int
DECLARE @partitioncount bigint;
DECLARE @schemaname     sysname;
DECLARE @objectname     sysname;
DECLARE @indexname		sysname;
DECLARE @partitionnum	bigint;
DECLARE @IndexFragmentationCursor	bigint;
DECLARE @frag			float;
DECLARE @command		varchar(8000);
declare @PageLock       int
declare @cnt			int

select @dbid = db_id()
print ''Database id = '' + convert(varchar(10), @dbid)

--************************************************************************
-- Usage
--cspDefragIndexes ''Customer'', ''N'' -- Display only option
--cspDefragIndexes ''Customer'', ''Y'' -- Defrag indexes option
--cspDefragIndexes ''All'', ''N''      -- Display only option all tables
--************************************************************************

--************************************************************************
-- If Table id is Null will run for ALL tables
--************************************************************************
if @tablein is null
	set @objectid = NULL
else
	select @objectid = object_id from sys.objects where name = @tableIN

SELECT
    object_id AS objectid,
    index_id AS indexid,
    partition_number AS partitionnum,
    avg_fragmentation_in_percent AS frag
INTO #IndexFragmentationTable
FROM sys.dm_db_index_physical_stats (@dbid, @objectid, NULL , NULL, ''LIMITED'')
order by Object_Id

select @cnt = count(*) from #IndexFragmentationTable

-- Declare the cursor for the list of IndexFragmentationCursor to be processed.
If @ExecuteDefrag = ''Y'' --> then defrag, else print defrag table
  begin

	if @tableIn is not null
		print ''Defrag indexes for table '' + @tableIn
	else
		Print ''Defrag Indexes for entire database''

	print ''Starting process for '' + convert(varchar(10), @cnt) + '' indexes''

	DECLARE IndexFragmentationCursor CURSOR
	FOR
		SELECT *
		FROM #IndexFragmentationTable
		order by objectId, IndexId;

	-- Open the cursor.
	OPEN IndexFragmentationCursor;

	-- Loop through the IndexFragmentationCursor.
	FETCH NEXT
	   FROM IndexFragmentationCursor
	   INTO @objectid, @indexid, @partitionnum, @frag;

	set @holdOid = @objectid

	WHILE @@FETCH_STATUS = 0
		BEGIN
			SELECT @objectname = o.name, @schemaname = s.name
			FROM sys.objects AS o
			JOIN sys.schemas as s ON s.schema_id = o.schema_id
			WHERE o.object_id = @objectid;

			if @objectid != @HoldOid
			  begin
				set @command = ''update statistics '' + @objectname
				print @command
				execute(@command)
				set @holdOid = @objectId
			  end


			SELECT	@indexname	= name
				,	@PageLock	= Allow_Page_locks
			FROM sys.indexes
			WHERE  object_id = @objectid AND index_id = @indexid;

			SELECT @partitioncount = count (*)
			FROM sys.partitions
			WHERE object_id = @objectid AND index_id = @indexid;

		IF  @frag < 30.0
		and @frag > 5.0
		and @PageLock = 1
			  BEGIN
				SELECT @command = ''ALTER INDEX '' + @indexname + '' ON '' + @schemaname + ''.'' + @objectname + '' REORGANIZE'';
				IF @partitioncount > 1
					SELECT @command = @command + '' PARTITION='' + CONVERT (CHAR, @partitionnum);
				EXEC (@command);
				PRINT ''Executed '' + @command;

			  END;
		else
		IF @frag >= 30.0
		or  ( @PageLock = 0 and @frag > 5.0 )
		  BEGIN
			SELECT @command = ''ALTER INDEX '' + @indexname +'' ON '' + @schemaname + ''.'' + @objectname + '' REBUILD'';
			IF @partitioncount > 1
				SELECT @command = @command + '' PARTITION='' + CONVERT (CHAR, @partitionnum);
			EXEC (@command);
			PRINT ''Executed '' + @command;
		  END;
		else
			Print ''Bypassed fragmentation for '' + @indexname

		FETCH NEXT FROM IndexFragmentationCursor INTO @objectid, @indexid, @partitionnum, @frag;
	  END;

	set @command = ''update statistics '' + @objectname
	print @command
	execute(@command)

	-- Close and deallocate the cursor.
	CLOSE IndexFragmentationCursor;
	DEALLOCATE IndexFragmentationCursor;
  end
else
	select	 t.name			as TableName
			,i.name			as IndexName
			,w.IndexId
			,w.Partitionnum	As Part
			,w.frag			as FragPct
			, fill_factor
			,i.type_Desc     as IndexType
			, Case is_unique
				when 1	then ''Y''
				else '' ''
			  end as ''Unique''
			, case is_primary_key
				when 1	then ''Y''
				else '' ''
			  end as PKIndex
	 from #IndexFragmentationTable w
	 inner join sys.objects t on w.objectId = t.object_id
	 inner join sys.indexes i on w.objectId = i.object_id and w.indexId = i.index_id
	order by t.name, i.Index_Id

-- drop the temporary table

	drop table #IndexFragmentationTable

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_DatabaseOwners]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_DatabaseOwners]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		mmessano
-- Create date: 6/13/2008
-- Description:	Enumerate the database owners.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_DatabaseOwners] 

AS
BEGIN

IF OBJECT_ID(N''tempdb..#owners'', ''U'') IS NOT NULL
      DROP TABLE #owners;

CREATE TABLE #owners
(
	server_name varchar(64) NULL,
	database_name sysname NOT NULL,
	sys_databases_sid varbinary(85) NOT NULL,
	sys_databases_owner nvarchar(256) NULL,
	sys_users_sid varbinary(85) NULL,
	sys_users_owner nvarchar(256) NULL
);


DECLARE @Version VARCHAR(1000)
SELECT @Version = @@VERSION

SELECT @Version = LEFT(LTRIM(RTRIM( SUBSTRING( @Version, CHARINDEX( ''-'', @Version )+1,CHARINDEX( ''('', @Version ) - CHARINDEX( ''-'', @Version ) - 1 ) )),1)

IF ( @Version = ''8'' )
	BEGIN
		INSERT INTO #owners
			(
				--server_name,
				database_name,
				sys_databases_sid,
				sys_databases_owner
			)
      SELECT
		name,
		sid,
		SUSER_SNAME(sid)
    FROM master.dbo.sysdatabases;

	EXEC sp_MSforeachdb ''
	UPDATE #owners
		SET sys_users_sid = (
			SELECT sid
			FROM ?.dbo.sysusers
			WHERE name = ''''dbo''''),
		sys_users_owner = (
			SELECT SUSER_SNAME(sid)
			FROM ?.dbo.sysusers
		WHERE name = ''''dbo'''')
	WHERE database_name = ''''?''''
      '';
	END
ELSE IF ( @version = ''9'' )
	BEGIN
	INSERT INTO #owners
	(
		database_name,
		sys_databases_sid,
 		sys_databases_owner
	)
		SELECT
			name,
			owner_sid,
			SUSER_SNAME(owner_sid)
		FROM sys.databases;

Declare @dbname varchar(128)
Declare @cmd varchar(8000)

declare dbname cursor for 
	select database_name from #owners

open dbname 
	fetch next from dbname into @dbname 
	while @@fetch_status=0 
begin 

select @cmd =	'' UPDATE #owners '' + char(13) +
				'' SET sys_users_sid = ( '' + char(13) +
				'' SELECT sid '' + char(13) +
				'' FROM ['' + @dbname + ''].sys.database_principals '' + char(13) +
				'' WHERE name = ''''dbo''''), '' + char(13) +
				'' sys_users_owner = ( '' + char(13) +
				'' SELECT SUSER_SNAME(sid) '' + char(13) +
				'' FROM ['' + @dbname + ''].sys.database_principals '' + char(13) +
				'' WHERE name = ''''dbo'''') '' + char(13) +
				'' WHERE database_name = '''''' + @dbname + '''''''' + char(13)

--print @dbname
--print(@cmd)
EXEC(@cmd)

fetch next from dbname into @dbname 
end
 
CLOSE dbname 
DEALLOCATE dbname

END

UPDATE #owners set server_name = @@SERVERNAME

SELECT * FROM #owners




END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ConnectionSummary]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ConnectionSummary]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
/**
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
dbm_ConnectionSummary
By Jesse Roberge - YeshuaAgapao@Yahoo.com

Reports summaries of connections, running requests, open transactions, open cursors, and blocking at 3 different levels of aggregation detail, ranking trouble groups first.
Most useful for finding SPIDs thare being hoggy right now - activity monitor gives session-scoped resource consumption, this aggregates active request scoped resource consumption.
Also useful for quickly finding blocking offenders and finding programs that are not closing cursors or transactions.
Returns 3 result sets:
	Server-wide Total / Summary (No Group By)
	Connections and requests grouped by LoginName, HostName, Programname
	Connections and requests grouped by SessionID
Orders by ActiveReqCount DESC, OpenTranCount DESC, BlockingRequestCount DESC, BlockedReqCount DESC, ConnectionCount DESC, {group by column(s)}

Required Input Parameters
	none

Optional Input Parameters
	none

 Usage:
 	EXECUTE dbm_ConnectionSummary

Copyright:
	Licensed under the L-GPL - a weak copyleft license - you are permitted to use this as a component of a proprietary database and call this from proprietary software.
	Copyleft lets you do anything you want except plagarize, conceal the source, or prohibit copying & re-distribution of this script/proc.

	This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    see <http://www.fsf.org/licensing/licenses/lgpl.html> for the license text.

*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
**/

CREATE PROCEDURE [dbo].[dbm_ConnectionSummary] AS

--All connections
SELECT
	SUM(ConnectionCount) AS ConnectionCount,
	SUM(CONVERT(bigint, ISNULL(dm_tran_session_transactions.TransactionCount,0))) AS OpenTranCount,
	SUM(CONVERT(bigint, ISNULL(dm_exec_cursors.OpenCursorCount,0))) AS OpenCursorCount,
	SUM(CONVERT(bigint, ISNULL(dm_exec_cursors.ClosedCursorCount,0))) AS ClosedCursorCount,
	ISNULL(SUM(dm_exec_blockrequests.BlockingRequestCount),0) AS BlockingRequestCount,
	SUM(dm_exec_requests.ActiveReqCount) AS ActiveReqCount,
	SUM(dm_exec_requests.open_resultset_count) AS OpenResultSetCount,
	SUM(dm_exec_requests.open_transaction_count) AS ActiveReqOpenTranCount,
	SUM(dm_exec_requests.BlockedReqCount) AS BlockedReqCount,
	SUM(dm_exec_requests.wait_time) AS WaitTime,
	SUM(dm_exec_requests.cpu_time) AS CPUTime,
	SUM(dm_exec_requests.total_elapsed_time) AS ElapsedTime,
	SUM(dm_exec_requests.reads) AS Reads,
	SUM(dm_exec_requests.writes) AS Writes,
	SUM(dm_exec_requests.logical_reads) AS LogicalReads,
	SUM(dm_exec_requests.row_count) AS [RowCount],
	SUM(dm_exec_requests.granted_query_memory) AS GrantedQueryMemoryKB
FROM
	sys.dm_exec_sessions
	LEFT OUTER JOIN (
		SELECT session_id, COUNT(*) AS ConnectionCount FROM sys.dm_exec_connections GROUP BY session_id
	) AS dm_exec_connections ON sys.dm_exec_sessions.session_id=dm_exec_connections.session_id
	LEFT OUTER JOIN (
		SELECT session_id, COUNT(*) AS TransactionCount FROM sys.dm_tran_session_transactions GROUP BY session_id
	) AS dm_tran_session_transactions ON sys.dm_exec_sessions.session_id=dm_tran_session_transactions.session_id
	LEFT OUTER JOIN (
		SELECT blocking_session_id, COUNT(*) AS BlockingRequestCount FROM sys.dm_exec_requests GROUP BY blocking_session_id
	) AS dm_exec_blockrequests ON sys.dm_exec_sessions.session_id=dm_exec_blockrequests.blocking_session_id
	LEFT OUTER JOIN (
		SELECT session_id, SUM(CASE WHEN is_open=1 THEN 1 ELSE 0 END) AS OpenCursorCount, SUM(CASE WHEN is_open=0 THEN 1 ELSE 0 END) AS ClosedCursorCount
		FROM sys.dm_exec_cursors (0)
		GROUP BY session_id
	) AS dm_exec_cursors ON sys.dm_exec_sessions.session_id=dm_exec_cursors.session_id
	LEFT OUTER JOIN (
		SELECT
			session_id,
			SUM(CONVERT(bigint, open_transaction_count)) AS open_transaction_count,
			SUM(CONVERT(bigint, open_resultset_count)) AS open_resultset_count,
			SUM(CASE WHEN total_elapsed_time IS NULL THEN 0 ELSE 1 END) AS ActiveReqCount,
			SUM(CASE WHEN blocking_session_id <> 0 THEN 1 ELSE 0 END) AS BlockedReqCount,
			SUM(CONVERT(bigint, wait_time)) AS wait_time,
			SUM(CONVERT(bigint, cpu_time)) AS cpu_time,
			SUM(CONVERT(bigint, total_elapsed_time)) AS total_elapsed_time,
			SUM(CONVERT(bigint, reads)) AS Reads,
			SUM(CONVERT(bigint, writes)) AS Writes,
			SUM(CONVERT(bigint, logical_reads)) AS logical_reads,
			SUM(CONVERT(bigint, row_count)) AS row_count,
			SUM(CONVERT(bigint, granted_query_memory*8)) AS granted_query_memory
		FROM sys.dm_exec_requests
		GROUP BY session_id
	) AS dm_exec_requests ON sys.dm_exec_sessions.session_id=dm_exec_requests.session_id
WHERE sys.dm_exec_sessions.is_user_process=1

--Connections by LoginName, Hostname, and ProgramName
SELECT
	sys.dm_exec_sessions.login_name, sys.dm_exec_sessions.host_name, sys.dm_exec_sessions.program_name,
	SUM(ConnectionCount) AS ConnectionCount,
	SUM(CONVERT(bigint, ISNULL(dm_tran_session_transactions.TransactionCount,0))) AS OpenTranCount,
	SUM(CONVERT(bigint, ISNULL(dm_exec_cursors.OpenCursorCount,0))) AS OpenCursorCount,
	SUM(CONVERT(bigint, ISNULL(dm_exec_cursors.ClosedCursorCount,0))) AS ClosedCursorCount,
	ISNULL(SUM(dm_exec_blockrequests.BlockingRequestCount),0) AS BlockingRequestCount,
	SUM(dm_exec_requests.ActiveReqCount) AS ActiveReqCount,
	SUM(dm_exec_requests.open_resultset_count) AS OpenResultSetCount,
	SUM(dm_exec_requests.open_transaction_count) AS ActiveReqOpenTranCount,
	SUM(dm_exec_requests.BlockedReqCount) AS BlockedReqCount,
	SUM(dm_exec_requests.wait_time) AS WaitTime,
	SUM(dm_exec_requests.cpu_time) AS CPUTime,
	SUM(dm_exec_requests.total_elapsed_time) AS ElapsedTime,
	SUM(dm_exec_requests.reads) AS Reads,
	SUM(dm_exec_requests.writes) AS Writes,
	SUM(dm_exec_requests.logical_reads) AS LogicalReads,
	SUM(dm_exec_requests.row_count) AS [RowCount],
	SUM(dm_exec_requests.granted_query_memory) AS GrantedQueryMemoryKB
FROM
	sys.dm_exec_sessions
	LEFT OUTER JOIN (
		SELECT session_id, COUNT(*) AS ConnectionCount FROM sys.dm_exec_connections GROUP BY session_id
	) AS dm_exec_connections ON sys.dm_exec_sessions.session_id=dm_exec_connections.session_id
	LEFT OUTER JOIN (
		SELECT session_id, COUNT(*) AS TransactionCount FROM sys.dm_tran_session_transactions GROUP BY session_id
	) AS dm_tran_session_transactions ON sys.dm_exec_sessions.session_id=dm_tran_session_transactions.session_id
	LEFT OUTER JOIN (
		SELECT blocking_session_id, COUNT(*) AS BlockingRequestCount FROM sys.dm_exec_requests GROUP BY blocking_session_id
	) AS dm_exec_blockrequests ON sys.dm_exec_sessions.session_id=dm_exec_blockrequests.blocking_session_id
	LEFT OUTER JOIN (
		SELECT session_id, SUM(CASE WHEN is_open=1 THEN 1 ELSE 0 END) AS OpenCursorCount, SUM(CASE WHEN is_open=0 THEN 1 ELSE 0 END) AS ClosedCursorCount
		FROM sys.dm_exec_cursors (0)
		GROUP BY session_id
	) AS dm_exec_cursors ON sys.dm_exec_sessions.session_id=dm_exec_cursors.session_id
	LEFT OUTER JOIN (
		SELECT
			session_id,
			SUM(CONVERT(bigint, open_transaction_count)) AS open_transaction_count,
			SUM(CONVERT(bigint, open_resultset_count)) AS open_resultset_count,
			SUM(CASE WHEN total_elapsed_time IS NULL THEN 0 ELSE 1 END) AS ActiveReqCount,
			SUM(CASE WHEN blocking_session_id <> 0 THEN 1 ELSE 0 END) AS BlockedReqCount,
			SUM(CONVERT(bigint, wait_time)) AS wait_time,
			SUM(CONVERT(bigint, cpu_time)) AS cpu_time,
			SUM(CONVERT(bigint, total_elapsed_time)) AS total_elapsed_time,
			SUM(CONVERT(bigint, reads)) AS Reads,
			SUM(CONVERT(bigint, writes)) AS Writes,
			SUM(CONVERT(bigint, logical_reads)) AS logical_reads,

			SUM(CONVERT(bigint, row_count)) AS row_count,
			SUM(CONVERT(bigint, granted_query_memory*8)) AS granted_query_memory
		FROM sys.dm_exec_requests
		GROUP BY session_id
	) AS dm_exec_requests ON sys.dm_exec_sessions.session_id=dm_exec_requests.session_id
WHERE sys.dm_exec_sessions.is_user_process=1
GROUP BY sys.dm_exec_sessions.login_name, sys.dm_exec_sessions.host_name, sys.dm_exec_sessions.program_name
ORDER BY
	ActiveReqCount DESC, OpenTranCount DESC, BlockingRequestCount DESC, BlockedReqCount DESC, ConnectionCount DESC,
	sys.dm_exec_sessions.login_name, sys.dm_exec_sessions.host_name, sys.dm_exec_sessions.program_name

--Connections by session_id
SELECT
	sys.dm_exec_sessions.session_id,
	MAX(sys.dm_exec_sessions.login_name) AS login_name, MAX(sys.dm_exec_sessions.host_name) AS host_name,
	MAX(sys.dm_exec_sessions.program_name) AS program_name, MAX(sys.dm_exec_sessions.client_interface_name) AS client_interface_name,
	MAX(sys.dm_exec_sessions.status) AS status,
	SUM(ConnectionCount) AS ConnectionCount,
	SUM(CONVERT(bigint, ISNULL(dm_tran_session_transactions.TransactionCount,0))) AS OpenTranCount,
	SUM(CONVERT(bigint, ISNULL(dm_exec_cursors.OpenCursorCount,0))) AS OpenCursorCount,
	SUM(CONVERT(bigint, ISNULL(dm_exec_cursors.ClosedCursorCount,0))) AS ClosedCursorCount,
	ISNULL(SUM(dm_exec_blockrequests.BlockingRequestCount),0) AS BlockingRequestCount,
	SUM(dm_exec_requests.ActiveReqCount) AS ActiveReqCount,
	SUM(dm_exec_requests.open_resultset_count) AS OpenResultSetCount,
	SUM(dm_exec_requests.open_transaction_count) AS ActiveReqOpenTranCount,
	SUM(dm_exec_requests.BlockedReqCount) AS BlockedReqCount,
	SUM(dm_exec_requests.wait_time) AS WaitTime,
	SUM(dm_exec_requests.cpu_time) AS CPUTime,
	SUM(dm_exec_requests.total_elapsed_time) AS ElapsedTime,
	SUM(dm_exec_requests.reads) AS Reads,
	SUM(dm_exec_requests.writes) AS Writes,
	SUM(dm_exec_requests.logical_reads) AS LogicalReads,
	SUM(dm_exec_requests.row_count) AS [RowCount],
	SUM(dm_exec_requests.granted_query_memory) AS GrantedQueryMemoryKB
FROM
	sys.dm_exec_sessions
	LEFT OUTER JOIN (
		SELECT session_id, COUNT(*) AS ConnectionCount FROM sys.dm_exec_connections GROUP BY session_id
	) AS dm_exec_connections ON sys.dm_exec_sessions.session_id=dm_exec_connections.session_id
	LEFT OUTER JOIN (
		SELECT session_id, COUNT(*) AS TransactionCount FROM sys.dm_tran_session_transactions GROUP BY session_id
	) AS dm_tran_session_transactions ON sys.dm_exec_sessions.session_id=dm_tran_session_transactions.session_id
	LEFT OUTER JOIN (
		SELECT blocking_session_id, COUNT(*) AS BlockingRequestCount FROM sys.dm_exec_requests GROUP BY blocking_session_id
	) AS dm_exec_blockrequests ON sys.dm_exec_sessions.session_id=dm_exec_blockrequests.blocking_session_id
	LEFT OUTER JOIN (
		SELECT session_id, SUM(CASE WHEN is_open=1 THEN 1 ELSE 0 END) AS OpenCursorCount, SUM(CASE WHEN is_open=0 THEN 1 ELSE 0 END) AS ClosedCursorCount
		FROM sys.dm_exec_cursors (0)
		GROUP BY session_id
	) AS dm_exec_cursors ON sys.dm_exec_sessions.session_id=dm_exec_cursors.session_id
	LEFT OUTER JOIN (
		SELECT
			session_id,
			SUM(CONVERT(bigint, open_transaction_count)) AS open_transaction_count,
			SUM(CONVERT(bigint, open_resultset_count)) AS open_resultset_count,
			SUM(CASE WHEN total_elapsed_time IS NULL THEN 0 ELSE 1 END) AS ActiveReqCount,
			SUM(CASE WHEN blocking_session_id <> 0 THEN 1 ELSE 0 END) AS BlockedReqCount,
			SUM(CONVERT(bigint, wait_time)) AS wait_time,
			SUM(CONVERT(bigint, cpu_time)) AS cpu_time,
			SUM(CONVERT(bigint, total_elapsed_time)) AS total_elapsed_time,
			SUM(CONVERT(bigint, reads)) AS Reads,
			SUM(CONVERT(bigint, writes)) AS Writes,
			SUM(CONVERT(bigint, logical_reads)) AS logical_reads,
			SUM(CONVERT(bigint, row_count)) AS row_count,
			SUM(CONVERT(bigint, granted_query_memory*8)) AS granted_query_memory
		FROM sys.dm_exec_requests
		GROUP BY session_id
	) AS dm_exec_requests ON sys.dm_exec_sessions.session_id=dm_exec_requests.session_id
WHERE sys.dm_exec_sessions.is_user_process=1
GROUP BY sys.dm_exec_sessions.session_id
ORDER BY
	ActiveReqCount DESC, OpenTranCount DESC, BlockingRequestCount DESC, BlockedReqCount DESC, ConnectionCount DESC,
	login_name, program_name, host_name, session_id
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_CompareTables]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CompareTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[dbm_CompareTables](@table1 varchar(100),
 @table2 Varchar(100), @T1ColumnList varchar(1000),
 @T2ColumnList varchar(1000) = '''')

AS

-- Table1, Table2 are the tables or views to compare.
-- T1ColumnList is the list of columns to compare, from table1.
-- Just list them comma-separated, like in a GROUP BY clause.
-- If T2ColumnList is not specified, it is assumed to be the same
-- as T1ColumnList.  Otherwise, list the columns of Table2 in
-- the same order as the columns in table1 that you wish to compare.
--
-- The result is all rows from either table that do NOT match
-- the other table in all columns specified, along with which table that
-- row is from.

declare @SQL varchar(8000);

IF @t2ColumnList = '''' SET @T2ColumnList = @T1ColumnList

set @SQL = ''SELECT '''''' + @table1 + '''''' AS TableName, '' + @t1ColumnList +
 '' FROM '' + @Table1 + '' UNION ALL SELECT '''''' + @table2 + '''''' As TableName, '' +
 @t2ColumnList + '' FROM '' + @Table2

set @SQL = ''SELECT Max(TableName) as TableName, '' + @t1ColumnList +
 '' FROM ('' + @SQL + '') A GROUP BY '' + @t1ColumnList +
 '' HAVING COUNT(*) = 1''

print (@SQL)
exec ( @SQL)


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_CompareDB]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CompareDB]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

--------------------------------------------------------------------------------------------
-- dbm_CompareDB
-- 
-- The SP compares structures and data in 2 databases.
-- 1. Compares if all tables in one database have analog (by name) in second database
-- Tables not existing in one of databases won''t be used for data comparing
-- 2. Compares if structures for tables with the same names are the same. Shows structural
-- differences like:
-- authors
-- Column Phone: in db1 - char(12), in db2 - char(14)
-- sales
-- Column Location not in db2
-- Tables, having different structures, won''t be used for data comparing. However if the tables
-- contain columns of the same type and different length (like Phone in the example above) or
-- tables have compatible data types (have the same type in syscolumns - char and nchar, 
-- varchar and nvarchar etc) they will be allowed for data comparing.
-- 3. Data comparison itself. 
-- 3.1 Get information about unique keys in the tables. If there are unique keys then one of them
-- (PK is a highest priority candidate for this role) will be used to specify rows with
-- different data.
-- 3.2 Get information about all data columns in the table and form predicates that will be 
-- used to compare data.
-- 3.3 Compare data with the criteria:
-- a. if some unique keys from the table from first database do not exist in second db (only
-- for tables with a unique key)
-- b. if some unique keys from the table from second database do not exist in first db (only
-- for tables with a unique key)
-- c. if there are rows with the same values of unique keys and different data in other
-- columns (only for tables with a unique key)
-- d. if there are rows in the table from first database that don''t have a twin in the 
-- table from second db
-- e. if there are rows in the table from second database that don''t have a twin in the 
-- table from first db
--------------------------------------------------------------------------------------------
-- Parameters:
-- 1. @db1 - name of first database to compare
-- 2. @db2 - name of second database to compare
-- 3. @TabList - list of tables to compare. if empty - all tables in the databases should be
-- compared
-- 4. @NumbToShow - number of rows with differences to show. Default - 10.
-- 5. @OnlyStructure - flag, if set to 1, allows to avoid data comparing. Only structures should
-- be compared. Default - 0
-- 6. @NoTimestamp - flag, if set to 1, allows to avoid comparing of columns of timestamp
-- data type. Default - 0
-- 7. @VerboseLevel - if set to 1 allows to print querues used for data comparison
--------------------------------------------------------------------------------------------
-- Created by Viktor Gorodnichenko (c)
-- Created on: July 5, 2001
-- 060327 nbn: Changed ''Colimn'' into ''column'' & added "order by" to table listings.
--------------------------------------------------------------------------------------------
CREATE PROC [dbo].[dbm_CompareDB]
@db1 varchar(128),
@db2 varchar(128),
@OnlyStructure bit = 0,
@TabList varchar(8000) = '''',
@NumbToShow int = 10,
@NoTimestamp bit = 0,
@VerboseLevel tinyint = 0
AS
if @OnlyStructure <> 0
set @OnlyStructure = 1
if @NoTimestamp <> 0
set @NoTimestamp = 1
if @VerboseLevel <> 0
set @VerboseLevel = 1

SET NOCOUNT ON
SET ANSI_WARNINGS ON
SET ANSI_NULLS ON
declare @sqlStr varchar(8000)
set nocount on
-- Checking if there are specified databases
declare @SrvName sysname
declare @DBName sysname
set @db1 = RTRIM(LTRIM(@db1))
set @db2 = RTRIM(LTRIM(@db2))
set @SrvName = @@SERVERNAME
if CHARINDEX(''.'',@db1) > 0
begin
set @SrvName = LEFT(@db1,CHARINDEX(''.'',@db1)-1)
if not exists (select * from master.dbo.sysservers where srvname = @SrvName)
begin
print ''There is no linked server named ''+@SrvName+''. End of work.''
return 
end
set @DBName = RIGHT(@db1,LEN(@db1)-CHARINDEX(''.'',@db1))
end
else
set @DBName = @db1
exec (''declare @Name sysname select @Name=name from [''+@SrvName+''].master.dbo.sysdatabases where name = ''''''+@DBName+'''''''')
if @@rowcount = 0
begin
print ''There is no database named ''+@db1+''. End of work.''
return 
end
set @SrvName = @@SERVERNAME
if CHARINDEX(''.'',@db2) > 0
begin
set @SrvName = LEFT(@db2,CHARINDEX(''.'',@db2)-1)
if not exists (select * from master.dbo.sysservers where srvname = @SrvName)
begin
print ''There is no linked server named ''+@SrvName+''. End of work.''
return 
end
set @DBName = RIGHT(@db2,LEN(@db2)-CHARINDEX(''.'',@db2))
end
else
set @DBName = @db2
exec (''declare @Name sysname select @Name=name from [''+@SrvName+''].master.dbo.sysdatabases where name = ''''''+@DBName+'''''''')
if @@rowcount = 0
begin
print ''There is no database named ''+@db2+''. End of work.''
return 
end

print Replicate(''-'',LEN(@db1)+LEN(@db2)+25)
print ''Comparing databases ''+@db1+'' and ''+@db2
print Replicate(''-'',LEN(@db1)+LEN(@db2)+25)
print ''Options specified:''
print '' Compare only structures: ''+CASE WHEN @OnlyStructure = 0 THEN ''No'' ELSE ''Yes'' END
print '' List of tables to compare: ''+CASE WHEN LEN(@TabList) = 0 THEN '' All tables'' ELSE @TabList END
print '' Max number of different rows in each table to show: ''+LTRIM(STR(@NumbToShow))
print '' Compare timestamp columns: ''+CASE WHEN @NoTimestamp = 0 THEN ''No'' ELSE ''Yes'' END
print '' Verbose level: ''+CASE WHEN @VerboseLevel = 0 THEN ''Low'' ELSE ''High'' END

-----------------------------------------------------------------------------------------
-- Comparing structures
-----------------------------------------------------------------------------------------
print CHAR(10)+Replicate(''-'',36)
print ''Comparing structure of the databases''
print Replicate(''-'',36)
if exists (select * from tempdb.dbo.sysobjects where name like ''#TabToCheck%'')
drop table #TabToCheck
create table #TabToCheck (name sysname)
declare @NextCommaPos int
if len(@TabList) > 0 
begin
while 1=1
begin
set @NextCommaPos = CHARINDEX('','',@TabList)
if @NextCommaPos = 0
begin
set @sqlstr = ''insert into #TabToCheck values(''''''+@TabList+'''''')''
exec (@sqlstr)
break
end
set @sqlstr = ''insert into #TabToCheck values(''''''+LEFT(@TabList,@NextCommaPos-1)+'''''')''
exec (@sqlstr)
set @TabList = RIGHT(@TabList,LEN(@TabList)-@NextCommaPos)
end
end
else -- then will check all tables
begin
exec (''insert into #TabToCheck select name from ''+@db1+''.dbo.sysobjects where type = ''''U'''''')
exec (''insert into #TabToCheck select name from ''+@db2+''.dbo.sysobjects where type = ''''U'''''')
end
-- First check if at least one table specified in @TabList exists in db1
exec (''declare @Name sysname select @Name=name from ''+@db1+''.dbo.sysobjects where name in (select * from #TabToCheck)'')
if @@rowcount = 0
begin
print ''No tables in ''+@db1+'' to check. End of work.''
return
end
-- Check if tables existing in db1 are in db2 (all tables or specified in @TabList)
if exists (select * from tempdb.dbo.sysobjects where name like ''#TabNotInDB2%'')
drop table #TabNotInDB2
create table #TabNotInDB2 (name sysname)
insert into #TabNotInDB2 
-- 060327 nbn: Added order by..
exec (''select name from ''+@db1+''.dbo.sysobjects d1o ''+
''where name in (select * from #TabToCheck) and ''+
'' d1o.type = ''''U'''' and not exists ''+
''(select * from ''+@db2+''.dbo.sysobjects d2o''+
'' where d2o.type = ''''U'''' and d2o.name = d1o.name) order by name'')
if @@rowcount > 0
begin
print CHAR(10)+''The table(s) exist in ''+@db1+'', but do not exist in ''+@db2+'':''
select * from #TabNotInDB2 
end
delete from #TabToCheck where name in (select * from #TabNotInDB2)
drop table #TabNotInDB2

if exists (select * from tempdb.dbo.sysobjects where name like ''#TabNotInDB1%'')
drop table #TabNotInDB1
create table #TabNotInDB1 (name sysname)
insert into #TabNotInDB1 
-- 060327 nbn: Added order by..
exec (''select name from ''+@db2+''.dbo.sysobjects d1o ''+
''where name in (select * from #TabToCheck) and ''+
'' d1o.type = ''''U'''' and not exists ''+
''(select * from ''+@db1+''.dbo.sysobjects d2o''+
'' where d2o.type = ''''U'''' and d2o.name = d1o.name) order by name'')
if @@rowcount > 0
begin
print CHAR(10)+''The table(s) exist in ''+@db2+'', but do not exist in ''+@db1+'':''
select * from #TabNotInDB1 
end
delete from #TabToCheck where name in (select * from #TabNotInDB1)
drop table #TabNotInDB1
-- Comparing structures of tables existing in both dbs
print CHAR(10)+''Checking if there are tables existing in both databases having structural differences ...''+CHAR(10)
if exists (select * from tempdb.dbo.sysobjects where name like ''#DiffStructure%'')
drop table #DiffStructure
create table #DiffStructure (name sysname)
set @sqlStr=''
declare @TName1 sysname, @TName2 sysname, @CName1 sysname, @CName2 sysname,
@TypeName1 sysname, @TypeName2 sysname,
@CLen1 smallint, @CLen2 smallint, @Type1 sysname, @Type2 sysname, @PrevTName sysname
declare @DiffStructure bit
declare Diff cursor fast_forward for
select d1o.name, d2o.name, d1c.name, d2c.name, d1t.name, d2t.name,
d1c.length, d2c.length, d1c.type, d2c.type
from (''+@db1+''.dbo.sysobjects d1o 
JOIN ''+@db2+''.dbo.sysobjects d2o2 ON d1o.name = d2o2.name and d1o.type = ''''U'''' --only tables in both dbs
and d1o.name in (select * from #TabToCheck)
JOIN ''+@db1+''.dbo.syscolumns d1c ON d1o.id = d1c.id
JOIN ''+@db1+''.dbo.systypes d1t ON d1c.xusertype = d1t.xusertype)
FULL JOIN (''+@db2+''.dbo.sysobjects d2o 
JOIN ''+@db1+''.dbo.sysobjects d1o2 ON d1o2.name = d2o.name and d2o.type = ''''U'''' --only tables in both dbs
and d2o.name in (select * from #TabToCheck)
JOIN ''+@db2+''.dbo.syscolumns d2c ON d2c.id = d2o.id
JOIN ''+@db2+''.dbo.systypes d2t ON d2c.xusertype = d2t.xusertype)
ON d1o.name = d2o.name and d1c.name = d2c.name
WHERE (not exists 
(select * from ''+@db2+''.dbo.sysobjects d2o2
JOIN ''+@db2+''.dbo.syscolumns d2c2 ON d2o2.id = d2c2.id
JOIN ''+@db2+''.dbo.systypes d2t2 ON d2c2.xusertype = d2t2.xusertype
where d2o2.type = ''''U''''
and d2o2.name = d1o.name 
and d2c2.name = d1c.name 
and d2t2.name = d1t.name
and d2c2.length = d1c.length)
OR not exists 
(select * from ''+@db1+''.dbo.sysobjects d1o2
JOIN ''+@db1+''.dbo.syscolumns d1c2 ON d1o2.id = d1c2.id
JOIN ''+@db1+''.dbo.systypes d1t2 ON d1c2.xusertype = d1t2.xusertype
where d1o2.type = ''''U''''
and d1o2.name = d2o.name 
and d1c2.name = d2c.name 
and d1t2.name = d2t.name
and d1c2.length = d2c.length))
order by coalesce(d1o.name,d2o.name), d1c.name
open Diff
fetch next from Diff into @TName1, @TName2, @CName1, @CName2, @TypeName1, @TypeName2,
@CLen1, @CLen2, @Type1, @Type2
set @PrevTName = ''''''''
set @DiffStructure = 0
while @@fetch_status = 0
begin
if Coalesce(@TName1,@TName2) <> @PrevTName
begin
if @PrevTName <> '''''''' and @DiffStructure = 1
begin
insert into #DiffStructure values (@PrevTName)
set @DiffStructure = 0
end
set @PrevTName = Coalesce(@TName1,@TName2)
print @PrevTName
end
if @CName2 is null
print '''' Column ''''+RTRIM(@CName1)+'''' not in ''+@db2+''''''
else
if @CName1 is null
print '''' Column ''''+RTRIM(@CName2)+'''' not in ''+@db1+''''''
else
if @TypeName1 <> @TypeName2
print '''' Column ''''+RTRIM(@CName1)+'''': in ''+@db1+'' - ''''+RTRIM(@TypeName1)+'''', in ''+@db2+'' - ''''+RTRIM(@TypeName2)
else --the columns are not null(are in both dbs) and types are equal,then length are diff
print '''' Column ''''+RTRIM(@CName1)+'''': in ''+@db1+'' - ''''+RTRIM(@TypeName1)+''''(''''+
LTRIM(STR(CASE when @TypeName1=''''nChar'''' or @TypeName1 = ''''nVarChar'''' then @CLen1/2 else @CLen1 end))+
''''), in ''+@db2+'' - ''''+RTRIM(@TypeName2)+''''(''''+
LTRIM(STR(CASE when @TypeName1=''''nChar'''' or @TypeName1 = ''''nVarChar'''' then @CLen2/2 else @CLen2 end))+'''')''''
if @Type1 = @Type2
set @DiffStructure=@DiffStructure -- Do nothing. Cannot invert predicate
else
set @DiffStructure = 1
fetch next from Diff into @TName1, @TName2, @CName1, @CName2, @TypeName1, @TypeName2,
@CLen1, @CLen2, @Type1, @Type2
end
deallocate Diff
if @DiffStructure = 1
insert into #DiffStructure values (@PrevTName)
''
exec (@sqlStr)
if (select count(*) from #DiffStructure) > 0
begin
print CHAR(10)+''The table(s) have the same name and different structure in the databases:''
select distinct * from #DiffStructure 
delete from #TabToCheck where name in (select * from #DiffStructure)
end
else
print CHAR(10)+''There are no tables with the same name and structural differences in the databases''+CHAR(10)+CHAR(10)
if @OnlyStructure = 1
begin
print ''The option ''''Only compare structures'''' was specified. End of work.''
return
end
exec (''declare @Name sysname select @Name=d1o.name
from ''+@db1+''.dbo.sysobjects d1o, ''+@db2+''.dbo.sysobjects d2o 
where d1o.name = d2o.name and d1o.type = ''''U'''' and d2o.type = ''''U''''
and d1o.name not in (''''dtproperties'''') 
and d1o.name in (select * from #TabToCheck)'')
if @@rowcount = 0
begin
print ''There are no tables with the same name and structure in the databases to compare. End of work.''
return
end


-----------------------------------------------------------------------------------------
-- Comparing data 
-----------------------------------------------------------------------------------------
-- ##CompareStr - will be used to pass comparing strings into dynamic script
-- to execute the string
if exists (select * from tempdb.dbo.sysobjects where name like ''##CompareStr%'')
drop table ##CompareStr
create table ##CompareStr (Ind int, CompareStr varchar(8000))

if exists (select * from tempdb.dbo.sysobjects where name like ''#DiffTables%'')
drop table #DiffTables
create table #DiffTables (Name sysname)
if exists (select * from tempdb.dbo.sysobjects where name like ''#IdenticalTables%'')
drop table #IdenticalTables
create table #IdenticalTables (Name sysname)
if exists (select * from tempdb.dbo.sysobjects where name like ''#EmptyTables%'')
drop table #EmptyTables
create table #EmptyTables (Name sysname)
if exists (select * from tempdb.dbo.sysobjects where name like ''#NoPKTables%'')
drop table #NoPKTables
create table #NoPKTables (Name sysname)

if exists (select * from tempdb.dbo.sysobjects where name like ''#IndList1%'')
truncate table #IndList1
else 
create table #IndList1 (IndId int, IndStatus int,
KeyAndStr varchar(7000), KeyCommaStr varchar(1000))
if exists (select * from tempdb.dbo.sysobjects where name like ''#IndList2%'')
truncate table #IndList2
else
create table #IndList2 (IndId smallint, IndStatus int,
KeyAndStr varchar(7000), KeyCommaStr varchar(1000))

print Replicate(''-'',51)
print ''Comparing data in tables with indentical structure:''
print Replicate(''-'',51)
--------------------------------------------------------------------------------------------
-- Cursor for all tables in dbs (or for all specified tables if parameter @TabList is passed)
--------------------------------------------------------------------------------------------
declare @SqlStrGetListOfKeys1 varchar(8000)
declare @SqlStrGetListOfKeys2 varchar(8000)
declare @SqlStrGetListOfColumns varchar(8000)
declare @SqlStrCompareUKeyTables varchar(8000)
declare @SqlStrCompareNonUKeyTables varchar(8000)
set @SqlStrGetListOfKeys1 = ''
declare @sqlStr varchar(8000)
declare @ExecSqlStr varchar(8000)
declare @PrintSqlStr varchar(8000)
declare @Tab varchar(128)
declare @d1User varchar(128)
declare @d2User varchar(128)
declare @KeyAndStr varchar(8000) 
declare @KeyCommaStr varchar(8000) 
declare @AndStr varchar(8000) 
declare @Eq varchar(8000) 
declare @IndId int
declare @IndStatus int
declare @CurrIndId smallint
declare @CurrStatus int
declare @UKey sysname 
declare @Col varchar(128)
declare @LastUsedCol varchar(128)
declare @xType int
declare @Len int
declare @SelectStr varchar(8000) 
declare @ExecSql nvarchar(1000) 
declare @NotInDB1 bit 
declare @NotInDB2 bit 
declare @NotEq bit 
declare @Numb int
declare @Cnt1 int
declare @Cnt2 int
set @Numb = 0

declare @StrInd int
declare @i int
declare @PrintStr varchar(8000)
declare @ExecStr varchar(8000)
declare TabCur cursor for 

select d1o.name, d1u.name, d2u.name from ''+@db1+''.dbo.sysobjects d1o, ''+@db2+''.dbo.sysobjects d2o,
''+@db1+''.dbo.sysusers d1u, ''+@db2+''.dbo.sysusers d2u 
where d1o.name = d2o.name and d1o.type = ''''U'''' and d2o.type = ''''U''''
and d1o.uid = d1u.uid and d2o.uid = d2u.uid 
and d1o.name not in (''''dtproperties'''') 
and d1o.name in (select * from #TabToCheck)
order by 1

open TabCur 
fetch next from TabCur into @Tab, @d1User, @d2User 
while @@fetch_status = 0 
begin 
set @Numb = @Numb + 1
print Char(13)+Char(10)+LTRIM(STR(@Numb))+''''. TABLE: [''''+@Tab+''''] ''''

set @ExecSql = ''''SELECT @Cnt = count(*) FROM ''+@db1+''.[''''+@d1User+''''].[''''+@Tab+'''']''''
exec sp_executesql @ExecSql, N''''@Cnt int output'''', @Cnt = @Cnt1 output
print CHAR(10)+STR(@Cnt1)+'''' rows in ''+@db1+''''''
set @ExecSql = ''''SELECT @Cnt = count(*) FROM ''+@db2+''.[''''+@d2User+''''].[''''+@Tab+'''']''''
exec sp_executesql @ExecSql, N''''@Cnt int output'''', @Cnt = @Cnt2 output
print STR(@Cnt2)+'''' rows in ''+@db2+''''''
if @Cnt1 = 0 and @Cnt2 = 0
begin
exec ('''' insert into #EmptyTables values(''''''''[''''+@Tab+'''']'''''''')'''') 
goto NextTab
end
set @KeyAndStr = '''''''' 
set @KeyCommaStr = '''''''' 
set @NotInDB1 = 0
set @NotInDB2 = 0 
set @NotEq = 0
set @KeyAndStr = '''''''' 
set @KeyCommaStr = '''''''' 
truncate table #IndList1
declare UKeys cursor fast_forward for 
select i.indid, i.status, c.name, c.xType from ''+@db1+''.dbo.sysobjects o, ''+@db1+''.dbo.sysindexes i, ''+@db1+''.dbo.sysindexkeys k, ''+@db1+''.dbo.syscolumns c 
where i.id = o.id and o.name = @Tab
and (i.status & 2)<>0 
and k.id = o.id and k.indid = i.indid 
and c.id = o.id and c.colid = k.colid 
order by i.indid, c.name
open UKeys 
fetch next from UKeys into @IndId, @IndStatus, @UKey, @xType
set @CurrIndId = @IndId
set @CurrStatus = @IndStatus
while @@fetch_status = 0 
begin 
if @KeyAndStr <> ''''''''
begin 
set @KeyAndStr = @KeyAndStr + '''' and '''' + CHAR(10) 
set @KeyCommaStr = @KeyCommaStr + '''', '''' 
end 
if @xType = 175 or @xType = 167 or @xType = 239 or @xType = 231 -- char, varchar, nchar, nvarchar
begin
set @KeyAndStr = @KeyAndStr + '''' ISNULL(d1.[''''+@UKey+''''],''''''''!#null$'''''''')=ISNULL(d2.[''''+@UKey+''''],''''''''!#null$'''''''') ''''
end
if @xType = 173 or @xType = 165 -- binary, varbinary
begin
set @KeyAndStr = @KeyAndStr +
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 0x4D4FFB23A49411D5BDDB00A0C906B7B4 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 0x4D4FFB23A49411D5BDDB00A0C906B7B4 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 56 or @xType = 127 or @xType = 60 or @xType = 122 -- int, 127 - bigint,60 - money, 122 - smallmoney
begin
set @KeyAndStr = @KeyAndStr + 
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 971428763405345098745 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 971428763405345098745 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 106 or @xType = 108 -- int, decimal, numeric
begin
set @KeyAndStr = @KeyAndStr + 
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 71428763405345098745098.8723 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 71428763405345098745098.8723 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 62 or @xType = 59 -- 62 - float, 59 - real
begin 
set @KeyAndStr = @KeyAndStr + 
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 8764589764.22708E237 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 8764589764.22708E237 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 52 or @xType = 48 or @xType = 104 -- smallint, tinyint, bit
begin
set @KeyAndStr = @KeyAndStr + '''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 99999 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 99999 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 36 -- 36 - id 
begin
set @KeyAndStr = @KeyAndStr +
'''' CASE WHEN d1.[''''+@UKey+''''] is null''''+
'''' THEN CONVERT(uniqueidentifier,''''''''1CD827A0-744A-4866-8401-B9902CF2D4FB'''''''')''''+
'''' ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null''''+
'''' THEN CONVERT(uniqueidentifier,''''''''1CD827A0-744A-4866-8401-B9902CF2D4FB'''''''')''''+
'''' ELSE d2.[''''+@UKey+''''] END''''
end
else if @xType = 61 or @xType = 58 -- datetime, smalldatetime
begin
set @KeyAndStr = @KeyAndStr +
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN ''''''''!#null$'''''''' ELSE CONVERT(varchar(40),d1.[''''+@UKey+''''],109) END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN ''''''''!#null$'''''''' ELSE CONVERT(varchar(40),d2.[''''+@UKey+''''],109) END ''''
end
else if @xType = 189 -- timestamp (189) 
begin
set @KeyAndStr = @KeyAndStr + '''' d1.[''''+@UKey+'''']=d2.[''''+@UKey+''''] ''''
end
else if @xType = 98 -- SQL_variant
begin
set @KeyAndStr = @KeyAndStr + '''' ISNULL(d1.[''''+@UKey+''''],''''''''!#null$'''''''')=ISNULL(d2.[''''+@UKey+''''],''''''''!#null$'''''''') ''''
end
set @KeyCommaStr = @KeyCommaStr + '''' d1.''''+@UKey 
fetch next from UKeys into @IndId, @IndStatus, @UKey, @xType
if @IndId <> @CurrIndId
begin
insert into #IndList1 values (@CurrIndId, @CurrStatus, @KeyAndStr, @KeyCommaStr)
set @CurrIndId = @IndId
set @CurrStatus = @IndStatus
set @KeyAndStr = ''''''''
set @KeyCommaStr = '''''''' 
end
end 
deallocate UKeys 
insert into #IndList1 values (@CurrIndId, @CurrStatus, @KeyAndStr, @KeyCommaStr)''
set @SqlStrGetListOfKeys2 = ''
set @KeyAndStr = '''''''' 
set @KeyCommaStr = '''''''' 
truncate table #IndList2
declare UKeys cursor fast_forward for 
select i.indid, i.status, c.name, c.xType from ''+@db2+''.dbo.sysobjects o, ''+@db2+''.dbo.sysindexes i, ''+@db2+''.dbo.sysindexkeys k, ''+@db2+''.dbo.syscolumns c 
where i.id = o.id and o.name = @Tab
and (i.status & 2)<>0 
and k.id = o.id and k.indid = i.indid 
and c.id = o.id and c.colid = k.colid 
order by i.indid, c.name
open UKeys 
fetch next from UKeys into @IndId, @IndStatus, @UKey, @xType
set @CurrIndId = @IndId
set @CurrStatus = @IndStatus
while @@fetch_status = 0 
begin 
if @KeyAndStr <> ''''''''
begin 
set @KeyAndStr = @KeyAndStr + '''' and '''' + CHAR(10) 
set @KeyCommaStr = @KeyCommaStr + '''', '''' 
end 
if @xType = 175 or @xType = 167 or @xType = 239 or @xType = 231 -- char, varchar, nchar, nvarchar
begin
set @KeyAndStr = @KeyAndStr + '''' ISNULL(d1.[''''+@UKey+''''],''''''''!#null$'''''''')=ISNULL(d2.[''''+@UKey+''''],''''''''!#null$'''''''') ''''
end
if @xType = 173 or @xType = 165 -- binary, varbinary
begin
set @KeyAndStr = @KeyAndStr +
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 0x4D4FFB23A49411D5BDDB00A0C906B7B4 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 0x4D4FFB23A49411D5BDDB00A0C906B7B4 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 56 or @xType = 127 or @xType = 60 or @xType = 122 -- int, 127 - bigint,60 - money, 122 - smallmoney
begin
set @KeyAndStr = @KeyAndStr + 
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 971428763405345098745 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 971428763405345098745 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 106 or @xType = 108 -- int, decimal, numeric
begin
set @KeyAndStr = @KeyAndStr + 
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 71428763405345098745098.8723 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 71428763405345098745098.8723 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 62 or @xType = 59 -- 62 - float, 59 - real
begin 
set @KeyAndStr = @KeyAndStr + 
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 8764589764.22708E237 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 8764589764.22708E237 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 52 or @xType = 48 or @xType = 104 -- smallint, tinyint, bit
begin
set @KeyAndStr = @KeyAndStr + '''' CASE WHEN d1.[''''+@UKey+''''] is null THEN 99999 ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN 99999 ELSE d2.[''''+@UKey+''''] END ''''
end
else if @xType = 36 -- 36 - id 
begin
set @KeyAndStr = @KeyAndStr +
'''' CASE WHEN d1.[''''+@UKey+''''] is null''''+
'''' THEN CONVERT(uniqueidentifier,''''''''1CD827A0-744A-4866-8401-B9902CF2D4FB'''''''')''''+
'''' ELSE d1.[''''+@UKey+''''] END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null''''+
'''' THEN CONVERT(uniqueidentifier,''''''''1CD827A0-744A-4866-8401-B9902CF2D4FB'''''''')''''+
'''' ELSE d2.[''''+@UKey+''''] END''''
end
else if @xType = 61 or @xType = 58 -- datetime, smalldatetime
begin
set @KeyAndStr = @KeyAndStr +
'''' CASE WHEN d1.[''''+@UKey+''''] is null THEN ''''''''!#null$'''''''' ELSE CONVERT(varchar(40),d1.[''''+@UKey+''''],109) END=''''+
''''CASE WHEN d2.[''''+@UKey+''''] is null THEN ''''''''!#null$'''''''' ELSE CONVERT(varchar(40),d2.[''''+@UKey+''''],109) END ''''
end
else if @xType = 189 -- timestamp (189) 
begin
set @KeyAndStr = @KeyAndStr + '''' d1.[''''+@UKey+'''']=d2.[''''+@UKey+''''] ''''
end
else if @xType = 98 -- SQL_variant
begin
set @KeyAndStr = @KeyAndStr + '''' ISNULL(d1.[''''+@UKey+''''],''''''''!#null$'''''''')=ISNULL(d2.[''''+@UKey+''''],''''''''!#null$'''''''') ''''
end
set @KeyCommaStr = @KeyCommaStr + '''' d1.''''+@UKey 
fetch next from UKeys into @IndId, @IndStatus, @UKey, @xType
if @IndId <> @CurrIndId
begin
insert into #IndList2 values (@CurrIndId, @CurrStatus, @KeyAndStr, @KeyCommaStr)
set @CurrIndId = @IndId
set @CurrStatus = @IndStatus
set @KeyAndStr = ''''''''
set @KeyCommaStr = '''''''' 
end
end 
deallocate UKeys 
insert into #IndList2 values (@CurrIndId, @CurrStatus, @KeyAndStr, @KeyCommaStr)
set @KeyCommaStr = null

select @KeyCommaStr=i1.KeyCommaStr from #IndList1 i1
join #IndList2 i2 on i1.KeyCommaStr = i2.KeyCommaStr
where (i1.IndStatus & 2048)<> 0 and (i2.IndStatus & 2048)<>0

if @KeyCommaStr is null 
set @KeyCommaStr = (select top 1 i1.KeyCommaStr from #IndList1 i1
join #IndList2 i2 on i1.KeyCommaStr = i2.KeyCommaStr)
set @KeyAndStr = (select TOP 1 KeyAndStr from #IndList1 where KeyCommaStr = @KeyCommaStr)
if @KeyCommaStr is null
set @KeyCommaStr = ''''''''
if @KeyAndStr is null
set @KeyAndStr = ''''''''''
set @SqlStrGetListOfColumns = ''
set @AndStr = ''''''''
set @StrInd = 1
declare Cols cursor local fast_forward for 
select c.name, c.xtype, c.length from ''+@db1+''.dbo.sysobjects o, ''+@db1+''.dbo.syscolumns c
where o.id = c.id and o.name = @Tab 
and CHARINDEX(c.name, @KeyCommaStr) = 0
open Cols 
fetch next from Cols into @Col, @xType, @len
while @@fetch_status = 0 
begin 
if @xType = 175 or @xType = 167 or @xType = 239 or @xType = 231 -- char, varchar, nchar, nvarchar
begin
set @Eq = ''''ISNULL(d1.[''''+@Col+''''],''''''''!#null$'''''''')=ISNULL(d2.[''''+@Col+''''],''''''''!#null$'''''''') ''''
end
if @xType = 173 or @xType = 165 -- binary, varbinary
begin
set @Eq = ''''CASE WHEN d1.[''''+@Col+''''] is null THEN 0x4D4FFB23A49411D5BDDB00A0C906B7B4 ELSE d1.[''''+@Col+''''] END=''''+
''''CASE WHEN d2.[''''+@Col+''''] is null THEN 0x4D4FFB23A49411D5BDDB00A0C906B7B4 ELSE d2.[''''+@Col+''''] END ''''
end
else if @xType = 56 or @xType = 127 or @xType = 60 or @xType = 122 -- int, 127 - bigint,60 - money, 122 - smallmoney
begin
set @Eq = ''''CASE WHEN d1.[''''+@Col+''''] is null THEN 971428763405345098745 ELSE d1.[''''+@Col+''''] END=''''+
''''CASE WHEN d2.[''''+@Col+''''] is null THEN 971428763405345098745 ELSE d2.[''''+@Col+''''] END ''''
end
else if @xType = 106 or @xType = 108 -- int, decimal, numeric
begin
set @Eq = ''''CASE WHEN d1.[''''+@Col+''''] is null THEN 71428763405345098745098.8723 ELSE d1.[''''+@Col+''''] END=''''+
''''CASE WHEN d2.[''''+@Col+''''] is null THEN 71428763405345098745098.8723 ELSE d2.[''''+@Col+''''] END ''''
end
else if @xType = 62 or @xType = 59 -- 62 - float, 59 - real
begin 
set @Eq = ''''CASE WHEN d1.[''''+@Col+''''] is null THEN 8764589764.22708E237 ELSE d1.[''''+@Col+''''] END=''''+
''''CASE WHEN d2.[''''+@Col+''''] is null THEN 8764589764.22708E237 ELSE d2.[''''+@Col+''''] END ''''
end
else if @xType = 52 or @xType = 48 or @xType = 104 -- smallint, tinyint, bit
begin
set @Eq = ''''CASE WHEN d1.[''''+@Col+''''] is null THEN 99999 ELSE d1.[''''+@Col+''''] END=''''+
''''CASE WHEN d2.[''''+@Col+''''] is null THEN 99999 ELSE d2.[''''+@Col+''''] END ''''
end
else if @xType = 36 -- 36 - id 
begin
set @Eq = ''''CASE WHEN d1.[''''+@Col+''''] is null''''+
'''' THEN CONVERT(uniqueidentifier,''''''''1CD827A0-744A-4866-8401-B9902CF2D4FB'''''''')''''+
'''' ELSE d1.[''''+@Col+''''] END=''''+
''''CASE WHEN d2.[''''+@Col+''''] is null''''+
'''' THEN CONVERT(uniqueidentifier,''''''''1CD827A0-744A-4866-8401-B9902CF2D4FB'''''''')''''+
'''' ELSE d2.[''''+@Col+''''] END''''
end
else if @xType = 61 or @xType = 58 -- datetime, smalldatetime
begin
set @Eq =
''''CASE WHEN d1.[''''+@Col+''''] is null THEN ''''''''!#null$'''''''' ELSE CONVERT(varchar(40),d1.[''''+@Col+''''],109) END=''''+
''''CASE WHEN d2.[''''+@Col+''''] is null THEN ''''''''!#null$'''''''' ELSE CONVERT(varchar(40),d2.[''''+@Col+''''],109) END ''''
end
else if @xType = 34
begin
set @Eq = ''''ISNULL(DATALENGTH(d1.[''''+@Col+'''']),0)=ISNULL(DATALENGTH(d2.[''''+@Col+'''']),0) '''' 
end
else if @xType = 35 or @xType = 99 -- text (35),ntext (99) 
begin
set @Eq = ''''ISNULL(SUBSTRING(d1.[''''+@Col+''''],1,DATALENGTH(d1.[''''+@Col+
''''])),''''''''!#null$'''''''')=ISNULL(SUBSTRING(d2.[''''+@Col+''''],1,DATALENGTH(d2.[''''+@Col+''''])),''''''''!#null$'''''''') ''''
end
else if @xType = 189 
begin
if ''+STR(@NoTimestamp)+'' = 0 
set @Eq = ''''d1.[''''+@Col+'''']=d2.[''''+@Col+''''] ''''
else
set @Eq = ''''1=1''''
end
else if @xType = 98 -- SQL_variant
begin
set @Eq = ''''ISNULL(d1.[''''+@Col+''''],''''''''!#null$'''''''')=ISNULL(d2.[''''+@Col+''''],''''''''!#null$'''''''') ''''
end
if @AndStr = ''''''''
set @AndStr = @AndStr + CHAR(10) + '''' '''' + @Eq 
else
if len(@AndStr) + len('''' and '''' + @Eq)<8000
set @AndStr = @AndStr + '''' and '''' + CHAR(10) + '''' '''' + @Eq 
else
begin
set @StrInd = @StrInd + 1
Insert into ##CompareStr values(@StrInd,@AndStr)
set @AndStr = '''' and '''' + @Eq 
end
fetch next from Cols into @Col, @xType, @len 
end 
deallocate Cols ''
set @SqlStrCompareUKeyTables = ''
if @KeyAndStr <> ''''''''
begin
set @SelectStr = ''''SELECT ''''+ @KeyCommaStr+'''' INTO ##NotInDb2 FROM ''+@db1+''.[''''+@d1User+''''].[''''+@Tab+''''] d1 ''''+ 
'''' WHERE not exists''''+CHAR(10)+'''' (SELECT * FROM ''+@db2+''.[''''+@d2User+''''].[''''+@Tab+''''] d2 ''''+ 
'''' WHERE ''''+CHAR(10)+@KeyAndStr+'''')''''
if ''+STR(@VerboseLevel)+'' = 1
print CHAR(10)+''''To find rows that are in ''+@db1+'', but are not in db2:''''+CHAR(10)+
REPLACE (@SelectStr, ''''into ##NotInDB2'''','''''''')
exec (@SelectStr) 
if @@rowcount > 0 
set @NotInDB2 = 1 
set @SelectStr = ''''SELECT ''''+@KeyCommaStr+'''' INTO ##NotInDB1 FROM ''+@db2+''.[''''+@d2User+''''].[''''+@Tab+''''] d1 ''''+ 
'''' WHERE not exists''''+CHAR(10)+'''' (SELECT * FROM ''+@db1+''.[''''+@d1User+''''].[''''+@Tab+''''] d2 ''''+ 
'''' WHERE ''''+CHAR(10)+@KeyAndStr+'''')'''' 
if ''+STR(@VerboseLevel)+'' = 1
print CHAR(10)+''''To find rows that are in ''+@db2+'', but are not in ''+@db1+'':''''+CHAR(10)+
REPLACE (@SelectStr, ''''into ##NotInDB1'''','''''''')
exec (@SelectStr) 
if @@rowcount > 0 
set @NotInDB1 = 1 
-- if there are non-key columns
if @AndStr <> '''''''' 
begin
set @PrintStr = '''' Print ''''
set @ExecStr = '''' exec (''''
set @SqlStr = ''''''''
Insert into ##CompareStr values(1,
''''SELECT ''''+ @KeyCommaStr+'''' INTO ##NotEq FROM ''+@db2+''.[''''+@d2User+''''].[''''+@Tab+''''] d1 ''''+ 
'''' INNER JOIN ''+@db1+''.[''''+@d1User+''''].[''''+@Tab+''''] d2 ON ''''+CHAR(10)+@KeyAndStr+CHAR(10)+''''WHERE not('''') 
-- Adding last string in temp table containing a comparing string to execute
set @StrInd = @StrInd + 1
Insert into ##CompareStr values(@StrInd,@AndStr+'''')'''')
set @i = 1
while @i <= @StrInd
begin
set @SqlStr = @SqlStr + '''' declare @Str''''+LTRIM(STR(@i))+'''' varchar(8000) ''''+
''''select @Str''''+LTRIM(STR(@i))+''''=CompareStr FROM ##CompareStr WHERE ind = ''''+STR(@i)
if @ExecStr <> '''' exec (''''
set @ExecStr = @ExecStr + ''''+''''
if @PrintStr <> '''' Print ''''
set @PrintStr = @PrintStr + ''''+''''
set @ExecStr = @ExecStr + ''''@Str''''+LTRIM(STR(@i))
set @PrintStr = @PrintStr + '''' REPLACE(@Str''''+LTRIM(STR(@i))+'''','''''''' into ##NotEq'''''''','''''''''''''''') ''''
set @i = @i + 1
end
set @ExecStr = @ExecStr + '''') ''''
set @ExecSqlStr = @SqlStr + @ExecStr 
set @PrintSqlStr = @SqlStr + 
'''' Print CHAR(10)+''''''''To find rows that are different in non-key columns:'''''''' ''''+
@PrintStr 
if ''+STR(@VerboseLevel)+'' = 1
exec (@PrintSqlStr)
exec (@ExecSqlStr)

if @@rowcount > 0 
set @NotEq = 1 
end
else
if ''+STR(@VerboseLevel)+'' = 1
print CHAR(10)+''''There are no non-key columns in the table''''
truncate table ##CompareStr
if @NotInDB1 = 1 or @NotInDB2 = 1 or @NotEq = 1
begin 
print CHAR(10)+''''Data are different''''
if @NotInDB2 = 1 and ''+STR(@NumbToShow)+'' > 0
begin
print ''''These key values exist in ''+@db1+'', but do not exist in ''+@db2+'': ''''
set @SelectStr = ''''select top ''''+STR(''+STR(@NumbToShow)+'')+'''' * from ##NotInDB2''''
exec (@SelectStr)
end
if @NotInDB1 = 1 and ''+STR(@NumbToShow)+'' > 0
begin
print ''''These key values exist in ''+@db2+'', but do not exist in ''+@db1+'': ''''
set @SelectStr = ''''select top ''''+STR(''+STR(@NumbToShow)+'')+'''' * from ##NotInDB1''''
exec (@SelectStr)
end
if @NotEq = 1 and ''+STR(@NumbToShow)+'' > 0
begin
print ''''Row(s) with these key values contain differences in non-key columns: ''''
set @SelectStr = ''''select top ''''+STR(''+STR(@NumbToShow)+'')+'''' * from ##NotEq''''
exec (@SelectStr) 
end
exec (''''insert into #DiffTables values(''''''''[''''+@Tab+'''']'''''''')'''') 
end 
else
begin
print CHAR(10)+''''Data are identical''''
exec ('''' insert into #IdenticalTables values(''''''''[''''+@Tab+'''']'''''''')'''') 
end
if exists (select * from tempdb.dbo.sysobjects where name like ''''##NotEq%'''')
drop table ##NotEq
end 
else ''
set @SqlStrCompareNonUKeyTables = ''
begin
exec (''''insert into #NoPKTables values(''''''''[''''+@Tab+'''']'''''''')'''')
set @PrintStr = '''' Print ''''
set @ExecStr = '''' exec (''''
set @SqlStr = ''''''''
Insert into ##CompareStr values(1,
''''SELECT ''''+
'''' * INTO ##NotInDB2 FROM ''+@db1+''.[''''+@d1User+''''].[''''+@Tab+''''] d1 WHERE not exists ''''+CHAR(10)+
'''' (SELECT * FROM ''+@db2+''.[''''+@d2User+''''].[''''+@Tab+''''] d2 WHERE '''')
set @StrInd = @StrInd + 1
Insert into ##CompareStr values(@StrInd,@AndStr+'''')'''')
set @i = 1
while @i <= @StrInd
begin
set @SqlStr = @SqlStr + '''' declare @Str''''+LTRIM(STR(@i))+'''' varchar(8000) ''''+
''''select @Str''''+LTRIM(STR(@i))+''''=CompareStr FROM ##CompareStr WHERE ind = ''''+STR(@i)
if @ExecStr <> '''' exec (''''
set @ExecStr = @ExecStr + ''''+''''
if @PrintStr <> '''' Print ''''
set @PrintStr = @PrintStr + ''''+''''
set @ExecStr = @ExecStr + ''''@Str''''+LTRIM(STR(@i))
set @PrintStr = @PrintStr + '''' REPLACE(@Str''''+LTRIM(STR(@i))+'''','''''''' into ##NotInDB2'''''''','''''''''''''''') ''''
set @i = @i + 1
end
set @ExecStr = @ExecStr + '''') ''''
set @ExecSqlStr = @SqlStr + @ExecStr 
set @PrintSqlStr = @SqlStr +
'''' Print CHAR(10)+''''''''To find rows that are in ''+@db1+'', but are not in ''+@db2+'':'''''''' ''''+
@PrintStr 
if ''+STR(@VerboseLevel)+'' = 1
exec (@PrintSqlStr)
exec (@ExecSqlStr)

if @@rowcount > 0 
set @NotInDB2 = 1 
delete from ##CompareStr where ind = 1
set @PrintStr = '''' Print ''''
set @ExecStr = '''' exec (''''
set @SqlStr = ''''''''
Insert into ##CompareStr values(1,
''''SELECT ''''+
'''' * INTO ##NotInDB1 FROM ''+@db2+''.[''''+@d2User+''''].[''''+@Tab+''''] d1 WHERE not exists ''''+CHAR(10)+
'''' (SELECT * FROM ''+@db1+''.[''''+@d1User+''''].[''''+@Tab+''''] d2 WHERE '''')
set @i = 1
while @i <= @StrInd
begin
set @SqlStr = @SqlStr + '''' declare @Str''''+LTRIM(STR(@i))+'''' varchar(8000) ''''+
''''select @Str''''+LTRIM(STR(@i))+''''=CompareStr FROM ##CompareStr WHERE ind = ''''+STR(@i)
if @ExecStr <> '''' exec (''''
set @ExecStr = @ExecStr + ''''+''''
if @PrintStr <> '''' Print ''''
set @PrintStr = @PrintStr + ''''+''''
set @ExecStr = @ExecStr + ''''@Str''''+LTRIM(STR(@i))
set @PrintStr = @PrintStr + '''' REPLACE(@Str''''+LTRIM(STR(@i))+'''','''''''' into ##NotInDB1'''''''','''''''''''''''') ''''
set @i = @i + 1
end
set @ExecStr = @ExecStr + '''') ''''
set @ExecSqlStr = @SqlStr + @ExecStr 
set @PrintSqlStr = @SqlStr +
'''' Print CHAR(10)+''''''''To find rows that are in ''+@db2+'', but are not in ''+@db1+'':'''''''' ''''+
@PrintStr 
if ''+STR(@VerboseLevel)+'' = 1
exec (@PrintSqlStr)
exec (@ExecSqlStr)

if @@rowcount > 0 
set @NotInDB1 = 1 
truncate table ##CompareStr
if @NotInDB1 = 1 or @NotInDB2 = 1
begin 
print CHAR(10)+''''Data are different''''
if @NotInDB2 = 1 and ''+STR(@NumbToShow)+'' > 0
begin
print ''''The row(s) exist in ''+@db1+'', but do not exist in ''+@db2+'': ''''
set @SelectStr = ''''select top ''''+STR(''+STR(@NumbToShow)+'')+'''' * from ##NotInDB2''''
exec (@SelectStr)
end
if @NotInDB1 = 1 and ''+STR(@NumbToShow)+'' > 0
begin
print ''''The row(s) exist in ''+@db2+'', but do not exist in ''+@db1+'': ''''
set @SelectStr = ''''select top ''''+STR(''+STR(@NumbToShow)+'')+'''' * from ##NotInDB1''''
exec (@SelectStr)
end
exec (''''insert into #DiffTables values(''''''''[''''+@Tab+'''']'''''''')'''') 
end 
else
begin
print CHAR(10)+''''Data are identical''''
exec ('''' insert into #IdenticalTables values(''''''''[''''+@Tab+'''']'''''''')'''') 
end
end
if exists (select * from tempdb.dbo.sysobjects where name like ''''##NotInDB1%'''')
drop table ##NotInDB1
if exists (select * from tempdb.dbo.sysobjects where name like ''''##NotInDB2%'''')
drop table ##NotInDB2
NextTab:
fetch next from TabCur into @Tab, @d1User, @d2User 
end 
deallocate TabCur 
''
exec (@SqlStrGetListOfKeys1+@SqlStrGetListOfKeys2+@SqlStrGetListOfColumns+
@SqlStrCompareUKeyTables+@SqlStrCompareNonUKeyTables)
print '' ''
SET NOCOUNT OFF
if (select count(*) from #NoPKTables) > 0
begin
select name as ''Table(s) without Unique key:'' from #NoPKTables 
end
if (select count(*) from #DiffTables) > 0
begin
select name as ''Table(s) with the same name & structure, but different data:'' from #DiffTables 
end
else
print CHAR(10)+''No tables with the same name & structure, but different data''+CHAR(10)
if (select count(*) from #IdenticalTables) > 0
begin
select name as ''Table(s) with the same name & structure and identical data:'' from #IdenticalTables 
end
if (select count(*) from #EmptyTables) > 0
begin
select name as ''Table(s) with the same name & structure and empty in the both databases:'' from #EmptyTables 
end
drop table #TabToCheck
drop table ##CompareStr
drop table #DiffTables
drop table #IdenticalTables
drop table #EmptyTables
drop table #NoPKTables
drop table #IndList1
drop table #IndList2
return 


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_EnumerateSQLServers]    Script Date: 10/07/2012 15:10:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_EnumerateSQLServers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dbm_EnumerateSQLServers]
AS

/*
        Stored Procedure : EnumerateSQLServers
		Author           : Srdjan Josipovic
		Date             : June 19 2002
        Purpose          : Enumerate Available SQL Servers using SQLDMO and T-SQL 
*/


DECLARE @retval int
DECLARE @result varchar(500)
DECLARE @object int 
DECLARE @objectList int 
DECLARE @src varchar(254)
DECLARE @desc varchar(255)
DECLARE @resultsCount int
DECLARE @counter int
DECLARE @method varchar(255)


--create SQLDMO object
EXEC @retval = sp_OACreate ''SQLDMO.Application'', @object OUT


-- check if object was created successfully
IF @retval <> 0 
	BEGIN
	   EXEC sp_OAGetErrorInfo @object, @src OUT, @desc OUT 
	   SELECT hr=convert(varbinary(4),@retval), Source=@src, Description=@desc
	   RETURN
	END

--call method ListAvailableServers() , get Object_ID for SQLDMO.NameList
EXEC @retval = sp_OAMethod @object , ''ListAvailableSQlServers()'' , @objectList OUT

-- error ?
IF @retval <> 0 
	BEGIN
	   EXEC sp_OAGetErrorInfo @objectList, @src OUT, @desc OUT 
	   SELECT hr=convert(varbinary(4),@retval), Source=@src, Description=@desc
	   RETURN
	END

-- Count Servers in the neighborhood
EXEC @retval = sp_OAGetProperty @objectList , ''Count'' , @resultsCount OUT

-- error handler again
IF @retval <> 0 
	BEGIN
	   EXEC sp_OAGetErrorInfo @objectList, @src OUT, @desc OUT 
	   SELECT hr=convert(varbinary(4),@retval), Source=@src, Description=@desc
	   RETURN
	END


-- If there are Servers , step into .....
IF @resultsCount > 0
	BEGIN
		SET @counter = 1
		DECLARE @ServersTbl table (ServerID int IDENTITY ,ServerName varchar(255))
		WHILE @counter <= @resultsCount
			BEGIN
				-- List SQL Server : Name by Name 
				SET @method = ''Item('' + convert(varchar(3),@counter) + '')''								
				EXEC @retval = sp_OAGetProperty @objectList ,@method , @result OUT
				
				-- Store data in the temp table
				INSERT INTO @ServersTbl (ServerName) SELECT @result
				
				-- move to next record
				SET @counter = @counter + 1
			END
	END
ELSE
	BEGIN
		SET @result = ''No Servers around you''
		INSERT INTO @ServersTbl (ServerName) SELECT @result
	END

-- kill object
EXEC @retval = sp_OADestroy @object
IF @retval <> 0
BEGIN
   EXEC sp_OAGetErrorInfo @object, @src OUT, @desc OUT 
   SELECT hr=convert(varbinary(4),@retval), Source=@src, Description=@desc
   RETURN
END


-- OK , List is inside ....
SELECT * FROM @ServersTbl
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_FailedLoginsPermissions]    Script Date: 10/07/2012 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_FailedLoginsPermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_FailedLoginsPermissions]
AS
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON 
SET ANSI_NULLS ON 
--
-- Schedulable Server-Side Trace Script
--
--
-- This script can be used to start, run and manage several traces.
-- The trace name is used as unique identifier to represent trace, so make it meaningful.
-- When this script runs, it deletes the existing trace with the same filename,
-- and creates a new trace, adding a date/time extension to the trace file name
-- Change the following as appropriate:
--
--	data columns
--	event classes
--	filters
-- 


-- -----------------------------------------------------------------------
-- Declare variables
-- -----------------------------------------------------------------------
DECLARE	@TRACE_NAME		VARCHAR(40)	-- Name of Trace(SlowQry, NdxUsed, etc.)
DECLARE	@FILE_PATH		VARCHAR(200)
DECLARE	@cmd			VARCHAR(1000)	-- Used for command or SQL strings
DECLARE	@RC			INT		-- Return status for stored procedures
DECLARE	@ON			BIT		-- Used as on bit fot set event
DECLARE	@ROWCOUNT		INT		-- Rows inserted into SQLTrace table
DECLARE @old_traceid	INT			-- TRACE ID of currently running trace queue
DECLARE @traceid 		INT		-- queue handle new running trace queue
DECLARE @date 			VARCHAR(19)	-- date component of file name
DECLARE	@FILE_NAME		NVARCHAR(245)
-- DECLARE	@OLD_FILE_NAME	NVARCHAR(245)
DECLARE @maxfilesize		BIGINT		-- Maximum trace file size - will rollover when reached
DECLARE @StopTime		datetime	-- Date/Time to stop the trace
-- 
-- User Settings
--

set	@TRACE_NAME	= ''FailedLoginsPermissions''
set	@FILE_PATH	= ''E:\Dexma\Support\trace''
set     @maxfilesize	= 10	-- in MB
set     @ON		= 1
SET	@StopTime	= NULL	-- Format to use:  ''2007-10-26 10:40:00.000''

-- -----------------------------------------------------------------------
-- Edit Parameters
-- -----------------------------------------------------------------------

IF @FILE_PATH LIKE ''%\''
	BEGIN
		PRINT ''Omit trailing \ from Path Name''
		SET @RC = 1
		goto error
	END
SET @CMD = ''DIR ''+@FILE_PATH

EXEC @RC = master.dbo.XP_CMDSHELL @CMD, no_output

IF @RC <> 0 
	BEGIN
		PRINT ''File Path not found''
		SET @RC = 1
		goto error
	END

-- -----------------------------------------------------------------------
-- Stop the trace queue if running
-- -----------------------------------------------------------------------
if exists	(
	select *
	FROM 	:: fn_trace_getinfo(default) 
	WHERE 	property = 2	-- trace file name
	AND	convert(varchar(200),Value)  LIKE ''%''+@TRACE_NAME+''%'')
BEGIN
	select 	@old_traceid = traceid  --,
--		@old_file_name = convert(nvarchar(245),value)
	FROM 	:: fn_trace_getinfo(default) 
	WHERE 	property = 2	-- trace file name
	AND	convert(varchar(200),Value)  LIKE ''%''+@TRACE_NAME+''%''
	EXEC @RC = sp_trace_setstatus @old_traceid, 0	-- stops specified trace
	IF @RC = 0  PRINT ''sp_trace_setstatus: Stopped Trace ID '' + convert( varchar(20),@old_traceid )
	IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
	IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
	IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
	IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory'' 
	IF @RC <> 0 GOTO ERROR

	EXEC sp_trace_setstatus @old_traceid, 2 -- delete specified trace

	IF @RC = 0  PRINT ''sp_trace_setstatus: Deleted Trace ID '' + convert( varchar(20),@old_traceid )
	IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
	IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
	IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
	IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory'' 
	IF @RC <> 0 GOTO ERROR
END



-- -----------------------------------------------------------------------
-- Build the trace file name (with date/time stamp)
-- -----------------------------------------------------------------------
select @date = convert(varchar(17), getdate(), 21)

select @date = REPLACE(@date,''-''  , '''')
select @date = REPLACE(@date,'':''  , '''')
select @date = REPLACE(@date,''.''  , '''')
select @date = REPLACE(@date,'' ''  ,'''')


select @file_name = @file_path 	+ ''\'' +	@trace_name + ''_'' + @@servername + ''_'' + @date 

print ''file name = '' + @file_name+''.trc''


-- -----------------------------------------------------------------------
-- Create trace
-- -----------------------------------------------------------------------


exec @rc = sp_trace_create 
	@TraceID output, 	--	Trace handle - needed for subsequent trace operations
	2, 			--	2 Indicates file rollover
	@FILE_NAME,		--	Full trace file name 
	@maxfilesize, 		--	Maximum trace file size before rollover
	@StopTime		--	Trace stop time

IF @RC = 0  PRINT ''sp_trace_create: Created Trace ID '' + convert( varchar(20),@old_traceid )
IF @RC = 1  PRINT ''sp_trace_create: - Unknown error'' 
IF @RC = 10 PRINT ''sp_trace_create: Invalid options''
IF @RC = 12 PRINT ''sp_trace_create: File not created'' 
IF @RC = 13 PRINT ''sp_trace_create: Out of memory'' 
IF @RC = 14 PRINT ''sp_trace_create: Invalid stop time''
IF @RC = 15 PRINT ''sp_trace_create: Invalid parameters''
IF @RC <> 0 GOTO ERROR



-- -----------------------------------------------------------------------
-- Set the events
-- -----------------------------------------------------------------------
exec sp_trace_setevent @TraceID, 162, 7, @on
exec sp_trace_setevent @TraceID, 162, 31, @on
exec sp_trace_setevent @TraceID, 162, 8, @on
exec sp_trace_setevent @TraceID, 162, 64, @on
exec sp_trace_setevent @TraceID, 162, 1, @on
exec sp_trace_setevent @TraceID, 162, 9, @on
exec sp_trace_setevent @TraceID, 162, 41, @on
exec sp_trace_setevent @TraceID, 162, 49, @on
exec sp_trace_setevent @TraceID, 162, 6, @on
exec sp_trace_setevent @TraceID, 162, 10, @on
exec sp_trace_setevent @TraceID, 162, 14, @on
exec sp_trace_setevent @TraceID, 162, 26, @on
exec sp_trace_setevent @TraceID, 162, 30, @on
exec sp_trace_setevent @TraceID, 162, 50, @on
exec sp_trace_setevent @TraceID, 162, 66, @on
exec sp_trace_setevent @TraceID, 162, 3, @on
exec sp_trace_setevent @TraceID, 162, 11, @on
exec sp_trace_setevent @TraceID, 162, 35, @on
exec sp_trace_setevent @TraceID, 162, 51, @on
exec sp_trace_setevent @TraceID, 162, 4, @on
exec sp_trace_setevent @TraceID, 162, 12, @on
exec sp_trace_setevent @TraceID, 162, 20, @on
exec sp_trace_setevent @TraceID, 162, 60, @on

exec sp_trace_setevent @TraceID, 20, 7, @on
exec sp_trace_setevent @TraceID, 20, 23, @on
exec sp_trace_setevent @TraceID, 20, 31, @on
exec sp_trace_setevent @TraceID, 20, 8, @on
exec sp_trace_setevent @TraceID, 20, 64, @on
exec sp_trace_setevent @TraceID, 20, 1, @on
exec sp_trace_setevent @TraceID, 20, 9, @on
exec sp_trace_setevent @TraceID, 20, 21, @on
exec sp_trace_setevent @TraceID, 20, 49, @on
exec sp_trace_setevent @TraceID, 20, 57, @on
exec sp_trace_setevent @TraceID, 20, 6, @on
exec sp_trace_setevent @TraceID, 20, 10, @on
exec sp_trace_setevent @TraceID, 20, 14, @on
exec sp_trace_setevent @TraceID, 20, 26, @on
exec sp_trace_setevent @TraceID, 20, 30, @on
exec sp_trace_setevent @TraceID, 20, 3, @on
exec sp_trace_setevent @TraceID, 20, 11, @on
exec sp_trace_setevent @TraceID, 20, 35, @on
exec sp_trace_setevent @TraceID, 20, 51, @on
exec sp_trace_setevent @TraceID, 20, 12, @on
exec sp_trace_setevent @TraceID, 20, 60, @on


-- -----------------------------------------------------------------------
-- Set filters 
-- -----------------------------------------------------------------------

--   ApplicationName NOT LIKE ''SQL Profiler''
exec sp_trace_setfilter @TraceID, 10, 0, 7,  N''SQL Server Profiler''

exec sp_trace_setfilter @TraceID, 31, 0, 0, 229
exec sp_trace_setfilter @TraceID, 31, 1, 0, 18456
exec sp_trace_setfilter @TraceID, 31, 1, 0, 916


-- -----------------------------------------------------------------------
-- Start the trace 
-- -----------------------------------------------------------------------

exec @RC = sp_trace_setstatus @TraceID, 1

IF @RC = 0  PRINT ''sp_trace_setstatus: Started Trace ID  '' + convert( varchar(20),@traceid )
IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory''

IF @RC = 0  PRINT ''To stop, run the following:''
IF @RC = 0  PRINT ''sp_trace_setstatus '' + convert( varchar(20),@traceid ) + '', 0''
IF @RC = 0  PRINT ''sp_trace_setstatus '' + convert( varchar(20),@traceid ) + '', 2''


ERROR:
select @rc


SET QUOTED_IDENTIFIER OFF 

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ForEachDB]    Script Date: 10/07/2012 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ForEachDB]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_ForEachDB]
   @command             NVARCHAR(MAX),
   @replace_character   NCHAR(1)       = N''?'',
   @print_dbname        BIT            = 0,
   @print_command_only  BIT            = 0,
   @suppress_quotename  BIT            = 0,
   @system_only         BIT            = NULL,
   @user_only           BIT            = NULL,
   @name_pattern        NVARCHAR(300)  = N''%'',
   @database_list       NVARCHAR(MAX)  = NULL,
   @recovery_model_desc NVARCHAR(120)  = NULL,
   @compatibility_level TINYINT        = NULL,
   @state_desc          NVARCHAR(120)  = N''ONLINE'',
   @is_read_only        BIT            = 0,
   @is_auto_close_on    BIT            = NULL,
   @is_auto_shrink_on   BIT            = NULL,
   @is_broker_enabled   BIT            = NULL
AS
BEGIN
   SET NOCOUNT ON;

   DECLARE
       @sql    NVARCHAR(MAX),
       @dblist NVARCHAR(MAX),
       @db     NVARCHAR(300),
       @i      INT;

   IF @database_list > N''''
   BEGIN
       ;WITH n(n) AS
       (
           SELECT ROW_NUMBER() OVER (ORDER BY s1.name) - 1
            FROM sys.objects AS s1
            CROSS JOIN sys.objects AS s2
       )
       SELECT @dblist = REPLACE(REPLACE(REPLACE(x,''</x><x>'','',''),
           ''</x>'',''''),''<x>'','''')
       FROM
       (
           SELECT DISTINCT x = ''N'''''' + LTRIM(RTRIM(SUBSTRING(
            @database_list, n,
            CHARINDEX('','', @database_list + '','', n) - n))) + ''''''''
            FROM n WHERE n <= LEN(@database_list)
            AND SUBSTRING('','' + @database_list, n, 1) = '',''
            FOR XML PATH('''')
       ) AS y(x);
   END

   CREATE TABLE #x(db NVARCHAR(300));

   SET @sql = N''SELECT name FROM sys.databases WHERE 1=1''
       + CASE WHEN @system_only = 1 THEN
           '' AND database_id IN (1,2,3,4)''
           ELSE '''' END
       + CASE WHEN @user_only = 1 THEN
           '' AND database_id NOT IN (1,2,3,4)''
           ELSE '''' END
       + CASE WHEN @name_pattern <> N''%'' THEN
           '' AND name LIKE N''''%'' + REPLACE(@name_pattern, '''''''', '''''''''''') + ''%''''''
           ELSE '''' END
       + CASE WHEN @dblist IS NOT NULL THEN
           '' AND name IN ('' + @dblist + '')''
           ELSE '''' END
       + CASE WHEN @recovery_model_desc IS NOT NULL THEN
           '' AND recovery_model_desc = N'''''' + @recovery_model_desc + ''''''''
           ELSE '''' END
       + CASE WHEN @compatibility_level IS NOT NULL THEN
           '' AND compatibility_level = '' + RTRIM(@compatibility_level)
           ELSE '''' END
       + CASE WHEN @state_desc IS NOT NULL THEN
           '' AND state_desc = N'''''' + @state_desc + ''''''''
           ELSE '''' END
       + CASE WHEN @is_read_only IS NOT NULL THEN
           '' AND is_read_only = '' + RTRIM(@is_read_only)
           ELSE '''' END
       + CASE WHEN @is_auto_close_on IS NOT NULL THEN
           '' AND is_auto_close_on = '' + RTRIM(@is_auto_close_on)
           ELSE '''' END
       + CASE WHEN @is_auto_shrink_on IS NOT NULL THEN
           '' AND is_auto_shrink_on = '' + RTRIM(@is_auto_shrink_on)
           ELSE '''' END
       + CASE WHEN @is_broker_enabled IS NOT NULL THEN
           '' AND is_broker_enabled = '' + RTRIM(@is_broker_enabled)
           ELSE '''' END;

   INSERT #x EXEC sp_executesql @sql;

   DECLARE c CURSOR
       LOCAL FORWARD_ONLY STATIC READ_ONLY
       FOR SELECT CASE WHEN @suppress_quotename = 1 THEN
              db
           ELSE
              QUOTENAME(db)
           END
       FROM #x ORDER BY db;

   OPEN c;

   FETCH NEXT FROM c INTO @db;

   WHILE @@FETCH_STATUS = 0
   BEGIN
       SET @sql = REPLACE(@command, @replace_character, @db);

       IF @print_command_only = 1
       BEGIN
           PRINT ''/* For '' + @db + '': */''
               + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10)
               + @sql
               + CHAR(13) + CHAR(10) + CHAR(13) + CHAR(10);
       END
       ELSE
       BEGIN
           IF @print_dbname = 1
           BEGIN
               PRINT ''/* '' + @db + '' */'';
           END

           EXEC sp_executesql @sql;
       END

       FETCH NEXT FROM c INTO @db;
   END

   CLOSE c;
   DEALLOCATE c;
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_FindTextInSP]    Script Date: 10/07/2012 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_FindTextInSP]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:    Antonin Foller, www.foller.cz
-- Create date: 2007-09-19
-- Description: Search a text in stored procedure source code.
-- @text - any text to find, search is done by like ''%text%''
-- @dbname - database where to search, 
--         - if omitted, all databases in the SQL server instance
-- =============================================


CREATE PROCEDURE [dbo].[dbm_FindTextInSP]
  @text varchar(250),
  @dbname varchar(64) = null
AS BEGIN
SET NOCOUNT ON;

if @dbname is null
  begin
    --enumerate all databases.
  DECLARE #db CURSOR FOR Select Name from master..sysdatabases
  declare @c_dbname varchar(64)

  OPEN #db FETCH #db INTO @c_dbname
  while @@FETCH_STATUS <> -1 --and @MyCount < 500
   begin
     execute dbm_FindTextInSP @text, @c_dbname
     FETCH #db INTO @c_dbname
   end  
  CLOSE #db DEALLOCATE #db
 end --if @dbname is null
else
 begin --@dbname is not null
  declare @sql varchar(250)
  --create the find like command
  select @sql = ''select '''''' + @dbname + '''''' as db, o.name,m.definition ''
  select @sql = @sql + '' from ''+@dbname+''.sys.sql_modules m ''
  select @sql = @sql + '' inner join ''+@dbname+''..sysobjects o on m.object_id=o.id''
  select @sql = @sql + '' where [definition] like ''''%''+@text+''%''''''
  execute (@sql)
  --print @sql
 end --@dbname is not null
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SelectDailyTrace]    Script Date: 10/07/2012 15:10:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SelectDailyTrace]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[usp_SelectDailyTrace]
-- WITH EXECUTE AS ''HOME_OFFICE\dexprosql''
as
SET NOCOUNT ON;

DECLARE @sql varchar(8000);
DECLARE @Srvr sysname = LTRIM(RTRIM(@@SERVERNAME))
DECLARE @date VARCHAR(19)

select @date = convert(varchar(17), getdate()-1, 102)
select @date = REPLACE(@date,''-''  , '''')
select @date = REPLACE(@date,'':''  , '''')
select @date = REPLACE(@date,''.''  , '''')
select @date = REPLACE(@date,'' ''  ,'''')
select @date = @date + ''0000''
SELECT @sql = ''SELECT TextData,BinaryData,DatabaseID,TransactionID,LineNumber,NTUserName,NTDomainName,HostName,ClientProcessID,ApplicationName,LoginName,SPID,Duration,StartTime,EndTime,Reads,Writes,CPU,Permissions,Severity,EventSubClass,ObjectID,Success,IndexID,IntegerData,ServerName,EventClass,ObjectType,NestLevel,State,Error,Mode,Handle,ObjectName,DatabaseName,FileName,OwnerName,RoleName,TargetUserName,DBUserName,LoginSid,TargetLoginName,TargetLoginSid,ColumnPermissions,LinkedServerName,ProviderName,MethodName,RowCounts,RequestID,XactSequence,EventSequence,BigintData1,BigintData2,GUID,IntegerData2,ObjectID2,Type,OwnerID,ParentName,IsSystem,Offset,SourceDatabaseID,SqlHandle,SessionLoginName,PlanHandle,GroupID
from ::fn_trace_gettable(''''E:\Dexma\Support\Trace\DailyTrace_'' + @Srvr + ''_'' + @date + ''.trc'''',0)''
EXEC (@sql)
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_TableDate]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udf_TableDate]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'create function [dbo].[udf_TableDate]
(
	@FIRST_DATE		datetime,
	@LAST_DATE		datetime
)
/*
Function: dbo.udf_TableDate

This function returns a date table containing all dates
from @FIRST_DATE through @LAST_DATE inclusive.
@FIRST_DATE must be less than or equal to @LAST_DATE.
The valid date range is 1754-01-01 through 9997-12-31.
If any input parameters are invalid, the fuction will produce
an error.

The table returned by udf_TableDate contains a date and
columns with many calculated attributes of that date.
It is designed to make it convenient to get various commonly
needed date attributes without having to program and test
the same logic in many applications.

udf_TableDate is primarily intended to load a permanant
date table, but it can be used directly by an application
when the date range needed falls outside the range loaded
in a permanant table.

If udf_TableDate is used to load a permanant table, the create
table code can be copied from this function.  For a permanent
date table, most columns should be indexed to produce the
best application performance.


Column Descriptions
------------------------------------------------------------------


DATE_ID               
	Unique ID = Days since 1753-01-01

DATE                            
	Date at Midnight(00:00:00.000)

NEXT_DAY_DATE                   
	Next day after DATE at Midnight(00:00:00.000)
	Intended to be used in queries against columns
	containing datetime values (1998-12-13 14:35:16)
	that need to join to a DATE.
	Example:

	from
		MyTable a
		join
		DATE b
		on	a.DateTimeCol >= b. DATE	and
			a.DateTimeCol < b.NEXT_DAY_DATE

YEAR                            
	Year number in format YYYY, Example = 2005

YEAR_QUARTER                    
	Year and Quarter number in format YYYYQ, Example = 20052

YEAR_MONTH                      
	Year and Month number in format YYYYMM, Example = 200511

YEAR_DAY_OF_YEAR                
	Year and Day of Year number in format YYYYDDD, Example = 2005364

QUARTER                         
	Quarter number in format Q, Example = 4

MONTH                           
	Month number in format MM, Example = 11

DAY_OF_YEAR                     
	Day of Year number in format DDD, Example = 362

DAY_OF_MONTH                    
	Day of Month number in format DD, Example = 31

DAY_OF_WEEK                     
	Day of week number, Sun=1, Mon=2, Tue=3, Wed=4, Thu=5, Fri=6, Sat=7

YEAR_NAME                       
	Year name text in format YYYY, Example = 2005

YEAR_QUARTER_NAME               
	Year Quarter name text in format YYYY QQ, Example = 2005 Q3

YEAR_MONTH_NAME                 
	Year Month name text in format YYYY MMM, Example = 2005 Mar

YEAR_MONTH_NAME_LONG            
	Year Month long name text in format YYYY MMMMMMMMM,
	Example = 2005 September

QUARTER_NAME                    
	Quarter name text in format QQ, Example = Q1

MONTH_NAME                      
	Month name text in format MMM, Example = Mar

MONTH_NAME_LONG                 
	Month long name text in format MMMMMMMMM, Example = September

WEEKDAY_NAME                    
	Weekday name text in format DDD, Example = Tue

WEEKDAY_NAME_LONG               
	Weekday long name text in format DDDDDDDDD, Example = Wednesday

START_OF_YEAR_DATE              
	First Day of Year that DATE is in

END_OF_YEAR_DATE                
	Last Day of Year that DATE is in

START_OF_QUARTER_DATE           
	First Day of Quarter that DATE is in

END_OF_QUARTER_DATE             
	Last Day of Quarter that DATE is in

START_OF_MONTH_DATE             
	First Day of Month that DATE is in

END_OF_MONTH_DATE               
	Last Day of Month that DATE is in

*** Start and End of week columns allow selections by week
*** for any week start date needed.

START_OF_WEEK_STARTING_SUN_DATE 
	First Day of Week starting Sunday that DATE is in

END_OF_WEEK_STARTING_SUN_DATE   
	Last Day of Week starting Sunday that DATE is in

START_OF_WEEK_STARTING_MON_DATE 
	First Day of Week starting Monday that DATE is in

END_OF_WEEK_STARTING_MON_DATE   
	Last Day of Week starting Monday that DATE is in

START_OF_WEEK_STARTING_TUE_DATE 
	First Day of Week starting Tuesday that DATE is in

END_OF_WEEK_STARTING_TUE_DATE   
	Last Day of Week starting Tuesday that DATE is in

START_OF_WEEK_STARTING_WED_DATE 
	First Day of Week starting Wednesday that DATE is in

END_OF_WEEK_STARTING_WED_DATE   
	Last Day of Week starting Wednesday that DATE is in

START_OF_WEEK_STARTING_THU_DATE 
	First Day of Week starting Thursday that DATE is in

END_OF_WEEK_STARTING_THU_DATE   
	Last Day of Week starting Thursday that DATE is in

START_OF_WEEK_STARTING_FRI_DATE 
	First Day of Week starting Friday that DATE is in

END_OF_WEEK_STARTING_FRI_DATE   
	Last Day of Week starting Friday that DATE is in

START_OF_WEEK_STARTING_SAT_DATE 
	First Day of Week starting Saturday that DATE is in

END_OF_WEEK_STARTING_SAT_DATE   
	Last Day of Week starting Saturday that DATE is in

*** Sequence No columns are intended to allow easy offsets by
*** Quarter, Month, or Week for applications that need to look at
*** Last or Next Quarter, Month, or Week.  Thay can also be used to
*** generate dynamic cross tab results by Quarter, Month, or Week.

QUARTER_SEQ_NO                  
	Sequential Quarter number as offset from Quarter starting 1753/01/01

MONTH_SEQ_NO                    
	Sequential Month number as offset from Month starting 1753/01/01

WEEK_STARTING_SUN_SEQ_NO        
	Sequential Week number as offset from Week starting Sunday, 1753/01/07

WEEK_STARTING_MON_SEQ_NO        
	Sequential Week number as offset from Week starting Monday, 1753/01/01

WEEK_STARTING_TUE_SEQ_NO        
	Sequential Week number as offset from Week starting Tuesday, 1753/01/02

WEEK_STARTING_WED_SEQ_NO        
	Sequential Week number as offset from Week starting Wednesday, 1753/01/03

WEEK_STARTING_THU_SEQ_NO        
	Sequential Week number as offset from Week starting Thursday, 1753/01/04

WEEK_STARTING_FRI_SEQ_NO        
	Sequential Week number as offset from Week starting Friday, 1753/01/05

WEEK_STARTING_SAT_SEQ_NO        
	Sequential Week number as offset from Week starting Saturday, 1753/01/06

JULIAN_DATE                     
	Julian Date number as offset from noon on January 1, 4713 BCE
	to noon on day of DATE in system of Joseph Scaliger

MODIFIED_JULIAN_DATE            
	Modified Julian Date number as offset from midnight(00:00:00.000) on
	1858/11/17 to midnight(00:00:00.000) on day of DATE

ISO_DATE                        
	ISO 8601 Date in format YYYY-MM-DD, Example = 2004-02-29

ISO_YEAR_WEEK_NO                
	ISO 8601 year and week in format YYYYWW, Example = 200403

ISO_WEEK_NO                     
	ISO 8601 week of year in format WW, Example = 52

ISO_DAY_OF_WEEK                 
	ISO 8601 Day of week number, 
	Mon=1, Tue=2, Wed=3, Thu=4, Fri=5, Sat=6, Sun=7

ISO_YEAR_WEEK_NAME              
	ISO 8601 year and week in format YYYY-WNN, Example = 2004-W52

ISO_YEAR_WEEK_DAY_OF_WEEK_NAME  
	ISO 8601 year, week, and day of week in format YYYY-WNN-D,
	Example = 2004-W52-2

DATE_FORMAT_YYYY_MM_DD          
	Text date in format YYYY/MM/DD, Example = 2004/02/29

DATE_FORMAT_YYYY_M_D            
	Text date in format YYYY/M/D, Example = 2004/2/9

DATE_FORMAT_MM_DD_YYYY          
	Text date in format MM/DD/YYYY, Example = 06/05/2004

DATE_FORMAT_M_D_YYYY            
	Text date in format M/D/YYYY, Example = 6/5/2004

DATE_FORMAT_MMM_D_YYYY          
	Text date in format MMM D, YYYY, Example = Jan 4, 2006

DATE_FORMAT_MMMMMMMMM_D_YYYY    
	Text date in format MMMMMMMMM D, YYYY, Example = September 3, 2004

DATE_FORMAT_MM_DD_YY            
	Text date in format MM/DD/YY, Example = 06/05/97

DATE_FORMAT_M_D_YY              
	Text date in format M/D/YY, Example = 6/5/97

*/

returns  @DATE table 
(
	[DATE_ID]				[int]		not null primary key clustered,
	[DATE]					[datetime]	not null ,
	[NEXT_DAY_DATE]				[datetime]	not null ,
	[YEAR]					[smallint]	not null ,
	[YEAR_QUARTER]				[int]	not null ,
	[YEAR_MONTH]				[int]		not null ,
	[YEAR_DAY_OF_YEAR]			[int]		not null ,
	[QUARTER]				[tinyint]	not null ,
	[MONTH]					[tinyint]	not null ,
	[DAY_OF_YEAR]				[smallint]	not null ,
	[DAY_OF_MONTH]				[smallint]	not null ,
	[DAY_OF_WEEK]				[tinyint]	not null ,

	[YEAR_NAME]				[varchar] (4)	not null ,
	[YEAR_QUARTER_NAME]			[varchar] (7)	not null ,
	[YEAR_MONTH_NAME]			[varchar] (8)	not null ,
	[YEAR_MONTH_NAME_LONG]			[varchar] (14)	not null ,
	[QUARTER_NAME]				[varchar] (2)	not null ,
	[MONTH_NAME]				[varchar] (3)	not null ,
	[MONTH_NAME_LONG]			[varchar] (9)	not null ,
	[WEEKDAY_NAME]				[varchar] (3)	not null ,
	[WEEKDAY_NAME_LONG]			[varchar] (9)	not null ,

	[START_OF_YEAR_DATE]			[datetime]	not null ,
	[END_OF_YEAR_DATE]			[datetime]	not null ,
	[START_OF_QUARTER_DATE]			[datetime]	not null ,
	[END_OF_QUARTER_DATE]			[datetime]	not null ,
	[START_OF_MONTH_DATE]			[datetime]	not null ,
	[END_OF_MONTH_DATE]			[datetime]	not null ,

	[START_OF_WEEK_STARTING_SUN_DATE]	[datetime]	not null ,
	[END_OF_WEEK_STARTING_SUN_DATE]		[datetime]	not null ,
	[START_OF_WEEK_STARTING_MON_DATE]	[datetime]	not null ,
	[END_OF_WEEK_STARTING_MON_DATE]		[datetime]	not null ,
	[START_OF_WEEK_STARTING_TUE_DATE]	[datetime]	not null ,
	[END_OF_WEEK_STARTING_TUE_DATE]		[datetime]	not null ,
	[START_OF_WEEK_STARTING_WED_DATE]	[datetime]	not null ,
	[END_OF_WEEK_STARTING_WED_DATE]		[datetime]	not null ,
	[START_OF_WEEK_STARTING_THU_DATE]	[datetime]	not null ,
	[END_OF_WEEK_STARTING_THU_DATE]		[datetime]	not null ,
	[START_OF_WEEK_STARTING_FRI_DATE]	[datetime]	not null ,
	[END_OF_WEEK_STARTING_FRI_DATE]		[datetime]	not null ,
	[START_OF_WEEK_STARTING_SAT_DATE]	[datetime]	not null ,
	[END_OF_WEEK_STARTING_SAT_DATE]		[datetime]	not null ,

	[QUARTER_SEQ_NO]			[int]		not null ,
	[MONTH_SEQ_NO]				[int]		not null ,

	[WEEK_STARTING_SUN_SEQ_NO]		[int]		not null ,
	[WEEK_STARTING_MON_SEQ_NO]		[int]		not null ,
	[WEEK_STARTING_TUE_SEQ_NO]		[int]		not null ,
	[WEEK_STARTING_WED_SEQ_NO]		[int]		not null ,
	[WEEK_STARTING_THU_SEQ_NO]		[int]		not null ,
	[WEEK_STARTING_FRI_SEQ_NO]		[int]		not null ,
	[WEEK_STARTING_SAT_SEQ_NO]		[int]		not null ,

	[JULIAN_DATE]				[int]		not null ,
	[MODIFIED_JULIAN_DATE]			[int]		not null ,

	[ISO_DATE]				[varchar](10)	not null ,
	[ISO_YEAR_WEEK_NO]			[int]		not null ,
	[ISO_WEEK_NO]				[smallint]	not null ,
	[ISO_DAY_OF_WEEK]			[tinyint]	not null ,
	[ISO_YEAR_WEEK_NAME]			[varchar](8)	not null ,
	[ISO_YEAR_WEEK_DAY_OF_WEEK_NAME]	[varchar](10)	not null ,

	[DATE_FORMAT_YYYY_MM_DD]		[varchar](10)	not null ,
	[DATE_FORMAT_YYYY_M_D]			[varchar](10)	not null ,
	[DATE_FORMAT_MM_DD_YYYY]		[varchar](10)	not null ,
	[DATE_FORMAT_M_D_YYYY]			[varchar](10)	not null ,
	[DATE_FORMAT_MMM_D_YYYY]		[varchar](12)	not null ,
	[DATE_FORMAT_MMMMMMMMM_D_YYYY]		[varchar](18)	not null ,
	[DATE_FORMAT_MM_DD_YY]			[varchar](8)	not null ,
	[DATE_FORMAT_M_D_YY]			[varchar](8)	not null 
) 
as
begin
declare @cr			varchar(2)
select @cr			= char(13)+Char(10)
declare @ErrorMessage		varchar(400)
declare @START_DATE		datetime
declare @END_DATE		datetime
declare @LOW_DATE	datetime

declare	@start_no	int
declare	@end_no	int

-- Verify @FIRST_DATE is not null 
if @FIRST_DATE is null
	begin
	select @ErrorMessage =
		''@FIRST_DATE cannot be null''
	goto Error_Exit
	end

-- Verify @LAST_DATE is not null 
if @LAST_DATE is null
	begin
	select @ErrorMessage =
		''@LAST_DATE cannot be null''
	goto Error_Exit
	end

-- Verify @FIRST_DATE is not before 1754-01-01
IF  @FIRST_DATE < ''17540101''	begin
	select @ErrorMessage =
		''@FIRST_DATE cannot before 1754-01-01''+
		'', @FIRST_DATE = ''+
		isnull(convert(varchar(40),@FIRST_DATE,121),''NULL'')
	goto Error_Exit
	end

-- Verify @LAST_DATE is not after 9997-12-31
IF  @LAST_DATE > ''99971231''	begin
	select @ErrorMessage =
		''@LAST_DATE cannot be after 9997-12-31''+
		'', @LAST_DATE = ''+
		isnull(convert(varchar(40),@LAST_DATE,121),''NULL'')
	goto Error_Exit
	end

-- Verify @FIRST_DATE is not after @LAST_DATE
if @FIRST_DATE > @LAST_DATE
	begin
	select @ErrorMessage =
		''@FIRST_DATE cannot be after @LAST_DATE''+
		'', @FIRST_DATE = ''+
		isnull(convert(varchar(40),@FIRST_DATE,121),''NULL'')+
		'', @LAST_DATE = ''+
		isnull(convert(varchar(40),@LAST_DATE,121),''NULL'')
	goto Error_Exit
	end

-- Set @START_DATE = @FIRST_DATE at midnight
select @START_DATE	= dateadd(dd,datediff(dd,0,@FIRST_DATE),0)
-- Set @END_DATE = @LAST_DATE at midnight
select @END_DATE	= dateadd(dd,datediff(dd,0,@LAST_DATE),0)
-- Set @LOW_DATE = earliest possible SQL Server datetime
select @LOW_DATE	= convert(datetime,''17530101'')

-- Find the number of day from 1753-01-01 to @START_DATE and @END_DATE
select	@start_no	= datediff(dd,@LOW_DATE,@START_DATE) ,
	@end_no	= datediff(dd,@LOW_DATE,@END_DATE)

-- Declare number tables
declare @num1 table (NUMBER int not null primary key clustered)
declare @num2 table (NUMBER int not null primary key clustered)
declare @num3 table (NUMBER int not null primary key clustered)

-- Declare table of ISO Week ranges
declare @ISO_WEEK table
(
	[ISO_WEEK_YEAR] 		int		not null primary key clustered,
	[ISO_WEEK_YEAR_START_DATE]	datetime	not null,
	[ISO_WEEK_YEAR_END_DATE]	Datetime	not null
)

-- Find rows needed in number tables
declare	@rows_needed		int
declare	@rows_needed_root	int
select	@rows_needed		= @end_no - @start_no + 1
select  @rows_needed		=
		case
		when @rows_needed < 10
		then 10
		else @rows_needed
		end
select	@rows_needed_root	= convert(int,ceiling(sqrt(@rows_needed)))

-- Load number 0 to 16
insert into @num1 (NUMBER)
select NUMBER = 0 union all select  1 union all select  2 union all
select          3 union all select  4 union all select  5 union all
select          6 union all select  7 union all select  8 union all
select          9 union all select 10 union all select 11 union all
select         12 union all select 13 union all select 14 union all
select         15
order by
	1
-- Load table with numbers zero thru square root of the number of rows needed +1
insert into @num2 (NUMBER)
select
	NUMBER = a.NUMBER+(16*b.NUMBER)+(256*c.NUMBER)
from
	@num1 a cross join @num1 b cross join @num1 c
where
	a.NUMBER+(16*b.NUMBER)+(256*c.NUMBER) <
	@rows_needed_root
order by
	1

-- Load table with the number of rows needed for the date range
insert into @num3 (NUMBER)
select
	NUMBER = a.NUMBER+(@rows_needed_root*b.NUMBER)
from
	@num2 a
	cross join
	@num2 b
where
	a.NUMBER+(@rows_needed_root*b.NUMBER) < @rows_needed
order by
	1

declare	@iso_start_year	int
declare	@iso_end_year	int

select	@iso_start_year	= datepart(year,dateadd(year,-1,@start_date))
select	@iso_end_year	= datepart(year,dateadd(year,1,@end_date))

-- Load table with start and end dates for ISO week years
insert into @ISO_WEEK
	(
	[ISO_WEEK_YEAR],
	[ISO_WEEK_YEAR_START_DATE],
	[ISO_WEEK_YEAR_END_DATE]
	)
select
	[ISO_WEEK_YEAR] = a.NUMBER,
	[0ISO_WEEK_YEAR_START_DATE]	=
		dateadd(dd,(datediff(dd,@LOW_DATE,
		dateadd(day,3,dateadd(year,a.[NUMBER]-1900,0))
		)/7)*7,@LOW_DATE),
	[ISO_WEEK_YEAR_END_DATE]	=
		dateadd(dd,-1,dateadd(dd,(datediff(dd,@LOW_DATE,
		dateadd(day,3,dateadd(year,a.[NUMBER]+1-1900,0))
		)/7)*7,@LOW_DATE))
from
	(
	select
		NUMBER = NUMBER+@iso_start_year
	from
		@num3
	where
		NUMBER+@iso_start_year <= @iso_end_year
	) a
order by
	a.NUMBER

-- Load Date table
insert into @DATE
select
	[DATE_ID]			= a.[DATE_ID] ,
	[DATE]				= a.[DATE] ,

	[NEXT_DAY_DATE]			=
		dateadd(day,1,a.[DATE]) ,

	[YEAR]			=
		datepart(year,a.[DATE]) ,
	[YEAR_QUARTER]		=
		(10*datepart(year,a.[DATE]))+datepart(quarter,a.[DATE]) ,

	[YEAR_MONTH]		=
		(100*datepart(year,a.[DATE]))+datepart(month,a.[DATE]) ,
	[YEAR_DAY_OF_YEAR]		=
		(1000*datepart(year,a.[DATE]))+
		datediff(dd,dateadd(yy,datediff(yy,0,a.[DATE]),0),a.[DATE])+1 ,
	[QUARTER]		=
		datepart(quarter,a.[DATE]) ,
	[MONTH]		=
		datepart(month,a.[DATE]) ,
	[DAY_OF_YEAR]			=
		datediff(dd,dateadd(yy,datediff(yy,0,a.[DATE]),0),a.[DATE])+1 ,
	[DAY_OF_MONTH]			=
		datepart(day,a.[DATE]) ,
	[DAY_OF_WEEK]		=
		-- Sunday = 1, Monday = 2, ,,,Saturday = 7
		(datediff(dd,''17530107'',a.[DATE])%7)+1  ,
	[YEAR_NAME]		=
		datename(year,a.[DATE]) ,
	[YEAR_QUARTER_NAME]	=
		datename(year,a.[DATE])+'' Q''+datename(quarter,a.[DATE]) ,
	[YEAR_MONTH_NAME]	=
		datename(year,a.[DATE])+'' ''+left(datename(month,a.[DATE]),3) ,
	[YEAR_MONTH_NAME_LONG]	=
		datename(year,a.[DATE])+'' ''+datename(month,a.[DATE]) ,
	[QUARTER_NAME]		=
		''Q''+datename(quarter,a.[DATE]) ,
	[MONTH_NAME]		=
		left(datename(month,a.[DATE]),3) ,
	[MONTH_NAME_LONG]	=
		datename(month,a.[DATE]) ,
	[WEEKDAY_NAME]		=
		left(datename(weekday,a.[DATE]),3) ,
	[WEEKDAY_NAME_LONG]	=
		datename(weekday,a.[DATE]),

	[START_OF_YEAR_DATE]	=
		dateadd(year,datediff(year,0,a.[DATE]),0) ,
	[END_OF_YEAR_DATE]	=
		dateadd(day,-1,dateadd(year,datediff(year,0,a.[DATE])+1,0)) ,

	[START_OF_QUARTER_DATE]	=
		dateadd(quarter,datediff(quarter,0,a.[DATE]),0) ,
	[END_OF_QUARTER_DATE]	=
		dateadd(day,-1,dateadd(quarter,datediff(quarter,0,a.[DATE])+1,0)) ,

	[START_OF_MONTH_DATE]	=
		dateadd(month,datediff(month,0,a.[DATE]),0) ,
	[END_OF_MONTH_DATE]	=
		dateadd(day,-1,dateadd(month,datediff(month,0,a.[DATE])+1,0)),

	[START_OF_WEEK_STARTING_SUN_DATE]	=
		dateadd(dd,(datediff(dd,''17530107'',a.[DATE])/7)*7,''17530107''),
	[END_OF_WEEK_STARTING_SUN_DATE]		=
		dateadd(dd,((datediff(dd,''17530107'',a.[DATE])/7)*7)+6,''17530107''),

	[START_OF_WEEK_STARTING_MON_DATE]	=
		dateadd(dd,(datediff(dd,''17530101'',a.[DATE])/7)*7,''17530101''),
	[END_OF_WEEK_STARTING_MON_DATE]		=
		dateadd(dd,((datediff(dd,''17530101'',a.[DATE])/7)*7)+6,''17530101''),

	[START_OF_WEEK_STARTING_TUE_DATE]	=
		dateadd(dd,(datediff(dd,''17530102'',a.[DATE])/7)*7,''17530102''),
	[END_OF_WEEK_STARTING_TUE_DATE]		=
		dateadd(dd,((datediff(dd,''17530102'',a.[DATE])/7)*7)+6,''17530102''),

	[START_OF_WEEK_STARTING_WED_DATE]	=
		dateadd(dd,(datediff(dd,''17530103'',a.[DATE])/7)*7,''17530103''),
	[END_OF_WEEK_STARTING_WED_DATE]		=
		dateadd(dd,((datediff(dd,''17530103'',a.[DATE])/7)*7)+6,''17530103''),

	[START_OF_WEEK_STARTING_THU_DATE]	=
		dateadd(dd,(datediff(dd,''17530104'',a.[DATE])/7)*7,''17530104''),
	[END_OF_WEEK_STARTING_THU_DATE]		=
		dateadd(dd,((datediff(dd,''17530104'',a.[DATE])/7)*7)+6,''17530104''),

	[START_OF_WEEK_STARTING_FRI_DATE]	=
		dateadd(dd,(datediff(dd,''17530105'',a.[DATE])/7)*7,''17530105''),
	[END_OF_WEEK_STARTING_FRI_DATE]		=
		dateadd(dd,((datediff(dd,''17530105'',a.[DATE])/7)*7)+6,''17530105''),

	[START_OF_WEEK_STARTING_SAT_DATE]	=
		dateadd(dd,(datediff(dd,''17530106'',a.[DATE])/7)*7,''17530106''),
	[END_OF_WEEK_STARTING_SAT_DATE]		=
		dateadd(dd,((datediff(dd,''17530106'',a.[DATE])/7)*7)+6,''17530106''),

	[QUARTER_SEQ_NO]			= 
		datediff(quarter,@LOW_DATE,a.[DATE]),
	[MONTH_SEQ_NO]				=
		datediff(month,@LOW_DATE,a.[DATE]),

	[WEEK_STARTING_SUN_SEQ_NO]		=
		datediff(day,''17530107'',a.[DATE])/7,
	[WEEK_STARTING_MON_SEQ_NO]		=
		datediff(day,''17530101'',a.[DATE])/7,
	[WEEK_STARTING_TUE_SEQ_NO]		=
		datediff(day,''17530102'',a.[DATE])/7,
	[WEEK_STARTING_WED_SEQ_NO]		=
		datediff(day,''17530103'',a.[DATE])/7,
	[WEEK_STARTING_THU_SEQ_NO]		=
		datediff(day,''17530104'',a.[DATE])/7,
	[WEEK_STARTING_FRI_SEQ_NO]		=
		datediff(day,''17530105'',a.[DATE])/7,
	[WEEK_STARTING_SAT_SEQ_NO]		=
		datediff(day,''17530106'',a.[DATE])/7,

	[JULIAN_DATE]			=
		datediff(day,@LOW_DATE,a.[DATE])+2361331,
	[MODIFIED_JULIAN_DATE]		=
		datediff(day,''18581117'',a.[DATE]),
--/*

	[ISO_DATE]		=
		replace(convert(char(10),a.[DATE],111),''/'',''-'') ,

	[ISO_YEAR_WEEK_NO]		=
		(100*b.[ISO_WEEK_YEAR])+
		(datediff(dd,b.[ISO_WEEK_YEAR_START_DATE],a.[DATE])/7)+1 ,

	[ISO_WEEK_NO]		=
		(datediff(dd,b.[ISO_WEEK_YEAR_START_DATE],a.[DATE])/7)+1 ,

	[ISO_DAY_OF_WEEK]		=
		-- Sunday = 1, Monday = 2, ,,,Saturday = 7
		(datediff(dd,@LOW_DATE,a.[DATE])%7)+1  ,

	[ISO_YEAR_WEEK_NAME]		=
		convert(varchar(4),b.[ISO_WEEK_YEAR])+''-W''+
		right(''00''+convert(varchar(2),(datediff(dd,b.[ISO_WEEK_YEAR_START_DATE],a.[DATE])/7)+1),2) ,

	[ISO_YEAR_WEEK_DAY_OF_WEEK_NAME]		=
		convert(varchar(4),b.[ISO_WEEK_YEAR])+''-W''+
		right(''00''+convert(varchar(2),(datediff(dd,b.[ISO_WEEK_YEAR_START_DATE],a.[DATE])/7)+1),2) +
		''-''+convert(varchar(1),(datediff(dd,@LOW_DATE,a.[DATE])%7)+1) ,
--*/
	[DATE_FORMAT_YYYY_MM_DD]		=
		convert(char(10),a.[DATE],111) ,
	[DATE_FORMAT_YYYY_M_D]		= 
		convert(varchar(10),
		convert(varchar(4),year(a.[DATE]))+''/''+
		convert(varchar(2),day(a.[DATE]))+''/''+
		convert(varchar(2),month(a.[DATE]))),
	[DATE_FORMAT_MM_DD_YYYY]		= 
		convert(char(10),a.[DATE],101) ,
	[DATE_FORMAT_M_D_YYYY]		= 
		convert(varchar(10),
		convert(varchar(2),month(a.[DATE]))+''/''+
		convert(varchar(2),day(a.[DATE]))+''/''+
		convert(varchar(4),year(a.[DATE]))),
	[DATE_FORMAT_MMM_D_YYYY]		= 
		convert(varchar(12),
		left(datename(month,a.[DATE]),3)+'' ''+
		convert(varchar(2),day(a.[DATE]))+'', ''+
		convert(varchar(4),year(a.[DATE]))),
	[DATE_FORMAT_MMMMMMMMM_D_YYYY]	= 
		convert(varchar(18),
		datename(month,a.[DATE])+'' ''+
		convert(varchar(2),day(a.[DATE]))+'', ''+
		convert(varchar(4),year(a.[DATE]))),
	[DATE_FORMAT_MM_DD_YY]		=
		convert(char(8),a.[DATE],1) ,
	[DATE_FORMAT_M_D_YY]		= 
		convert(varchar(8),
		convert(varchar(2),month(a.[DATE]))+''/''+
		convert(varchar(2),day(a.[DATE]))+''/''+
		right(convert(varchar(4),year(a.[DATE])),2))
from
	(
	-- Derived table is all dates needed for date range
	select	top 100 percent
		[DATE_ID]	= aa.[NUMBER],
		[DATE]		=
			dateadd(dd,aa.[NUMBER],@LOW_DATE)
	from
		(
		select
			NUMBER = NUMBER+@start_no 
		from
			@num3
		where
			NUMBER+@start_no <= @end_no
		) aa
	order by
		aa.[NUMBER]
	) a
	join
	-- Match each date to the proper ISO week year
	@ISO_WEEK b
	on a.[DATE] between 
		b.[ISO_WEEK_YEAR_START_DATE] and 
		b.[ISO_WEEK_YEAR_END_DATE]
order by
	a.[DATE_ID]

return

Error_Exit:

-- Return a pesudo error message by trying to
-- convert an error message string to an int.
-- This method is used because the error displays
-- the string it was trying to convert, and so the
-- calling application sees a formatted error message.

declare @error int

set @error = convert(int,@cr+@cr+
''*******************************************************************''+@cr+
''* Error in function udf_TableDate:''+@cr+''* ''+
isnull(@ErrorMessage,''Unknown Error'')+@cr+
''*******************************************************************''+@cr+@cr)

return

end


' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[udf_ConvertBytes]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udf_ConvertBytes]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'-- =============================================
-- Author:      Number2 (John Nelson) - http://number2blog.com
-- Create date: 2009-07-02
-- Description: Convert bytes from one byte-based unit of measure
--              (Bytes, KB, MB, GB, TB, PB, EB, ZB, YB, BB, Geopbytes)
--              to any other byte-based unit of measure in human-
--              readable format...meaning the output is a number
--              followed by a UOM, not just a number.
--              example: 21.409023 GB
-- INPUT: @InputNumber - Decimal(38,7)
--        @InputUOM - VARCHAR(11)
--        @OutputUOM - VARCHAR(11)
--
-- OUTPUT: VARCHAR(64)
--
--
--AND TEST IT TO MAKE SURE IT WORKS (CONVERT THE DISK SIZE MB TO GB)
--SELECT
--   ResourceID,
--   dbo.udf_ConvertBytes(Size0,''MB'',''GB'') AS Size
--FROM
--   dbo.v_GS_Logical_Disk
--WHERE
--   Name0 = ''C:''
-- =============================================
CREATE FUNCTION [dbo].[udf_ConvertBytes]
(
   @InputNumber   DECIMAL(38,7),
   @InputUOM      VARCHAR(11) = ''Bytes'',
   @OutputUOM     VARCHAR(11) = ''Gigabytes''
)
RETURNS VARCHAR(64)
WITH SCHEMABINDING
AS
BEGIN
   DECLARE @Result VARCHAR(64);
  
   DECLARE @InputMultiplier DECIMAL(38,0);
   DECLARE @OutputDivisor DECIMAL(38,0);
   DECLARE @OutputSuffix VARCHAR(11);

SELECT
   @InputMultiplier = 
      CASE @InputUOM
         WHEN ''Bytes''         THEN 1
         WHEN ''Byte''          THEN 1
         WHEN ''B''             THEN 1
         WHEN ''Kilobytes''     THEN 1024
         WHEN ''Kilobyte''      THEN 1024
         WHEN ''KB''            THEN 1024
         WHEN ''Megabytes''     THEN 1048576
         WHEN ''Megabyte''      THEN 1048576
         WHEN ''MB''            THEN 1048576
         WHEN ''Gigabytes''     THEN 1073741824
         WHEN ''Gigabyte''      THEN 1073741824
         WHEN ''GB''            THEN 1073741824
         WHEN ''Terabytes''     THEN 1099511627776
         WHEN ''Terabyte''      THEN 1099511627776
         WHEN ''TB''            THEN 1099511627776
         WHEN ''Petabytes''     THEN 1125899906842624
         WHEN ''Petabyte''      THEN 1125899906842624
         WHEN ''PB''            THEN 1125899906842624
         WHEN ''Exabytes''      THEN 1152921504606846976
         WHEN ''Exabyte''       THEN 1152921504606846976
         WHEN ''EB''            THEN 1152921504606846976
         WHEN ''Zettabytes''    THEN 1180591620717411303424
         WHEN ''Zettabyte''     THEN 1180591620717411303424
         WHEN ''ZB''            THEN 1180591620717411303424
         WHEN ''Yottabytes''    THEN 1208925819614629174706176
         WHEN ''Yottabyte''     THEN 1208925819614629174706176
         WHEN ''YB''            THEN 1208925819614629174706176
         WHEN ''Brontobytes''   THEN 1237940039285380274899124224
         WHEN ''Brontobyte''    THEN 1237940039285380274899124224
         WHEN ''BB''            THEN 1237940039285380274899124224
         WHEN ''Geopbytes''     THEN 1267650600228229401496703205376
         WHEN ''Geopbyte''      THEN 1267650600228229401496703205376
      END,
   @OutputDivisor =
      CASE @OutputUOM
         WHEN ''Bytes''         THEN 1
         WHEN ''Byte''          THEN 1
         WHEN ''B''             THEN 1
         WHEN ''Kilobytes''     THEN 1024
         WHEN ''Kilobyte''      THEN 1024
         WHEN ''KB''            THEN 1024
         WHEN ''Megabytes''     THEN 1048576
         WHEN ''Megabyte''      THEN 1048576
         WHEN ''MB''            THEN 1048576
         WHEN ''Gigabytes''     THEN 1073741824
         WHEN ''Gigabyte''      THEN 1073741824
         WHEN ''GB''            THEN 1073741824
         WHEN ''Terabytes''     THEN 1099511627776
         WHEN ''Terabyte''      THEN 1099511627776
         WHEN ''TB''            THEN 1099511627776
         WHEN ''Petabytes''     THEN 1125899906842624
         WHEN ''Petabyte''      THEN 1125899906842624
         WHEN ''PB''            THEN 1125899906842624
         WHEN ''Exabytes''      THEN 1152921504606846976
         WHEN ''Exabyte''       THEN 1152921504606846976
         WHEN ''EB''            THEN 1152921504606846976
         WHEN ''Zettabytes''    THEN 1180591620717411303424
         WHEN ''Zettabyte''     THEN 1180591620717411303424
         WHEN ''ZB''            THEN 1180591620717411303424
         WHEN ''Yottabytes''    THEN 1208925819614629174706176
         WHEN ''Yottabyte''     THEN 1208925819614629174706176
         WHEN ''YB''            THEN 1208925819614629174706176
         WHEN ''Brontobytes''   THEN 1237940039285380274899124224
         WHEN ''Brontobyte''    THEN 1237940039285380274899124224
         WHEN ''BB''            THEN 1237940039285380274899124224
         WHEN ''Geopbytes''     THEN 1267650600228229401496703205376
         WHEN ''Geopbyte''      THEN 1267650600228229401496703205376
      END,
   @OutputSuffix =
      CASE @OutputUOM
         WHEN ''Bytes''         THEN '' Bytes''     
         WHEN ''Byte''          THEN '' Bytes''
         WHEN ''B''             THEN '' Bytes''
         WHEN ''Kilobytes''     THEN '' KB''
         WHEN ''Kilobyte''      THEN '' KB''
         WHEN ''KB''            THEN '' KB''
         WHEN ''Megabytes''     THEN '' MB''
         WHEN ''Megabyte''      THEN '' MB''
         WHEN ''MB''            THEN '' MB''
         WHEN ''Gigabytes''     THEN '' GB''
         WHEN ''Gigabyte''      THEN '' GB''
         WHEN ''GB''            THEN '' GB''
         WHEN ''Terabytes''     THEN '' TB''
         WHEN ''Terabyte''      THEN '' TB''
         WHEN ''TB''            THEN '' TB''
         WHEN ''Petabytes''     THEN '' PB''
         WHEN ''Petabyte''      THEN '' PB''
         WHEN ''PB''            THEN '' PB''
         WHEN ''Exabytes''      THEN '' EB''
         WHEN ''Exabyte''       THEN '' EB''
         WHEN ''EB''            THEN '' EB''
         WHEN ''Zettabytes''    THEN '' ZB''
         WHEN ''Zettabyte''     THEN '' ZB''
         WHEN ''ZB''            THEN '' ZB''
         WHEN ''Yottabytes''    THEN '' YB''
         WHEN ''Yottabyte''     THEN '' YB''
         WHEN ''YB''            THEN '' YB''
         WHEN ''Brontobytes''   THEN '' BB''
         WHEN ''Brontobyte''    THEN '' BB''
         WHEN ''BB''            THEN '' BB''
         WHEN ''Geopbytes''     THEN '' GeopBytes''
         WHEN ''Geopbyte''      THEN '' GeopBytes''
      END
     
   SELECT @Result = CAST((@InputNumber * @InputMultiplier)/@OutputDivisor AS VARCHAR(49)) + @OutputSuffix;
  
   RETURN @Result;
END;

-- GRANT RIGHTS TO SMS/ConfigMgr REPORTS TO EXECUTE THE FUNCTION
--GRANT EXECUTE ON dbo.udf_ConvertBytes TO smsschm_users, webreport_approle;
--GO


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_DTSOwnershipToSA]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_DTSOwnershipToSA]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		mmessano
-- Create date: 10/15/2007
-- Description:	Alter pemissions on DTS packages, change owner to sa.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_DTSOwnershipToSA] 


AS
BEGIN
	SET NOCOUNT ON;

DECLARE @DTSPKG CURSOR
DECLARE @name varchar (50)
DECLARE @id varchar (100)
DECLARE @DTS varchar (30)
DECLARE @Statement nvarchar(300)
DECLARE @Owner varchar (30)

DECLARE DTSPKG CURSOR FOR
SELECT DISTINCT [name],[id],[owner] FROM msdb..sysdtspackages

OPEN DTSPKG

FETCH NEXT FROM DTSPKG
	INTO @name, @id, @owner
	WHILE @@FETCH_STATUS = 0

BEGIN
	--To allow for the easy rollback, use the statements generated
	PRINT N''EXEC sp_reassign_dtspackageowner '' + char(39) + @name + char(39) + '', '' +
	char(39) + @id+ char(39) + '', '' + char(39) + @owner + char(39)
	SET @Statement = ''EXEC msdb..sp_reassign_dtspackageowner '' + char(39) + @name +
	char(39) + '', '' + char(39) + @id+ char(39) + '', '' + ''sa''
	EXEC sp_executesql @Statement
	FETCH NEXT FROM DTSPKG
	INTO @name, @id, @owner
END

CLOSE DTSPKG
DEALLOCATE DTSPKG

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[upd_SupportSMCPasswords_AcrossSites]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upd_SupportSMCPasswords_AcrossSites]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[upd_SupportSMCPasswords_AcrossSites] 
	@in_environment	VARCHAR(5)
	
AS

SET NOCOUNT ON

DECLARE @lv_name		VARCHAR(50),
		@lv_password	VARCHAR(100),
		@lv_expiration	DATETIME,
		@lv_error		INT,
		@sql			NVARCHAR(1000),
		@lv_env_id		INT,
		@lv_servername	VARCHAR(40),
		@lv_dbname		VARCHAR(40),
		@NumberRecords	INT,			-- number of Dexma Users with passwords to synch
		@RowCount		INT,			-- the current row of DexmaUsers
		@difference		INT				-- 0 if passwords match, 1 if passwords are different


IF @in_environment = ''PROD''
	SET @lv_env_id = 80
ELSE IF @in_environment = ''STAGE''
	SET @lv_env_id = 79
ELSE
	BEGIN
		SELECT ''Environment to execute in was not supplied or was invalid - terminating process''
		RETURN
	END

/* First load the names and passwords from the RLC database into a temp table*/
/* We load the temp table once and re-use the temp table for each database */
/* note the IDENTITY column will be used to loop through the rows of this table */
CREATE TABLE #DexmaUsers (
	record_number				INT IDENTITY(1,1),
	lg_name						VARCHAR(50),
	lg_password					VARCHAR(100),
	ui_password_expire_date		DATETIME
	)

IF @in_environment = ''PROD''
	INSERT INTO #DexmaUsers (lg_name,lg_password,ui_password_expire_date)
	SELECT u.LoginId, u.[Password], u.PasswordExpirationDate 
	FROM [psqlsmc30].[RLCSMC].dbo.[User] u
	WHERE u.LoginId IN (SELECT sl_login_id FROM [XSQLUTIL21].[DexmaSites].dbo.SupportLogins WHERE sl_active=''Y'')
ELSE IF @in_environment = ''STAGE''
	INSERT INTO #DexmaUsers (lg_name,lg_password,ui_password_expire_date)
	SELECT u.LoginId, u.[Password], u.PasswordExpirationDate 
	FROM [STGSQL615].[RLCSMC].dbo.[User] u
	WHERE u.LoginId IN (SELECT sl_login_id FROM [XSQLUTIL21].[DexmaSites].dbo.SupportLogins WHERE sl_active=''Y'')
-- Get the number of records in the temporary table - used in WHILE loop
SET @NumberRecords = @@ROWCOUNT

/* Go through each client database and update the password, if different, for each DexmaUser */
DECLARE server_cursor CURSOR FAST_FORWARD FOR
	SELECT DISTINCT databaseserver
			, databasename 
	FROM [XSQLUTIL21].[DexmaSites].dbo.clientenvironment 
	WHERE environmentid = @lv_env_id 
	ORDER BY databaseserver

	OPEN server_cursor
	FETCH NEXT FROM server_cursor INTO @lv_servername, @lv_dbname
	WHILE @@FETCH_STATUS = 0 
	
	BEGIN
		-- Get first DexmaUser from temp table
		SET @RowCount = 1	
		-- loop through all Dexma users using the WHILE loop construct
		WHILE @RowCount <= @NumberRecords
		BEGIN
			-- load DexmaUser, password, expiration_date
			SELECT @lv_name = lg_name
					, @lv_password = lg_password
					, @lv_expiration = ui_password_expire_date 
			FROM #DexmaUsers
			WHERE record_number = @RowCount

			-- Determine if password does not match for this Dexma user 
			SET @sql = ''Select @count =  count(*) from [''+ @lv_servername + ''].['' + @lv_dbname + ''].dbo.[user] where LoginId = '''''' + @lv_name + '''''' and [Password] != '''''' + @lv_password +''''''''

			-- if passwords match @difference = 0 , else @difference = 1			
			EXEC sp_executesql @sql, N''@count int output'',@difference OUTPUT
			-- If the passwords do not match then update passwords and Expiration date
			IF @difference > 0			
				BEGIN
					SET @sql = N''UPDATE ['' + @lv_servername + ''_RW].['' + @lv_dbname + ''].dbo.[user] SET [Password] = '''''' + @lv_password + '''''' WHERE LoginId = '''''' + @lv_name + ''''''''
					--print @sql
					EXEC sp_executesql @sql

					SELECT @lv_error = @@ERROR
					IF @lv_error <> 0 
					 BEGIN
						SELECT ''Update failed for password update in database '' + @lv_servername + ''.'' + @lv_dbname + ''.'' + @lv_name + '' error = '' + @lv_error
					 END

					/* Update the expiration date for the new password */
					SET @sql = N''UPDATE ['' + @lv_servername + ''_RW].['' + @lv_dbname + ''].dbo.[User] SET PasswordExpirationDate = '''''' + convert(varchar(50), @lv_expiration) + '''''' WHERE LoginId = '''''' + @lv_name + ''''''''
					--print @sql
					EXEC sp_executesql @sql
												
					SELECT @lv_error = @@ERROR
					IF @lv_error <> 0 
					 BEGIN
						SELECT ''Update failed for expiration date update in database '' + @lv_servername + ''.'' + @lv_dbname + '', '' + @lv_name + '' error = '' + convert(varchar, @lv_error)
					 END
				END --If @difference > 0
			--  Get next Dexma User
			SET @RowCount = @RowCount + 1
		END  --While @RowCount <= @NumberRecords

		--PRINT ''Done with '' + @lv_servername + ''.'' + @lv_dbname
		FETCH NEXT FROM server_cursor INTO @lv_servername, @lv_dbname
	END --WHILE @@FETCH_STATUS = 0 (server_cursor)

CLOSE server_cursor
DEALLOCATE server_cursor
DROP TABLE #DexmaUsers
' 
END
GO
/****** Object:  StoredProcedure [dbo].[upd_SupportPasswords_AcrossSites]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[upd_SupportPasswords_AcrossSites]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[upd_SupportPasswords_AcrossSites] 
	@in_environment	varchar(5)
	
AS

SET NOCOUNT ON

DECLARE @lv_name		VARCHAR(50),
		@lv_password	VARCHAR(50),
		@lv_expiration	DATETIME,
		@lv_error		INT,
		@sql			NVARCHAR(1000),
		@lv_env_id		INT,
		@lv_servername	VARCHAR(40),
		@lv_dbname		VARCHAR(40),
		@NumberRecords	INT,			-- number of Dexma Users with passwords to synch
		@RowCount		INT,			-- the current row of DexmaUsers
		@difference		INT				-- 0 if passwords match, 1 if passwords are different


IF @in_environment = ''PROD''
	SET @lv_env_id = 13
ELSE IF @in_environment = ''STAGE''
	SET @lv_env_id = 11
ELSE
	BEGIN
		SELECT ''Environment to execute in was not supplied or was invalid - terminating process''
		RETURN
	END

/* First load the names and passwords from the RLC database into a temp table*/
/* We load the temp table once and re-use the temp table for each database */
/* note the IDENTITY column will be used to loop through the rows of this table */
CREATE TABLE #DexmaUsers (
	record_number				INT IDENTITY(1,1),
	lg_name						VARCHAR(50),
	lg_password					VARCHAR(36),
	ui_password_expire_date		DATETIME
	)

IF @in_environment = ''PROD''
	INSERT INTO #DexmaUsers (lg_name,lg_password,ui_password_expire_date)
	SELECT lg.lg_name
		, lg.lg_password
		, ui.ui_password_expire_date  
	FROM [PSQLDLS35].[RLC].dbo.login lg
	JOIN [PSQLDLS35].[RLC].dbo.user_info ui on lg.ui_id = ui.ui_id 
		AND lg_name IN (SELECT sl_login_id FROM [XSQLUTIL21].[DexmaSites].dbo.SupportLogins WHERE sl_active=''Y'') 
ELSE IF @in_environment = ''STAGE''
	INSERT INTO #DexmaUsers (lg_name,lg_password,ui_password_expire_date)
	SELECT lg.lg_name, lg.lg_password
		, ui.ui_password_expire_date 
	FROM [STGSQL615].[RLC].dbo.login lg
	JOIN [STGSQL615].[RLC].dbo.user_info ui ON lg.ui_id = ui.ui_id 
		AND lg_name IN (SELECT sl_login_id FROM [XSQLUTIL21].[DexmaSites].dbo.SupportLogins WHERE sl_active= ''Y'')

-- Get the number of records in the temporary table - used in WHILE loop
SET @NumberRecords = @@ROWCOUNT

/* Go through each client database and update the password, if different, for each DexmaUser */
DECLARE server_cursor CURSOR FAST_FORWARD FOR
	SELECT DISTINCT databaseserver, databasename 
	FROM [XSQLUTIL21].[DexmaSites].dbo.clientenvironment 
	WHERE environmentid = @lv_env_id 
		AND databasename <> '''' 
		AND databaseserver <> '''' 
		AND databasename <> ''PASCADMIN'' 
		AND databasename NOT LIKE ''%management%'' 
		AND databasename NOT LIKE ''%RELEASE%'' 
		AND databasename NOT LIKE ''%smc''  
		AND databasename NOT LIKE ''%Workflow'' 
		AND databasename != ''PASolutions''
	ORDER BY databaseserver

	OPEN server_cursor

	FETCH NEXT FROM server_cursor INTO @lv_servername, @lv_dbname

	WHILE @@FETCH_STATUS = 0 
	BEGIN
		-- Get first DexmaUser from temp table
		SET @RowCount = 1	
		-- loop through all Dexma users using the WHILE loop construct
		WHILE @RowCount <= @NumberRecords
		BEGIN
			-- load DexmaUser, password, expiration_date
			SELECT @lv_name = lg_name
					, @lv_password = lg_password
					, @lv_expiration = ui_password_expire_date 
			FROM #DexmaUsers
			WHERE record_number = @RowCount

			-- Determine if password does not match for this Dexma user 
			SET @sql = ''Select @count =  count(*) from [''+ @lv_servername + ''].['' + @lv_dbname + ''].dbo.user_info ui join [''+ @lv_servername + ''].['' + @lv_dbname + ''].dbo.login lg on lg.ui_id = ui.ui_id  where lg_name = '''''' + @lv_name + '''''' and (lg_password != '''''' + @lv_password +'''''' or  convert(varchar(50),ui_password_expire_date) != '''''' + convert(varchar(50), @lv_expiration) +'''''')''
			--SET @sql = ''Select @count =  count(*) from [''+ @lv_servername + ''].['' + @lv_dbname + ''].dbo.login where lg_name = '''''' + @lv_name + '''''' and lg_password != '''''' + @lv_password +''''''''
			-- if passwords match @difference = 0 , else @difference = 1			
			EXEC sp_executesql @sql, N''@count int output'',@difference output
			-- If the passwords do not match then update passwords and Expiration date
			IF @difference > 0			
				BEGIN
					SET @sql = N''UPDATE ['' + @lv_servername + ''_RW].['' + @lv_dbname + ''].dbo.login SET lg_password = '''''' + @lv_password + '''''' WHERE lg_name = '''''' + @lv_name + ''''''''
					--print @sql
					EXEC sp_executesql @sql

					SELECT @lv_error = @@ERROR
					IF @lv_error <> 0 
					 BEGIN
						SELECT ''Update failed for password update in database '' + @lv_servername + ''.'' + @lv_dbname + ''.'' + @lv_name + '' error = '' + @lv_error
					 END

					/* Update the expiration date for the new password */
					set @sql = N''UPDATE ['' + @lv_servername + ''_RW].['' + @lv_dbname + ''].dbo.user_info SET ui_password_expire_date = '''''' + convert(varchar(50), @lv_expiration) + '''''' WHERE ui_id = (SELECT ui_id FROM ['' + @lv_servername + ''].['' + @lv_dbname + ''].dbo.login W
					WHERE lg_name = '''''' + @lv_name + '''''''' + '')''
					--print @sql
					EXEC sp_executesql @sql
												
					SELECT @lv_error = @@ERROR
					IF @lv_error <> 0 
					 BEGIN
						SELECT ''Update failed for expiration date update in database '' + @lv_servername + ''.'' + @lv_dbname + '', '' + @lv_name + '' error = '' + convert(varchar, @lv_error)
					 END
				End --If @difference > 0
			--  Get next Dexma User
			SET @RowCount = @RowCount + 1
		End  --While @RowCount <= @NumberRecords

		--PRINT ''Done with '' + @lv_servername + ''.'' + @lv_dbname
		FETCH NEXT FROM server_cursor INTO @lv_servername, @lv_dbname
	END --WHILE @@FETCH_STATUS = 0 (server_cursor)

CLOSE server_cursor
DEALLOCATE server_cursor
DROP TABLE #DexmaUsers
' 
END
GO
/****** Object:  StoredProcedure [dbo].[StopSSTraceAll]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StopSSTraceAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[StopSSTraceAll]
AS
SET NOCOUNT ON


DECLARE	@RC		INT		-- Return status for stored procedures
DECLARE	@TRACE_NAME	VARCHAR(40)	-- Name of Trace(SlowQry, NdxUsed, etc.)
DECLARE @old_traceid	INT		-- TRACE ID of currently running trace queue

SET @TRACE_NAME = ''AllDbs''

-- -----------------------------------------------------------------------
-- Stop the trace queue if running
-- -----------------------------------------------------------------------
if exists	(
	select *
	FROM 	:: fn_trace_getinfo(default) 
	WHERE 	property = 2	-- trace file name
	AND	convert(varchar(40),Value)  LIKE ''%''+@TRACE_NAME+''%'')
BEGIN
	select 	@old_traceid = traceid
	FROM 	:: fn_trace_getinfo(default) 
	WHERE 	property = 2	-- trace file name
	AND	convert(varchar(40),Value)  LIKE ''%''+@TRACE_NAME+''%''
	EXEC @RC = sp_trace_setstatus @old_traceid, 0	-- stops specified trace
	IF @RC = 0  PRINT ''sp_trace_setstatus: Stopped Trace ID '' + convert( varchar(20),@old_traceid )
	IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
	IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
	IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
	IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory'' 
	IF @RC <> 0 GOTO ERROR

	EXEC sp_trace_setstatus @old_traceid, 2 -- delete specified trace

	IF @RC = 0  PRINT ''sp_trace_setstatus: Deleted Trace ID '' + convert( varchar(20),@old_traceid )
	IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
	IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
	IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
	IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory'' 
	IF @RC <> 0 GOTO ERROR
END

ERROR:
select @RC

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SSTraceAll]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSTraceAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[SSTraceAll]
AS
SET NOCOUNT ON
SET QUOTED_IDENTIFIER ON 
SET ANSI_NULLS ON 
--
-- Schedulable Server-Side Trace Script
--
--
-- This script can be used to start, run and manage several traces.
-- The trace name is used as unique identifier to represent trace, so make it meaningful.
-- When this script runs, it deletes the existing trace with the same filename,
-- and creates a new trace, adding a date/time extension to the trace file name
-- Change the following as appropriate:
--
--	data columns
--	event classes
--	filters
-- 


-- -----------------------------------------------------------------------
-- Declare variables
-- -----------------------------------------------------------------------
DECLARE	@TRACE_NAME		VARCHAR(40)	-- Name of Trace(SlowQry, NdxUsed, etc.)
DECLARE	@FILE_PATH		VARCHAR(200)
DECLARE	@cmd			VARCHAR(1000)	-- Used for command or SQL strings
DECLARE	@RC			INT		-- Return status for stored procedures
DECLARE	@ON			BIT		-- Used as on bit fot set event
DECLARE	@ROWCOUNT		INT		-- Rows inserted into SQLTrace table
DECLARE @old_traceid	INT			-- TRACE ID of currently running trace queue
DECLARE @traceid 		INT		-- queue handle new running trace queue
DECLARE @date 			VARCHAR(19)	-- date component of file name
DECLARE	@FILE_NAME		NVARCHAR(245)
-- DECLARE	@OLD_FILE_NAME	NVARCHAR(245)
DECLARE @maxfilesize		BIGINT		-- Maximum trace file size - will rollover when reached
DECLARE @StopTime		datetime	-- Date/Time to stop the trace
-- 
-- User Settings
--

set	@TRACE_NAME	= ''AllDbs''
set	@FILE_PATH	= ''E:\Dexma\Support\trace''
set     @maxfilesize	= 10	-- in MB
set     @ON		= 1
SET	@StopTime	= NULL	-- Format to use:  ''2007-10-26 10:40:00.000''

-- -----------------------------------------------------------------------
-- Edit Parameters
-- -----------------------------------------------------------------------

IF @FILE_PATH LIKE ''%\''
	BEGIN
		PRINT ''Omit trailing \ from Path Name''
		SET @RC = 1
		goto error
	END
SET @CMD = ''DIR ''+@FILE_PATH

EXEC @RC = master.dbo.XP_CMDSHELL @CMD, no_output

IF @RC <> 0 
	BEGIN
		PRINT ''File Path not found''
		SET @RC = 1
		goto error
	END

-- -----------------------------------------------------------------------
-- Stop the trace queue if running
-- -----------------------------------------------------------------------
if exists	(
	select *
	FROM 	:: fn_trace_getinfo(default) 
	WHERE 	property = 2	-- trace file name
	AND	convert(varchar(40),Value)  LIKE ''%''+@TRACE_NAME+''%'')
BEGIN
	select 	@old_traceid = traceid  --,
--		@old_file_name = convert(nvarchar(245),value)
	FROM 	:: fn_trace_getinfo(default) 
	WHERE 	property = 2	-- trace file name
	AND	convert(varchar(40),Value)  LIKE ''%''+@TRACE_NAME+''%''
	EXEC @RC = sp_trace_setstatus @old_traceid, 0	-- stops specified trace
	IF @RC = 0  PRINT ''sp_trace_setstatus: Stopped Trace ID '' + convert( varchar(20),@old_traceid )
	IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
	IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
	IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
	IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory'' 
	IF @RC <> 0 GOTO ERROR

	EXEC sp_trace_setstatus @old_traceid, 2 -- delete specified trace

	IF @RC = 0  PRINT ''sp_trace_setstatus: Deleted Trace ID '' + convert( varchar(20),@old_traceid )
	IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
	IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
	IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
	IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory'' 
	IF @RC <> 0 GOTO ERROR
END



-- -----------------------------------------------------------------------
-- Build the trace file name (with date/time stamp)
-- -----------------------------------------------------------------------
select @date = convert(varchar(17), getdate(), 21)

select @date = REPLACE(@date,''-''  , '''')
select @date = REPLACE(@date,'':''  , '''')
select @date = REPLACE(@date,''.''  , '''')
select @date = REPLACE(@date,'' ''  ,'''')


select @file_name = @file_path 	+ ''\'' +	@trace_name + ''_'' + @@servername + ''_'' + @date 

print ''file name = '' + @file_name+''.trc''


-- -----------------------------------------------------------------------
-- Create trace
-- -----------------------------------------------------------------------


exec @rc = sp_trace_create 
	@TraceID output, 	--	Trace handle - needed for subsequent trace operations
	2, 			--	2 Indicates file rollover
	@FILE_NAME,		--	Full trace file name 
	@maxfilesize, 		--	Maximum trace file size before rollover
	@StopTime		--	Trace stop time

IF @RC = 0  PRINT ''sp_trace_create: Created Trace ID '' + convert( varchar(20),@old_traceid )
IF @RC = 1  PRINT ''sp_trace_create: - Unknown error'' 
IF @RC = 10 PRINT ''sp_trace_create: Invalid options''
IF @RC = 12 PRINT ''sp_trace_create: File not created'' 
IF @RC = 13 PRINT ''sp_trace_create: Out of memory'' 
IF @RC = 14 PRINT ''sp_trace_create: Invalid stop time''
IF @RC = 15 PRINT ''sp_trace_create: Invalid parameters''
IF @RC <> 0 GOTO ERROR



-- -----------------------------------------------------------------------
-- Set trace events and data columns to capture
-- This can be copied from the output created from:
-- Profiler: 
--     File:
--         Script Trace: 
--             For SQL Server 2000
--
-- Otherwise, you''ll have to code the ordinal numbers for events and columns
--
--
-- Events traced:
--
--	10 RPC:Completed
-- 	12 SQL:BatchCompleted
--
--
-- Data Columns traced:
--
-- 	1  TextData 
--	3  DatabaseID:
-- 	6  NTUserName
-- 	9  ClientProcessID
-- 	10 ApplicationName 
-- 	11 SQLSecurityLoginName 
-- 	12 SPID 
-- 	13 Duration 
-- 	14 StartTime 
-- 	15 EndTime 
-- 	16 Reads 
-- 	17 Writes 
-- 	18 CPU


-- -----------------------------------------------------------------------
-- Set the events
-- -----------------------------------------------------------------------
exec sp_trace_setevent @TraceID, 10, 1, @on
exec sp_trace_setevent @TraceID, 10, 3, @on
exec sp_trace_setevent @TraceID, 10, 6, @on
exec sp_trace_setevent @TraceID, 10, 9, @on
exec sp_trace_setevent @TraceID, 10, 10, @on
exec sp_trace_setevent @TraceID, 10, 11, @on
exec sp_trace_setevent @TraceID, 10, 12, @on
exec sp_trace_setevent @TraceID, 10, 13, @on
exec sp_trace_setevent @TraceID, 10, 14, @on
exec sp_trace_setevent @TraceID, 10, 15, @on
exec sp_trace_setevent @TraceID, 10, 16, @on
exec sp_trace_setevent @TraceID, 10, 17, @on
exec sp_trace_setevent @TraceID, 10, 18, @on

exec sp_trace_setevent @TraceID, 12, 1, @on
exec sp_trace_setevent @TraceID, 12, 3, @on
exec sp_trace_setevent @TraceID, 12, 6, @on
exec sp_trace_setevent @TraceID, 12, 9, @on
exec sp_trace_setevent @TraceID, 12, 10, @on
exec sp_trace_setevent @TraceID, 12, 11, @on
exec sp_trace_setevent @TraceID, 12, 12, @on
exec sp_trace_setevent @TraceID, 12, 13, @on
exec sp_trace_setevent @TraceID, 12, 14, @on
exec sp_trace_setevent @TraceID, 12, 15, @on
exec sp_trace_setevent @TraceID, 12, 16, @on
exec sp_trace_setevent @TraceID, 12, 17, @on
exec sp_trace_setevent @TraceID, 12, 18, @on


-- -----------------------------------------------------------------------
-- Set filters 
-- -----------------------------------------------------------------------

--   DatabaseID  > 4 -- User Databases Only
exec sp_trace_setfilter @TraceID,  3, 1, 2, 4

--   ApplicationName NOT LIKE ''SQL Profiler''
exec sp_trace_setfilter @TraceID, 10, 0, 7, N''SQL Profiler''	

--   ObjectID >= 100 (excludes system objects)
exec sp_trace_setfilter @TraceID, 22, 0, 4, 100

--   Text of query not like:
exec sp_trace_setfilter @TraceID, 1, 0, 7, N''%BlockInputbuffer%''
exec sp_trace_setfilter @TraceID, 1, 0, 7, N''exec sp_execute %''
-- -----------------------------------------------------------------------
-- Start the trace 
-- -----------------------------------------------------------------------

exec @RC = sp_trace_setstatus @TraceID, 1

IF @RC = 0  PRINT ''sp_trace_setstatus: Started Trace ID  '' + convert( varchar(20),@traceid )
IF @RC = 1  PRINT ''sp_trace_setstatus: - Unknown error'' 
IF @RC = 8  PRINT ''sp_trace_setstatus: The specified Status is not valid''
IF @RC = 9  PRINT ''sp_trace_setstatus: The specified Trace Handle is not valid'' 
IF @RC = 13 PRINT ''sp_trace_setstatus: Out of memory''

IF @RC = 0  PRINT ''To stop, run the following:''
IF @RC = 0  PRINT ''sp_trace_setstatus '' + convert( varchar(20),@traceid ) + '', 0''
IF @RC = 0  PRINT ''sp_trace_setstatus '' + convert( varchar(20),@traceid ) + '', 2''


ERROR:
select @rc


SET QUOTED_IDENTIFIER OFF 
' 
END
GO
/****** Object:  Table [dbo].[SQLTableIndexRebuilds]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLTableIndexRebuilds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SQLTableIndexRebuilds](
	[TableName] [varchar](255) NULL,
	[IndexName] [varchar](255) NULL,
	[IndexFragmentation] [float] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SQLSSISPackages]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SQLSSISPackages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SQLSSISPackages](
	[ServerName] [varchar](16) NOT NULL,
	[SSISPackageName] [varchar](128) NOT NULL,
	[LastUpdate] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[dbm_FindOpenTransactions]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_FindOpenTransactions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[dbm_FindOpenTransactions] AS

DECLARE @emailAddress varchar(26)
SET @emailAddress = ''DataManagement@dexma.com''

--Create the required Tables if they do not exist
IF NOT EXISTS (SELECT * FROM sysobjects WHERE type = ''u'' AND name = ''OpenTransactions'')
BEGIN
	CREATE TABLE OpenTransactions (
	spid int NULL,
	login varchar(32) NULL,
	db varchar(128) NULL,
	hostname varchar(64) NULL
	)
END

IF NOT EXISTS (SELECT * FROM sysobjects WHERE type = ''u'' AND name = ''OpenTransactionsHistory'')
BEGIN
	CREATE TABLE dbo.OpenTransactionsHistory (
	Found_Date datetime NULL,
	spid int NULL,
	login varchar(32) NULL,
	db varchar(128) NULL,
	hostname varchar(64) NULL,
	program_name varchar(128) NULL
	)
END

DECLARE c4 cursor for 
	SELECT spid, dbid, hostname, loginame, program_name 
	FROM master..sysprocesses 
	WHERE open_tran > 0
	
DECLARE	@spid int, 
		@hostname varchar(64), 
		@login varchar(32), 
		@cmd varchar(4000), 
		@database varchar(128), 
		@program_name varchar(128), 
		@dbid int, 
		@spidlist varchar(2000), 
		@wehavedata int
		
SELECT @spidlist = ''''

OPEN c4
FETCH NEXT FROM c4 INTO @spid,@dbid,@hostname,@login, @program_name

WHILE @@fetch_status = 0

BEGIN 
SET @wehavedata = 1
SELECT @database = name FROM master..sysdatabases WHERE dbid = @dbid
If exists (SELECT * FROM OpenTransactions WHERE spid = @spid AND login = @login AND db = @database AND hostname = @hostname)
	BEGIN
	INSERT INTO OpenTransactionsHistory (Found_Date,spid,login,db,hostname,program_name) VALUES (getdate(),@spid,@login,@database,@hostname,@program_name)
	SELECT @cmd = ''net send '' + @hostname + ''"Your machine has an open transaction to '' + @database + ''"''
	exec master..xp_cmdshell @cmd
	SELECT @cmd = ''Host: '' + @hostname + char(13)
	SELECT @cmd = @cmd + ''Login: '' + @login + char(13)
	SELECT @cmd = @cmd + ''Database: '' + @database + char(13)
	SELECT @cmd = @cmd + ''SPID: '' + convert(varchar(6),@spid) + char(13)
	SELECT @cmd = @cmd + ''Program: '' + convert(varchar(6),@program_name) + char(13)
	exec msdb..sp_send_dbmail
		@profile_name = ''DataManagement Mail Notification'', 
		@recipients = @emailAddress,
		@subject = ''Open Transactions'',
		@body = @cmd
	END
ELSE 
INSERT INTO OpenTransactions (spid,login,db,hostname) VALUES (@spid,@login,@database,@hostname)

SELECT @spidlist = @spidlist + convert(varchar(32),@spid) + '',''
FETCH NEXT FROM c4 INTO @spid,@dbid,@hostname,@login, @program_name
END

--Cleanup
if @wehavedata = 1
BEGIN
	SELECT @spidlist = substring(@spidlist,1,len(@spidlist)-1)
	SELECT @cmd = ''DELETE FROM OpenTransactions WHERE spid NOT IN ('' + @spidlist + '')'' + char(13)
	print @cmd
	exec (@cmd)
END
ELSE
	DELETE FROM OpenTransactions

CLOSE c4
DEALLOCATE c4
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_Find]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_Find]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_Find] 
	  @SearchText VARCHAR(8000)
	, @DBName SYSNAME = Null
	, @PreviewTextSize INT = 100
	, @SearchDBsFlag CHAR(1) = ''Y''
	, @SearchJobsFlag CHAR(1) = ''Y''
	, @SearchSSISFlag CHAR(1) = ''Y''

AS

/*
* Created: 12/19/06, Michael F. Berry (SQL Server Magazine contributor)
*
* Modified: 01/25/07, Michael F. Berry, Make it output to one main recordset for clarity
* Modified: 09/04/08, Bill Lescher and Chase Jones, Updated for SQL2005 and added Jobs & SSIS Packages
* Modified: 07/22/09, Bill L, Returning the PreviewText
*
* Description: Find any string within the T-SQL code on this SQL Server instance, specifically
*				Database objects and/or SQL Agent Jobs and/or SSIS Packages
*
* Test: sp_Find ''track''
*		sp_Find ''AS400''
*		sp_Find ''track'', ''Common'', 50
*		sp_Find ''track'', ''Common'', 50, ''Y'', ''N'', ''N'' --DB Only
*		sp_Find ''track'', ''Common'', 50, ''N'', ''N'', ''Y'' --SSIS Only
*/

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET NOCOUNT ON;

IF OBJECT_ID(N''tempdb..#FoundObject'', ''U'') IS NOT NULL
      DROP TABLE #FoundObject;
      
CREATE TABLE #FoundObject (
	  DatabaseName SYSNAME
	, ObjectName SYSNAME
	, ObjectTypeDesc NVARCHAR(60)
	, PreviewText VARCHAR(MAX))--To show a little bit of the code

DECLARE	@SQL as nvarchar(max);

SELECT ''Searching For: '''''' + @SearchText + '''''''' As CurrentSearch;

/**************************
*  Database Search
***************************/
If @SearchDBsFlag = ''Y''
BEGIN
	IF @DBName Is Null --Loop through all normal user databases
	BEGIN
		DECLARE ObjCursor CURSOR LOCAL FAST_FORWARD FOR 
			SELECT	[Name]
			FROM	Master.sys.Databases
			WHERE	[Name] NOT IN (''AdventureWorks'', ''AdventureWorksDW'', ''Distribution'', ''Master'', ''MSDB'', ''Model'', ''TempDB'');

		OPEN ObjCursor;

		FETCH NEXT FROM ObjCursor INTO @DBName;
		WHILE @@Fetch_Status = 0
		BEGIN
			SELECT @SQL = ''
				USE ['' + @DBName + '']

				INSERT INTO #FoundObject (
					  DatabaseName
					, ObjectName
					, ObjectTypeDesc
					, PreviewText)
				SELECT	DISTINCT
						  '''''' + @DBName + ''''''
						, sch.[Name] + ''''.'''' + obj.[Name] AS ObjectName
						, obj.Type_Desc
						, REPLACE(REPLACE(SUBSTRING(mod.Definition, CHARINDEX('''''' + @SearchText + '''''', mod.Definition) - '' + CAST(@PreviewTextSize / 2 AS VARCHAR) + '', '' + 
							CAST(@PreviewTextSize AS VARCHAR) + ''), char(13) + char(10), ''''''''), '''''' + @SearchText + '''''', ''''***'' + @SearchText + ''***'''')
				FROM 	sys.objects obj 
				INNER JOIN sys.SQL_Modules mod ON obj.Object_Id = mod.Object_Id
				INNER JOIN sys.Schemas sch ON obj.Schema_Id = sch.Schema_Id
				WHERE	mod.Definition Like ''''%'' + @SearchText + ''%'''' 
				ORDER BY ObjectName'';

			EXEC dbo.sp_executesql @SQL;

			FETCH NEXT FROM ObjCursor INTO @DBName;
		END;

		CLOSE ObjCursor;

		DEALLOCATE ObjCursor;
	END
	ELSE --Only look through given database
	BEGIN
			SELECT @SQL = ''
				USE ['' + @DBName + '']

				INSERT INTO #FoundObject (
					  DatabaseName
					, ObjectName
					, ObjectTypeDesc
					, PreviewText)
				SELECT	DISTINCT
						  '''''' + @DBName + ''''''
						, sch.[Name] + ''''.'''' + obj.[Name] AS ObjectName
						, obj.Type_Desc
						, REPLACE(REPLACE(SUBSTRING(mod.Definition, CHARINDEX('''''' + @SearchText + '''''', mod.Definition) - '' + CAST(@PreviewTextSize / 2 AS VARCHAR) + '', '' + 
							CAST(@PreviewTextSize AS VARCHAR) + ''), CHAR(13) + CHAR(10), ''''''''), '''''' + @SearchText + '''''', ''''***'' + @SearchText + ''***'''')
				FROM 	sys.objects obj 
				INNER JOIN sys.SQL_Modules mod On obj.Object_Id = mod.Object_Id
				INNER JOIN sys.Schemas sch On obj.Schema_Id = sch.Schema_Id
				WHERE	mod.Definition Like ''''%'' + @SearchText + ''%'''' 
				ORDER BY ObjectName'';

			EXEC dbo.sp_ExecuteSQL @SQL;
	END;

	SELECT ''Database Objects'' AS SearchType;

	SELECT
		  DatabaseName
		, ObjectName
		, ObjectTypeDesc AS ObjectType
		, PreviewText
	FROM	#FoundObject
	ORDER BY DatabaseName, ObjectName;
END

/**************************
*  Job Search
***************************/
IF @SearchJobsFlag = ''Y''
BEGIN
	SELECT ''Job Steps'' AS SearchType;


	SELECT	  j.[Name] AS [Job Name]
			, s.Step_Id AS [Step #]
			, REPLACE(REPLACE(SUBSTRING(s.Command, CHARINDEX(@SearchText, s.Command) - @PreviewTextSize / 2, @PreviewTextSize), CHAR(13) + CHAR(10), ''''), @SearchText, ''***'' + @SearchText + ''***'') AS Command
	FROM	MSDB.dbo.sysJobs j
	INNER JOIN MSDB.dbo.sysJobSteps s On j.Job_Id = s.Job_Id 
	WHERE	s.Command LIKE ''%'' + @SearchText + ''%'';
END

/**************************
*  SSIS Search
***************************/
IF @SearchSSISFlag = ''Y''
BEGIN
	SELECT ''SSIS Packages'' AS SearchType;

	SELECT	  [Name] AS [SSIS Name]
			, REPLACE(REPLACE(SUBSTRING(CAST(CAST(PackageData AS VARBINARY(Max)) AS VARCHAR(Max)), CHARINDEX(@SearchText, CAST(CAST(PackageData AS VARBINARY(MAX)) AS VARCHAR(MAX))) -
				@PreviewTextSize / 2, @PreviewTextSize), char(13) + char(10), ''''), @SearchText, ''***'' + @SearchText + ''***'') AS [SSIS XML]
	FROM	MSDB.dbo.sysSSISPackages
	WHERE	CAST(CAST(PackageData AS VARBINARY(MAX)) AS VARCHAR(MAX)) LIKE ''%'' + @SearchText + ''%'';
END

DROP TABLE #FoundObject
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_FileSpaceStats]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_FileSpaceStats]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_FileSpaceStats] 
AS 
BEGIN 
SET NOCOUNT ON;
DECLARE @dbname SYSNAME 
DECLARE @CMD VARCHAR(256)

IF NOT EXISTS (SELECT * FROM dbamaint.dbo.sysobjects WHERE name = ''filespacestats'' AND TYPE=''U'') 
BEGIN 
CREATE TABLE dbamaint.[dbo].[filespacestats] ( 
	[server_name] [sysname] NOT NULL , 
	[dbname] [sysname] NOT NULL , 
	[flag] [bit] NULL , 
	[Fileid] [tinyint] NULL , 
	[FileGroup] [tinyint] NULL , 
	[total_space] [decimal](20, 1) NULL , 
	[usedspace] [decimal](20, 1) NULL , 
	[freespace] [decimal](20, 1) NULL , 
	[freepct] [decimal](20, 1) NULL , 
	[Name] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL , 
	[FileName] [sysname] NULL , 
	[report_date] [datetime] DEFAULT GETDATE() 
	) ON [PRIMARY] 
END

IF EXISTS (SELECT * FROM tempdb..sysobjects WHERE name LIKE ''#logfilenames%'') 
	DROP TABLE #logfilenames
BEGIN
CREATE TABLE #logfilenames ( 
	dbname VARCHAR(128),
	name VARCHAR(128), 
	fileid INT, 
	filename VARCHAR(256), 
	filegroup VARCHAR(32), 
	size VARCHAR(64) ,
	maxsize CHAR(16),
	growth VARCHAR(16),
	usage CHAR(32)
	)
 END

DELETE dbamaint.[dbo].[filespacestats] 
DECLARE cur_dbname CURSOR FOR 
	SELECT name FROM master..sysdatabases 
		WHERE name NOT IN (''master'',''model'',''msdb'')
		AND (SELECT DATABASEPROPERTYEX(name,''STATUS'')) != ''Restoring''
		AND (SELECT DATABASEPROPERTYEX(name,''STATUS'')) != ''OFFLINE''
		AND (SELECT DATABASEPROPERTYEX(name,''Updateability '')) != ''READ_ONLY''


OPEN cur_dbname 
FETCH NEXT FROM cur_dbname INTO @dbname 
WHILE @@fetch_status=0 

BEGIN 
-- If the database is currently restoring, ignore it
--If (select DATABASEPROPERTYEX(@DBName,''STATUS'')) != ''Restoring''
--	Begin
		IF EXISTS (SELECT * FROM tempdb..sysobjects WHERE name LIKE ''#datafilestats%'') 
			DROP TABLE #datafilestats 
		BEGIN
		CREATE TABLE #datafilestats ( 
			dbname VARCHAR(256), 
			flag BIT DEFAULT 0, 
			Fileid TINYINT, 
			[FileGroup] TINYINT, 
			TotalExtents DEC (20, 1), 
			UsedExtents DEC (20, 1), 
			[Name] VARCHAR(256), 
			[FileName] SYSNAME 
			) 
		END

		DECLARE @string SYSNAME 
		SET @string = ''DBCC UPDATEUSAGE ('' + CONVERT(VARCHAR(4),DB_ID(@dbname)) + '') WITH NO_INFOMSGS''
			EXEC (@string);
		SET @string = ''USE ['' + @dbname + ''] DBCC SHOWFILESTATS WITH NO_INFOMSGS'' 

		INSERT INTO #datafilestats (Fileid, [FileGroup], TotalExtents, UsedExtents, [Name], [FileName]) 
		EXEC (@string) ;

		INSERT dbamaint.dbo.filespacestats (server_name,dbname, [flag],Fileid,FileGroup,total_space,usedspace,freespace,freepct,Name,FileName) 
		SELECT @@servername
				, @dbname
				, flag 
				, Fileid
				, FileGroup
				, (TotalExtents*64/1024)
				, (UsedExtents*64/1024)
				, ((TotalExtents*64/1024)-(UsedExtents*64/1024))
				, ((TotalExtents*64/1024)-(UsedExtents*64/1024))*100/(TotalExtents*64/1024)
				, Name
				, FileName 
		FROM #datafilestats 

		-- mmessano 12/7/2007 grab file path info for LDF files
		-- sp_helpfile operates on one database at a time
		-- add the current dbname by exploiting this behaviour
		SELECT @CMD = ''USE ['' + @dbname + '']''+ CHAR(13) + CHAR(10)
		SELECT @CMD = @CMD + ''EXEC sp_helpfile;''

		INSERT #logfilenames (name,fileid,filename,filegroup,size,maxsize,growth,usage)
		EXEC(@CMD)
		UPDATE #logfilenames 
			SET dbname = @dbname WHERE dbname IS NULL
			
FETCH NEXT FROM cur_dbname INTO @dbname 
END 

CLOSE cur_dbname 
DEALLOCATE cur_dbname 


IF EXISTS (SELECT * FROM tempdb..sysobjects WHERE name LIKE ''#logspacestats%'') 
DROP TABLE #logspacestats 
BEGIN
	CREATE TABLE #logspacestats ( 
		dbname VARCHAR(128), 
		flag BIT DEFAULT 1, 
		TotalLogSpace FLOAT, 
		UsedLogSpace FLOAT, 
		status CHAR(1) 
		) 
END

-- this DBCC invocation operates on all databases
-- DBCC appears to ignore databases in Restoring status
INSERT #logspacestats (dbname,Totallogspace,usedlogspace,status) 
EXEC (''DBCC SQLPERF(LOGSPACE) WITH NO_INFOMSGS''); 

-- mmessano 12/7/2007 join on logfilenames table to get the LDF filename and statistics info into the filespacestats table
-- select only the ldf entries, mdf records are handled elsewhere
INSERT dbamaint.dbo.filespacestats (server_name,dbname,flag,total_space,usedspace,freepct,FreeSpace,FileID,Name,FileName) 
	SELECT @@servername
			, lss.dbname
			, lss.flag
			, lss.TotalLogSpace														--total_space
			, (lss.TotalLogSpace * (lss.UsedLogSpace/100))							--usedspace
			, (1-(lss.UsedLogSpace/100))*100									--freepct
			, (lss.TotalLogSpace - (lss.TotalLogSpace * (lss.UsedLogSpace/100)))	--freespace
			, lfn.FileID
			, lfn.Name
			, lfn.filename
		FROM #logspacestats lss JOIN
		#logfilenames lfn ON ( lss.dbname = lfn.dbname AND lfn.filename LIKE ''%ldf'' )

DROP TABLE #logspacestats 
DROP TABLE #logfilenames 

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ETLDuplicates]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ETLDuplicates]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_ETLDuplicates] 

AS
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

IF  EXISTS (SELECT * FROM dbamaint.dbo.sysobjects WHERE name = ''ETLDuplicates'' AND type in (N''U''))
   BEGIN
      TRUNCATE TABLE ETLDuplicates
   END
ELSE
   BEGIN
	CREATE TABLE [dbo].[ETLDuplicates](
		[Server_Name] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[DB_Name] [varchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Loan_ID] [int] NOT NULL,
		[comment] [varchar](512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[LastUpdate] [datetime] NOT NULL
) ON [PRIMARY]
	END

set ansi_warnings off
set xact_abort off
set nocount on
DECLARE @DBNAME sysname
DECLARE @DBNAME_header varchar(75)
Declare @sql_1 varchar(1000)
Declare @sql_2 varchar(1000)
Declare @sql_3 varchar(1000)
Declare @sql_4 varchar(1000)
Declare @sql_5 varchar(1000)
Declare @sql_6 varchar(1000)
Declare @sql_7 varchar(1000)
Declare @sql_8 varchar(1000)
Declare @sql_9 varchar(1000)
Declare @sql_10 varchar(1000)
Declare @dupes varchar(64)

DECLARE dbnames_cursor CURSOR FOR select name from master..sysdatabases where dbid > 4
and name not in (''scripterrors'',''PASCAdmin'',''dbamaint'',''PASolutions'',''PAReporting'',''PAMonitoring'',''PADemoDU'',''PADemoLP'',''distribution'',''CBReporting'', ''Billing'')

OPEN dbnames_cursor

FETCH NEXT FROM dbnames_cursor INTO @DBNAME
WHILE (@@fetch_status <> -1)

BEGIN

-- If the database is currently restoring, ignore it
If (select DATABASEPROPERTYEX(@DBNAME,''STATUS'')) != ''Restoring''
Begin
	PRINT ''Checking '' + @DBNAME
		SELECT @sql_1 =
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' ln_loan_id AS [Loan_ID],'' +
			'' ''''Multiple breo_subject_prop entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.br_REO '' +
			'' where breo_subject_prop = ''''Y'''''' +
			'' group by ln_loan_id, breo_subject_prop'' +
			'' having count(breo_subject_prop) > 1''

		SELECT @sql_2 =
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' ln_loan_id AS [Loan_ID],'' +
			'' ''''Mismatched borrower/assoc borrower.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.borrower br '' +
			'' where not exists (select ln_loan_id, br_ssn, br_assoc_borrower '' +
			'' from '' + @DBNAME + ''.dbo.borrower ijb '' +
			'' where ((br.br_ssn = ijb.br_assoc_borrower) OR (br.br_assoc_borrower = ijb.br_ssn)) '' +
			'' AND br.ln_loan_id=ijb.ln_loan_id) '' +
			'' AND br.br_assoc_borrower IS NOT NULL '' +
			'' AND br.br_assoc_borrower like ''''[0-9]%'''' ''

		SELECT @sql_3 =
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT DISTINCT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' ln_loan_id AS [Loan_ID],'' +
			'' ''''Multiple br_employment entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.br_employment '' +
			'' where be_curr_employ = ''''C'''''' +
			'' group by ln_loan_id, br_id'' +
			'' having count(*) > 1''

		SELECT @sql_4 =
			'' IF  EXISTS (SELECT * FROM '' + @DBNAME + ''.dbo.sysobjects WHERE name = ''''flood'''' AND type = ''''U'''') '' +
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' ln_loan_id AS [Loan_ID],'' +
			'' ''''Multiple flood entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.flood '' +
			'' where do_id IS NULL'' +
			'' group by ln_loan_id'' +
			'' having count(ln_loan_id) > 1''

		SELECT @sql_5 =
			'' IF  EXISTS (SELECT * FROM '' + @DBNAME + ''.dbo.sysobjects WHERE name = ''''Appraisal'''' AND type = ''''U'''') '' +
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' ln_loan_id AS [Loan_ID],'' +
			'' ''''Multiple Appraisal entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.Appraisal '' +
			'' where do_id IS NULL'' +
			'' group by ln_loan_id'' +
			'' having count(ln_loan_id) > 1''

		SELECT @sql_6 =
			'' IF  EXISTS (SELECT * FROM '' + @DBNAME + ''.dbo.sysobjects WHERE name = ''''loan_price_history'''' AND type = ''''U'''') '' +
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' ln_loan_id,'' +
			'' ''''Multiple loan_price_history entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.loan_price_history '' +
			'' where lph_reg_status = ''''Lock'''''' +
			'' group by ln_loan_id'' +
			'' having count(ln_loan_id) > 1''

		SELECT @sql_7 =
			'' IF  EXISTS (SELECT * FROM '' + @DBNAME + ''.dbo.sysobjects WHERE name = ''''services_loan'''' AND type = ''''U'''') '' +
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' ln_loan_id,'' +
			'' ''''Multiple services_loan entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.services_loan '' +
			'' group by ln_loan_id'' +
			'' having count(ln_loan_id) > 1''


		SELECT @sql_8 =
			'' IF  EXISTS (SELECT * FROM '' + @DBNAME + ''.dbo.sysobjects WHERE name = ''''shipping'''' AND type = ''''U'''') '' +
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' loanid,'' +
			'' ''''Multiple shipping entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.shipping '' +
			'' group by loanid'' +
			'' having count(loanid) > 1''

		SELECT @sql_9 =
			'' IF  EXISTS (SELECT * FROM '' + @DBNAME + ''.dbo.sysobjects WHERE name = ''''title'''' AND type = ''''U'''') '' +
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' loanid,'' +
			'' ''''Multiple title entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.title '' +
			'' group by loanid'' +
			'' having count(loanid) > 1''
			
		SELECT @sql_10 =
			'' IF  EXISTS (SELECT * FROM '' + @DBNAME + ''.dbo.sysobjects WHERE name = ''''addl_loan_data'''' AND type = ''''U'''') '' +
			'' INSERT into dbamaint.dbo.ETLDuplicates '' +
			'' SELECT '''''' +  @@servername  + '''''' AS [Server_Name],'' +
			'' '''''' + @DBNAME + '''''' AS [DB_Name],'' +
			'' ln_loan_id,'' +
			'' ''''Multiple addl_loan_data 1003 export entries found.'''' AS comment,'' +
			'' GetDate() as timestamp '' +
			'' from '' + @DBNAME + ''.dbo.addl_loan_data '' +
			'' where ald_name = ''''1003_last_export'''''' +
			'' group by ln_loan_id'' +
			'' having count(ln_loan_id) > 1''			

		EXEC(@sql_1)
		EXEC(@sql_2)
		EXEC(@sql_3)
		EXEC(@sql_4)
		EXEC(@sql_5)
		EXEC(@sql_6)
		EXEC(@sql_7)
		EXEC(@sql_8)
		EXEC(@sql_9)
		EXEC(@sql_10)

			PRINT ''Completed checking '' + @DBNAME + char(10)
		FETCH NEXT FROM dbnames_cursor INTO @DBNAME
	END

ELSE
	FETCH NEXT FROM dbnames_cursor INTO @DBNAME

END

CLOSE dbnames_cursor
DEALLOCATE dbnames_cursor



' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_DMartDRRecovery]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_DMartDRRecovery]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		mmessano
-- Create date: 03/04/2011
-- Description:	Creates SQL statements to create the Data and Srtage databases for DMart.
--				Only usable on DMart dayabase servers.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_DMartDRRecovery] 
	@dbs NVARCHAR(MAX) = NULL

AS
BEGIN
	SET NOCOUNT ON;

--USE PA_DMart
--GO

-- DMart DR recovery
DECLARE @SourceDB NVARCHAR(64)
		, @StageDB NVARCHAR(64)
		, @ReportDB NVARCHAR(64)
		, @TemplateDataDB NVARCHAR(128)
		, @TemplateStageDB NVARCHAR(128)

IF @DBS IS NOT NULL
-- create statements for specified clients
	BEGIN
	DECLARE DBs CURSOR FOR
		SELECT SourceDB
				, StageDB, ReportDB
				, (SELECT TOP 1 physical_device_name
					FROM msdb.dbo.backupset a INNER JOIN msdb.dbo.backupmediafamily b
						ON a.media_set_id = b.media_set_id
					WHERE database_name = ''DMart_Template_Data''
					AND type=''D''
					ORDER BY backup_finish_date desc) AS TemplateDateDB
				, (SELECT TOP 1 physical_device_name
					FROM msdb.dbo.backupset a INNER JOIN msdb.dbo.backupmediafamily b
						ON a.media_set_id = b.media_set_id
					WHERE database_name = ''DMart_Template_Stage''
					AND type=''D''
					ORDER BY backup_finish_date desc) AS TemplateStageDB
		FROM PA_Dmart.dbo.ClientConnection
		WHERE SourceDB IN (select * from [dbamaint].[dbo].[udf_split](@dbs,'',''))
		ORDER BY SourceDB
	END
ELSE
-- create statements for all clients in ClientConnection
	BEGIN
	DECLARE DBs CURSOR FOR
		SELECT SourceDB
				, StageDB, ReportDB
				, (SELECT TOP 1 physical_device_name
					FROM msdb.dbo.backupset a INNER JOIN msdb.dbo.backupmediafamily b
						ON a.media_set_id = b.media_set_id
					WHERE database_name = ''DMart_Template_Data''
					AND type=''D''
					ORDER BY backup_finish_date desc) AS TemplateDateDB
				, (SELECT TOP 1 physical_device_name
					FROM msdb.dbo.backupset a INNER JOIN msdb.dbo.backupmediafamily b
						ON a.media_set_id = b.media_set_id
					WHERE database_name = ''DMart_Template_Stage''
					AND type=''D''
					ORDER BY backup_finish_date desc) AS TemplateStageDB
		FROM PA_Dmart.dbo.ClientConnection
		ORDER BY SourceDB
	END


	
OPEN DBs
FETCH NEXT FROM DBs INTO @SourceDB, @StageDB, @ReportDB, @TemplateDataDB, @TemplateStageDB
WHILE @@FETCH_STATUS = 0

BEGIN
-- create statement for Data DB
PRINT ''------------ BEGIN '' + @SourceDB + '' ------------''
PRINT ''---- '' + @SourceDB + '' Data db ----''
PRINT ''RESTORE DATABASE ['' + @ReportDB + '']''
PRINT ''FROM DISK = N'''''' + @TemplateDataDB + ''''''''
PRINT ''WITH FILE = 1,''
PRINT ''MOVE N''''DMart_Template_Data_data'''' TO N''''G:\MSSQL10.MSSQLSERVER\MSSQL\DATA\'' + @ReportDB + ''_Data.MDF'''',''
PRINT ''MOVE N''''DMart_Template_Data_log''''  TO N''''H:\MSSQL10.MSSQLSERVER\MSSQL\LDF\'' + @ReportDB + ''_Log.LDF'''',''
PRINT ''NOUNLOAD, STATS = 10''
PRINT ''GO''
-- fix logical names
PRINT ''ALTER DATABASE ['' + @ReportDB + '']''
PRINT ''MODIFY FILE (NAME=N''''DMart_Template_Data_data'''', NEWNAME=N'''''' + @ReportDB + ''_Data'' + '''''')''
PRINT ''GO''
PRINT ''ALTER DATABASE ['' + @ReportDB + '']''
PRINT ''MODIFY FILE (NAME=N''''DMart_Template_Data_log'''', NEWNAME=N'''''' + @ReportDB + ''_Log'' + '''''')''
PRINT ''GO''
-- fix ownership
PRINT ''USE ['' + @ReportDB + '']''
PRINT ''GO''
PRINT ''EXEC dbo.sp_changedbowner @loginame = N''''sa''''''
PRINT ''GO''

-- create statement for Stage DB
PRINT ''---- '' + @SourceDB + '' Stage db ----''
PRINT ''RESTORE DATABASE ['' + @StageDB + '']''
PRINT ''FROM DISK = N'''''' + @TemplateStageDB + ''''''''
PRINT ''WITH FILE = 1,''
PRINT ''MOVE N''''DMart_Template_Stage_data'''' TO N''''G:\MSSQL10.MSSQLSERVER\MSSQL\DATA\'' + @StageDB + ''_Data.MDF'''',''
PRINT ''MOVE N''''DMart_Template_Stage_log''''  TO N''''H:\MSSQL10.MSSQLSERVER\MSSQL\LDF\'' + @StageDB + ''_Log.LDF'''',''
PRINT ''NOUNLOAD, STATS = 10''
PRINT ''GO''
-- fix logical names
PRINT ''ALTER DATABASE ['' + @StageDB + '']''
PRINT ''MODIFY FILE (NAME=N''''DMart_Template_Stage_data'''', NEWNAME=N'''''' + @StageDB + ''_Data'' + '''''')''
PRINT ''GO''
PRINT ''ALTER DATABASE ['' + @StageDB + '']''
PRINT ''MODIFY FILE (NAME=N''''DMart_Template_Stage_log'''', NEWNAME=N'''''' + @StageDB + ''_Log'' + '''''')''
PRINT ''GO''
-- fix ownership
PRINT ''USE ['' + @StageDB + '']''
PRINT ''GO''
PRINT ''EXEC dbo.sp_changedbowner @loginame = N''''sa''''''
PRINT ''GO'' 
PRINT ''------------ END '' + @SourceDB + '' ------------'' + CHAR(10) + CHAR(10)


FETCH NEXT FROM DBs INTO @SourceDB, @StageDB, @ReportDB, @TemplateDataDB, @TemplateStageDB
END

CLOSE DBs
DEALLOCATE DBs

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_CollectTempMigrationTables]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CollectTempMigrationTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		mmessano
-- Create date: 9/10/2012
-- Description:	Queries each database for tables matching the criteria.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_CollectTempMigrationTables] 

AS

BEGIN

SET NOCOUNT ON;

TRUNCATE TABLE TempMigrationTables;

INSERT INTO TempMigrationTables
exec sp_MSforeachdb 
''
BEGIN
SELECT DISTINCT @@SERVERNAME, ''''?'''' AS DBName
		, name
FROM [?].sys.tables
WHERE name COLLATE SQL_Latin1_General_CP1_CI_AS NOT LIKE ''''dbo_%_CT''''
AND name COLLATE SQL_Latin1_General_CP1_CI_AS NOT IN 
	(
	SELECT td_physical_name
	FROM opsinfo.database_dictionary.dbo.table_def
	WHERE td_table_location COLLATE SQL_Latin1_General_CP1_CI_AS = ''''C''''
	)
AND name COLLATE SQL_Latin1_General_CP1_CI_AS NOT IN (
				''''CdcTables''''
				, ''''CdcExcludedColumns''''
				, ''''systranschemas''''
				, ''''change_tables''''
				, ''''lsn_time_mapping''''
				, ''''ddl_history''''
				, ''''captured_columns''''
				, ''''index_columns''''
				, ''''UserMLA''''
				, ''''UserMLAQuestions''''
				, ''''SystemMLAQuestions''''
				, ''''SystemMLAImages''''
				, ''''SystemMLAPassPhrases''''
				, ''''dtproperties''''
				, ''''custom_codes''''
				, ''''BusinessUnit''''
				, ''''Client_Services''''
				, ''''CurrentTransactions''''
				, ''''CustomLoanNumbers''''
				, ''''CustomServicingLoanNumbers''''
				, ''''DBServers_Names''''
				, ''''initial_disclosure_lib''''
				, ''''open_transactions''''
				, ''''open_transactions_history''''
				, ''''Rpt_FootprintsTickets''''
				, ''''Rpt_ResponseTime''''
				, ''''SecurityGOA_Temp''''
				, ''''CurrentTransactions''''
				, ''''LoanWizardExecutions''''
				, ''''transaction_summary''''
				)
AND name COLLATE SQL_Latin1_General_CP1_CI_AS NOT LIKE ''''MSpeer%''''				
AND name COLLATE SQL_Latin1_General_CP1_CI_AS NOT LIKE ''''MSpub%''''
AND name COLLATE SQL_Latin1_General_CP1_CI_AS NOT LIKE ''''sys%''''
--AND name COLLATE SQL_Latin1_General_CP1_CI_AS LIKE ''''%[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]''''
--AND name COLLATE SQL_Latin1_General_CP1_CI_AS LIKE ''''%_[0-9]_[0-9]''''
AND name COLLATE SQL_Latin1_General_CP1_CI_AS LIKE ''''%_[0-9]''''
END;'';


SELECT * FROM TempMigrationTables
WHERE DatabaseName NOT IN (''master'', ''tempdb'', ''msdb'', ''dbamaint'', ''distribution'')
ORDER BY TableName, DatabaseName


END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_CheckDBIntegrity]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CheckDBIntegrity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROC [dbo].[dbm_CheckDBIntegrity]
@database_name SYSNAME=NULL
AS
IF @database_name IS NULL -- Run against all databases
BEGIN
   DECLARE database_cursor CURSOR FOR
   SELECT name
   FROM sys.databases db
   WHERE name NOT IN (''master'',''model'',''msdb'',''tempdb'')
   AND db.state_desc = ''ONLINE''
   AND source_database_id IS NULL -- REAL DBS ONLY (Not Snapshots)
   AND is_read_only = 0

   OPEN database_cursor
   FETCH next FROM database_cursor INTO @database_name
   WHILE @@FETCH_STATUS=0
   BEGIN
  
       INSERT INTO DBCCHistory ([Error], [Level], [State], MessageText, RepairLevel, [Status],
       [DbId], Id, IndId, PartitionId, AllocUnitId, [File], Page, Slot, RefFile, RefPage,
       RefSlot,Allocation)
       EXEC (''DBCC CHECKDB('''''' + @database_name + '''''') WITH TABLERESULTS'')
       
       -- update table with db name
       UPDATE dbamaint.dbo.DBCCHistory
		SET DBName = @database_name WHERE DBName IS NULL
		
       FETCH next FROM database_cursor INTO @database_name
   END

   CLOSE database_cursor
   DEALLOCATE database_cursor
END

ELSE -- run against a specified database (ie: usp_CheckDBIntegrity ''DB Name Here''

   INSERT INTO DBCCHistory ([Error], [Level], [State], MessageText, RepairLevel, [Status],
   [DbId], Id, IndId, PartitionId, AllocUnitId, [File], Page, Slot, RefFile, RefPage, RefSlot,Allocation)
   EXEC (''DBCC CHECKDB('''''' + @database_name + '''''') WITH TABLERESULTS'')
   -- update table with db name
   UPDATE dbamaint.dbo.DBCCHistory
   SET DBName = @database_name WHERE DBName IS NULL

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_CDCVerify]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CDCVerify]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		sbrown
-- Create date: 12/9/2010
-- Description:	verify CDC is enabled
-- =============================================

CREATE PROCEDURE [dbo].[dbm_CDCVerify]
	-- Add the parameters for the stored procedure here
	@StdTblCount int = 245,
	@BetaTblCount int = 248,
	@StdLSVersion varchar(5) = ''12.0'',
	@BetaLSVersion varchar(5) = ''12.1''

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


DECLARE 
		@dbname					VARCHAR(128),
		@sql					NVARCHAR(4000),
		@Version				VARCHAR(1000)


SELECT @Version = @@VERSION
--Drop everything before the dash
SET @Version = SUBSTRING( @Version, CHARINDEX( ''-'', @Version ) + 2, 12 )
--Clean up the string, grab the major number
SET @Version = SUBSTRING( @Version, 0, CHARINDEX( ''.'', @Version))

--check for SQL 2008
IF ( @Version = ''9'' )
	BEGIN
		PRINT ''CDC not supported on SQL server 2005 or older.'';
		return;
	END
ELSE
	BEGIN -- enumerate databases etc
	IF  EXISTS (SELECT * FROM dbamaint.dbo.sysobjects WHERE name = ''CDCEnabled'' AND type in (N''U''))
		BEGIN
			TRUNCATE TABLE CDCEnabled
		END
	ELSE
		BEGIN
			CREATE TABLE [dbo].[CDCEnabled](
				[record_number] [int] IDENTITY(1,1) NOT NULL,
				[ServerName] [varchar](32) NOT NULL,
				[DBname] [varchar](50) NOT NULL,
				[DB_cdc_enabled] [int] NULL,
				[tables_cdc_enabled] [int] NULL,
				[LSVersion] [varchar](10) NULL
			) ON [PRIMARY]
		END

	DECLARE db_cursor CURSOR FAST_FORWARD
		FOR
			select name from master.sys.databases
			WHERE database_id > 5
			AND  (select DATABASEPROPERTYEX(name,''STATUS'')) != ''Restoring''
			AND  (select DATABASEPROPERTYEX(name,''STATUS'')) != ''OFFLINE''
			AND  (select DATABASEPROPERTYEX(name,''Updateability '')) != ''READ_ONLY''
	 		AND name not like ''[0-9]%''
			and is_cdc_enabled = ''1''
			order by 1
		
		OPEN db_cursor

		FETCH NEXT FROM db_cursor INTO @dbname

		WHILE @@FETCH_STATUS = 0 
		BEGIN

			set @sql =	N''
			Insert into CDCEnabled([ServerName],[DBname],[DB_cdc_enabled],[tables_cdc_enabled])
			Values ( 
			'''''' + @@SERVERNAME + '''''', 
			'''''' + @dbname + '''''',
			(select is_cdc_enabled from sys.databases where name ='''''' + @dbname + ''''''),
			(select count(*) from ['' + @dbname + ''].sys.tables
					where type_desc = ''''USER_TABLE''''and is_tracked_by_cdc = 1)
					);''	
					
			EXEC sp_executesql @sql
			print (@sql)
						
		FETCH NEXT FROM db_cursor INTO  @dbname
		END 

	CLOSE db_cursor
	DEALLOCATE db_cursor

exec sp_MSforeachdb ''
use [?]
IF object_id(''''borrower'''') IS NOT NULL AND object_id(''''cdc.lsn_time_mapping'''') IS NOT NULL
	begin
		Merge dbamaint.dbo.CDCEnabled AS Target
		Using	(select top 1 DB_NAME()as DBName, LSVersion = LEFT(sc_value,4)
			from [?].dbo.system_configuration
			where sc_parameter = ''''SiteVersion'''') As Source 
		ON (Target.DBName = Source.DBName)
		WHEN MATCHED THEN
			UPDATE 
			Set Target.LSVersion =  Source.LSVersion 
		WHEN NOT MATCHED BY TARGET THEN
		Insert	(DBName, LSVersion)
		Values	(DBName, LSVersion);
	end''			
;	
		

	select Servername, DBname, DB_cdc_enabled , tables_cdc_enabled, LSVersion from CDCEnabled
		where DB_cdc_enabled = 0 OR 
		(LSVersion = @StdLSVersion AND tables_cdc_enabled <> @StdTblCount)
		OR (LSVersion = @BetaLSVersion AND tables_cdc_enabled <> @BetaTblCount)

			
	END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_CDCStatus]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_CDCStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		sbrown
-- Create date: 12/22/2010
-- Description:	Get CDC status of each DB
-- =============================================
CREATE PROCEDURE [dbo].[dbm_CDCStatus] 
	-- Add the parameters for the stored procedure here

AS
BEGIN

	SET NOCOUNT ON;

-- clean the table, delete databases that are not found on the server
MERGE dbamaint.dbo.CDCStatus AS Target
	USING (SELECT Name AS DBName from sys.databases
			WHERE name NOT IN ( 
					''master''
				  , ''tempdb''
				  , ''model''
				  , ''msdb''
				  , ''dbamaint''
				  , ''distribution''
				  , ''ScriptErrors'' 
				  )
				  AND is_cdc_enabled = 1
		   )  AS Source
	ON (Target.DBName = Source.DBName)
	WHEN NOT MATCHED BY SOURCE THEN
		DELETE
--OUTPUT $action, inserted.*, deleted.*
;


exec sp_MSforeachdb ''
use ?
IF object_id(''''borrower'''') IS NOT NULL AND object_id(''''cdc.lsn_time_mapping'''') IS NOT NULL
	begin
		Merge dbamaint.dbo.CDCStatus AS Target
		Using	(select top 1  DB_NAME()  as DBName, Start_time, last_commit_cdc_time 
				from sys.dm_cdc_log_scan_sessions order by last_commit_time desc)
				As Source  
		ON (Target.DBName = Source.DBName)
		WHEN MATCHED THEN
			UPDATE
				Set	 Target.logscan_StartTime =  Source.Start_time 
					,Target.logscan_LastCommitTime =  Source.last_commit_cdc_time
		WHEN NOT MATCHED BY TARGET THEN 
			INSERT	(DBName, logscan_StartTime, logscan_LastCommitTime)
			Values	(DBName, Start_time, last_commit_cdc_time)
		;
	end''			
;			
exec sp_MSforeachdb ''
use ?;
IF object_id(''''borrower'''') IS NOT NULL AND object_id(''''cdc.lsn_time_mapping'''') IS NOT NULL
	begin
		Merge dbamaint.dbo.CDCStatus AS Target
		Using	(select top 1  DB_NAME()  as DBName, tran_end_time
                FROM cdc.lsn_time_mapping 
                order by tran_end_time desc)
				As Source 
		ON (Target.DBName = Source.DBName)
		WHEN MATCHED THEN
			UPDATE
				Set	 Target.lsn_EndTime =  Source.tran_end_time 
		WHEN NOT MATCHED BY TARGET THEN
			Insert	(DBName, lsn_EndTime)
			Values	(DBName, tran_end_time)		
		;
	end''			
;
exec sp_MSforeachdb ''
use ?
IF object_id(''''borrower'''') IS NOT NULL AND object_id(''''cdc.lsn_time_mapping'''') IS NOT NULL
	begin
		Merge dbamaint.dbo.CDCStatus AS Target
		Using	(select top 1 DB_NAME()as DBName, count(*) is_tracked_by_cdc 
				from sys.tables	
				where is_tracked_by_cdc = 1)
				As Source 
		ON (Target.DBName = Source.DBName)
		WHEN MATCHED THEN
			UPDATE
				Set	 Target.cdc_enabled_tables =  Source.is_tracked_by_cdc 
		WHEN NOT MATCHED BY TARGET THEN
			Insert	(DBName, cdc_enabled_tables)
			Values	(DBName, is_tracked_by_cdc)		
		;
	end''			
;	

END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_BlockInputbuffer]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_BlockInputbuffer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[dbm_BlockInputbuffer]
as

SET NOCOUNT ON
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_WARNINGS OFF

INSERT INTO dbamaint.dbo.BlockedQry
SELECT getdate() as InsDate
, s.[Status]
, DB_NAME(s.dbid) as DBName
, s.SPID
, s.CPU
, s.Physical_IO
, s.WaitTime
, s.Blocked as BlockedBy
, SUBSTRING(s.HostName, 1, 36) HostName
, SUBSTRING(s.Program_Name, 1, 100) PrgName
, SUBSTRING(s.nt_username, 1, 50) NtUserName
, Text LastCmd
, s.Login_Time
, s.Last_Batch
, s.Open_Tran
FROM master.dbo.sysprocesses s
CROSS APPLY ::fn_get_sql(s.sql_handle)
WHERE blocked > 0
AND SPID <> @@SPID
union all
SELECT getdate() as InsDate
, s.[Status]
, DB_NAME(s.dbid) as DBName
, s.SPID
, s.CPU
, s.Physical_IO
, s.WaitTime
, s.Blocked as BlockedBy
, SUBSTRING(s.HostName, 1, 36) HostName
, SUBSTRING(s.Program_Name, 1, 100) PrgName
, SUBSTRING(s.nt_username, 1, 50) NtUserName
, Text LastCmd
, s.Login_Time
, s.Last_Batch
, s.Open_Tran
FROM master.dbo.sysprocesses s
CROSS APPLY ::fn_get_sql(s.sql_handle)
WHERE (blocked = 0 and spid IN (SELECT blocked FROM master.dbo.sysprocesses (NOLOCK) WHERE blocked > 0))
AND SPID <> @@SPID
order by blocked
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_autogrow_db]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_autogrow_db]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[dbm_autogrow_db]
	@TrigPct DECIMAL(9,2) = 8.0,
	@TargetPct DECIMAL(9,2) = .84  -- Desired freespace percentage

AS 

SET ANSI_WARNINGS OFF
SET XACT_ABORT OFF
SET NOCOUNT ON

DECLARE @SMALLDBNAME SYSNAME
DECLARE @SMALLFILENAME SYSNAME
DECLARE @sql VARCHAR(512)

DECLARE GrowSmall_cursor CURSOR FOR 
	SELECT dbname, name FROM dbamaint.dbo.filespacestats
	WHERE Fileid=1
		and total_space <= 10
	
OPEN GrowSmall_cursor
FETCH NEXT FROM GrowSmall_cursor INTO @SMALLDBNAME, @SMALLFILENAME
WHILE (@@fetch_status <> -1)

BEGIN
		SELECT @sql =
		''ALTER DATABASE [''+ @SMALLDBNAME + ''] MODIFY FILE ( NAME = N'''''' + @SMALLFILENAME + '''''', SIZE = 11264KB );''
		EXEC(@sql) -- comment out when testing
	FETCH NEXT FROM GrowSmall_cursor INTO @SMALLDBNAME, @SMALLFILENAME
END

CLOSE GrowSmall_cursor
DEALLOCATE GrowSmall_cursor

--------------------------------------------------------------------------------------------------------

DECLARE @DBName VARCHAR(80)
DECLARE @NewSize INT;
DECLARE @FileName VARCHAR(500);

DECLARE dbname_cursor CURSOR FOR 
	SELECT dbname, (usedspace/@TargetPct) + 10, name 
	FROM dbamaint.dbo.filespacestats
	WHERE fileid=1 
		AND freepct <= @TrigPct 
	ORDER BY freepct
	
OPEN dbname_cursor
FETCH NEXT FROM dbname_cursor INTO @DBName, @NewSize, @FileName
WHILE (@@fetch_status <> -1)

BEGIN
	IF (@@fetch_status <> -2)
	BEGIN
		DECLARE @RunCmd VARCHAR(500)
		SELECT @RunCmd = ''ALTER DATABASE ['' + @DBName + ''] MODIFY FILE ( NAME = N'''''' + @FileName + '''''' , SIZE = '' + CAST(@NewSize AS VARCHAR(50)) +'');'';
--		PRINT @RunCmd;
		EXEC (@RunCmd);
	END
	FETCH NEXT FROM dbname_cursor INTO @DBName, @NewSize, @FileName
END

CLOSE dbname_cursor
DEALLOCATE dbname_cursor

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_persist_missing_index_DMV_data]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_persist_missing_index_DMV_data]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_persist_missing_index_DMV_data] AS  
DECLARE @last_service_start_date datetime 
DECLARE @last_data_persist_date datetime

/*
Two of the three DMVs that comprise the suite of missing index DMVs do not 
have running total columns.  Indentifier columns compose all their columns.
Therefore there is only the need to insert new records that do not exist in the 
persisted data tables; not perform updates or maintain running totals.
*/

--Insert new records into dm_db_missing_index_groups
INSERT INTO [dbamaint].[dbo].[dm_db_missing_index_groups]
           ([index_group_handle], [index_handle], [date_stamp])
SELECT SDDMIG.[index_group_handle], SDDMIG.[index_handle], GETDATE()
FROM sys.[dm_db_missing_index_groups] SDDMIG
   LEFT JOIN [dbamaint].[dbo].[dm_db_missing_index_groups] MDDMIG
       ON SDDMIG.[index_group_handle] = MDDMIG.[index_group_handle]
       AND SDDMIG.[index_handle] = MDDMIG.[index_handle]
WHERE MDDMIG.[index_group_handle] IS NULL

--Insert new records into dm_db_missing_index_details
INSERT INTO [dbamaint].[dbo].[dm_db_missing_index_details]
           (
           [index_handle], [database_id], [object_id],
           [equality_columns], [inequality_columns], [included_columns],
           [statement], [date_stamp]
           )
SELECT SDDMID.[index_handle], SDDMID.[database_id], SDDMID.[object_id],
           SDDMID.[equality_columns], SDDMID.[inequality_columns], SDDMID.[included_columns],
           SDDMID.[statement], GETDATE()
FROM sys.[dm_db_missing_index_details] SDDMID
   LEFT JOIN [dbamaint].[dbo].[dm_db_missing_index_details] MDDMID
       ON SDDMID.[index_handle] = MDDMID.[index_handle]
WHERE MDDMID.[index_handle] IS NULL

/*
The sys.dm_db_missing_index_columns DMF only provides normalized 
column metadata from sys.dm_db_missing_index_details.  I only insert new rows into
the table upon each cycle of persisting data from the DMOs.
*/

INSERT INTO [dbamaint].[dbo].[dm_db_missing_index_columns]
   ([index_handle] ,[column_id] ,[column_name], [column_usage], date_stamp)
SELECT SDDMID.[index_handle], SDDMIC.[column_id], SDDMIC.[column_name], SDDMIC.[column_usage], GETDATE()
FROM sys.[dm_db_missing_index_details] SDDMID 
   CROSS APPLY sys.[dm_db_missing_index_columns](SDDMID.index_handle) SDDMIC
   LEFT JOIN [dbamaint].[dbo].[dm_db_missing_index_columns] MDDMIC
       ON SDDMID.[index_handle] = MDDMIC.[index_handle]
           AND SDDMIC.[column_id] = MDDMIC.[column_id]
WHERE MDDMIC.[index_handle] IS NULL
ORDER BY SDDMID.[index_handle]

--Determine last service restart date based upon tempdb creation date 
SELECT @last_service_start_date =   
 SD.[create_date]  
 FROM sys.databases SD  
 WHERE SD.[name] = ''tempdb'' 
  
--Return the value for the last refresh date of the persisting table 
SELECT @last_data_persist_date =  
 MAX(MDDMIGS.[date_stamp])  
 FROM [dbamaint].[dbo].[dm_db_missing_index_group_stats] MDDMIGS 

--Take care of updated records first 
IF @last_service_start_date < @last_data_persist_date 
 BEGIN 
   --Service restart date > last poll date 
   PRINT ''The latest persist date was '' +  
     CAST(@last_data_persist_date AS VARCHAR(50)) +  
     ''; no restarts occurred since '' +  
     CAST(@last_service_start_date AS VARCHAR(50)) + 
     ''  ('' + CAST(DATEDIFF(d, @last_service_start_date, @last_data_persist_date) AS VARCHAR(10)) +  
     '' days ago.)'' 
     
   UPDATE MDDMIGS
   SET
       MDDMIGS.unique_compiles = MDDMIGS.[unique_compiles] + (SDDMIGS.[unique_compiles] - MDDMIGS.[last_poll_unique_compiles]), 
       MDDMIGS.[user_seeks] = MDDMIGS.[user_seeks] + (SDDMIGS.[user_seeks] - MDDMIGS.[last_poll_user_seeks]), 
       MDDMIGS.[user_scans] = MDDMIGS.[user_scans] + (SDDMIGS.[user_scans] - MDDMIGS.[last_poll_user_scans]), 
       MDDMIGS.[last_user_seek] = SDDMIGS.[last_user_seek],
       MDDMIGS.[last_user_scan] = SDDMIGS.[last_user_scan],
       MDDMIGS.[avg_total_user_cost] = SDDMIGS.[avg_total_user_cost],
       MDDMIGS.[avg_user_impact] = SDDMIGS.[avg_user_impact],
       MDDMIGS.[system_seeks] = MDDMIGS.[system_seeks] + (SDDMIGS.[system_seeks] - MDDMIGS.[last_poll_system_seeks]), 
       MDDMIGS.[system_scans] = MDDMIGS.[system_scans] + (SDDMIGS.[system_scans] - MDDMIGS.[last_poll_system_scans]), 
       MDDMIGS.[last_system_seek] = SDDMIGS.[last_system_seek],
       MDDMIGS.[last_system_scan] = SDDMIGS.[last_system_scan],
       MDDMIGS.[avg_total_system_cost] = SDDMIGS.[avg_total_system_cost],
       MDDMIGS.[avg_system_impact] = SDDMIGS.[avg_system_impact],
       MDDMIGS.[last_poll_unique_compiles] = SDDMIGS.[unique_compiles], 
       MDDMIGS.[last_poll_user_seeks] = SDDMIGS.[user_seeks], 
       MDDMIGS.[last_poll_user_scans] = SDDMIGS.[user_scans], 
       MDDMIGS.[last_poll_system_seeks] = SDDMIGS.[system_seeks], 
       MDDMIGS.[last_poll_system_scans] = SDDMIGS.[system_scans], 
       MDDMIGS.date_stamp = GETDATE() 
   FROM [dbamaint].[dbo].[dm_db_missing_index_group_stats] MDDMIGS INNER JOIN sys.[dm_db_missing_index_group_stats] SDDMIGS
       ON MDDMIGS.group_handle = SDDMIGS.group_handle
       
END
ELSE
BEGIN 
   --Service restart date > last poll date 
   PRINT ''Lastest service restart occurred on '' +  
     CAST(@last_service_start_date AS VARCHAR(50)) +  
     '' which is after the latest persist date of '' +  
     CAST(@last_data_persist_date AS VARCHAR(50)) 
     
   UPDATE MDDMIGS
   SET
       MDDMIGS.unique_compiles = MDDMIGS.[unique_compiles] + SDDMIGS.[unique_compiles], 
       MDDMIGS.[user_seeks] = MDDMIGS.[user_seeks] + SDDMIGS.[user_seeks], 
       MDDMIGS.[user_scans] = MDDMIGS.[user_scans] + SDDMIGS.[user_scans], 
       MDDMIGS.[last_user_seek] = SDDMIGS.[last_user_seek],
       MDDMIGS.[last_user_scan] = SDDMIGS.[last_user_scan],
       MDDMIGS.[avg_total_user_cost] = SDDMIGS.[avg_total_user_cost],
       MDDMIGS.[avg_user_impact] = SDDMIGS.[avg_user_impact],
       MDDMIGS.[system_seeks] = MDDMIGS.[system_seeks] + SDDMIGS.[system_seeks], 
       MDDMIGS.[system_scans] = MDDMIGS.[system_scans] + SDDMIGS.[system_scans], 
       MDDMIGS.[last_system_seek] = SDDMIGS.[last_system_seek],
       MDDMIGS.[last_system_scan] = SDDMIGS.[last_system_scan],
       MDDMIGS.[avg_total_system_cost] = SDDMIGS.[avg_total_system_cost],
       MDDMIGS.[avg_system_impact] = SDDMIGS.[avg_system_impact],
       MDDMIGS.[last_poll_unique_compiles] = SDDMIGS.[unique_compiles], 
       MDDMIGS.[last_poll_user_seeks] = SDDMIGS.[user_seeks], 
       MDDMIGS.[last_poll_user_scans] = SDDMIGS.[user_scans], 
       MDDMIGS.[last_poll_system_seeks] = SDDMIGS.[system_seeks], 
       MDDMIGS.[last_poll_system_scans] = SDDMIGS.[system_scans], 
       MDDMIGS.date_stamp = GETDATE() 
   FROM [dbamaint].[dbo].[dm_db_missing_index_group_stats] MDDMIGS INNER JOIN sys.[dm_db_missing_index_group_stats] SDDMIGS
       ON MDDMIGS.group_handle = SDDMIGS.group_handle
    
END

--Take care of new records next 
INSERT INTO [dbamaint].[dbo].[dm_db_missing_index_group_stats]
   ( 
   [group_handle], [unique_compiles], [user_seeks], 
   [user_scans], [last_user_seek], [last_user_scan], 
   [avg_total_user_cost], [avg_user_impact], [system_seeks], 
   [system_scans], [last_system_seek], [last_system_scan], 
   [avg_total_system_cost], [avg_system_impact], [last_poll_unique_compiles], 
   [last_poll_user_seeks],     [last_poll_user_scans], [last_poll_system_seeks], 
   [last_poll_system_scans], [date_stamp] 
   ) 
SELECT 
   SDDMIGS.[group_handle], SDDMIGS.[unique_compiles], SDDMIGS.[user_seeks], 
   SDDMIGS.[user_scans], SDDMIGS.[last_user_seek], SDDMIGS.[last_user_scan], 
   SDDMIGS.[avg_total_user_cost], SDDMIGS.[avg_user_impact], SDDMIGS.[system_seeks],
   SDDMIGS.[system_scans], SDDMIGS.[last_system_seek], SDDMIGS.[last_system_scan], 
   SDDMIGS.[avg_total_system_cost], SDDMIGS.[avg_system_impact], SDDMIGS.[unique_compiles], 
   SDDMIGS.[user_seeks], SDDMIGS.[user_scans], SDDMIGS.[system_seeks], 
   SDDMIGS.[system_scans], GETDATE()    
FROM [sys].[dm_db_missing_index_group_stats] SDDMIGS
   LEFT JOIN [dbamaint].[dbo].[dm_db_missing_index_group_stats] MDDMIGS
       ON SDDMIGS.[group_handle] = MDDMIGS.[group_handle]
WHERE MDDMIGS.[group_handle] IS NULL
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_persist_dm_db_index_usage_stats]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_persist_dm_db_index_usage_stats]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_persist_dm_db_index_usage_stats] AS 
DECLARE @last_service_start_date datetime
DECLARE @last_data_persist_date datetime

--Determine last service restart date based upon tempdb creation date
SELECT @last_service_start_date =  
  SD.[create_date] 
  FROM sys.databases SD 
  WHERE SD.[name] = ''tempdb''
  
--Return the value for the last refresh date of the persisting table
SELECT @last_data_persist_date = 
  MAX(MDDIUS.[date_stamp]) 
  FROM [dbamaint].[dbo].[dm_db_index_usage_stats] MDDIUS

--Take care of updated records first
IF @last_service_start_date < @last_data_persist_date
  BEGIN
     --Service restart date > last poll date
     PRINT ''The latest persist date was '' + 
        CAST(@last_data_persist_date AS VARCHAR(50)) + 
        ''; no restarts occurred since '' + 
        CAST(@last_service_start_date AS VARCHAR(50)) +
        ''  ('' + CAST(DATEDIFF(d, @last_service_start_date, @last_data_persist_date) AS VARCHAR(10)) + 
        '' days ago.)''

     UPDATE MDDIUS
     SET 
        MDDIUS.[user_seeks] = MDDIUS.[user_seeks]+(SDDIUS.[user_seeks] - MDDIUS.[last_poll_user_seeks]),
        MDDIUS.[user_scans] = MDDIUS.[user_scans]+(SDDIUS.[user_scans] - MDDIUS.[last_poll_user_scans]),
        MDDIUS.[user_lookups] = MDDIUS.[user_lookups]+(SDDIUS.[user_lookups] - MDDIUS.[last_poll_user_lookups]),
        MDDIUS.[user_updates] = MDDIUS.[user_updates]+(SDDIUS.[user_updates] - MDDIUS.[last_poll_user_updates]),
        MDDIUS.[last_user_seek] = SDDIUS.[last_user_seek],
        MDDIUS.[last_user_scan] = SDDIUS.[last_user_scan],
        MDDIUS.[last_user_lookup] = SDDIUS.[last_user_lookup],
        MDDIUS.[last_user_update] = SDDIUS.[last_user_update],
        MDDIUS.[system_seeks] = MDDIUS.[system_seeks]+(SDDIUS.[system_seeks] - MDDIUS.[last_poll_system_seeks]),
        MDDIUS.[system_scans] = MDDIUS.[system_scans]+(SDDIUS.[system_scans] - MDDIUS.[last_poll_system_scans]),
        MDDIUS.[system_lookups] = MDDIUS.[system_lookups]+(SDDIUS.[system_lookups] - MDDIUS.[last_poll_system_lookups]),
        MDDIUS.[system_updates] = MDDIUS.[system_updates]+(SDDIUS.[system_updates] - MDDIUS.[last_poll_system_updates]),
        MDDIUS.[last_system_seek] = SDDIUS.[last_system_seek],
        MDDIUS.[last_system_scan] = SDDIUS.[last_system_scan],
        MDDIUS.[last_system_lookup] = SDDIUS.[last_system_lookup],
        MDDIUS.[last_system_update] = SDDIUS.[last_system_update],
        MDDIUS.[last_poll_user_seeks] = SDDIUS.[user_seeks],
        MDDIUS.[last_poll_user_scans] = SDDIUS.[user_scans],
        MDDIUS.[last_poll_user_lookups] = SDDIUS.[user_lookups],
        MDDIUS.[last_poll_user_updates] = SDDIUS.[user_updates],
        MDDIUS.[last_poll_system_seeks] = SDDIUS.[system_seeks],
        MDDIUS.[last_poll_system_scans] = SDDIUS.[system_scans],
        MDDIUS.[last_poll_system_lookups] = SDDIUS.[system_lookups],
        MDDIUS.[last_poll_system_updates] = SDDIUS.[system_updates],
        MDDIUS.date_stamp = GETDATE()
     FROM [sys].[dm_db_index_usage_stats] SDDIUS INNER JOIN 
        [dbamaint].[dbo].[dm_db_index_usage_stats] MDDIUS
           ON SDDIUS.[database_id] = MDDIUS.[database_id]
              AND SDDIUS.[object_id] = MDDIUS.[object_id]
              AND SDDIUS.[index_id] = MDDIUS.[index_id]
  END
ELSE
  BEGIN
     --Service restart date < last poll date
     PRINT ''Lastest service restart occurred on '' + 
        CAST(@last_service_start_date AS VARCHAR(50)) + 
        '' which is after the latest persist date of '' + 
        CAST(@last_data_persist_date AS VARCHAR(50))
     
     UPDATE MDDIUS
     SET 
        MDDIUS.[user_seeks] = MDDIUS.[user_seeks]+ SDDIUS.[user_seeks],
        MDDIUS.[user_scans] = MDDIUS.[user_scans]+ SDDIUS.[user_scans],
        MDDIUS.[user_lookups] = MDDIUS.[user_lookups]+ SDDIUS.[user_lookups],
        MDDIUS.[user_updates] = MDDIUS.[user_updates]+ SDDIUS.[user_updates],
        MDDIUS.[last_user_seek] = SDDIUS.[last_user_seek],
        MDDIUS.[last_user_scan] = SDDIUS.[last_user_scan],
        MDDIUS.[last_user_lookup] = SDDIUS.[last_user_lookup],
        MDDIUS.[last_user_update] = SDDIUS.[last_user_update],
        MDDIUS.[system_seeks] = MDDIUS.[system_seeks]+ SDDIUS.[system_seeks],
        MDDIUS.[system_scans] = MDDIUS.[system_scans]+ SDDIUS.[system_scans],
        MDDIUS.[system_lookups] = MDDIUS.[system_lookups]+ SDDIUS.[system_lookups],
        MDDIUS.[system_updates] = MDDIUS.[system_updates]+ SDDIUS.[system_updates],
        MDDIUS.[last_system_seek] = SDDIUS.[last_system_seek],
        MDDIUS.[last_system_scan] = SDDIUS.[last_system_scan],
        MDDIUS.[last_system_lookup] = SDDIUS.[last_system_lookup],
        MDDIUS.[last_system_update] = SDDIUS.[last_system_update],
        MDDIUS.[last_poll_user_seeks] = SDDIUS.[user_seeks],
        MDDIUS.[last_poll_user_scans] = SDDIUS.[user_scans],
        MDDIUS.[last_poll_user_lookups] = SDDIUS.[user_lookups],
        MDDIUS.[last_poll_user_updates] = SDDIUS.[user_updates],
        MDDIUS.[last_poll_system_seeks] = SDDIUS.[system_seeks],
        MDDIUS.[last_poll_system_scans] = SDDIUS.[system_scans],
        MDDIUS.[last_poll_system_lookups] = SDDIUS.[system_lookups],
        MDDIUS.[last_poll_system_updates] = SDDIUS.[system_updates],
        MDDIUS.date_stamp = GETDATE()
     FROM [sys].[dm_db_index_usage_stats] SDDIUS INNER JOIN 
        [dbamaint].[dbo].[dm_db_index_usage_stats] MDDIUS
           ON SDDIUS.[database_id] = MDDIUS.[database_id]
              AND SDDIUS.[object_id] = MDDIUS.[object_id]
              AND SDDIUS.[index_id] = MDDIUS.[index_id]
  END   

--Take care of new records next
     INSERT INTO [dbamaint].[dbo].[dm_db_index_usage_stats]
        (
        [database_id], [object_id], [index_id], 
        [user_seeks], [user_scans], [user_lookups],
        [user_updates], [last_user_seek], [last_user_scan],
        [last_user_lookup], [last_user_update], [system_seeks],
        [system_scans], [system_lookups], [system_updates],
        [last_system_seek], [last_system_scan], 
        [last_system_lookup], [last_system_update],
        [last_poll_user_seeks],    [last_poll_user_scans], 
        [last_poll_user_lookups], [last_poll_user_updates],
        [last_poll_system_seeks], [last_poll_system_scans], 
        [last_poll_system_lookups], [last_poll_system_updates],
        [date_stamp]
        )
     SELECT SDDIUS.[database_id], SDDIUS.[object_id], SDDIUS.[index_id], 
        SDDIUS.[user_seeks], SDDIUS.[user_scans], SDDIUS.[user_lookups],
        SDDIUS.[user_updates], SDDIUS.[last_user_seek], SDDIUS.[last_user_scan],
        SDDIUS.[last_user_lookup], SDDIUS.[last_user_update], SDDIUS.[system_seeks],
        SDDIUS.[system_scans], SDDIUS.[system_lookups], SDDIUS.[system_updates],
        SDDIUS.[last_system_seek], SDDIUS.[last_system_scan], 
        SDDIUS.[last_system_lookup], SDDIUS.[last_system_update],
        SDDIUS.[user_seeks], SDDIUS.[user_scans], SDDIUS.[user_lookups],
        SDDIUS.[user_updates],SDDIUS.[system_seeks],
        SDDIUS.[system_scans], SDDIUS.[system_lookups], 
        SDDIUS.[system_updates], GETDATE()
     FROM [sys].[dm_db_index_usage_stats] SDDIUS LEFT JOIN 
        [dbamaint].[dbo].[dm_db_index_usage_stats] MDDIUS
           ON SDDIUS.[database_id] = MDDIUS.[database_id]
           AND SDDIUS.[object_id] = MDDIUS.[object_id]
           AND SDDIUS.[index_id] = MDDIUS.[index_id]
     WHERE MDDIUS.[database_id] IS NULL 
        AND MDDIUS.[object_id] IS NULL
        AND MDDIUS.[index_id] IS NULL
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_persist_dm_db_index_operational_stats]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_persist_dm_db_index_operational_stats]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[dbm_persist_dm_db_index_operational_stats] AS 
DECLARE @last_service_start_date datetime
DECLARE @last_data_persist_date datetime

--Determine last service restart date based upon tempdb creation date
SELECT @last_service_start_date =  
 SD.[create_date] 
 FROM sys.databases SD 
 WHERE SD.[name] = ''tempdb''
 
--Return the value for the last refresh date of the persisting table
SELECT @last_data_persist_date = 
 MAX(MDDIOS.[date_stamp]) 
 FROM [dbamaint].[dbo].[dm_db_index_operational_stats] MDDIOS

--Take care of updated records first
IF @last_service_start_date < @last_data_persist_date
 BEGIN
   --Service restart date > last poll date
   PRINT ''The latest persist date was '' + 
     CAST(@last_data_persist_date AS VARCHAR(50)) + 
     ''; no restarts occurred since '' + 
     CAST(@last_service_start_date AS VARCHAR(50)) +
     ''  ('' + CAST(DATEDIFF(d, @last_service_start_date, @last_data_persist_date) AS VARCHAR(10)) + 
     '' days ago.)''

   UPDATE MDDIOS
   SET 
     MDDIOS.[leaf_insert_count] = MDDIOS.[leaf_insert_count] + (SDDIOS.[leaf_insert_count] - MDDIOS.[last_poll_leaf_insert_count]),
     MDDIOS.[leaf_delete_count] = MDDIOS.[leaf_delete_count] + (SDDIOS.[leaf_delete_count] - MDDIOS.[last_poll_leaf_delete_count]),
     MDDIOS.[leaf_update_count] = MDDIOS.[leaf_update_count] + (SDDIOS.[leaf_update_count] - MDDIOS.[last_poll_leaf_update_count]),
     MDDIOS.[leaf_ghost_count] = MDDIOS.[leaf_ghost_count] + (SDDIOS.[leaf_ghost_count] - MDDIOS.[last_poll_leaf_ghost_count]),
     MDDIOS.[nonleaf_insert_count] = MDDIOS.[nonleaf_insert_count] + (SDDIOS.[nonleaf_insert_count] - MDDIOS.[last_poll_nonleaf_insert_count]),
     MDDIOS.[nonleaf_delete_count] = MDDIOS.[nonleaf_delete_count] + (SDDIOS.[nonleaf_delete_count] - MDDIOS.[last_poll_nonleaf_delete_count]),
     MDDIOS.[nonleaf_update_count] = MDDIOS.[nonleaf_update_count] + (SDDIOS.[nonleaf_update_count] - MDDIOS.[last_poll_nonleaf_update_count]),
     MDDIOS.[leaf_allocation_count] = MDDIOS.[leaf_allocation_count] + (SDDIOS.[leaf_allocation_count] - MDDIOS.[last_poll_leaf_allocation_count]),
     MDDIOS.[nonleaf_allocation_count] = MDDIOS.[nonleaf_allocation_count] + (SDDIOS.[nonleaf_allocation_count] - MDDIOS.[last_poll_nonleaf_allocation_count]),
     MDDIOS.[leaf_page_merge_count] = MDDIOS.[leaf_page_merge_count] + (SDDIOS.[leaf_page_merge_count] - MDDIOS.[last_poll_leaf_page_merge_count]),
     MDDIOS.[nonleaf_page_merge_count] = MDDIOS.[nonleaf_page_merge_count] + (SDDIOS.[nonleaf_page_merge_count] - MDDIOS.[last_poll_nonleaf_page_merge_count]),
     MDDIOS.[range_scan_count] = MDDIOS.[range_scan_count] + (SDDIOS.[range_scan_count] - MDDIOS.[last_poll_range_scan_count]),
     MDDIOS.[singleton_lookup_count] = MDDIOS.[singleton_lookup_count] + (SDDIOS.[singleton_lookup_count] - MDDIOS.[last_poll_singleton_lookup_count]),
     MDDIOS.[forwarded_fetch_count] = MDDIOS.[forwarded_fetch_count] + (SDDIOS.[forwarded_fetch_count] - MDDIOS.[last_poll_forwarded_fetch_count]),
     MDDIOS.[lob_fetch_in_pages] = MDDIOS.[lob_fetch_in_pages] + (SDDIOS.[lob_fetch_in_pages] - MDDIOS.[last_poll_lob_fetch_in_pages]),
     MDDIOS.[lob_fetch_in_bytes] = MDDIOS.[lob_fetch_in_bytes] + (SDDIOS.[lob_fetch_in_bytes] - MDDIOS.[last_poll_lob_fetch_in_bytes]),
     MDDIOS.[lob_orphan_create_count] = MDDIOS.[lob_orphan_create_count] + (SDDIOS.[lob_orphan_create_count] - MDDIOS.[last_poll_lob_orphan_create_count]),
     MDDIOS.[lob_orphan_insert_count] = MDDIOS.[lob_orphan_insert_count] + (SDDIOS.[lob_orphan_insert_count] - MDDIOS.[last_poll_lob_orphan_insert_count]),
     MDDIOS.[row_overflow_fetch_in_pages] = MDDIOS.[row_overflow_fetch_in_pages] + (SDDIOS.[row_overflow_fetch_in_pages] - MDDIOS.[last_poll_row_overflow_fetch_in_pages]),
     MDDIOS.[row_overflow_fetch_in_bytes] = MDDIOS.[row_overflow_fetch_in_bytes] + (SDDIOS.[row_overflow_fetch_in_bytes] - MDDIOS.[last_poll_row_overflow_fetch_in_bytes]),
     MDDIOS.[column_value_push_off_row_count] = MDDIOS.[column_value_push_off_row_count] + (SDDIOS.[column_value_push_off_row_count] - MDDIOS.[last_poll_column_value_push_off_row_count]),
     MDDIOS.[column_value_pull_in_row_count] = MDDIOS.[column_value_pull_in_row_count] + (SDDIOS.[column_value_pull_in_row_count] - MDDIOS.[last_poll_column_value_pull_in_row_count]),
     MDDIOS.[row_lock_count] = MDDIOS.[row_lock_count] + (SDDIOS.[row_lock_count] - MDDIOS.[last_poll_row_lock_count]),
     MDDIOS.[row_lock_wait_count] = MDDIOS.[row_lock_wait_count] + (SDDIOS.[row_lock_wait_count] - MDDIOS.[last_poll_row_lock_wait_count]),
     MDDIOS.[row_lock_wait_in_ms] = MDDIOS.[row_lock_wait_in_ms] + (SDDIOS.[row_lock_wait_in_ms] - MDDIOS.[last_poll_row_lock_wait_in_ms]),
     MDDIOS.[page_lock_count] = MDDIOS.[page_lock_count] + (SDDIOS.[page_lock_count] - MDDIOS.[last_poll_page_lock_count]),
     MDDIOS.[page_lock_wait_count] = MDDIOS.[page_lock_wait_count] + (SDDIOS.[page_lock_wait_count] - MDDIOS.[last_poll_page_lock_wait_count]),
     MDDIOS.[page_lock_wait_in_ms] = MDDIOS.[page_lock_wait_in_ms] + (SDDIOS.[page_lock_wait_in_ms] - MDDIOS.[last_poll_page_lock_wait_in_ms]),
     MDDIOS.[index_lock_promotion_attempt_count] = MDDIOS.[index_lock_promotion_attempt_count] + (SDDIOS.[index_lock_promotion_attempt_count] - MDDIOS.[last_poll_index_lock_promotion_attempt_count]),
     MDDIOS.[index_lock_promotion_count] = MDDIOS.[index_lock_promotion_count] + (SDDIOS.[index_lock_promotion_count] - MDDIOS.[last_poll_index_lock_promotion_count]),
     MDDIOS.[page_latch_wait_count] = MDDIOS.[page_latch_wait_count] + (SDDIOS.[page_latch_wait_count] - MDDIOS.[last_poll_page_latch_wait_count]),
     MDDIOS.[page_latch_wait_in_ms] = MDDIOS.[page_latch_wait_in_ms] + (SDDIOS.[page_latch_wait_in_ms] - MDDIOS.[last_poll_page_latch_wait_in_ms]),
     MDDIOS.[page_io_latch_wait_count] = MDDIOS.[page_io_latch_wait_count] + (SDDIOS.[page_io_latch_wait_count] - MDDIOS.[last_poll_page_io_latch_wait_count]),
     MDDIOS.[page_io_latch_wait_in_ms] = MDDIOS.[page_io_latch_wait_in_ms] + (SDDIOS.[page_io_latch_wait_in_ms] - MDDIOS.[last_poll_page_io_latch_wait_in_ms]),
     MDDIOS.[last_poll_leaf_insert_count] = SDDIOS.[leaf_insert_count],
     MDDIOS.[last_poll_leaf_delete_count] = SDDIOS.[leaf_delete_count],
     MDDIOS.[last_poll_leaf_update_count] = SDDIOS.[leaf_update_count],
     MDDIOS.[last_poll_leaf_ghost_count] = SDDIOS.[leaf_ghost_count],
     MDDIOS.[last_poll_nonleaf_insert_count] = SDDIOS.[nonleaf_insert_count],
     MDDIOS.[last_poll_nonleaf_delete_count] = SDDIOS.[nonleaf_delete_count],
     MDDIOS.[last_poll_nonleaf_update_count] = SDDIOS.[nonleaf_update_count],
     MDDIOS.[last_poll_leaf_allocation_count] = SDDIOS.[leaf_allocation_count],
     MDDIOS.[last_poll_nonleaf_allocation_count] = SDDIOS.[nonleaf_allocation_count],
     MDDIOS.[last_poll_leaf_page_merge_count] = SDDIOS.[leaf_page_merge_count],
     MDDIOS.[last_poll_nonleaf_page_merge_count] = SDDIOS.[nonleaf_page_merge_count],
     MDDIOS.[last_poll_range_scan_count] = SDDIOS.[range_scan_count],
     MDDIOS.[last_poll_singleton_lookup_count] = SDDIOS.[singleton_lookup_count],
     MDDIOS.[last_poll_forwarded_fetch_count] = SDDIOS.[forwarded_fetch_count],
     MDDIOS.[last_poll_lob_fetch_in_pages] = SDDIOS.[lob_fetch_in_pages],
     MDDIOS.[last_poll_lob_fetch_in_bytes] = SDDIOS.[lob_fetch_in_bytes],
     MDDIOS.[last_poll_lob_orphan_create_count] = SDDIOS.[lob_orphan_create_count],
     MDDIOS.[last_poll_lob_orphan_insert_count] = SDDIOS.[lob_orphan_insert_count],
     MDDIOS.[last_poll_row_overflow_fetch_in_pages] = SDDIOS.[row_overflow_fetch_in_pages],
     MDDIOS.[last_poll_row_overflow_fetch_in_bytes] = SDDIOS.[row_overflow_fetch_in_bytes],
     MDDIOS.[last_poll_column_value_push_off_row_count] = SDDIOS.[column_value_push_off_row_count],
     MDDIOS.[last_poll_column_value_pull_in_row_count] = SDDIOS.[column_value_pull_in_row_count],
     MDDIOS.[last_poll_row_lock_count] = SDDIOS.[row_lock_count],
     MDDIOS.[last_poll_row_lock_wait_count] = SDDIOS.[row_lock_wait_count],
     MDDIOS.[last_poll_row_lock_wait_in_ms] = SDDIOS.[row_lock_wait_in_ms],
     MDDIOS.[last_poll_page_lock_count] = SDDIOS.[page_lock_count],
     MDDIOS.[last_poll_page_lock_wait_count] = SDDIOS.[page_lock_wait_count],
     MDDIOS.[last_poll_page_lock_wait_in_ms] = SDDIOS.[page_lock_wait_in_ms],
     MDDIOS.[last_poll_index_lock_promotion_attempt_count] = SDDIOS.[index_lock_promotion_attempt_count],
     MDDIOS.[last_poll_index_lock_promotion_count] = SDDIOS.[index_lock_promotion_count],
     MDDIOS.[last_poll_page_latch_wait_count] = SDDIOS.[page_latch_wait_count],
     MDDIOS.[last_poll_page_latch_wait_in_ms] = SDDIOS.[page_latch_wait_in_ms],
     MDDIOS.[last_poll_page_io_latch_wait_count] = SDDIOS.[page_io_latch_wait_count],
     MDDIOS.[last_poll_page_io_latch_wait_in_ms] = SDDIOS.[page_io_latch_wait_in_ms],      
     MDDIOS.date_stamp = GETDATE()
   FROM [sys].[dm_db_index_operational_stats] (NULL, NULL, NULL, NULL) SDDIOS INNER JOIN 
     [dbamaint].[dbo].[dm_db_index_operational_stats] MDDIOS
       ON SDDIOS.[database_id] = MDDIOS.[database_id]
         AND SDDIOS.[object_id] = MDDIOS.[object_id]
         AND SDDIOS.[index_id] = MDDIOS.[index_id]
         AND SDDIOS.[partition_number] = MDDIOS.[partition_number]
END
ELSE
BEGIN
   --Service restart date < last poll date
   PRINT ''Lastest service restart occurred on '' + 
     CAST(@last_service_start_date AS VARCHAR(50)) + 
     '' which is after the latest persist date of '' + 
     CAST(@last_data_persist_date AS VARCHAR(50))
   
   UPDATE MDDIOS
   SET 
     MDDIOS.[leaf_insert_count] = MDDIOS.[leaf_insert_count]+ SDDIOS.[leaf_insert_count],
     MDDIOS.[leaf_delete_count] = MDDIOS.[leaf_delete_count]+ SDDIOS.[leaf_delete_count],
     MDDIOS.[leaf_update_count] = MDDIOS.[leaf_update_count]+ SDDIOS.[leaf_update_count],
     MDDIOS.[leaf_ghost_count] = MDDIOS.[leaf_ghost_count]+ SDDIOS.[leaf_ghost_count],
     MDDIOS.[nonleaf_insert_count] = MDDIOS.[nonleaf_insert_count] + SDDIOS.[nonleaf_insert_count],
     MDDIOS.[nonleaf_delete_count] = MDDIOS.[nonleaf_delete_count] + SDDIOS.[nonleaf_delete_count],
     MDDIOS.[nonleaf_update_count] = MDDIOS.[nonleaf_update_count] + SDDIOS.[nonleaf_update_count],
     MDDIOS.[leaf_allocation_count] = MDDIOS.[leaf_allocation_count] + SDDIOS.[leaf_allocation_count],
     MDDIOS.[nonleaf_allocation_count] = MDDIOS.[nonleaf_allocation_count]+ SDDIOS.[nonleaf_allocation_count],
     MDDIOS.[leaf_page_merge_count] = MDDIOS.[leaf_page_merge_count]+ SDDIOS.[leaf_page_merge_count],
     MDDIOS.[nonleaf_page_merge_count] = MDDIOS.[nonleaf_page_merge_count]+ SDDIOS.[nonleaf_page_merge_count],
     MDDIOS.[range_scan_count] = MDDIOS.[range_scan_count]+ SDDIOS.[range_scan_count],
     MDDIOS.[singleton_lookup_count] = MDDIOS.[singleton_lookup_count] + SDDIOS.[singleton_lookup_count],
     MDDIOS.[forwarded_fetch_count] = MDDIOS.[forwarded_fetch_count] + SDDIOS.[forwarded_fetch_count],
     MDDIOS.[lob_fetch_in_pages] = MDDIOS.[lob_fetch_in_pages] + SDDIOS.[lob_fetch_in_pages],
     MDDIOS.[lob_fetch_in_bytes] = MDDIOS.[lob_fetch_in_bytes] + SDDIOS.[lob_fetch_in_bytes],
     MDDIOS.[lob_orphan_create_count] = MDDIOS.[lob_orphan_create_count] + SDDIOS.[lob_orphan_create_count],
     MDDIOS.[lob_orphan_insert_count] = MDDIOS.[lob_orphan_insert_count] + SDDIOS.[lob_orphan_insert_count],
     MDDIOS.[row_overflow_fetch_in_pages] = MDDIOS.[row_overflow_fetch_in_pages] + SDDIOS.[row_overflow_fetch_in_pages],
     MDDIOS.[row_overflow_fetch_in_bytes] = MDDIOS.[row_overflow_fetch_in_bytes] + SDDIOS.[row_overflow_fetch_in_bytes],
     MDDIOS.[column_value_push_off_row_count] = MDDIOS.[column_value_push_off_row_count] + SDDIOS.[column_value_push_off_row_count],
     MDDIOS.[column_value_pull_in_row_count] = MDDIOS.[column_value_pull_in_row_count] + SDDIOS.[column_value_pull_in_row_count],
     MDDIOS.[row_lock_count] = MDDIOS.[row_lock_count] + SDDIOS.[row_lock_count],
     MDDIOS.[row_lock_wait_count] = MDDIOS.[row_lock_wait_count] + SDDIOS.[row_lock_wait_count],
     MDDIOS.[row_lock_wait_in_ms] = MDDIOS.[row_lock_wait_in_ms] + SDDIOS.[row_lock_wait_in_ms],
     MDDIOS.[page_lock_count] = MDDIOS.[page_lock_count] + SDDIOS.[page_lock_count],
     MDDIOS.[page_lock_wait_count] = MDDIOS.[page_lock_wait_count] + SDDIOS.[page_lock_wait_count],
     MDDIOS.[page_lock_wait_in_ms] = MDDIOS.[page_lock_wait_in_ms] + SDDIOS.[page_lock_wait_in_ms],
     MDDIOS.[index_lock_promotion_attempt_count] = MDDIOS.[index_lock_promotion_attempt_count] + SDDIOS.[index_lock_promotion_attempt_count],
     MDDIOS.[index_lock_promotion_count] = MDDIOS.[index_lock_promotion_count] + SDDIOS.[index_lock_promotion_count],
     MDDIOS.[page_latch_wait_count] = MDDIOS.[page_latch_wait_count] + SDDIOS.[page_latch_wait_count],
     MDDIOS.[page_latch_wait_in_ms] = MDDIOS.[page_latch_wait_in_ms] + SDDIOS.[page_latch_wait_in_ms],
     MDDIOS.[page_io_latch_wait_count] = MDDIOS.[page_io_latch_wait_count] + SDDIOS.[page_io_latch_wait_count],
     MDDIOS.[page_io_latch_wait_in_ms] = MDDIOS.[page_io_latch_wait_in_ms] + SDDIOS.[page_io_latch_wait_in_ms],
     MDDIOS.[last_poll_leaf_insert_count] = SDDIOS.[leaf_insert_count],
     MDDIOS.[last_poll_leaf_delete_count] = SDDIOS.[leaf_delete_count],
     MDDIOS.[last_poll_leaf_update_count] = SDDIOS.[leaf_update_count],
     MDDIOS.[last_poll_leaf_ghost_count] = SDDIOS.[leaf_ghost_count],
     MDDIOS.[last_poll_nonleaf_insert_count] = SDDIOS.[nonleaf_insert_count],
     MDDIOS.[last_poll_nonleaf_delete_count] = SDDIOS.[nonleaf_delete_count],
     MDDIOS.[last_poll_nonleaf_update_count] = SDDIOS.[nonleaf_update_count],
     MDDIOS.[last_poll_leaf_allocation_count] = SDDIOS.[leaf_allocation_count],
     MDDIOS.[last_poll_nonleaf_allocation_count] = SDDIOS.[nonleaf_allocation_count],
     MDDIOS.[last_poll_leaf_page_merge_count] = SDDIOS.[leaf_page_merge_count],
     MDDIOS.[last_poll_nonleaf_page_merge_count] = SDDIOS.[nonleaf_page_merge_count],
     MDDIOS.[last_poll_range_scan_count] = SDDIOS.[range_scan_count],
     MDDIOS.[last_poll_singleton_lookup_count] = SDDIOS.[singleton_lookup_count],
     MDDIOS.[last_poll_forwarded_fetch_count] = SDDIOS.[forwarded_fetch_count],
     MDDIOS.[last_poll_lob_fetch_in_pages] = SDDIOS.[lob_fetch_in_pages],
     MDDIOS.[last_poll_lob_fetch_in_bytes] = SDDIOS.[lob_fetch_in_bytes],
     MDDIOS.[last_poll_lob_orphan_create_count] = SDDIOS.[lob_orphan_create_count],
     MDDIOS.[last_poll_lob_orphan_insert_count] = SDDIOS.[lob_orphan_insert_count],
     MDDIOS.[last_poll_row_overflow_fetch_in_pages] = SDDIOS.[row_overflow_fetch_in_pages],
     MDDIOS.[last_poll_row_overflow_fetch_in_bytes] = SDDIOS.[row_overflow_fetch_in_bytes],
     MDDIOS.[last_poll_column_value_push_off_row_count] = SDDIOS.[column_value_push_off_row_count],
     MDDIOS.[last_poll_column_value_pull_in_row_count] = SDDIOS.[column_value_pull_in_row_count],
     MDDIOS.[last_poll_row_lock_count] = SDDIOS.[row_lock_count],
     MDDIOS.[last_poll_row_lock_wait_count] = SDDIOS.[row_lock_wait_count],
     MDDIOS.[last_poll_row_lock_wait_in_ms] = SDDIOS.[row_lock_wait_in_ms],
     MDDIOS.[last_poll_page_lock_count] = SDDIOS.[page_lock_count],
     MDDIOS.[last_poll_page_lock_wait_count] = SDDIOS.[page_lock_wait_count],
     MDDIOS.[last_poll_page_lock_wait_in_ms] = SDDIOS.[page_lock_wait_in_ms],
     MDDIOS.[last_poll_index_lock_promotion_attempt_count] = SDDIOS.[index_lock_promotion_attempt_count],
     MDDIOS.[last_poll_index_lock_promotion_count] = SDDIOS.[index_lock_promotion_count],
     MDDIOS.[last_poll_page_latch_wait_count] = SDDIOS.[page_latch_wait_count],
     MDDIOS.[last_poll_page_latch_wait_in_ms] = SDDIOS.[page_latch_wait_in_ms],
     MDDIOS.[last_poll_page_io_latch_wait_count] = SDDIOS.[page_io_latch_wait_count],
     MDDIOS.[last_poll_page_io_latch_wait_in_ms] = SDDIOS.[page_io_latch_wait_in_ms],      
     MDDIOS.date_stamp = GETDATE()
   FROM [sys].[dm_db_index_operational_stats] (NULL, NULL, NULL, NULL)  SDDIOS INNER JOIN 
     [dbamaint].[dbo].[dm_db_index_operational_stats] MDDIOS
       ON SDDIOS.[database_id] = MDDIOS.[database_id]
         AND SDDIOS.[object_id] = MDDIOS.[object_id]
         AND SDDIOS.[index_id] = MDDIOS.[index_id]
         AND SDDIOS.[partition_number] = MDDIOS.[partition_number]
 END

--Take care of new records next
INSERT INTO [dbamaint].[dbo].[dm_db_index_operational_stats]
 (
 [database_id] ,[object_id], [index_id], [partition_number], [leaf_insert_count],
 [leaf_delete_count], [leaf_update_count], [leaf_ghost_count], [nonleaf_insert_count],
 [nonleaf_delete_count], [nonleaf_update_count], [leaf_allocation_count],
 [nonleaf_allocation_count], [leaf_page_merge_count], [nonleaf_page_merge_count],
 [range_scan_count], [singleton_lookup_count], [forwarded_fetch_count],
 [lob_fetch_in_pages], [lob_fetch_in_bytes], [lob_orphan_create_count],
 [lob_orphan_insert_count], [row_overflow_fetch_in_pages], [row_overflow_fetch_in_bytes],
 [column_value_push_off_row_count], [column_value_pull_in_row_count], [row_lock_count],
 [row_lock_wait_count], [row_lock_wait_in_ms], [page_lock_count], [page_lock_wait_count],
 [page_lock_wait_in_ms], [index_lock_promotion_attempt_count], [index_lock_promotion_count],
 [page_latch_wait_count], [page_latch_wait_in_ms], [page_io_latch_wait_count],
 [page_io_latch_wait_in_ms], [last_poll_leaf_insert_count], [last_poll_leaf_delete_count],
 [last_poll_leaf_update_count], [last_poll_leaf_ghost_count], [last_poll_nonleaf_insert_count],
 [last_poll_nonleaf_delete_count], [last_poll_nonleaf_update_count], [last_poll_leaf_allocation_count],
 [last_poll_nonleaf_allocation_count], [last_poll_leaf_page_merge_count],
 [last_poll_nonleaf_page_merge_count], [last_poll_range_scan_count],
 [last_poll_singleton_lookup_count], [last_poll_forwarded_fetch_count], [last_poll_lob_fetch_in_pages],
 [last_poll_lob_fetch_in_bytes], [last_poll_lob_orphan_create_count],
 [last_poll_lob_orphan_insert_count], [last_poll_row_overflow_fetch_in_pages],
 [last_poll_row_overflow_fetch_in_bytes], [last_poll_column_value_push_off_row_count],
 [last_poll_column_value_pull_in_row_count], [last_poll_row_lock_count], [last_poll_row_lock_wait_count],
 [last_poll_row_lock_wait_in_ms], [last_poll_page_lock_count], [last_poll_page_lock_wait_count],
 [last_poll_page_lock_wait_in_ms], [last_poll_index_lock_promotion_attempt_count],
 [last_poll_index_lock_promotion_count], [last_poll_page_latch_wait_count],
 [last_poll_page_latch_wait_in_ms], [last_poll_page_io_latch_wait_count],
 [last_poll_page_io_latch_wait_in_ms], [date_stamp]
 )
SELECT SDDIOS.[database_id] ,SDDIOS.[object_id], SDDIOS.[index_id], SDDIOS.[partition_number], SDDIOS.[leaf_insert_count],
 SDDIOS.[leaf_delete_count], SDDIOS.[leaf_update_count], SDDIOS.[leaf_ghost_count], SDDIOS.[nonleaf_insert_count],
 SDDIOS.[nonleaf_delete_count], SDDIOS.[nonleaf_update_count], SDDIOS.[leaf_allocation_count],
 SDDIOS.[nonleaf_allocation_count], SDDIOS.[leaf_page_merge_count], SDDIOS.[nonleaf_page_merge_count],
 SDDIOS.[range_scan_count], SDDIOS.[singleton_lookup_count], SDDIOS.[forwarded_fetch_count],
 SDDIOS.[lob_fetch_in_pages], SDDIOS.[lob_fetch_in_bytes], SDDIOS.[lob_orphan_create_count],
 SDDIOS.[lob_orphan_insert_count], SDDIOS.[row_overflow_fetch_in_pages], SDDIOS.[row_overflow_fetch_in_bytes],
 SDDIOS.[column_value_push_off_row_count], SDDIOS.[column_value_pull_in_row_count], SDDIOS.[row_lock_count],
 SDDIOS.[row_lock_wait_count], SDDIOS.[row_lock_wait_in_ms], SDDIOS.[page_lock_count], SDDIOS.[page_lock_wait_count],
 SDDIOS.[page_lock_wait_in_ms], SDDIOS.[index_lock_promotion_attempt_count], SDDIOS.[index_lock_promotion_count],
 SDDIOS.[page_latch_wait_count], SDDIOS.[page_latch_wait_in_ms], SDDIOS.[page_io_latch_wait_count],
 SDDIOS.[page_io_latch_wait_in_ms], SDDIOS.[leaf_insert_count],
 SDDIOS.[leaf_delete_count], SDDIOS.[leaf_update_count], SDDIOS.[leaf_ghost_count], SDDIOS.[nonleaf_insert_count],
 SDDIOS.[nonleaf_delete_count], SDDIOS.[nonleaf_update_count], SDDIOS.[leaf_allocation_count],
 SDDIOS.[nonleaf_allocation_count], SDDIOS.[leaf_page_merge_count], SDDIOS.[nonleaf_page_merge_count],
 SDDIOS.[range_scan_count], SDDIOS.[singleton_lookup_count], SDDIOS.[forwarded_fetch_count],
 SDDIOS.[lob_fetch_in_pages], SDDIOS.[lob_fetch_in_bytes], SDDIOS.[lob_orphan_create_count],
 SDDIOS.[lob_orphan_insert_count], SDDIOS.[row_overflow_fetch_in_pages], SDDIOS.[row_overflow_fetch_in_bytes],
 SDDIOS.[column_value_push_off_row_count], SDDIOS.[column_value_pull_in_row_count], SDDIOS.[row_lock_count],
 SDDIOS.[row_lock_wait_count], SDDIOS.[row_lock_wait_in_ms], SDDIOS.[page_lock_count], SDDIOS.[page_lock_wait_count],
 SDDIOS.[page_lock_wait_in_ms], SDDIOS.[index_lock_promotion_attempt_count], SDDIOS.[index_lock_promotion_count],
 SDDIOS.[page_latch_wait_count], SDDIOS.[page_latch_wait_in_ms], SDDIOS.[page_io_latch_wait_count],
 SDDIOS.[page_io_latch_wait_in_ms], GETDATE()
FROM sys.[dm_db_index_operational_stats](NULL, NULL, NULL, NULL) SDDIOS 
 LEFT JOIN [dbamaint].[dbo].[dm_db_index_operational_stats] MDDIOS
   ON SDDIOS.[database_id] = MDDIOS.[database_id]
   AND SDDIOS.[object_id] = MDDIOS.[object_id]
   AND SDDIOS.[index_id] = MDDIOS.[index_id]
   AND SDDIOS.[partition_number] = MDDIOS.[partition_number]
WHERE MDDIOS.[database_id] IS NULL 
 AND MDDIOS.[object_id] IS NULL
 AND MDDIOS.[index_id] IS NULL
 AND MDDIOS.[partition_number] IS NULL

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_PermissionsAll]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_PermissionsAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		mmessano
-- Create date: 8/22/2007
-- Description:
-- =============================================
CREATE PROCEDURE [dbo].[dbm_PermissionsAll]

AS

BEGIN

SET NOCOUNT ON;
/*

Audit SQL Server user ID

Author      Simon Facer
Date        01/04/2007

This script will generate an audit of SQL Server logins, as well
as a listing of the database user ID''s and the SQL Server login
that each DB user ID maps to.

In the database user ID results, [Server Login] = ''** Orphaned **''
indicates that there is no matching Server login.

This script was originally designed for SQL 2000, but works just as
well in SQL 2005.
*/


IF  EXISTS (SELECT * FROM dbamaint.dbo.sysobjects WHERE name = ''Users'' AND type in (N''U''))
   BEGIN
      TRUNCATE TABLE Users
   END
ELSE
	BEGIN
		CREATE TABLE [dbo].[Users](
			[Server_Name] [nvarchar](128) NULL,
			[sid] [varbinary](85) NULL,
			[Login Name] [sysname] NOT NULL,
			[Default Database] [sysname] NULL,
			[Login Type] [varchar](9) NOT NULL,
			[AD Login Type] [varchar](8) NOT NULL,
			[sysadmin] [varchar](3) NOT NULL,
			[securityadmin] [varchar](3) NOT NULL,
			[serveradmin] [varchar](3) NOT NULL,
			[setupadmin] [varchar](3) NOT NULL,
			[processadmin] [varchar](3) NOT NULL,
			[diskadmin] [varchar](3) NOT NULL,
			[dbcreator] [varchar](3) NOT NULL,
			[bulkadmin] [varchar](3) NOT NULL
		) ON [PRIMARY]
	END   

IF  EXISTS (SELECT * FROM dbamaint.dbo.sysobjects WHERE name = ''DBUsers'' AND type in (N''U''))
   BEGIN
      TRUNCATE TABLE DBUsers
   END
ELSE
   BEGIN
		CREATE TABLE [dbo].[DBUsers](
			[ServerName] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[DBName] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[DatabaseUserID] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[ServerLogin] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[DatabaseRole] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[LastUpdate] [datetime] NULL
) ON [PRIMARY]
	END

-- ***************************************************************************
-- Declare local variables
DECLARE @DBName             VARCHAR(64)
DECLARE @SQLCmd             VARCHAR(1024)
-- ***************************************************************************

-- ***************************************************************************
-- Get the SQL Server logins
INSERT dbo.Users 
SELECT  @@servername AS [Server_Name],
		sid,
        loginname AS [Login Name],
        dbname AS [Default Database],
        CASE isntname
            WHEN 1 THEN ''AD Login''
            ELSE ''SQL Login''
        END AS [Login Type],
        CASE
            WHEN isntgroup = 1 THEN ''AD Group''
            WHEN isntuser = 1 THEN ''AD User''
            ELSE ''''
        END AS [AD Login Type],
        CASE sysadmin
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [sysadmin],
        CASE [securityadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [securityadmin],
        CASE [serveradmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [serveradmin],
        CASE [setupadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [setupadmin],
        CASE [processadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [processadmin],
        CASE [diskadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [diskadmin],
        CASE [dbcreator]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [dbcreator],
        CASE [bulkadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [bulkadmin]
FROM master.dbo.syslogins
        

SELECT  Server_Name,
		[Login Name],
        [Default Database],
        [Login Type],
        [AD Login Type],
        [sysadmin],
        [securityadmin],
        [serveradmin],
        [setupadmin],
        [processadmin],
        [diskadmin],
        [dbcreator],
        [bulkadmin]
FROM dbo.Users
ORDER BY [Login Type], [AD Login Type], [Login Name]


-- ***************************************************************************
-- Declare a cursor to loop through all the databases on the server
DECLARE csrDB CURSOR FOR
    SELECT name
        FROM master.dbo.sysdatabases
        WHERE name NOT IN (''master''
							, ''model''
							, ''msdb''
							, ''tempdb''
							, ''DX_PA''
							, ''eusers''
							, ''greylist''
							, ''WebCC''
							, ''SiteManagement''
							, ''UserManagement''
							, ''PASCAdmin'')
		AND name NOT LIKE ''Search_Service_%''
		AND name NOT LIKE ''WebAnalyticsServiceApplication_%''
		AND name NOT LIKE ''SharePoint_AdminContent_%''
		AND name NOT LIKE ''Secure_Store_Service_%''
		AND name NOT LIKE ''StateService_%''
		AND DATABASEPROPERTYEX(name,''STATUS'') != ''OFFLINE''
		AND DATABASEPROPERTYEX(name,''STATUS'') != ''Restoring''
		AND DATABASEPROPERTYEX(name,''STATUS'') != ''Recovering''


-- ***************************************************************************
-- Open the cursor and get the first database name
OPEN csrDB
FETCH NEXT
    FROM csrDB
    INTO @DBName

-- ***************************************************************************
-- Loop through the cursor
WHILE @@FETCH_STATUS = 0
    BEGIN


-- ***************************************************************************
--
        SELECT @SQLCmd = ''INSERT DBUsers '' +
                         ''  SELECT '''''' + @@servername + '''''' AS [ServerName],''+
						 ''			'''''' + @DBName + '''''' AS [DBName],'' +
                         ''       su.[name] AS [DatabaseUserID], '' +
                         ''       COALESCE (u.[Login Name], ''''** Orphaned **'''') AS [ServerLogin], '' +
                         ''       COALESCE (sug.name, ''''Public'''') AS [DatabaseRole], '' +
						 ''		 GetDate() as timestamp'' +
                         ''    FROM ['' + @DBName + ''].[dbo].[sysusers] su'' +
                         ''        LEFT OUTER JOIN Users u'' +
                         ''            ON su.sid = u.sid'' +
                         ''        LEFT OUTER JOIN (['' + @DBName + ''].[dbo].[sysmembers] sm '' +
                         ''                             INNER JOIN ['' + @DBName + ''].[dbo].[sysusers] sug  '' +
                         ''                                 ON sm.groupuid = sug.uid)'' +
                         ''            ON su.uid = sm.memberuid '' +
                         ''    WHERE su.[name] != ''''dbo'''''' +
                         ''    AND su.issqlrole != 1''

        EXEC (@SQLCmd)

-- ***************************************************************************
-- Get the next database name
        FETCH NEXT
            FROM csrDB
            INTO @DBName

-- ***************************************************************************
-- End of the cursor loop
    END

-- ***************************************************************************
-- Close and deallocate the CURSOR
CLOSE csrDB
DEALLOCATE csrDB

-- ***************************************************************************
-- Return the Database User data
SELECT *
    FROM DBUsers
    ORDER BY [DBName], [DatabaseUserID]

END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_LogShippingStatus]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_LogShippingStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'




-- =============================================
-- Author:		sbrown
-- Create date: 2/25/2010
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[dbm_LogShippingStatus] 

AS
SET NOCOUNT ON;
Truncate table DBAMaint.dbo.LogShippingStatus;

DECLARE @DBNAME varchar(100)
DECLARE @cmd varchar(1000);
DECLARE dbnames_cursor CURSOR FOR SELECT CDCReportDB FROM CDCExtract.dbo.clientconnection
	--WHERE TransformEnabled=1
	WHERE DATABASEPROPERTYEX(CDCReportDB,''STATUS'') != ''OFFLINE''
	AND DATABASEPROPERTYEX(CDCReportDB,''STATUS'') != ''Restoring''
	AND DATABASEPROPERTYEX(CDCReportDB,''STATUS'') != ''Recovering''
	AND CDCReportDB !=''Thrivent_rpt''
	order by CDCReportDB
	
OPEN dbnames_cursor
FETCH NEXT FROM dbnames_cursor INTO @DBNAME
WHILE (@@fetch_status <> -1)
BEGIN	
	select @cmd =
		''insert into DBAMaint.dbo.LogShippingStatus (ClientDB,ReportDataCurrentAsOF) '' +   char(10) +
		'' SELECT '''''' + @DBNAME + '''''' as ClientDb,  MAX(tran_end_time) '' + char(10) +
		'' from '' + @DBNAME + ''.dbo.lsn_Time_mapping;''

--	PRINT @cmd	
	EXEC (@cmd)
FETCH NEXT FROM dbnames_cursor INTO @DBNAME
END

CLOSE dbnames_cursor
DEALLOCATE dbnames_cursor






' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_LockTree]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_LockTree]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_LockTree]
AS
SET NOCOUNT ON
  BEGIN
    SELECT P.SPID, P.BLOCKED, RTRIM(P.HOSTNAME) HOSTNAME
	  INTO MASTER..LOCKS
      FROM MASTER..SYSPROCESSES P 
	  WHERE P.BLOCKED <> 0
        OR SPID IN (SELECT BLOCKED FROM MASTER..SYSPROCESSES)
          AND BLOCKED=0
      ORDER BY P.BLOCKED, P.SPID

    DECLARE @COUNT INT
    SET @COUNT = (SELECT SPID FROM MASTER..LOCKS WHERE BLOCKED = 0)

    SELECT '' '' + REPLICATE (''   '', LVL) + RTRIM(HOSTNAME)+ '' (''+ CAST(SPID AS VARCHAR)+'')'' AS "BLOCKING LOCKS"
      FROM udf_LockTree(@COUNT)
      ORDER BY PATH

    DROP TABLE MASTER..LOCKS

  END

SET NOCOUNT OFF

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_LinkedServers]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_LinkedServers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		mmessano
-- Create date: 4/17/2007
-- Description:	Enumerate the LinkedServers configured on the local machine.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_LinkedServers] 

AS
BEGIN

if exists (select name from sysobjects where name like ''LinkedServers%'')
	BEGIN
		truncate table LinkedServers 
	END
else 
	BEGIN
	create table LinkedServers ( 
		server_source varchar(32),
		server_name varchar(32), 
		server_providername varchar(32), 
		server_product varchar(16), 
		server_datasource varchar(32), 
		server_providerstring varchar(256), 
		server_location varchar(16), 
		server_cat varchar(32),
		server_remote_user varchar(32) 
		) 
	END 


Declare @cmd varchar(512)

select @cmd = ''exec master.dbo.sp_linkedservers''

insert LinkedServers ( server_name, server_providername, server_product, server_datasource, server_providerstring, server_location, server_cat )
exec(@cmd)
update LinkedServers set server_source = @@SERVERNAME where server_source IS NULL

Declare @srvname varchar(32)

declare srvname cursor for 
	select server_name from LinkedServers

open srvname 
	fetch next from srvname into @srvname 
	while @@fetch_status=0 
begin 

DECLARE @Version VARCHAR(1000)

SELECT @Version = @@VERSION

--Drop everything before the dash
SET @Version = SUBSTRING( @Version, CHARINDEX( ''-'', @Version ) + 2, 12 )
--Clean up the string, grab the major number
SET @Version = SUBSTRING( @Version, 0, CHARINDEX( ''.'', @Version))


IF ( @Version = ''8'' )
	BEGIN
		SELECT @cmd =	'' UPDATE dbamaint.dbo.linkedservers set server_remote_user = ( '' +
						'' SELECT '' +
						'' ISNULL(sxl.name, N'''''''') AS [RemoteUser] '' +
						'' FROM '' +
						''	master.dbo.sysservers AS srv '' +
						''	INNER JOIN master.dbo.sysxlogins sxl ON ( sxl.ishqoutmap = 1 ) AND ( sxl.srvid=CAST(srv.srvid AS int )) '' +
						''	LEFT OUTER JOIN master.dbo.sysxlogins xsxl ON sxl.sid=xsxl.sid and ISNULL(xsxl.ishqoutmap,0) = 0 '' +
						'' WHERE '' +
						''	(ISNULL(xsxl.name, '''''''')=N'''''''')and((srv.srvid != 0)and(srv.srvname=N'''''' + @srvname + '''''')))'' +
						'' where server_name = '''''' + @srvname + ''''''''
	END
	else
	BEGIN
		SELECT @cmd =	'' UPDATE dbamaint.dbo.linkedservers set server_remote_user = ( '' +
						'' SELECT '' +
						'' ISNULL(ll.remote_name, N'''''''') AS [RemoteUser] '' +
						'' FROM '' +
						''	master.sys.servers AS srv '' +
						''	INNER JOIN master.sys.linked_logins ll '' +
						''	ON ll.server_id = CAST(srv.server_id AS int ) '' +
						'' where name = '''''' + @srvname + '''''')'' +
						'' where server_name = '''''' + @srvname + ''''''''
	END

--print(@cmd)
exec(@cmd)

fetch next from srvname into @srvname
end
 
CLOSE srvname 
DEALLOCATE srvname 


END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_JobsReport]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_JobsReport]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		mmessano
-- Create date: 07/26/2007
-- Versions: The commented portion below applies
-- 				to SQL 2005 only.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_JobsReport] 

AS

BEGIN


IF OBJECT_ID(''Jobs_Report'') IS NOT NULL
   BEGIN
      DROP TABLE Jobs_Report
   END

BEGIN
CREATE TABLE [dbo].[Jobs_Report](
	[ServerName] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[JobName] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Owner] [varchar](64)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [varchar](512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Schedule] [varchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastRunDate] [varchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastRunOutcome] [int] NULL,
	[NextRunDate] [varchar](32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Duration] [int] NULL,
	[TimeStamp] [datetime] NOT NULL CONSTRAINT [DF_Jobs_Report_timestamp]  DEFAULT (getdate())
) ON [PRIMARY]
END


DECLARE @Version VARCHAR(1000)

SELECT @Version = @@VERSION

--Drop everything before the dash
SET @Version = SUBSTRING( @Version, CHARINDEX( ''-'', @Version ) + 2, 12 )
--Clean up the string, grab the major number
SET @Version = SUBSTRING( @Version, 0, CHARINDEX( ''.'', @Version))


IF ( @Version = ''8'' )
	BEGIN
		INSERT Jobs_Report (ServerName,JobName,Owner,Description,Schedule,LastRunDate,LastRunOutcome,NextRunDate,Duration)
		exec(''dbm_JobReport_2000'')
	END
	else 
	BEGIN
		INSERT Jobs_Report (ServerName,JobName,Owner,Description,Schedule,LastRunDate,LastRunOutcome,NextRunDate,Duration)
		exec(''dbm_JobReport_2005'')
	END

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_JobReport_2005]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_JobReport_2005]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		mmessano
-- Create date: 5/20/2008
-- Description:	Collect job status for SQL 2005.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_JobReport_2005] 

AS
BEGIN
	SET NOCOUNT ON;

SELECT
   @@servername as [ServerName], sj.name as [JobName], suser_sname(sj.owner_sid) as [Owner], sj.description AS [Description]
 , CASE
       WHEN sjsched.schedule_id IS NULL THEN ''Unscheduled''
       WHEN sj.enabled = 0 THEN ''Disabled''
       WHEN sj.job_id IS NULL THEN ''Unscheduled''
       WHEN ssched.freq_type = 0x1 -- OneTime
           THEN
               ''Once on ''
             + CONVERT(
                          CHAR(10)
                        , CAST( CAST( ssched.active_start_date AS VARCHAR ) AS DATETIME )
                        , 102
                      )
       WHEN ssched.freq_type = 0x4 -- Daily
           THEN ''Daily''
       WHEN ssched.freq_type = 0x8 -- weekly
           THEN
               CASE
                   WHEN ssched.freq_recurrence_factor = 1
                       THEN ''Weekly on ''
                   WHEN ssched.freq_recurrence_factor > 1
                       THEN ''Every ''
                          + CAST( ssched.freq_recurrence_factor AS VARCHAR )
                          + '' weeks on ''
               END
             + LEFT(
                         CASE WHEN ssched.freq_interval &  1 =  1 THEN ''Sunday, ''    ELSE '''' END
                       + CASE WHEN ssched.freq_interval &  2 =  2 THEN ''Monday, ''    ELSE '''' END
                       + CASE WHEN ssched.freq_interval &  4 =  4 THEN ''Tuesday, ''   ELSE '''' END
                       + CASE WHEN ssched.freq_interval &  8 =  8 THEN ''Wednesday, '' ELSE '''' END
                       + CASE WHEN ssched.freq_interval & 16 = 16 THEN ''Thursday, ''  ELSE '''' END
                       + CASE WHEN ssched.freq_interval & 32 = 32 THEN ''Friday, ''    ELSE '''' END
                       + CASE WHEN ssched.freq_interval & 64 = 64 THEN ''Saturday, ''  ELSE '''' END
                     , LEN(
                                CASE WHEN ssched.freq_interval &  1 =  1 THEN ''Sunday, ''    ELSE '''' END
                              + CASE WHEN ssched.freq_interval &  2 =  2 THEN ''Monday, ''    ELSE '''' END
                              + CASE WHEN ssched.freq_interval &  4 =  4 THEN ''Tuesday, ''   ELSE '''' END
                              + CASE WHEN ssched.freq_interval &  8 =  8 THEN ''Wednesday, '' ELSE '''' END
                              + CASE WHEN ssched.freq_interval & 16 = 16 THEN ''Thursday, ''  ELSE '''' END
                              + CASE WHEN ssched.freq_interval & 32 = 32 THEN ''Friday, ''    ELSE '''' END
                              + CASE WHEN ssched.freq_interval & 64 = 64 THEN ''Saturday, ''  ELSE '''' END
                          ) - 1  -- LEN() ignores trailing spaces
                   )
       WHEN ssched.freq_type = 0x10 -- monthly
           THEN
               CASE
                   WHEN ssched.freq_recurrence_factor = 1
                       THEN ''Monthly on the ''
                   WHEN ssched.freq_recurrence_factor > 1
                       THEN ''Every ''
                          + CAST( ssched.freq_recurrence_factor AS VARCHAR )
                          + '' months on the ''
               END
             + CAST( ssched.freq_interval AS VARCHAR )
             + CASE
                   WHEN ssched.freq_interval IN ( 1, 21, 31 ) THEN ''st''
                   WHEN ssched.freq_interval IN ( 2, 22     ) THEN ''nd''
                   WHEN ssched.freq_interval IN ( 3, 23     ) THEN ''rd''
                   ELSE ''th''
               END
       WHEN ssched.freq_type = 0x20 -- monthly relative
           THEN
               CASE
                   WHEN ssched.freq_recurrence_factor = 1
                       THEN ''Monthly on the ''
                   WHEN ssched.freq_recurrence_factor > 1
                       THEN ''Every ''
                          + CAST( ssched.freq_recurrence_factor AS VARCHAR )
                          + '' months on the ''
               END
             + CASE ssched.freq_relative_interval
                   WHEN 0x01 THEN ''first ''
                   WHEN 0x02 THEN ''second ''
                   WHEN 0x04 THEN ''third ''
                   WHEN 0x08 THEN ''fourth ''
                   WHEN 0x10 THEN ''last ''
               END
             + CASE ssched.freq_interval
                   WHEN  1 THEN ''Sunday''
                   WHEN  2 THEN ''Monday''
                   WHEN  3 THEN ''Tuesday''
                   WHEN  4 THEN ''Wednesday''
                   WHEN  5 THEN ''Thursday''
                   WHEN  6 THEN ''Friday''
                   WHEN  7 THEN ''Saturday''
                   WHEN  8 THEN ''day''
                   WHEN  9 THEN ''week day''
                   WHEN 10 THEN ''weekend day''
               END
       WHEN ssched.freq_type = 0x40
           THEN ''Automatically starts when SQLServerAgent starts.''
       WHEN ssched.freq_type = 0x80
           THEN ''Starts whenever the CPUs become idle''
       ELSE ''''
   END
 + CASE
       WHEN sj.enabled = 0 THEN ''''
       WHEN sj.job_id IS NULL THEN ''''
       WHEN ssched.freq_subday_type = 0x1 OR ssched.freq_type = 0x1
           THEN '' at ''
             + CASE
                   WHEN ssched.active_start_time =      0 THEN ''12:00''
                   WHEN ssched.active_start_time = 120000 THEN ''12:00''
                   WHEN ssched.active_start_time < 100000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_start_time AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   WHEN ssched.active_start_time < 120000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_start_time AS VARCHAR ), 4 )
                                   , 3
                                   , 0
                                   , '':''
                                 )
                   WHEN ssched.active_start_time < 220000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_start_time - 120000 AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   ELSE STUFF(
                                 LEFT( CAST ( ssched.active_start_time - 120000 AS VARCHAR ), 4 )
                               , 3
                               , 0
                               , '':''
                             )
               END
             + CASE
                   WHEN ssched.active_start_time < 120000 THEN '' AM''
                   ELSE '' PM''
               END
       WHEN ssched.freq_subday_type IN ( 0x2, 0x4, 0x8 )
           THEN '' every ''
             + CAST( ssched.freq_subday_interval AS VARCHAR )
             + CASE freq_subday_type
                   WHEN 0x2 THEN '' second''
                   WHEN 0x4 THEN '' minute''
                   WHEN 0x8 THEN '' hour''
               END
             + CASE
                   WHEN ssched.freq_subday_interval > 1 THEN ''s''
               END
       ELSE ''''
   END
 + CASE
       WHEN sj.enabled = 0 THEN ''''
       WHEN sj.job_id IS NULL THEN ''''
       WHEN ssched.freq_subday_type IN ( 0x2, 0x4, 0x8 )
           THEN '' between ''
             + CASE
                   WHEN ssched.active_start_time =      0 THEN ''12:00''
                   WHEN ssched.active_start_time = 120000 THEN ''12:00''
                   WHEN ssched.active_start_time < 100000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_start_time AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   WHEN ssched.active_start_time < 120000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_start_time AS VARCHAR ), 4 )
                                   , 3
                                   , 0
                                   , '':''
                                 )
                   WHEN ssched.active_start_time < 220000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_start_time - 120000 AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   ELSE STUFF(
                                 LEFT( CAST ( ssched.active_start_time - 120000 AS VARCHAR ), 4 )
                               , 3
                               , 0
                               , '':''
                             )
               END
             + CASE
                   WHEN ssched.active_start_time < 120000 THEN '' AM''
                   ELSE '' PM''
               END
             + '' and ''
             + CASE
                   WHEN ssched.active_end_time =      0 THEN ''12:00''
                   WHEN ssched.active_end_time = 120000 THEN ''12:00''
                   WHEN ssched.active_end_time < 100000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_end_time AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   WHEN ssched.active_end_time < 120000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_end_time AS VARCHAR ), 4 )
                                   , 3
                                   , 0
                                   , '':''
                                 )
                   WHEN ssched.active_end_time < 220000
                       THEN STUFF(
                                     LEFT( CAST ( ssched.active_end_time - 120000 AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   ELSE STUFF(
                                 LEFT( CAST ( ssched.active_end_time - 120000 AS VARCHAR ), 4 )
                               , 3
                               , 0
                               , '':''
                             )
               END
             + CASE
                   WHEN ssched.active_end_time < 120000 THEN '' AM''
                   ELSE '' PM''
               END

       ELSE ''''
   END AS [Schedule],
	SUBSTRING(CAST(sjserv.last_run_date AS CHAR(8)),5,2) + ''/'' +
		RIGHT(CAST(sjserv.last_run_date AS CHAR(8)),2) + ''/'' +
		LEFT(CAST(sjserv.last_run_date AS CHAR(8)),4)as [LastRunDate],
	sjserv.last_run_outcome AS [LastRunOutcome],
	COALESCE(SUBSTRING(CAST(sjsched.next_run_date AS CHAR(8)),5,2) + ''/'' +
		RIGHT(CAST(sjsched.next_run_date AS CHAR(8)),2) + ''/'' +
		LEFT(CAST(sjsched.next_run_date AS CHAR(8)),4),''0'') as [NextRunDate],
	sjserv.last_run_duration as [Duration]


FROM		msdb.dbo.sysjobs sj LEFT JOIN
			msdb.dbo.sysjobschedules sjsched ON sj.job_id = sjsched.job_id INNER JOIN
			msdb.dbo.sysjobservers sjserv ON sjserv.job_id = sj.job_id LEFT JOIN
			msdb.dbo.sysschedules ssched ON sjsched.schedule_id = ssched.schedule_id

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_JobReport_2000]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_JobReport_2000]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		mmessano
-- Create date: 5/20/2008
-- Description:	Collect job status for SQL 2000.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_JobReport_2000] 

AS
BEGIN
	SET NOCOUNT ON;

SELECT
   @@servername as [ServerName], j.name AS [JobName], j.description AS [Description]
 , CASE
       WHEN j.enabled = 0 THEN ''Disabled''
       WHEN s.job_id IS NULL THEN ''Unscheduled''
       WHEN s.freq_type = 0x1 -- OneTime
           THEN
               ''Once on ''
             + CONVERT(
                          CHAR(10)
                        , CAST( CAST( s.active_start_date AS VARCHAR ) AS DATETIME )
                        , 102 -- yyyy.mm.dd
                      )
       WHEN s.freq_type = 0x4 -- Daily
           THEN ''Daily''
       WHEN s.freq_type = 0x8 -- weekly
           THEN
               CASE
                   WHEN s.freq_recurrence_factor = 1
                       THEN ''Weekly on ''
                   WHEN s.freq_recurrence_factor > 1
                       THEN ''Every ''
                          + CAST( s.freq_recurrence_factor AS VARCHAR )
                          + '' weeks on ''
               END
             + LEFT(
                         CASE WHEN s.freq_interval &  1 =  1 THEN ''Sunday, ''    ELSE '''' END
                       + CASE WHEN s.freq_interval &  2 =  2 THEN ''Monday, ''    ELSE '''' END
                       + CASE WHEN s.freq_interval &  4 =  4 THEN ''Tuesday, ''   ELSE '''' END
                       + CASE WHEN s.freq_interval &  8 =  8 THEN ''Wednesday, '' ELSE '''' END
                       + CASE WHEN s.freq_interval & 16 = 16 THEN ''Thursday, ''  ELSE '''' END
                       + CASE WHEN s.freq_interval & 32 = 32 THEN ''Friday, ''    ELSE '''' END
                       + CASE WHEN s.freq_interval & 64 = 64 THEN ''Saturday, ''  ELSE '''' END
                     , LEN(
                                CASE WHEN s.freq_interval &  1 =  1 THEN ''Sunday, ''    ELSE '''' END
                              + CASE WHEN s.freq_interval &  2 =  2 THEN ''Monday, ''    ELSE '''' END
                              + CASE WHEN s.freq_interval &  4 =  4 THEN ''Tuesday, ''   ELSE '''' END
                              + CASE WHEN s.freq_interval &  8 =  8 THEN ''Wednesday, '' ELSE '''' END
                              + CASE WHEN s.freq_interval & 16 = 16 THEN ''Thursday, ''  ELSE '''' END
                              + CASE WHEN s.freq_interval & 32 = 32 THEN ''Friday, ''    ELSE '''' END
                              + CASE WHEN s.freq_interval & 64 = 64 THEN ''Saturday, ''  ELSE '''' END
                          ) - 1  -- LEN() ignores trailing spaces
                   )
       WHEN s.freq_type = 0x10 -- monthly
           THEN
               CASE
                   WHEN s.freq_recurrence_factor = 1
                       THEN ''Monthly on the ''
                   WHEN s.freq_recurrence_factor > 1
                       THEN ''Every ''
                          + CAST( s.freq_recurrence_factor AS VARCHAR )
                          + '' months on the ''
               END
             + CAST( s.freq_interval AS VARCHAR )
             + CASE
                   WHEN s.freq_interval IN ( 1, 21, 31 ) THEN ''st''
                   WHEN s.freq_interval IN ( 2, 22     ) THEN ''nd''
                   WHEN s.freq_interval IN ( 3, 23     ) THEN ''rd''
                   ELSE ''th''
               END
       WHEN s.freq_type = 0x20 -- monthly relative
           THEN
               CASE
                   WHEN s.freq_recurrence_factor = 1
                       THEN ''Monthly on the ''
                   WHEN s.freq_recurrence_factor > 1
                       THEN ''Every ''
                          + CAST( s.freq_recurrence_factor AS VARCHAR )
                          + '' months on the ''
               END
             + CASE s.freq_relative_interval
                   WHEN 0x01 THEN ''first ''
                   WHEN 0x02 THEN ''second ''
                   WHEN 0x04 THEN ''third ''
                   WHEN 0x08 THEN ''fourth ''
                   WHEN 0x10 THEN ''last ''
               END
             + CASE s.freq_interval
                   WHEN  1 THEN ''Sunday''
                   WHEN  2 THEN ''Monday''
                   WHEN  3 THEN ''Tuesday''
                   WHEN  4 THEN ''Wednesday''
                   WHEN  5 THEN ''Thursday''
                   WHEN  6 THEN ''Friday''
                   WHEN  7 THEN ''Saturday''
                   WHEN  8 THEN ''day''
                   WHEN  9 THEN ''week day''
                   WHEN 10 THEN ''weekend day''
               END
       WHEN s.freq_type = 0x40
           THEN ''Automatically starts when SQLServerAgent starts.''
       WHEN s.freq_type = 0x80
           THEN ''Starts whenever the CPUs become idle''
       ELSE ''''
   END
 + CASE
       WHEN j.enabled = 0 THEN ''''
       WHEN s.job_id IS NULL THEN ''''
       WHEN s.freq_subday_type = 0x1 OR s.freq_type = 0x1
           THEN '' at ''
             + CASE
                   WHEN s.active_start_time =      0 THEN ''12:00''
                   WHEN s.active_start_time = 120000 THEN ''12:00''
                   WHEN s.active_start_time < 100000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_start_time AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   WHEN s.active_start_time < 120000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_start_time AS VARCHAR ), 4 )
                                   , 3
                                   , 0
                                   , '':''
                                 )
                   WHEN s.active_start_time < 220000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_start_time - 120000 AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   ELSE STUFF(
                                 LEFT( CAST ( s.active_start_time - 120000 AS VARCHAR ), 4 )
                               , 3
                               , 0
                               , '':''
                             )
               END
             + CASE
                   WHEN s.active_start_time < 120000 THEN '' AM''
                   ELSE '' PM''
               END
       WHEN s.freq_subday_type IN ( 0x2, 0x4, 0x8 )
           THEN '' every ''
             + CAST( s.freq_subday_interval AS VARCHAR )
             + CASE freq_subday_type
                   WHEN 0x2 THEN '' second''
                   WHEN 0x4 THEN '' minute''
                   WHEN 0x8 THEN '' hour''
               END
             + CASE
                   WHEN s.freq_subday_interval > 1 THEN ''s''
               END
       ELSE ''''
   END
 + CASE
       WHEN j.enabled = 0 THEN ''''
       WHEN s.job_id IS NULL THEN ''''
       WHEN s.freq_subday_type IN ( 0x2, 0x4, 0x8 )
           THEN '' between ''
             + CASE
                   WHEN s.active_start_time =      0 THEN ''12:00''
                   WHEN s.active_start_time = 120000 THEN ''12:00''
                   WHEN s.active_start_time < 100000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_start_time AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   WHEN s.active_start_time < 120000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_start_time AS VARCHAR ), 4 )
                                   , 3
                                   , 0
                                   , '':''
                                 )
                   WHEN s.active_start_time < 220000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_start_time - 120000 AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   ELSE STUFF(
                                 LEFT( CAST ( s.active_start_time - 120000 AS VARCHAR ), 4 )
                               , 3
                               , 0
                               , '':''
                             )
               END
             + CASE
                   WHEN s.active_start_time < 120000 THEN '' AM''
                   ELSE '' PM''
               END
             + '' and ''
             + CASE
                   WHEN s.active_end_time =      0 THEN ''12:00''
                   WHEN s.active_end_time = 120000 THEN ''12:00''
                   WHEN s.active_end_time < 100000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_end_time AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   WHEN s.active_end_time < 120000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_end_time AS VARCHAR ), 4 )
                                   , 3
                                   , 0
                                   , '':''
                                 )
                   WHEN s.active_end_time < 220000
                       THEN STUFF(
                                     LEFT( CAST ( s.active_end_time - 120000 AS VARCHAR ), 3 )
                                   , 2
                                   , 0
                                   , '':''
                                 )
                   ELSE STUFF(
                                 LEFT( CAST ( s.active_end_time - 120000 AS VARCHAR ), 4 )
                               , 3
                               , 0
                               , '':''
                             )
               END
             + CASE
                   WHEN s.active_end_time < 120000 THEN '' AM''
                   ELSE '' PM''
               END

       ELSE ''''
   END AS [Schedule],
	SUBSTRING(CAST(sjs.last_run_date AS CHAR(8)),5,2) + ''/'' + 
		RIGHT(CAST(sjs.last_run_date AS CHAR(8)),2) + ''/'' + 
		LEFT(CAST(sjs.last_run_date AS CHAR(8)),4)as [LastRunDate],
	sjs.last_run_outcome AS [LastRunOutCome],
	SUBSTRING(CAST(s.next_run_date AS CHAR(8)),5,2) + ''/'' + 
		RIGHT(CAST(s.next_run_date AS CHAR(8)),2) + ''/'' + 
		LEFT(CAST(s.next_run_date AS CHAR(8)),4) as [NextRunDate],
	sjs.last_run_duration as [Duration]


FROM
   msdb.dbo.sysjobs j WITH (nolock)
   LEFT JOIN msdb.dbo.sysjobschedules s WITH (nolock) ON s.job_id  = j.job_id AND s.enabled = 1
	LEFT JOIN msdb.dbo.sysjobservers sjs on s.job_id = sjs.job_id

ORDER BY
   j.name
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_GetReplicationInfo]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_GetReplicationInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


/* dbo.dbm_GetReplicationInfo Version 0.3

This Procedure is something we use in support that can be executed quickly to get basic information about a replication environment.  
It should be executed on a distributor and takes the name of the Distribution database as an input parameter.  
It can be created in any database.  
Results should be viewed in TEXT or output directly TO FILE.  Note that all of the select statements include a NOLOCK hint.

EXAMPLE:
exec dbo.dbm_GetReplicationInfo ''distribution''

You''ll want to take a look at the output for yourself.  
Much of the data returned is just the names of publications, subscriptions, and some agent history.  
Some more advanced data returned includes counts and queries from merge publication dbs 
	(if the distributor is also a merge publisher), as well as counts from transactional meta data tables.  
The final section includes some command text of commands in the distribution database.

*/

CREATE PROCEDURE [dbo].[dbm_GetReplicationInfo]
	@DistributionDB nvarchar (50) = ''distribution'' --name of the distributiondb to be queried is required in case there are multiple distribution dbs
AS

/* If you don''t want to create a procedure, uncomment the following variable declaration and set statements and then run from 
BEGIN below as an ad-hoc query, being sure to use the correct distribution database name */

BEGIN

Set Nocount On
--declare @DistributionDB nvarchar (50)
--set @DistributionDB = ''distribution''

--DECLARE VARIABLES
declare @SN varchar (100)
declare @VN varchar (4000)
declare @srvnetname varchar (100)
declare @pubdb nvarchar (100)
declare @pub_srvname nvarchar (100)
declare @contents_size int
declare @tombstone_size int
declare @genhistory_size int
declare @partition_groups_size int
declare @current_partition_mappings_size int
declare @past_partition_mappings_size int
declare @xactno varbinary(16)
declare @count int

--GET DISTRIBUTOR NAME
set @SN = @@servername
set @VN = @@version
select @srvnetname = (select srvnetname from master..sysservers with (nolock) where dist = 1)
If @srvnetname is null set @srvnetname = ''null''
If
@srvnetname = @SN
Print ''This SQL server, '' + @SN + 
'', appears to be a distributor. 
The version of '' + @SN + '' is '' + @VN + ''
''
Else
Print ''This SQL server, '' + @SN + '', does not appear to be a distributor. Errors may occur.
The distributor for '' + @SN + '' is '' + @srvnetname + ''
''
--CREATE SYNONYMS FOR THE DISTRIBUTION TABLES WE WILL QUERY
---This lets us avoid creating dynamic sql statements for different distribution db names
---Test if synonyms exist from previous executions of this SP and drop them if they do
if OBJECT_ID (''SYN_MSsubscriptions_MSFTUniqueSYN'') is not null drop synonym SYN_MSsubscriptions_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSpublications_MSFTUniqueSYN'') is not null drop synonym SYN_MSpublications_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSpublisher_databases_MSFTUniqueSYN'') is not null drop synonym SYN_MSpublisher_databases_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSarticles_MSFTUniqueSYN'') is not null drop synonym SYN_MSarticles_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSmerge_agents_MSFTUniqueSYN'') is not null drop synonym SYN_MSmerge_agents_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSmerge_subscriptions_MSFTUniqueSYN'') is not null drop synonym SYN_MSmerge_subscriptions_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSmerge_history_MSFTUniqueSYN'') is not null drop synonym SYN_MSmerge_history_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSdistribution_agents_MSFTUniqueSYN'') is not null drop synonym SYN_MSdistribution_agents_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSdistribution_history_MSFTUniqueSYN'') is not null drop synonym SYN_MSdistribution_history_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSrepl_errors_MSFTUniqueSYN'') is not null drop synonym SYN_MSrepl_errors_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSrepl_transactions_MSFTUniqueSYN'') is not null drop synonym SYN_MSrepl_transactions_MSFTUniqueSYN
if OBJECT_ID (''SYN_MSrepl_commands_MSFTUniqueSYN'') is not null drop synonym SYN_MSrepl_commands_MSFTUniqueSYN
---Create synonyms from the input parameter
exec(''
	create synonym SYN_MSsubscriptions_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSsubscriptions
	create synonym SYN_MSpublications_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSpublications
	create synonym SYN_MSpublisher_databases_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSpublisher_databases
	create synonym SYN_MSarticles_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSarticles
	create synonym SYN_MSmerge_agents_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSmerge_agents
	create synonym SYN_MSmerge_subscriptions_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSmerge_subscriptions
	create synonym SYN_MSmerge_history_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSmerge_history
	create synonym SYN_MSdistribution_agents_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSdistribution_agents
	create synonym SYN_MSdistribution_history_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSdistribution_history
	create synonym SYN_MSrepl_errors_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSrepl_errors
	create synonym SYN_MSrepl_transactions_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSrepl_transactions
	create synonym SYN_MSrepl_commands_MSFTUniqueSYN for ['' + @DistributionDB + '']..MSrepl_commands
'')
--CREATE TEMP TABLES WE WILL NEED
If Object_Id(''tempdb..#pubtype'') Is Not Null 
	Drop Table #pubtype
	Create Table #pubtype (TypeId smallint, pubtype char (40))
	Insert Into #pubtype Values (0,''Transactional'')
	Insert Into #pubtype Values (1,''Snapshot'')
	Insert Into #pubtype Values (2,''Merge'')
--select * from #pubtype
If Object_Id(''tempdb..#subtype'') Is Not Null 
	Drop Table #subtype
	Create Table #subtype (TypeId smallint, subtype char (40))
	Insert Into #subtype Values (0,''Push'')
	Insert Into #subtype Values (1,''Pull'')
	Insert Into #subtype Values (2,''Anonymous'')
--select * from #subtype
If Object_Id(''tempdb..#substatus'') Is Not Null 
	Drop Table #substatus
	Create Table #substatus (TypeId smallint, substatus char (40))
	Insert Into #substatus Values (0,''Inactive'')
	Insert Into #substatus Values (1,''Subscribed'')
	Insert Into #substatus Values (2,''Active'')
--select * from #substatus
If Object_Id(''tempdb..#sub_idstatus'') Is Not Null 
	Drop Table #sub_idstatus
	Create Table #sub_idstatus (agent_id smallint, subscriber_id smallint, sub_idstatus smallint)
	Insert #sub_idstatus
	Select Distinct agent_id, subscriber_id, status from SYN_MSsubscriptions_MSFTUniqueSYN with (nolock)
--select * from #sub_idstatus
If Object_Id(''tempdb..#merge_sub_idtype'') Is Not Null 
	Drop Table #merge_sub_idtype
	Create Table #merge_sub_idtype (agent_id smallint, subscriber nvarchar (40), subscription_type smallint)
	Insert #merge_sub_idtype
	select distinct ma.id, mu.subscriber, mu.subscription_type
	from SYN_MSmerge_agents_MSFTUniqueSYN as ma with (nolock)
	join SYN_MSmerge_subscriptions_MSFTUniqueSYN as mu with (nolock)
	on (ma.subscriber_name = mu.subscriber)
--select * from #merge_sub_idtype
If Object_Id(''tempdb..#genstatus'') Is Not Null 
	Drop Table #genstatus
	Create Table #genstatus (TypeId smallint, genstatus char (25))
	Insert Into #genstatus Values (0,''Open'')
	Insert Into #genstatus Values (1,''Closed'')
	Insert Into #genstatus Values (2,''Closed From Sub'')
--select * from #genstatus
print ''
----------
THE FOLLOWING SECTION GATHERS GENERAL REPLICATION INFO INCLUDING PUBLICATIONS, SUBSCRIPTIONS, AND SOME HISTORY DETAILS
----------
''
--GET PUBLICATION INFO FOR THIS DISTRIBUTOR
Print ''
PUBLICATION INFO FOR THIS DISTRIBUTOR
---''
select left (dp.publication, 40) as publication, left (ms.srvname, 40) as publisher, left (dp.publisher_db, 40) as publisher_db, pt.pubtype as publication_type, md.publisher_type as publisher_type
from SYN_MSpublications_MSFTUniqueSYN dp with (nolock)
	join master..sysservers ms with (nolock)
	on (dp.publisher_id = ms.srvid)
	join #pubtype pt with (nolock)
	on (dp.publication_type = pt.TypeId)
	join msdb.dbo.MSdistpublishers md with (nolock)
	on (ms.srvname = md.name)
order by publication --publication_id
--GET TRANSACTIONAL SUBSCRIPTION INFO
Print ''
TRANSACTIONAL SUBSCRIPTION INFO FOR THIS DISTRIBUTOR
---''
select left (da.publication, 40) as publication, left (ms.srvname, 40) as subscriber, left (da.subscriber_db, 40) as subscriber_db, pt.pubtype as publication_type, st.subtype as subscription_type, ss.substatus as subscription_status, da.name as agent_name 
from SYN_MSdistribution_agents_MSFTUniqueSYN da with (nolock)
	join master..sysservers ms with (nolock)
	on (da.subscriber_id = ms.srvid)
	join SYN_MSpublications_MSFTUniqueSYN dp with (nolock)
	on (da.publication = dp.publication)
	join #pubtype pt with (nolock)
	on (dp.publication_type = pt.TypeId)
	join #subtype st with (nolock)
	on (da.subscription_type = st.TypeId)
	join #sub_idstatus si with (nolock)
	on (da.subscriber_id = si.subscriber_id)
	join #substatus ss with (nolock)
	on (si.sub_idstatus = ss.TypeId)
where si.agent_id = da.id
order by publication --ms.srvname
--GET SOME RECENT DISTRIBUTION AGENT HISTORY
PRINT ''
RECENT DISTRIBUTION AGENT HISTORY
---''
select top 50 left (da.publication, 25) as publication, left (ms.srvname, 25) as subscriber, left (da.subscriber_db, 25) as subscriber_db, left (dh.comments, 300) as comments, dh.time, da.name as agent_name
from SYN_MSdistribution_history_MSFTUniqueSYN dh with (nolock)
	join SYN_MSdistribution_agents_MSFTUniqueSYN da with (nolock)
	on (dh.agent_id = da.id)
	join master..sysservers ms with (nolock)
	on (da.subscriber_id = ms.srvid)
order by time desc
--GET MERGE SUBSCRIPTION INFO
---You may see duplicate rows in the list of subscriptions if a subscriber has both push and pull subscriptions
Print ''
MERGE SUBSCRIPTION INFO FOR THIS DISTRIBUTOR
---''
select left (ma.publication, 40) as publication, left (ma.subscriber_name, 40) as subscriber, left (ma.subscriber_db, 40) as subscriber_db, pt.pubtype as publication_type, st.subtype as subscription_type, ma.name as agent_name
from SYN_MSmerge_agents_MSFTUniqueSYN ma with (nolock)
	join SYN_MSpublications_MSFTUniqueSYN dp with (nolock)
	on (ma.publication = dp.publication)
	join #merge_sub_idtype mst with (nolock)
	on (ma.id = mst.agent_id)
	join #subtype st with (nolock)
	on (mst.subscription_type = st.TypeId)
	join #pubtype pt with (nolock)
	on (dp.publication_type = pt.TypeId)
order by ma.subscriber_name
--GET SOME RECENT MERGE AGENT HISTORY
PRINT ''
RECENT MERGE AGENT HISTORY
---''
select top 50 left (ma.publication, 25) as publication, left (ma.subscriber_name, 25) as subscriber, left (ma.subscriber_db, 25) as subscriber_db, left (mh.comments, 300) as comments, mh.time, ma.name as agent_name
from SYN_MSmerge_history_MSFTUniqueSYN mh with (nolock)
	join SYN_MSmerge_agents_MSFTUniqueSYN ma with (nolock)
	on (mh.agent_id = ma.id)
order by time desc
--GET SOME RECENT REPLICATION ERROR INFORMATION
PRINT ''
RECENT REPLICATION ERROR INFO
---''
select top 50 time, error_text, left (error_code, 25) as error_code, left (source_name, 25) as source_name
from SYN_MSrepl_errors_MSFTUniqueSYN with (nolock)
order by time desc
print ''
---------- 
THE FOLLOWING SECTION INCLUDES METADATA INFO FOR MERGE PUBLICATION DATABASES
IF THIS SERVER IS NOT A MERGE PUBLISHER, ERRORS MAY OCCUR BUT ARE SAFE TO IGNORE
----------
''
--THIS SECTION HAS INFORMATION SPECIFIC TO THE MERGE PUBLISHER DBs
--CURSOR THROUGH THE MERGE PUBLISHER DBs ON THIS SERVER
declare PubDbs Cursor for
select distinct dp.publisher_db , ms.srvname
from SYN_MSpublications_MSFTUniqueSYN dp with (nolock)
	join master..sysservers ms with (nolock)
	on (dp.publisher_id = ms.srvid)
where publication_type = 2 and ms.srvname = @@servername

open PubDbs
	fetch next from PubDbs
	into @pubdb, @pub_srvname

While @@fetch_status = 0
BEGIN
--HANDLE DATABASE CONTEXT BY USING SYNONYMS
---Test if synonyms exist to avoid errors on the first pass of the cursor
---Drop synonyms on each exec of the cursor after changing to the next publication database
if OBJECT_ID (''SYN_tombstone_MSFTUniqueSYN'') is not null drop synonym SYN_tombstone_MSFTUniqueSYN
if OBJECT_ID (''SYN_contents_MSFTUniqueSYN'') is not null drop synonym SYN_contents_MSFTUniqueSYN
if OBJECT_ID (''SYN_genhistory_MSFTUniqueSYN'') is not null drop synonym SYN_genhistory_MSFTUniqueSYN
if OBJECT_ID (''SYN_partition_groups_MSFTUniqueSYN'') is not null drop synonym SYN_partition_groups_MSFTUniqueSYN
if OBJECT_ID (''SYN_current_partition_mappings_MSFTUniqueSYN'') is not null drop synonym SYN_current_partition_mappings_MSFTUniqueSYN
if OBJECT_ID (''SYN_past_partition_mappings_MSFTUniqueSYN'') is not null drop synonym SYN_past_partition_mappings_MSFTUniqueSYN
if OBJECT_ID (''SYN_sysmergearticles_MSFTUniqueSYN'') is not null drop synonym SYN_sysmergearticles_MSFTUniqueSYN
if OBJECT_ID (''SYN_sysmergepublications_MSFTUniqueSYN'') is not null drop synonym SYN_sysmergepublications_MSFTUniqueSYN
exec(''
	create synonym SYN_contents_MSFTUniqueSYN for ['' + @pubdb + '']..msmerge_contents
	create synonym SYN_tombstone_MSFTUniqueSYN for ['' + @pubdb + '']..msmerge_tombstone
	create synonym SYN_genhistory_MSFTUniqueSYN for ['' + @pubdb + '']..msmerge_genhistory
	create synonym SYN_partition_groups_MSFTUniqueSYN for ['' + @pubdb + '']..msmerge_partition_groups
	create synonym SYN_current_partition_mappings_MSFTUniqueSYN for ['' + @pubdb + '']..msmerge_current_partition_mappings
	create synonym SYN_past_partition_mappings_MSFTUniqueSYN for ['' + @pubdb + '']..msmerge_past_partition_mappings
	create synonym SYN_sysmergearticles_MSFTUniqueSYN for ['' + @pubdb + '']..sysmergearticles
	create synonym SYN_sysmergepublications_MSFTUniqueSYN for ['' + @pubdb + '']..sysmergepublications
'')

print ''
---
METADATA INFO FOR MERGE PUBLICATION DATABASE "'' + @pubdb + ''"
---''
--GET THE SIZE OF SOME METADATA TABLES
print ''
METADATA TABLE SIZES IN ROWS
---''
select @contents_size = count(*) from SYN_contents_MSFTUniqueSYN with (nolock)
select @tombstone_size = count(*) from SYN_tombstone_MSFTUniqueSYN with (nolock)
select @genhistory_size = count(*) from SYN_genhistory_MSFTUniqueSYN with (nolock)
select @partition_groups_size = count(*) from SYN_partition_groups_MSFTUniqueSYN with (nolock)
select @current_partition_mappings_size = count(*) from SYN_current_partition_mappings_MSFTUniqueSYN with (nolock)
select @past_partition_mappings_size = count(*) from SYN_past_partition_mappings_MSFTUniqueSYN with (nolock)

select @contents_size as ''MSmerge_contents'',
	@tombstone_size as ''MSmerge_tombstone'',
	@genhistory_size as ''MSmerge_genhistory'',
	@partition_groups_size as ''MSmerge_partition_groups'',
	@current_partition_mappings_size as ''MSmerge_current_partition_mappings'',
	@past_partition_mappings_size as ''MSmerge_past_partition_mappings''
--TOP 25 COUNT OF GENERATIONS BY DAY
Print ''
DAYS WITH THE HIGHEST NUMBER OF GENERATIONS
---''
select top 25 left (gh.coldate, 11) as day, count (*) as #_of_generations
from SYN_sysmergearticles_MSFTUniqueSYN pa with (nolock)
	join SYN_genhistory_MSFTUniqueSYN gh with (nolock)
	on (pa.nickname = gh.art_nick)
	join SYN_sysmergepublications_MSFTUniqueSYN pp with (nolock)
	on (pa.pubid = pp.pubid)
group by left (gh.coldate, 11)
order by #_of_generations desc
--TOP 25 MOST RECENT GENERATIONS WITH PUBLICATION, ARTICLE, AND # OF CHANGES
Print ''
MOST RECENT GENERATIONS
---''
select top 25 left (pp.name, 25) as publication_name, left(pa.name, 25) as article_name, gh.coldate as generation_date, gh.changecount as #_of_changes, gs.genstatus, gh.generation, left (pp.publisher, 25) as publisher, left (pp.publisher_db, 25) as publisher_db 
from SYN_sysmergearticles_MSFTUniqueSYN pa with (nolock)
	join SYN_genhistory_MSFTUniqueSYN gh with (nolock)
	on (pa.nickname = gh.art_nick)
	join SYN_sysmergepublications_MSFTUniqueSYN pp with (nolock)
	on (pa.pubid = pp.pubid)
	join #genstatus gs 
	on (gh.genstatus = gs.TypeId)
order by gh.coldate desc

fetch next from PubDbs
into @pubdb, @pub_srvname

END

Close PubDbs
Deallocate PubDbs
--DROP THE PUBLICATION DATABASE SYNONYMS
if OBJECT_ID (''SYN_tombstone_MSFTUniqueSYN'') is not null drop synonym SYN_tombstone_MSFTUniqueSYN
if OBJECT_ID (''SYN_contents_MSFTUniqueSYN'') is not null drop synonym SYN_contents_MSFTUniqueSYN
if OBJECT_ID (''SYN_genhistory_MSFTUniqueSYN'') is not null drop synonym SYN_genhistory_MSFTUniqueSYN
if OBJECT_ID (''SYN_partition_groups_MSFTUniqueSYN'') is not null drop synonym SYN_partition_groups_MSFTUniqueSYN
if OBJECT_ID (''SYN_current_partition_mappings_MSFTUniqueSYN'') is not null drop synonym SYN_current_partition_mappings_MSFTUniqueSYN
if OBJECT_ID (''SYN_past_partition_mappings_MSFTUniqueSYN'') is not null drop synonym SYN_past_partition_mappings_MSFTUniqueSYN
if OBJECT_ID (''SYN_sysmergearticles_MSFTUniqueSYN'') is not null drop synonym SYN_sysmergearticles_MSFTUniqueSYN
if OBJECT_ID (''SYN_sysmergepublications_MSFTUniqueSYN'') is not null drop synonym SYN_sysmergepublications_MSFTUniqueSYN

PRINT ''
---------- 
THE FOLLOWING SECTION INCLUDES INFO ABOUT TRANSACTIONAL REPLICATION METADATA FROM THE DISTRIBUTION DATABASE
----------
''
--TOP 25 COUNT OF TRANSACTIONS BY DAY
Print ''
DAYS WITH THE HIGHEST NUMBER OF TRANSACTIONS
---'' 
select top 25 left (mt.entry_time, 11) as day, count(*) as #_of_transactions
from SYN_MSrepl_transactions_MSFTUniqueSYN mt with (nolock)
	join SYN_MSpublisher_databases_MSFTUniqueSYN dd with (nolock)
	on (mt.publisher_database_id = dd.id) 
group by left (mt.entry_time, 11)
order by #_of_transactions desc 
--TOP 25 COUNT OF COMMANDS BY TRANSACT NUMBER
PRINT ''
TRANSACTIONS WITH THE HIGHEST NUMBER OF COMMANDS
---''
select top 25 mc.xact_seqno, left (dd.publisher_db, 45) as publisher_db, count(*) as #_of_commands
from SYN_MSrepl_commands_MSFTUniqueSYN mc with (nolock)
	join SYN_MSpublisher_databases_MSFTUniqueSYN dd with (nolock)
	on (mc.publisher_database_id = dd.id)
group by mc.xact_seqno, dd.publisher_db 
order by #_of_commands desc
--SOME COMMANDS FROM THE 2 TRANSACTIONS WITH THE HIGHEST COMMAND COUNT
PRINT ''
----------
THE FOLLOWING SECTION RETURNS INFO ABOUT THE 2 TRANSACTIONS WITH THE HIGHEST COMMAND COUNT 
NOT ALL COMMANDS WILL ''''CAST'''' CORRECTLY
USE SP_BROWSEREPLECMDS IF THE COMMAND COLUMN RETURNS GARBAGE
----------
''
declare xact_count cursor for
	select top 2 xact_seqno, count(*) as #_of_commands
	from SYN_MSrepl_commands_MSFTUniqueSYN with (nolock)
	group by xact_seqno 
	order by #_of_commands desc

open xact_count
	fetch next from xact_count
	into @xactno, @count

While @@fetch_status = 0
BEGIN
print ''
---
COMMAND INFO FOR NEXT TRANSACTION 
---''
select top 25 mc.command_id, left (dr.article, 45) as article, left (ms.srvname, 45) as publisher, left (dd.publisher_db, 45) as publisher_db, cast(mc.command as nvarchar(1000)) as command, mc.xact_seqno
from SYN_MSrepl_commands_MSFTUniqueSYN mc with (nolock)
	join SYN_MSpublisher_databases_MSFTUniqueSYN dd with (nolock)
	on (mc.publisher_database_id = dd.id)
	join master..sysservers ms with (nolock)
	on (dd.publisher_id = ms.srvid)
	join SYN_MSarticles_MSFTUniqueSYN dr with (nolock)
	on (mc.article_id = dr.article_id)
where dd.publisher_id = dr.publisher_id 
AND mc.xact_seqno = @xactno
order by command_id

fetch next from xact_count
	into @xactno, @count
END

Close xact_count
Deallocate xact_count
--DROP THE TEMP TABLES
Drop Table #pubtype
Drop Table #subtype
Drop Table #substatus
Drop Table #sub_idstatus
Drop Table #merge_sub_idtype
Drop Table #genstatus
--DROP THE DISTRIBUTION DATABASE SYNONYMS
Drop Synonym SYN_MSsubscriptions_MSFTUniqueSYN
Drop Synonym SYN_MSpublications_MSFTUniqueSYN
Drop Synonym SYN_MSpublisher_databases_MSFTUniqueSYN
Drop Synonym SYN_MSarticles_MSFTUniqueSYN
Drop Synonym SYN_MSmerge_agents_MSFTUniqueSYN
Drop Synonym SYN_MSmerge_subscriptions_MSFTUniqueSYN
Drop Synonym SYN_MSmerge_history_MSFTUniqueSYN
Drop Synonym SYN_MSdistribution_agents_MSFTUniqueSYN
Drop Synonym SYN_MSdistribution_history_MSFTUniqueSYN
Drop Synonym SYN_MSrepl_errors_MSFTUniqueSYN
Drop Synonym SYN_MSrepl_transactions_MSFTUniqueSYN
Drop Synonym SYN_MSrepl_commands_MSFTUniqueSYN
Set Nocount Off
END





' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_RestoreTRN]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_RestoreTRN]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



-- =============================================
-- Author:		mmessano
-- Create date: 12/12/2007
-- Description:	Copy bak file(s) for a specified server and restore to the local machine.
--				Contains parameters for specifying file drive locations with defaults
--					corresponding to the network drives on the NetApp.
--				@dbs must be a comma-separated list enclosed in single-quotes
--				Setting @output=''1'' will print the generated commands and exit.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_RestoreTRN] 
	@rserver	varchar(64),			-- server to pull TRN files from
	@dbs		varchar(8000),			-- list of databases
	@localdir	varchar(256),			-- local path for files		*NOTE* this is the top-level dir, not the db specific dir
	@trndrive	char(1)			= ''F'',	-- for future use
	@recovery	bit				= ''0'',	-- defaults to 0 which equals false(i.e. NORECOVERY)
	@output		bit				= ''0''	-- defaults to 0 which equals false

AS

BEGIN
SET NOCOUNT ON;

Declare @lserver varchar(64)
Declare @dbname varchar(64)
Declare @cmd varchar(8000)
Declare @restore varchar(8000)
Declare @mkdir varchar(1000)
Declare @lpath varchar(300)
Declare @trn varchar(1000)			-- exact path to the TRN file
Declare @norecovery varchar(16)
Declare @result int
Declare @seltrn varchar(8000)
Declare @file varchar(128)

 
Set @lserver = @@SERVERNAME

----------------------------------------------------------------------------------------
-- Sanity check, flag options
if @recovery = ''1''
	Set @norecovery = ''RECOVERY,''
Else
	Set @norecovery = ''NORECOVERY,''

if @lserver = @rserver
	Begin
		print ''You are attempting to recurse the local machine.''
		print ''Please select a remote server that is not the local server.''
		return
	End

if ''dbamaint'' IN (select * from [dbamaint].[dbo].[udf_split](@dbs,'',''))
	Begin
		print ''You are attempting to restore dbamaint to the local machine.''
		print ''You cannot overwrite the local copy of the db that is running the procedure.''
		print ''The commands will be printed and not run.''
		set @output = ''1''
	End
----------------------------------------------------------------------------------------

-- Begin looping
declare dbname cursor for 
	select * from [dbamaint].[dbo].[udf_split](@dbs,'','')

open dbname 
	fetch next from dbname into @dbname 
	while @@fetch_status=0 
begin

-- update LogShipStatus table on XSQLUTIL18.Status
exec XSQLUTIL18.status.dbo.ins_LogShipStatus @Server=@rserver,@DB=@dbname

Set @file = ( select max(message) from XSQLUTIL18.status.dbo.LogShipStatus where database_name = @dbname )

Set @trn = ''\\'' + @rserver + ''\'' + REPLACE(@file,'':'',''$'')
Set @file = (select distinct r from [dbamaint].[dbo].[udf_split](@file,''\'') where r like ''%.trn'')
Set @lpath = @localdir + @dbname + ''\'' + @file

-- copy trn file with overwrite
select @cmd = ''copy '' + @trn + '' '' + @lpath + '' /Y''  
-- build restore statement
select @restore =	'' RESTORE LOG ['' + @dbname + '']'' + char(13) +
					'' FROM DISK = N'''''' + @lpath  + '''''''' + char(13) +
					'' WITH FILE = 1, '' + @norecovery + '' STATS = 10'' + char(13)


IF @output = ''0''
	Begin
		-- Run the dir command, put output of xp_cmdshell into @result
		EXEC @result = master.dbo.xp_cmdshell @cmd

		 -- If the directory does not exist, we must create it
		IF @result <> 0
			BEGIN
				-- build the mkdir command
				SELECT @mkdir = ''mkdir '' + @localdir + @dbname
				-- create the directory
				EXEC master.dbo.xp_cmdshell @mkdir, NO_OUTPUT
				-- copy bak file
				EXEC master.dbo.xp_cmdshell @cmd
				-- restore db
				exec (@restore)
			END
		ELSE
			Begin
				--  file copy succeeded, dir exists, restore db
				exec (@restore)
				--print ''inside restore loop'' -- makes the errors stop when no actions happen(commented steps etc)
			End
	End
ELSE
	-- flagged for output, print and exit
	BEGIN
		print ''--Selection Statement: '' + char(13) + @seltrn
		print ''--Copy Statement: '' + char(13) + @cmd
		print ''--Restore Statement: '' + char(13) + @restore
	END

fetch next from dbname into @dbname 
end
 
CLOSE dbname 
DEALLOCATE dbname
 
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_RestoreBAK]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_RestoreBAK]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

/*
Required permissions:
The calling sproc(dbm_RestoreBAK) requires write access to Status.  Use the ProdStatuswrite user/linkedServer setup.
dbm_RestoreBAK calls ins_LogShipStatus which needs READ access to the CLIENT database server, specifically msdb.
Use LinkServerRead user/LinkedServer for this.  Each client server Linked Server should use LinkServerRead already.
ProdStatusWrite also needs execute access on ins_LogShipStatus.
ProdStatusWrite also needs delete/update access to LogShipStatus.
*/

-- =============================================
-- Author:		mmessano
-- Create date: 12/12/2007
-- Update date: 3/9/2011  fix version select and physical_device_name for 2008+
-- Description:	Copy bak file(s) for a specified server and restore to the local machine.
--				Contains parameters for specifying file drive locations with defaults
--					corresponding to the network drives on the NetApp.
--				@dbs must be a comma-separated list enclosed in single-quotes
--				Setting @output=''1'' will print the generated commands and exit.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_RestoreBAK] 
	@rserver	varchar(64),
	@localdir	varchar(256),			-- local path for files		*NOTE* this is the top-level dir, not the db specific dir 
	@dbs		varchar(8000),
	@mdfdrive	char(1)			= ''G'',
	@ldfdrive	char(1)			= ''H'',
	@recovery	bit				= ''1'',	-- defaults to 1 which equals true
	@output		bit				= ''0''	-- defaults to 0 which equals false

AS

BEGIN
SET NOCOUNT ON;

Declare @lserver varchar(64)
Declare @sqldir varchar(64)
Declare @cmd varchar(8000)
Declare @dbname varchar(64)
Declare @restore varchar(MAX)
Declare @mkdir varchar(1024)
Declare @lpath varchar(512)
Declare @rpath varchar(512)
Declare @norecovery varchar(16)
Declare @result int
Declare @file varchar(256)


Set @lserver = @@SERVERNAME
Set @sqldir = ''\mssql\''

----------------------------------------------------------------------------------------
-- Sanity check, flag options
if @recovery = ''0''
	Set @norecovery = ''NORECOVERY,''
Else
	Set @norecovery = ''''

if @lserver = @rserver
	BEGIN
		PRINT ''You are attempting to recurse the local machine.''
		PRINT ''Please select a remote server that is not the local server.''
		return
	END

if ''dbamaint'' IN (select * from [dbamaint].[dbo].[udf_split](@dbs,'',''))
	BEGIN
		PRINT ''You are attempting to restore dbamaint to the local machine.''
		PRINT ''You cannot overwrite the local copy of the db that is running the procedure.''
		PRINT ''The commands will be printed and not run.''
		SET @output = ''1''
	END
----------------------------------------------------------------------------------------
-- version check
DECLARE @Version VARCHAR(1000)
SELECT @Version = @@VERSION

IF ( RTRIM(LTRIM(SUBSTRING(@@VERSION,22,5))) = ''2008'' )
	BEGIN
		--Drop everything before the dash and everything after the open bracket
		SET @Version = SUBSTRING( @Version, CHARINDEX( ''-'', @Version )+1 ,CHARINDEX( ''('', @Version, CHARINDEX( ''-'', @Version )+1 ) - CHARINDEX( ''-'', @Version ) - 1 )
		--Clean up the string, grab the major number
		SET @Version = LEFT(LTRIM(RTRIM( @Version )),2)	
	END
ELSE
	BEGIN
		--Drop everything before the dash and everything after the open bracket
		SET @Version = SUBSTRING( @Version, CHARINDEX( ''-'', @Version )+1,CHARINDEX( ''('', @Version ) - CHARINDEX( ''-'', @Version ) - 1 )
		--Clean up the string, grab the major number
		SET @Version = LEFT(LTRIM(RTRIM( @Version )),1)
	END
----------------------------------------------------------------------------------------

-- begin looping
declare dbname cursor for 
	select * from [dbamaint].[dbo].[udf_split](@dbs,'','')

open dbname 
	fetch next from dbname into @dbname 
	while @@fetch_status=0 
begin 

-- update LogShipStatus table on XSQLUTIL18.Status
exec XSQLUTIL18_RW.status.dbo.ins_LogShipStatus @Server=@rserver,@DB=@dbname

Set @file = ( 
				select max(message) from XSQLUTIL18.status.dbo.logshipstatus 
				where database_name = @dbname 
				and server_name = @rserver
				--and activity = ''Backup database'' 
				)

Set @rpath = ''\\'' + @rserver + ''\'' + REPLACE(@file,'':'',''$'')
Set @file = (select distinct r from [dbamaint].[dbo].[udf_split](@file,''\'') where r like ''%.bak'')
Set @lpath = @localdir + @dbname + ''\'' + @file


-- copy bak file with overwrite
select @cmd = ''copy '' + @rpath + '' '' + @lpath + '' /Y''  


select @restore =	'' RESTORE DATABASE ['' + @dbname + '']'' + char(13) +
					'' FROM  DISK = N'''''' + @lpath + '''''''' + char(13)
----------------------------------------------------------------------------------------
-- 2000, 2005 and 2008 have different directory paths
----------------------------------------------------------------------------------------
IF ( @Version = ''8'' )
	BEGIN
		select @restore = @restore +
		'' WITH  FILE = 1, '' + char(13) +
		'' MOVE N'''''' + @dbname + ''_Data'''''' + '' TO N'''''' + @mdfdrive + '':\MSSQL\Data\'' + @dbname + ''_Data.MDF'''','' + char(13) +
		'' MOVE N'''''' + @dbname + ''_Log'''''' + '' TO N'''''' + @ldfdrive + '':\MSSQL\LDF\'' + @dbname + ''_Log.LDF'''','' + char(13)
	END
	else if (@Version = ''9'' )
	BEGIN
		select @restore = @restore +
		'' WITH  FILE = 1, '' + char(13) +
		'' MOVE N'''''' + @dbname + ''_Data'''''' + '' TO N'''''' + @mdfdrive + '':\MSSQL.1\MSSQL\Data\'' + @dbname + ''_Data.MDF'''','' + char(13) +
		'' MOVE N'''''' + @dbname + ''_Log'''''' + '' TO N'''''' + @ldfdrive + '':\MSSQL.1\MSSQL\LDF\'' + @dbname + ''_Log.LDF'''','' + char(13)
	END
	else if (@Version = ''10'' )
	BEGIN
		select @restore = @restore +
		'' WITH  FILE = 1, '' + char(13) +
		'' MOVE N'''''' + @dbname + ''_Data'''''' + '' TO N'''''' + @mdfdrive + '':\MSSQL10.MSSQLSERVER\MSSQL\Data\'' + @dbname + ''_Data.MDF'''','' + char(13) +
		'' MOVE N'''''' + @dbname + ''_Log'''''' + '' TO N'''''' + @ldfdrive + '':\MSSQL10.MSSQLSERVER\MSSQL\LDF\'' + @dbname + ''_Log.LDF'''','' + char(13)
	END 


select @restore = @restore + '' REPLACE, '' + @norecovery + '' STATS = 10'' + char(13)

IF @output = ''0''
	Begin
		-- Run the dir command, put output of xp_cmdshell into @result
		EXEC @result = master.dbo.xp_cmdshell @cmd

		 -- If the directory does not exist, we must create it
		IF @result <> 0
			BEGIN
				-- build the mkdir command
				SELECT @mkdir = ''mkdir \\'' + @lserver + ''\'' + REPLACE(@localdir,'':'',''$'') + ''\'' + @dbname
				-- create the directory
				EXEC master.dbo.xp_cmdshell @mkdir, NO_OUTPUT
				-- copy bak file
				EXEC master.dbo.xp_cmdshell @cmd
				-- restore db
				exec (@restore)
			END
		ELSE
			Begin
				-- restore db
				exec (@restore)
			End
	End
ELSE
	-- flagged for output, print and exit
	BEGIN
		PRINT ''--Copy Statement: '' + char(13) + @cmd
		PRINT ''--Restore Statement: '' + char(13) + @restore
	END

fetch next from dbname into @dbname 
end
 
CLOSE dbname 
DEALLOCATE dbname 

END





' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_ReplicationLatencyMonitor]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_ReplicationLatencyMonitor]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N' 
CREATE PROCEDURE [dbo].[dbm_ReplicationLatencyMonitor]
         /* Declare Parameters */
          @publicationToTest    sysname        = N''yourPublicationName''
        , @publicationDB        sysname        = N''yourPublicationDB''
        , @replicationDelay     VARCHAR(10)    = N''00:00:30''
        , @iterations           INT            = 5
        , @iterationDelay       VARCHAR(10)    = N''00:00:30''
        , @displayResults       BIT            = 0
        , @deleteTokens         BIT            = 1
        , @trimResults			BIT			   = 0
AS
/*********************************************************************************
    Name:       dbm_ReplicationLatencyMonitor
    Author:     Michelle F. Ufford
    Purpose:    Retrieves the amount of replication latency in seconds
    Notes:      Default settings will run 1 test every minute for 5 minutes.
                @publicationToTest = defaults to yourPublicationName publication
                @publicationDB = the database that is the source for the publication.
				    The tracer procs are found in the publishing DB.
                @replicationDelay = how long to wait for the token to replicate;
                    probably should not set to anything less than 10 (in seconds)
                @iterations = how many tokens you want to test
                @iterationDelay = how long to wait between sending test tokens
                    (in seconds)
                @displayResults = print results to screen when complete
                @deleteTokens = whether you want to retain tokens when done
 
    Called by:  DBA
 
    Date        Initials    Description
    ----------------------------------------------------------------------------
    2008-11-20   MFU        Initial Release
    2008-11-24	 ILK        Tweaked to allow for centralized execution 
                            Replaced temp table with permanent table.
    2008-11-25   MFU        More tweaking, added publication data to 
                            ReplicationMonitor, fixed NULL latency data,
                            moved ReplicationMonitor creation out of proc
*********************************************************************************
    Exec dbo.dbm_ReplicationLatencyMonitor
          @publicationToTest    = N''myTestPublication''
        , @publicationDB        = N''sandbox_publisher''
        , @replicationDelay     = N''00:00:05''
        , @iterations           = 1
        , @iterationDelay       = N''00:00:05''
        , @displayResults       = 1
        , @deleteTokens         = 1
        , @trimResults			= 0;
*********************************************************************************/
 
SET NOCOUNT ON;
SET XACT_Abort ON;
 
BEGIN
 
    /* Declare Variables */
    DECLARE @currentIteration   INT
          , @tokenID            BIGINT
          , @currentDateTime    SMALLDATETIME
          , @sqlStatement       NVARCHAR(200)
          , @parmDefinition		NVARCHAR(500);
 
    DECLARE @tokenResults TABLE
    ( 
          Iteration             INT             Null
        , TracerID              INT             Null
        , DistributorLatency    INT             Null
        , Subscriber            VARCHAR(1000)   Null
        , SubscriberDB          VARCHAR(1000)   Null
        , SubscriberLatency     INT             Null
        , OverallLatency        INT             Null 
    );
 
    /* Initialize our variables */
    SELECT @currentIteration = 0
         , @currentDateTime  = GETDATE();
 
    WHILE @currentIteration < @iterations
    BEGIN
 
		/* Prepare the stored procedure execution string */
		SET @sqlStatement = N''Execute '' + @publicationDB + N''.sys.sp_postTracerToken '' + 
							N''@publication = @VARpublicationToTest , '' +
							N''@tracer_token_id = @VARtokenID OutPut;''
 
		/* Define the parameters used by the sp_ExecuteSQL later */
		SET @parmDefinition = N''@VARpublicationToTest sysname, '' +
			N''@VARtokenID bigint OutPut'';
 
        /* Insert a new tracer token in the publication database */
        EXECUTE SP_EXECUTESQL 
              @sqlStatement
            , @parmDefinition
            , @VARpublicationToTest = @publicationToTest
            , @VARtokenID = @TokenID OUTPUT;
 
        /* Give a few seconds to allow the record to reach the subscriber */
        WAITFOR Delay @replicationDelay;
 
        /* Prepare our statement to retrieve tracer token data */
        SELECT @sqlStatement = ''Execute '' + @publicationDB + ''.sys.sp_helpTracerTokenHistory '' +
                    N''@publication = @VARpublicationToTest , '' +
                    N''@tracer_id = @VARtokenID''
            , @parmDefinition = N''@VARpublicationToTest sysname, '' +
                    N''@VARtokenID bigint'';
 
        /* Store our results for retrieval later */
        INSERT INTO @tokenResults
        (
            DistributorLatency
          , Subscriber
          , SubscriberDB
          , SubscriberLatency
          , OverallLatency
        )
        EXECUTE SP_EXECUTESQL 
              @sqlStatement
            , @parmDefinition
            , @VARpublicationToTest = @publicationToTest
            , @VARtokenID = @TokenID;
 
        /* Assign the iteration and token id to the results for easier investigation */
        UPDATE @tokenResults
        SET iteration = @currentIteration + 1
          , TracerID = @tokenID
        WHERE iteration IS Null;
 
        /* Wait for the specified time period before creating another token */
        WAITFOR Delay @iterationDelay;
 
        /* Avoid endless looping... :) */
        SET @currentIteration = @currentIteration + 1;
 
    END;
 
    /* Display our results */
    IF @displayResults = 1
    BEGIN
        SELECT 
              iteration
            , TracerID
            , IsNull(DistributorLatency, 0) AS ''DistributorLatency''
            , Subscriber
            , SubscriberDB
            , IsNull(SubscriberLatency, 0) AS ''SubscriberLatency''
            , IsNull(OverallLatency, 
                IsNull(DistributorLatency, 0) + IsNull(SubscriberLatency, 0))
                AS ''OverallLatency''
        FROM @tokenResults;
    END;
 
    /* Store our results */
    INSERT INTO dbo.SQLReplicationMonitor
    (
        ServerName
        , MonitorDate
        , PublicationName
        , PublicationDB
        , Iteration
        , TracerID
        , DistributorLatency
        , Subscriber
        , SubscriberDB
        , SubscriberLatency
        , OverallLatency
    )
    SELECT 
        @@SERVERNAME
        , @currentDateTime
        , @publicationToTest
        , @publicationDB
        , Iteration
        , TracerID
        , IsNull(DistributorLatency, 0)
        , Subscriber
        , SubscriberDB
        , IsNull(SubscriberLatency, 0)
        , IsNull(OverallLatency, 
          IsNull(DistributorLatency, 0) + IsNull(SubscriberLatency, 0))
    FROM @tokenResults;
 
    /* Delete the tracer tokens if requested */
    IF @deleteTokens = 1
    BEGIN
 
        SELECT @sqlStatement = ''Execute '' + @publicationDB + ''.sys.sp_deleteTracerTokenHistory '' +
                    N''@publication = @VARpublicationToTest , '' +
                    N''@cutoff_date = @VARcurrentDateTime''
            , @parmDefinition = N''@VARpublicationToTest sysname, '' +
                    N''@VARcurrentDateTime datetime'';
 
        EXECUTE SP_EXECUTESQL 
              @sqlStatement
            , @parmDefinition
            , @VARpublicationToTest = @publicationToTest
            , @VARcurrentDateTime = @currentDateTime;
 
    END;
    
    IF @trimResults = 1
    BEGIN
    
		DELETE FROM SQLReplicationMonitor 
			WHERE publicationName = @PublicationToTest
			AND publicationDB = @PublicationDB
			AND MonitorDate < GETDATE() - 7
    
    END;
 
    SET NOCOUNT OFF;
    RETURN 0;
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLDatabases]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLDatabases]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		mmessano
-- Create date: 1/2/2009
-- Description:	Updates list of databases on the server.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_SQLDatabases] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

if exists (select name from sysobjects where name like ''SQLDatabases%'')
	BEGIN
		truncate table SQLDatabases 
	END
else 
	BEGIN
	CREATE TABLE [dbamaint].[dbo].[SQLDatabases]
                (
                        [Server] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, 
                        [InstanceName] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, 
                        [DatabaseName] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
                        [FileId]  smallint NOT NULL,
                        [GroupId] smallint NOT NULL, 
                        [FileStatus] [int] NOT NULL, 
                        [LogicalName] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
                        [Filename] nvarchar(260) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL, 
                        [DatabaseStatus] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, 
                        [Updateability] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, 
                        [User_Access] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, 
                        [Recovery] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
                        [UsageType] varchar (6),
						[Owner] nvarchar(128) NULL,
						[CreateDate] datetime NULL,
						[CmptLevel] tinyint NULL,
                        [LastUpdate] datetime                      
                ) 
        ON      [PRIMARY] 
	END 


INSERT 
INTO    [dbamaint].[dbo].[SQLDatabases] 
--select * from SQLDatabases
EXEC sp_MSForEachDB 
	''SELECT CONVERT(nvarchar(128), 
	SERVERPROPERTY(''''Servername'''')) AS Server,
	isnull(rtrim(CONVERT(nvarchar(128), 
	SERVERPROPERTY(''''InstanceName''''))), ''''Default'''') AS InstanceName,
		''''?'''' as DatabaseName,
		[?]..sysfiles.fileid AS FileID,
		[?]..sysfiles.groupid AS GroupID,
		[?]..sysfiles.status AS Status,
		[?]..sysfiles.name AS LogicalName, 
		[?]..sysfiles.filename AS FileName,
		convert(sysname,DatabasePropertyEx(''''?'''',''''Status'''')) as DatabaseStatus,
		convert(sysname,DatabasePropertyEx(''''?'''',''''Updateability'''')) as Updateability,
		convert(sysname,DatabasePropertyEx(''''?'''',''''UserAccess'''')) as User_Access,
		convert(sysname,DatabasePropertyEx(''''?'''',''''Recovery'''')) as Recovery ,
		CASE                                                         
			WHEN (64 & [?]..sysfiles.status) = 64 THEN ''''Log''''
				ELSE ''''Data''''                                            
			END  as [UsageType],
			NULL,
			NULL,
			NULL,
			GETDATE()
			From [?]..sysfiles          ''


-----------------------------------------------------------------------------------------------
-- update db owner  
-----------------------------------------------------------------------------------------------
UPDATE [dbamaint].[dbo].[SQLDatabases]
    SET [Owner] = (suser_sname(s.sid)),
        [CreateDate] = s.crdate,
        [CmptLevel] = s.[CmptLevel]
    FROM [dbamaint].[dbo].[SQLDatabases] f,
         master.dbo.sysdatabases  s
  WHERE  f.[DatabaseName] = s.[Name] collate SQL_Latin1_General_CP1_CI_AS

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SprocsWithServerNames]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SprocsWithServerNames]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		mmessano
-- Create date: 2/20/2009
-- Updated:		7/02/2010
-- Description:	Searches sprocs in each database for embedded servernames.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_SprocsWithServerNames] 

AS
BEGIN


TRUNCATE TABLE SprocsWithServerNames

Declare @cmd nvarchar(MAX)

SELECT @cmd = ''INSERT SprocsWithServerNames (Server, DatabaseName, ProcedureName, CreateDate, LastUpdate)
	exec sp_MSforeachDB ''''USE ?; 
		SELECT @@SERVERNAME AS Server, SPECIFIC_CATALOG, ROUTINE_NAME, CREATED, LAST_ALTERED 
		FROM INFORMATION_SCHEMA.ROUTINES 
		WHERE ROUTINE_DEFINITION LIKE ''''''''%.%.dbo.%''''''''      
		AND ROUTINE_TYPE = ''''''''PROCEDURE''''''''  
		AND ROUTINE_NAME NOT LIKE ''''''''dt_%'''''''' 
		ORDER BY ROUTINE_NAME''''''
	


print @cmd
--exec(@cmd)


-- exclude standard and non-dexma databases
DELETE FROM SprocsWithServerNames 
	WHERE DatabaseName IN (''master'',''model'',''msdb'',''tempdb'', ''DXPRD'', ''DYNAMICS'', ''dbamaint'')

select * from SprocsWithServerNames
ORDER BY 1,2,3


END' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SpaceUsedByObject]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SpaceUsedByObject]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[dbm_SpaceUsedByObject]
@objname nvarchar(776) = null,				-- The object we want size on.
@updateusage varchar(5) = false				-- Param. for specifying that
											-- usage info. should be updated.
as

declare @id	int								-- The object id of @objname.
declare @type	character(2)				-- The object type.
declare	@pages	int							-- Working variable for size calc.
declare @dbname sysname
declare @dbsize dec(15,0)
declare @logsize dec(15)
declare @bytesperpage	dec(15,0)
declare @pagesperMB		dec(15,0)

/*Create temp tables before any DML to ensure dynamic
**  We need to create a temp table to do the calculation.
**  reserved: sum(reserved) where indid in (0, 1, 255)
**  data: sum(dpages) where indid < 2 + sum(used) where indid = 255 (text)
**  indexp: sum(used) where indid in (0, 1, 255) - data
**  unused: sum(reserved) - sum(used) where indid in (0, 1, 255)

Currently this is tied to whichever DB the sproc "lives" in
Trying for stats on another DB does not work...yet

*/



create table #spt_space
(
	[id]		[int] IDENTITY (1, 1) NOT NULL ,
	tblname		varchar(200),
	rows		int null,
	reserved	dec(15) null,
	data		dec(15) null,
	indexp		dec(15) null,
	unused		dec(15) null
)

/*
**  Check to see if user wants usages updated.
*/

if @updateusage is not null
	begin
		select @updateusage=lower(@updateusage)

		if @updateusage not in (''true'',''false'')
			begin
				raiserror(15143,-1,-1,@updateusage)
				return(1)
			end
	end
/*
**  Check to see that the objname is local.
*/
if @objname IS NOT NULL
begin

	select @dbname = parsename(@objname, 3)


	if @dbname is not null and @dbname <> db_name()
		begin
			raiserror(15250,-1,-1)
			return (1)
		end

	if @dbname is null
		select @dbname = db_name()

	/*
	**  Try to find the object.
	*/
	select @id = null
	select @id = id, @type = xtype
		from sysobjects
			where id = object_id(@objname)

	/*
	**  Does the object exist?
	*/
	if @id is null
		begin
			raiserror(15009,-1,-1,@objname,@dbname)
			return (1)
		end


	if not exists (select * from sysindexes
				where @id = id and indid < 2)

		if      @type in (''P '',''D '',''R '',''TR'',''C '',''RF'') --data stored in sysprocedures
				begin
					raiserror(15234,-1,-1)
					return (1)
				end
		else if @type = ''V '' -- View => no physical data storage.
				begin
					raiserror(15235,-1,-1)
					return (1)
				end
		else if @type in (''PK'',''UQ'') -- no physical data storage. --?!?! too many similar messages
				begin
					raiserror(15064,-1,-1)
					return (1)
				end
		else if @type = ''F '' -- FK => no physical data storage.
				begin
					raiserror(15275,-1,-1)
					return (1)
				end
end

/*
**  Update usages if user specified to do so.
*/

if @updateusage = ''true''
	begin
		if @objname is null
			dbcc updateusage(0) with no_infomsgs
		else
			dbcc updateusage(0,@objname) with no_infomsgs
		print '' ''
	end


set nocount on

/*
**  If @id is null, then we want summary data.
*/
/*	Space used calculated in the following way
**	@dbsize = Pages used
**	@bytesperpage = d.low (where d = master.dbo.spt_values) is
**	the # of bytes per page when d.type = ''E'' and
**	d.number = 1.
**	Size = @dbsize * d.low / (1048576 (OR 1 MB))
*/
if @id is null
begin
declare
@strTblName varchar(200),
@intID	int

DECLARE cursor_ CURSOR FOR
 select [name] from sysobjects where xtype=''U'' and [name] not like ''dtprop%''
OPEN cursor_
FETCH NEXT FROM cursor_ INTO @strTblName
WHILE (@@FETCH_STATUS<>-1)
BEGIN
 	select @id = id, @type = xtype
		from sysobjects
			where id = object_id(@strTblName)
 

	/*
	**  Now calculate the summary data.
	**  reserved: sum(reserved) where indid in (0, 1, 255)
	*/
	insert into #spt_space (reserved,tblname)
		select sum(reserved),@strTblName
			from sysindexes
				where indid in (0, 1, 255)
					and id = @id
	select @intID = max([id]) from #spt_space
	/*
	** data: sum(dpages) where indid < 2
	**	+ sum(used) where indid = 255 (text)
	*/
	select @pages = sum(dpages)
			from sysindexes
				where indid < 2
					and id = @id
	select @pages = @pages + isnull(sum(used), 0)
		from sysindexes
			where indid = 255
				and id = @id
	update #spt_space
		set data = @pages where [id]=@intID


	/* index: sum(used) where indid in (0, 1, 255) - data */
	update #spt_space
		set indexp = (select sum(used)
				from sysindexes
					where indid in (0, 1, 255)
						and id = @id)
			    - data
	where [id]=@intID
	/* unused: sum(reserved) - sum(used) where indid in (0, 1, 255) */
	update #spt_space
		set unused = reserved
				- (select sum(used)
					from sysindexes
						where indid in (0, 1, 255)
							and id = @id)
	where [id]=@intID
	update #spt_space
		set rows = i.rows
			from sysindexes i
				where i.indid < 2
					and i.id = @id
	and #spt_space.[id]=@intID




FETCH NEXT FROM cursor_ INTO @strTblName
END
CLOSE cursor_
DEALLOCATE cursor_
	select  tblname,rows = convert(char(11), rows),
		reserved = ltrim(str(reserved * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		data = ltrim(str(data * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		index_size = ltrim(str(indexp * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		unused = ltrim(str(unused * d.low / 1024.,15,0) +
				'' '' + ''KB'')
	from #spt_space, master.dbo.spt_values d
		where d.number = 1
			and d.type = ''E''
	union
	select  ''_Total_'',rows = convert(char(11), sum(rows)),
		reserved = ltrim(str(sum(reserved) * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		data = ltrim(str(sum(data) * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		index_size = ltrim(str(sum(indexp) * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		unused = ltrim(str(sum(unused) * d.low / 1024.,15,0) +
				'' '' + ''KB'')
	from #spt_space, master.dbo.spt_values d
		where d.number = 1
			and d.type = ''E''
	group by d.low
end

/*
**  We want a particular object.
*/
else
begin
	/*
	**  Now calculate the summary data.
	**  reserved: sum(reserved) where indid in (0, 1, 255)
	*/
	insert into #spt_space (reserved)
		select sum(reserved)
			from sysindexes
				where indid in (0, 1, 255)
					and id = @id

	/*
	** data: sum(dpages) where indid < 2
	**	+ sum(used) where indid = 255 (text)
	*/
	select @pages = sum(dpages)
			from sysindexes
				where indid < 2
					and id = @id
	select @pages = @pages + isnull(sum(used), 0)
		from sysindexes
			where indid = 255
				and id = @id
	update #spt_space
		set data = @pages


	/* index: sum(used) where indid in (0, 1, 255) - data */
	update #spt_space
		set indexp = (select sum(used)
				from sysindexes
					where indid in (0, 1, 255)
						and id = @id)
			    - data

	/* unused: sum(reserved) - sum(used) where indid in (0, 1, 255) */
	update #spt_space
		set unused = reserved
				- (select sum(used)
					from sysindexes
						where indid in (0, 1, 255)
							and id = @id)
	update #spt_space
		set rows = i.rows
			from sysindexes i
				where i.indid < 2
					and i.id = @id

	select name = object_name(@id),
		rows = convert(char(11), rows),
		reserved = ltrim(str(reserved * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		data = ltrim(str(data * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		index_size = ltrim(str(indexp * d.low / 1024.,15,0) +
				'' '' + ''KB''),
		unused = ltrim(str(unused * d.low / 1024.,15,0) +
				'' '' + ''KB'')
	from #spt_space, master.dbo.spt_values d
		where d.number = 1
			and d.type = ''E''
end

return (0)



' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLServerDetails]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLServerDetails]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		mmessano
-- Create date: 12/26/2008
-- Updated:		07/12/2010
-- Description:	Executes master.dbo.xp_msver and transforms the results into SQLServerDetails
-- =============================================
CREATE PROCEDURE [dbo].[dbm_SQLServerDetails] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

----------------------------------------------------------------------------------------
-- create temp table to hold output from system sproc
----------------------------------------------------------------------------------------
IF OBJECT_ID(''[tempdb].[dbo].[##Hold_XP_MSVER]'') IS NOT NULL
   BEGIN
      TRUNCATE TABLE [##Hold_XP_MSVER]
   END
ELSE
	BEGIN
	CREATE TABLE [##Hold_XP_MSVER]
		(
			IDX       INT NULL,
			C_NAME    VARCHAR(100) NULL,
			INT_VALUE FLOAT NULL,
			C_VALUE   VARCHAR(128) NULL
		)
	END
	
INSERT INTO [##Hold_XP_MSVER]
EXEC(''master.dbo.xp_msver'')
----------------------------------------------------------------------------------------
-- clean SQLServerDetails table
-- transform data into SQLServerDetails table
----------------------------------------------------------------------------------------
TRUNCATE TABLE SQLServerDetails

INSERT SQLServerDetails
SELECT CONVERT(nvarchar(128),Serverproperty(''Servername'')) AS Server,
       CONVERT(varchar(100),Serverproperty(''ProductVersion'')) AS ProductVersion,
       CONVERT(varchar(100),Serverproperty(''ProductLevel'')) AS ProductLevel,
       CONVERT(varchar(100),Serverproperty(''ResourceLastUpdateDateTime'')) AS ResourceLastUpdateDatetime,
       CONVERT(varchar(100),Serverproperty(''ResourceVersion'')) AS ResourceVersion,
       CASE
         WHEN Serverproperty(''EngineEdition'') = 1 THEN ''Integrated security''
         WHEN Serverproperty(''EngineEdition'') = 2 THEN ''Not Integrated security''
       END AS IsIntegratedSecurityOnly,
       CASE
         WHEN Serverproperty(''EngineEdition'') = 1 THEN ''Personal Edition''
         WHEN Serverproperty(''EngineEdition'') = 2 THEN ''Standard Edition''
         WHEN Serverproperty(''EngineEdition'') = 3 THEN ''Enterprise Edition''
         WHEN Serverproperty(''EngineEdition'') = 4 THEN ''Express Edition''
       END AS EngineEdition,
       CONVERT(varchar(100),Serverproperty(''InstanceName'')) AS InstanceName,
       CONVERT(nvarchar(128),Serverproperty(''ComputerNamePhysicalNetBIOS'')) AS ComputerNamePhysicalNetBIOS,
       CONVERT(varchar(100),Serverproperty(''LicenseType'')) AS LicenseType,
       CONVERT(varchar(100),Serverproperty(''NumLicenses'')) AS NumLicenses,
       CONVERT(varchar(100),Serverproperty(''BuildClrVersion'')) AS BuildCLRVersion,
       CONVERT(varchar(100),Serverproperty(''Collation'')) AS Collation,
       CONVERT(varchar(100),Serverproperty(''CollationID'')) AS CollationID,
       CONVERT(varchar(100),Serverproperty(''ComparisonStyle'')) AS ComparisonStyle,
       CONVERT(varchar(100),Serverproperty(''edition'')) AS ProductEdition,
       CASE
         WHEN CONVERT(varchar(100),Serverproperty(''IsClustered'')) = 1 THEN ''Clustered''
         WHEN Serverproperty(''IsClustered'') = 0 THEN ''Not Clustered''
         WHEN Serverproperty(''IsClustered'') = NULL THEN ''Error''
       END AS IsClustered,
       CASE
         WHEN CONVERT(varchar(100),Serverproperty(''IsFullTextInstalled'')) = 1 THEN ''Full-text is installed''
         WHEN Serverproperty(''IsFullTextInstalled'') = 0 THEN ''Full-text is not installed''
         WHEN Serverproperty(''IsFullTextInstalled'') = NULL THEN ''Error''
       END AS isfulltextinstalled,
       CONVERT(varchar(100),Serverproperty(''SqlCharSet'')) AS SQLCharset,
       CONVERT(varchar(100),Serverproperty(''SqlCharSetName'')) AS SQLCharSetName,
       CONVERT(varchar(100),Serverproperty(''SqlSortOrder'')) AS SQLSortOrderID,
      CONVERT(varchar(100),Serverproperty(''SqlSortOrderName'')) AS SQLSortOrderName,
       (SELECT C_Value from [##Hold_XP_MSVER] where [C_Name] = ''Platform'') as [Platform],
       (SELECT C_Value from [##Hold_XP_MSVER] where [C_Name] = ''FileDescription'' ) as [FileDescription],
       (SELECT C_Value from [##Hold_XP_MSVER] where [C_Name] = ''WindowsVersion'') as [WindowsVersion] ,
       (SELECT INT_Value from [##Hold_XP_MSVER] where [C_Name] = ''ProcessorCount'') as [ProcessorCount] ,
       (SELECT ISNULL(C_Value,CAST (INT_Value AS VARCHAR(9))) from [##Hold_XP_MSVER] where [C_Name] = ''ProcessorType'') as [ProcessorType] ,
       (SELECT INT_Value from [##Hold_XP_MSVER] where [C_Name] = ''PhysicalMemory'') as [PhysicalMemory],
       (SELECT value FROM [master].[dbo].[sysconfigures] WHERE config = 1543) AS [MinimumMemory],
       (SELECT value FROM [master].[dbo].[sysconfigures] WHERE config = 1544) AS [MaximumMemory],
       (SELECT login_time FROM master.dbo.sysprocesses WHERE spid = 1) as InstanceLastStartDate

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLIndicesAudit]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLIndicesAudit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		mmessano
-- Create date: 9/27/2011
-- Description:	Retrieves index information for all databases.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_SQLIndicesAudit] 

AS

BEGIN

SET NOCOUNT ON;

DECLARE @DBNAME VARCHAR(100);
DECLARE @MissingQuery VARCHAR(2048);
DECLARE @UnusedQuery VARCHAR(2048);
DECLARE @FragmentationQuery VARCHAR(2048);
DECLARE @MinFrag INT;

SELECT @MinFrag = 15;

-- cleanup tables
TRUNCATE TABLE dbamaint.dbo.SQLIndicesMissing
TRUNCATE TABLE dbamaint.dbo.SQLIndicesUnused
TRUNCATE TABLE dbamaint.dbo.SQLIndicesFragmented

-- Table Variables
DECLARE @MissingIndices TABLE (
	Servername VARCHAR(128)
	, DBName VARCHAR(128)
	, TableName VARCHAR(256)
	, Impact FLOAT
	, CreateIndexStatement VARCHAR(4096)
	, EqualityColumns VARCHAR(1024)
	, InequalityColumns VARCHAR(1024)
	, IncludedColumns VARCHAR(4096)
	, LastUpdate DATETIME
)

DECLARE @UnusedIndices TABLE
(
	Servername VARCHAR(128)
	, DBName VARCHAR(128)
	, TableName VARCHAR(128)
	, IndexName VARCHAR(128)
	, IndexID INT
	, Reads INT
	, Writes INT
	, [Rows] INT
	, ReadsPerWrite FLOAT
	, DropIndexStatement VARCHAR(MAX)
	, LastUpdate DATETIME
)

DECLARE @FragmentedIndices TABLE
(
	Servername VARCHAR(128)
	, DBName NVARCHAR(128)
	, IndexName NVARCHAR(128)
	, TableName NVARCHAR(128)
	, FragPercent FLOAT
	, LastUpdate DATETIME
)

-- Cursor for dbnames
DECLARE dbnames_cursor CURSOR FOR 
	SELECT name
	FROM master.sys.databases
	WHERE database_id > 5 
	AND name NOT in (''dbamaint'',''distribution'')
	AND name NOT LIKE ''001%''
	AND name NOT like ''%SMC''
	AND name NOT LIKE ''%-%''
	AND is_in_standby = 0
	AND (SELECT DATABASEPROPERTYEX(name,''STATUS'')) != ''Restoring''
	AND (SELECT DATABASEPROPERTYEX(name,''STATUS'')) != ''OFFLINE''
	AND (SELECT DATABASEPROPERTYEX(name,''Updateability '')) != ''READ_ONLY''
	order by name
OPEN dbnames_cursor
FETCH NEXT FROM dbnames_cursor INTO @DBNAME
WHILE (@@fetch_status = 0)
BEGIN

SELECT @MissingQuery = ''SET ANSI_NULLS ON SET ANSI_WARNINGS ON
USE ['' + @DBNAme + '']
SELECT @@SERVERNAME AS ServerName
	, DB_NAME() AS DBName
	, sys.objects.name
	, (avg_total_user_cost * avg_user_impact) * (user_seeks + user_scans) AS Impact
	,  ''''CREATE NONCLUSTERED INDEX ix_IndexName ON '''' + sys.objects.name COLLATE DATABASE_DEFAULT + '''' ( '''' + IsNull(mid.equality_columns, '''''''') + 
		CASE WHEN mid.inequality_columns IS NULL 
			THEN ''''''''  
		ELSE CASE WHEN mid.equality_columns IS NULL 
			THEN ''''''''  
        ELSE '''','''' END + mid.inequality_columns END + '''' ) '''' + CASE WHEN mid.included_columns IS NULL 
			THEN ''''''''  
		ELSE ''''INCLUDE ('''' + mid.included_columns + '''')'''' END + '''';'''' AS CreateIndexStatement
	, mid.equality_columns AS EqualityColumns
	, mid.inequality_columns AS InequalityColumns
	, mid.included_columns  AS IncludedColumns
	, GetDate() AS LastUpdate
FROM sys.dm_db_missing_index_group_stats AS migs 
            INNER JOIN sys.dm_db_missing_index_groups AS mig ON migs.group_handle = mig.index_group_handle 
            INNER JOIN sys.dm_db_missing_index_details AS mid ON mig.index_handle = mid.index_handle AND mid.database_id = DB_ID() 
            INNER JOIN sys.objects WITH (NOLOCK) ON mid.OBJECT_ID = sys.objects.OBJECT_ID 
WHERE (migs.group_handle IN 
	( 
	SELECT TOP (500) group_handle 
	FROM sys.dm_db_missing_index_group_stats WITH (nolock) 
	ORDER BY (avg_total_user_cost * avg_user_impact) * (user_seeks + user_scans) DESC))  
        AND OBJECTPROPERTY(sys.objects.OBJECT_ID, ''''isusertable''''
    )=1 
AND (avg_total_user_cost * avg_user_impact) * (user_seeks + user_scans) > 10000
ORDER BY 2 DESC , 3 DESC'' + CHAR(10)


SELECT @UnusedQuery = ''SET ANSI_NULLS ON SET ANSI_WARNINGS ON
USE ['' + @DBNAme + '']
SELECT @@SERVERNAME AS ServerName
	, DB_NAME() AS DBName
	, o.name
	, indexname=i.name
	, i.index_id   
	, reads=user_seeks + user_scans + user_lookups   
	, writes =  user_updates   
	, rows = (SELECT SUM(p.rows) 
				FROM sys.partitions p 
				WHERE p.index_id = s.index_id AND s.object_id = p.object_id)
				, CASE
					WHEN s.user_updates < 1 THEN 100
						ELSE 1.00 * (s.user_seeks + s.user_scans + s.user_lookups) / s.user_updates
				END AS reads_per_write
	, ''''DROP INDEX '''' + QUOTENAME(i.name) 
	+ '''' ON '''' + QUOTENAME(c.name) + ''''.'''' + QUOTENAME(OBJECT_NAME(s.object_id)) as ''''drop statement''''
	, GetDate() AS LastUpdate
FROM sys.dm_db_index_usage_stats s  
	INNER JOIN sys.indexes i ON i.index_id = s.index_id AND s.object_id = i.object_id   
	INNER JOIN sys.objects o ON s.object_id = o.object_id
	INNER JOIN sys.schemas c ON o.schema_id = c.schema_id
WHERE OBJECTPROPERTY(s.object_id,''''IsUserTable'''') = 1
	AND s.database_id = DB_ID()   
	AND i.type_desc = ''''nonclustered''''
	AND i.is_primary_key = 0
	AND i.is_unique_constraint = 0
	AND (SELECT SUM(p.rows) FROM sys.partitions p WHERE p.index_id = s.index_id AND s.object_id = p.object_id) > 10000
ORDER BY 5'' + CHAR(10)

SELECT @FragmentationQuery = ''SET ANSI_NULLS ON SET ANSI_WARNINGS ON
USE ['' + @DBNAME + ''] 
SELECT @@SERVERNAME AS ServerName
	, DB_NAME() AS DBName
	, b.name AS IndexName
	, QUOTENAME(object_name(a.object_id)) AS TableName
	, MAX(a.avg_fragmentation_in_percent) AS AVGFragPercent
	, GetDate() AS LastUpdate
FROM sys.dm_db_index_physical_stats (DB_ID(), NULL, NULL, NULL, NULL) AS a
	JOIN sys.indexes AS b ON a.object_id = b.object_id 
		AND a.index_id = b.index_id
	JOIN sys.sysobjects AS so ON so.id = b.object_id
	JOIN sys.schemas AS ss ON ss.schema_id = so.uid AND ss.name = ''''dbo''''
WHERE a.database_id = DB_ID()
	AND object_name(a.object_id) NOT LIKE ''''dbo_%_CT''''
	AND b.type = 1
	AND (page_count/128)>0
GROUP BY b.name, a.object_id
HAVING MAX(a.avg_fragmentation_in_percent) > 1

UNION ALL

SELECT @@SERVERNAME AS ServerName
	, DB_NAME() AS DBName
	, b.name AS IndexName
	, QUOTENAME(object_name(a.object_id)) AS TableName
	, MAX(a.avg_fragmentation_in_percent) AS AVGFragPercent
	, GetDate() AS LastUpdate
FROM sys.dm_db_index_physical_stats (DB_ID(), NULL, NULL, NULL, NULL) AS a
	JOIN sys.indexes AS b ON a.object_id = b.object_id 
		AND a.index_id = b.index_id
	JOIN sys.sysobjects as so ON so.id = b.object_id
	JOIN sys.schemas ss ON ss.schema_id = so.uid AND ss.name = ''''dbo''''
WHERE a.database_id = DB_ID()
	AND object_name(a.object_id) NOT LIKE ''''dbo_%_CT''''
	AND b.type = 2
	AND (page_count/128) > 5
GROUP BY b.name, a.object_id
HAVING MAX(a.avg_fragmentation_in_percent) > 1
ORDER BY MAX(a.avg_fragmentation_in_percent) DESC, b.name  DESC;'' + CHAR(10)


--PRINT(@MissingQuery)
INSERT @MissingIndices
EXEC(@MissingQuery)
--PRINT(@UnusedQuery)
INSERT @UnusedIndices
EXEC(@UnusedQuery)
--PRINT(@FragmentationQuery)
INSERT @FragmentedIndices
EXEC(@FragmentationQuery)

FETCH NEXT FROM dbnames_cursor INTO @DBNAME
END

CLOSE dbnames_cursor
DEALLOCATE dbnames_cursor    

INSERT dbamaint.dbo.SQLIndicesMissing
SELECT * FROM @MissingIndices

INSERT dbamaint.dbo.SQLIndicesUnused
SELECT * FROM @UnusedIndices

INSERT dbamaint.dbo.SQLIndicesFragmented
SELECT * FROM @FragmentedIndices



END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_TRNSizing]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_TRNSizing]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

-- =============================================
-- Author:		mmessano
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[dbm_TRNSizing] 

AS
BEGIN
SELECT * 
FROM
(
SELECT server_name,database_name,CONVERT(date, backup_finish_date, 101) AS BackupDate,
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''04:30'' AND ''04:59'' THEN backup_size ELSE NULL END) AS [430AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''05:00'' AND ''05:29'' THEN backup_size ELSE NULL END) AS [500AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''05:30'' AND ''05:59'' THEN backup_size ELSE NULL END) AS [530AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''06:00'' AND ''06:29'' THEN backup_size ELSE NULL END) AS [600AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''06:30'' AND ''06:59'' THEN backup_size ELSE NULL END) AS [630AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''07:00'' AND ''07:29'' THEN backup_size ELSE NULL END) AS [700AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''07:30'' AND ''07:59'' THEN backup_size ELSE NULL END) AS [730AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''08:00'' AND ''08:29'' THEN backup_size ELSE NULL END) AS [800AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''08:30'' AND ''08:59'' THEN backup_size ELSE NULL END) AS [830AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''09:00'' AND ''09:29'' THEN backup_size ELSE NULL END) AS [900AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''09:30'' AND ''09:59'' THEN backup_size ELSE NULL END) AS [930AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''10:00'' AND ''10:29'' THEN backup_size ELSE NULL END) AS [1000AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''10:30'' AND ''10:59'' THEN backup_size ELSE NULL END) AS [1030AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''11:00'' AND ''11:29'' THEN backup_size ELSE NULL END) AS [1100AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''11:30'' AND ''11:59'' THEN backup_size ELSE NULL END) AS [1130AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''12:00'' AND ''12:29'' THEN backup_size ELSE NULL END) AS [1200PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''12:30'' AND ''12:59'' THEN backup_size ELSE NULL END) AS [1230PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''13:00'' AND ''13:29'' THEN backup_size ELSE NULL END) AS [1300PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''13:30'' AND ''13:59'' THEN backup_size ELSE NULL END) AS [1330PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''14:00'' AND ''14:29'' THEN backup_size ELSE NULL END) AS [1400PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''14:30'' AND ''14:59'' THEN backup_size ELSE NULL END) AS [1430PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''15:00'' AND ''15:29'' THEN backup_size ELSE NULL END) AS [1500PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''15:30'' AND ''15:59'' THEN backup_size ELSE NULL END) AS [1530PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''16:00'' AND ''16:29'' THEN backup_size ELSE NULL END) AS [1600PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''16:30'' AND ''16:59'' THEN backup_size ELSE NULL END) AS [1630PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''17:00'' AND ''17:29'' THEN backup_size ELSE NULL END) AS [1700PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''17:30'' AND ''17:59'' THEN backup_size ELSE NULL END) AS [1730PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''18:00'' AND ''18:29'' THEN backup_size ELSE NULL END) AS [1800PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''18:30'' AND ''18:59'' THEN backup_size ELSE NULL END) AS [1830PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''19:00'' AND ''19:29'' THEN backup_size ELSE NULL END) AS [1900PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''19:30'' AND ''19:59'' THEN backup_size ELSE NULL END) AS [1930PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''20:00'' AND ''20:29'' THEN backup_size ELSE NULL END) AS [2000PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''20:30'' AND ''20:59'' THEN backup_size ELSE NULL END) AS [2030PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''21:00'' AND ''21:29'' THEN backup_size ELSE NULL END) AS [2100PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''21:30'' AND ''21:59'' THEN backup_size ELSE NULL END) AS [2130PM]
FROM msdb.dbo.backupset
WHERE type =''L'' -- log
   --and backup_finish_date >= GetDate() - 6
   AND database_name NOT IN (''distribution'',''master'',''model'',''msdb'',''PASCAdmin'')
   GROUP BY server_name, database_name,CONVERT(date, backup_finish_date, 101)
) AS src
GROUP BY server_name, database_name, BackupDate,
		[430AM],[500AM],[530AM],[600AM],
		[630AM],[700AM],[730AM],[800AM],
		[830AM],[900AM],[930AM],[1000AM],
		[1030AM],[1100AM],[1130AM],[1200PM],
		[1230PM],[1300PM],[1330PM],[1400PM],
		[1430PM],[1500PM],[1530PM],[1600PM],
		[1630PM],[1700PM],[1730PM],[1800PM],
		[1830PM],[1900PM],[1930PM],[2000PM],
		[2030PM],[2100PM],[2130PM]
ORDER BY database_name		
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_TableStructure]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_TableStructure]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create proc [dbo].[dbm_TableStructure]
	@tblname varchar(50)
as

if @tblname is null begin
   raiserror(15250,-1,-1)
   return(1)
end

-- validate @tblname
declare @id int,@dbname sysname,@type char(2),@rows char(11),@pages bigint,@size char(20)
if @tblname is not null begin

	select @dbname = parsename(@tblname, 3)

	if @dbname is not null and @dbname <> db_name()
	   begin
		raiserror(15250,-1,-1)
		return (1)
	   end

	if @dbname is null
	   select @dbname = db_name()

	/*
	**  Try to find the object.
	*/
	select @id = null
	select @id = id, @type = xtype
		from sysobjects
			where id = object_id(@tblname)

	/*
	**  Does the object exist?
	*/
	if @id is null
	   begin
		raiserror(15009,-1,-1,@tblname,@dbname)
		return (1)
	   end
end

-- rows
select @rows=convert(char(11),rows)
from sysindexes
where indid<2 and id=@id


-- size
select @pages = sum(dpages)
from sysindexes
where indid < 2
  and id = @id

select @pages = @pages + isnull(sum(used), 0)
from sysindexes
where indid = 255
  and id = @id

select @size=ltrim(str((@pages * b.low)/1024.,15,0))+''''+''KB''
from master.dbo.spt_values b
where number=1 and type =''E''
print ''---------------------------------------------------------------------------------------------''
print ''------ Object: ''+@tblname
print ''=============================================================================================''
print ''Rows                Size''
print ''----------------    ------------------------''
print space(16-len(rtrim(@rows)))+rtrim(@rows)+space(28-len(rtrim(@size)))+rtrim(@size)
print ''=============================================================================================''


declare @sqltext varchar(8000)
select @sqltext=''
declare tblstru_crsr cursor for
select a.name,a.xusertype,a.length,a.xprec,a.xscale,a.isnullable from syscolumns a,sysobjects b
where b.name like ''''''+@tblname+'''''' and b.id=a.id order by colid''
exec (@sqltext)

declare @name varchar(50),@xusertype smallint,@length smallint,@xprec tinyint,@xscale tinyint,@isnullable int
open tblstru_crsr
fetch tblstru_crsr into @name,@xusertype,@length,@xprec,@xscale,@isnullable
set nocount on

print ''Column Name                                       Type             Length Scale Null''
print ''------------------------------------------------- ---------------- ------ ----- ----''


while @@fetch_status= 0 begin
	
	if @xusertype=34 
	   print @name+space(50-len(@name))+''Image               ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=35
	   print @name+space(50-len(@name))+''Text                ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=36 
	   print @name+space(50-len(@name))+''UniqueIdentifier    ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=48 
	   print @name+space(50-len(@name))+''Tinyint             ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=52
	   print @name+space(50-len(@name))+''Smallint            ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=56
	   print @name+space(50-len(@name))+''Int                 ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=58
	   print @name+space(50-len(@name))+''SmallDateTime       ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=59
	   print @name+space(50-len(@name))+''Real                ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=60
	   print @name+space(50-len(@name))+''Money               ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=61
	   print @name+space(50-len(@name))+''DateTime            ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=62
	   print @name+space(50-len(@name))+''Float               ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=98 
	   print @name+space(50-len(@name))+''SQL_variant         ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end 	
	if @xusertype=99 
	   print @name+space(50-len(@name))+''nText               ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=104 
	   print @name+space(50-len(@name))+''Bit                 ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=106
	   print @name+space(50-len(@name))+''Decimal             ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=108
	   print @name+space(50-len(@name))+''Numeric             ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=122
	   print @name+space(50-len(@name))+''SmallMoney          ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=127
	   print @name+space(50-len(@name))+''Bigint              ''+space(2-len(@xprec))+ltrim(str(@xprec))+''     ''+ltrim(str(@xscale))+''   ''+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=165 
	   print @name+space(50-len(@name))+''Varbinary           ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=167 
	   print @name+space(50-len(@name))+''Varchar             ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=173 
	   print @name+space(50-len(@name))+''Binary              ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=175 
	   print @name+space(50-len(@name))+''Char                ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=189
	   print @name+space(50-len(@name))+''TimeStamp           ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=231
	   print @name+space(50-len(@name))+''nVarchar            ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=239
	   print @name+space(50-len(@name))+''nChar               ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end
	if @xusertype=256
	   print @name+space(50-len(@name))+''Sysname             ''+ltrim(str(@length))+space(11-len(@length))+case when @isnullable=1 then ''YES'' else ''NO '' end

	       
	fetch tblstru_crsr into @name,@xusertype,@length,@xprec,@xscale,@isnullable
end
close tblstru_crsr
deallocate tblstru_crsr
print ''=============================================================================================''



print ''Index information:''
print ''''
-- indexes
	declare	@indid smallint,	-- the index id of an index
		@groupid smallint,  -- the filegroup id of an index
		@indname sysname,
		@groupname sysname,
		@status int,
		@keys nvarchar(2126)	--Length (16*max_identifierLength)+(15*2)+(16*3)
		
	declare ms_crs_ind cursor local static for
		select indid, groupid, name, status
		from sysindexes
		where id = @id and indid > 0 and indid < 255 and (status & 64)=0 
		order by indid
	open ms_crs_ind

	fetch ms_crs_ind into @indid, @groupid, @indname, @status

	-- IF NO INDEX, QUIT
	if @@fetch_status < 0
	begin
		deallocate ms_crs_ind
           	
		print ''   *** ''+rtrim(@tblname)+'' does not contain any indexes ***''  
		print ''=============================================================================================''   
		return (0)
	end

	--     1234567890123456789012345   1234567890123456789012345   123456789012345678901234567890
	print ''Index name               ''+''Index type               ''+''Index key                     ''
	print ''------------------------ ''+''------------------------ ''+''------------------------------''
	-- Now check out each index, figure out its type and keys 
	while @@fetch_status >= 0
	begin
		-- First we''ll figure out what the keys are.
		declare @i int, @thiskey nvarchar(131) -- 128+3

		select @keys = index_col(@tblname, @indid, 1), @i = 2
		if (indexkey_property(@id, @indid, 1, ''isdescending'') = 1)
			select @keys = @keys  + ''(-)''

		select @thiskey = index_col(@tblname, @indid, @i)
		if ((@thiskey is not null) and (indexkey_property(@id, @indid, @i, ''isdescending'') = 1))
			select @thiskey = @thiskey + ''(-)''

		while (@thiskey is not null )
		begin
			select @keys = @keys + '', '' + @thiskey, @i = @i + 1
			select @thiskey = index_col(@tblname, @indid, @i)
			if ((@thiskey is not null) and (indexkey_property(@id, @indid, @i, ''isdescending'') = 1))
				select @thiskey = @thiskey + ''(-)''
		end

		select @groupname = groupname from sysfilegroups where groupid = @groupid
		
		print rtrim(@indname)+space(25-len(rtrim(@indname)))+
		case when (@status & 16)<>0 then ''clustered'' else ''nonclustered'' end+'' ''+rtrim(@groupname)+
		case when (@status & 16)<>0 then ''        '' else ''     '' end+rtrim(@keys)
		
		-- Next index
		fetch ms_crs_ind into @indid, @groupid, @indname, @status
	end
	deallocate ms_crs_ind
	print ''''
	print ''=============================================================================================''   




return
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_filespacestats]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_filespacestats]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE procedure [dbo].[sp_filespacestats] 

as

Begin 

declare @dbname sysname 
if not exists (select * from dbamaint.dbo.sysobjects where name = ''filespacestats'' and type=''U'') 
begin 
	CREATE TABLE dbamaint.[dbo].[filespacestats] ( 
		[server_name] [sysname] NOT NULL , 
		[dbname] [sysname] NOT NULL , 
		[flag] [bit] NULL , 
		[Fileid] [tinyint] NULL , 
		[FileGroup] [tinyint] NULL , 
		[total_space] [decimal](20, 1) NULL , 
		[usedspace] [decimal](20, 1) NULL , 
		[freespace] [decimal](20, 1) NULL , 
		[freepct] [decimal](20, 1) NULL , 
		[Name] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL , 
		[FileName] [sysname] NULL , 
		[report_date] [datetime] default getdate() 
	) ON [PRIMARY] 
end 

delete dbamaint.[dbo].[filespacestats] 

declare cur_dbname cursor for 
	select name from master..sysdatabases 

open cur_dbname 
	fetch next from cur_dbname into @dbname 
while @@fetch_status=0 

begin 

-- If the database is currently restoring, ignore it
If (select DATABASEPROPERTYEX(@DBName,''STATUS'')) != ''Restoring''

if exists (select * from tempdb..sysobjects where name like ''#datafilestats%'') 
drop table #datafilestats 
	create table #datafilestats (
		dbname varchar(128), 
		flag bit default 0, 
		Fileid tinyint, 
		[FileGroup] tinyint, 
		TotalExtents dec (20, 1), 
		UsedExtents dec (20, 1), 
		[Name] sysname, 
		[FileName] sysname 
	) 

declare @string sysname 
set @string = ''use ['' + @dbname + ''] DBCC SHOWFILESTATS with no_infomsgs'' 

insert into #datafilestats (Fileid, [FileGroup] , TotalExtents , UsedExtents , [Name] , [FileName]) 
exec (@string) 

insert dbamaint.dbo.filespacestats (server_name,dbname, [flag],Fileid,FileGroup,total_space,usedspace,freespace,freepct,Name,FileName) 
	select @@servername,@dbname,flag,Fileid,FileGroup,(TotalExtents*64/1024),(UsedExtents*64/1024), 
		((TotalExtents*64/1024)-(UsedExtents*64/1024)),((TotalExtents*64/1024)-(UsedExtents*64/1024))*100/(TotalExtents*64/1024),Name,FileName 
	from #datafilestats 

fetch next from cur_dbname into @dbname 

end 

CLOSE cur_dbname 
DEALLOCATE cur_dbname 

	create table #logspacestats ( 
		dbname varchar(128), 
		flag bit default 1, 
		Totallogspace dec (20, 1), 
		usedlogspace dec (20, 1), 
		status char(1) 
	) 
insert #logspacestats (dbname,Totallogspace,usedlogspace,status) 
exec (''dbcc sqlperf(logspace) with no_infomsgs'') 
 
insert dbamaint.dbo.filespacestats (server_name,dbname,flag,total_space,freepct,Name) 
	select @@servername,dbname,flag,Totallogspace,(100-usedlogspace),''logspace_for_db'' from #logspacestats 
	select * from dbamaint.dbo.filespacestats order by flag ,report_date desc 

End 
drop table #logspacestats ' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_permissions_all]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_permissions_all]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		mmessano
-- Create date: 8/22/2007
-- Description:
-- =============================================
CREATE PROCEDURE [dbo].[sp_permissions_all]

AS
BEGIN
	SET NOCOUNT ON;
/*

Audit SQL Server user ID

Author      Simon Facer
Date        01/04/2007

This script will generate an audit of SQL Server logins, as well
as a listing of the database user ID''s and the SQL Server login
that each DB user ID maps to.

In the database user ID results, [Server Login] = ''** Orphaned **''
indicates that there is no matching Server login.

This script was originally designed for SQL 2000, but works just as
well in SQL 2005.
*/


IF  EXISTS (SELECT * FROM dbamaint.dbo.sysobjects WHERE name = ''Users'' AND type in (N''U''))
   BEGIN
      DROP TABLE Users
   END

IF  EXISTS (SELECT * FROM dbamaint.dbo.sysobjects WHERE name = ''DBUsers'' AND type in (N''U''))
   BEGIN
      TRUNCATE TABLE DBUsers
   END
ELSE
   BEGIN
		CREATE TABLE [dbo].[DBUsers](
			[ServerName] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[DBName] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[DatabaseUserID] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[ServerLogin] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[DatabaseRole] [varchar](64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
			[LastUpdate] [datetime] NULL
) ON [PRIMARY]
	END

-- ***************************************************************************
-- Declare local variables
DECLARE @DBName             VARCHAR(32)
DECLARE @SQLCmd             VARCHAR(1024)
-- ***************************************************************************

-- ***************************************************************************
-- Get the SQL Server logins
SELECT  @@servername AS [Server_Name],
		sid,
        loginname AS [Login Name],
        dbname AS [Default Database],
        CASE isntname
            WHEN 1 THEN ''AD Login''
            ELSE ''SQL Login''
        END AS [Login Type],
        CASE
            WHEN isntgroup = 1 THEN ''AD Group''
            WHEN isntuser = 1 THEN ''AD User''
            ELSE ''''
        END AS [AD Login Type],
        CASE sysadmin
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [sysadmin],
        CASE [securityadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [securityadmin],
        CASE [serveradmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [serveradmin],
        CASE [setupadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [setupadmin],
        CASE [processadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [processadmin],
        CASE [diskadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [diskadmin],
        CASE [dbcreator]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [dbcreator],
        CASE [bulkadmin]
            WHEN 1 THEN ''Yes''
            ELSE ''No''
        END AS [bulkadmin]
INTO Users
FROM master.dbo.syslogins

SELECT  Server_Name,
	[Login Name],
        [Default Database],
        [Login Type],
        [AD Login Type],
        [sysadmin],
        [securityadmin],
        [serveradmin],
        [setupadmin],
        [processadmin],
        [diskadmin],
        [dbcreator],
        [bulkadmin]
FROM Users
ORDER BY [Login Type], [AD Login Type], [Login Name]


-- ***************************************************************************
-- Declare a cursor to loop through all the databases on the server
DECLARE csrDB CURSOR FOR
    SELECT name
        FROM master.dbo.sysdatabases
        WHERE name NOT IN (''master'', ''model'', ''msdb'', ''tempdb'')


-- ***************************************************************************
-- Open the cursor and get the first database name
OPEN csrDB
FETCH NEXT
    FROM csrDB
    INTO @DBName


-- ***************************************************************************
-- Loop through the cursor
WHILE @@FETCH_STATUS = 0
    BEGIN


-- ***************************************************************************
--
        SELECT @SQLCmd = ''INSERT DBUsers '' +
                         ''  SELECT '''''' + @@servername + '''''' AS [ServerName],''+
						 ''			'''''' + @DBName + '''''' AS [DBName],'' +
                         ''       su.[name] AS [DatabaseUserID], '' +
                         ''       COALESCE (u.[Login Name], ''''** Orphaned **'''') AS [ServerLogin], '' +
                         ''       COALESCE (sug.name, ''''Public'''') AS [DatabaseRole], '' +
						 ''		 GetDate() as timestamp'' +
                         ''    FROM ['' + @DBName + ''].[dbo].[sysusers] su'' +
                         ''        LEFT OUTER JOIN Users u'' +
                         ''            ON su.sid = u.sid'' +
                         ''        LEFT OUTER JOIN (['' + @DBName + ''].[dbo].[sysmembers] sm '' +
                         ''                             INNER JOIN ['' + @DBName + ''].[dbo].[sysusers] sug  '' +
                         ''                                 ON sm.groupuid = sug.uid)'' +
                         ''            ON su.uid = sm.memberuid '' +
                         ''    WHERE su.hasdbaccess = 1'' +
                         ''      AND su.[name] != ''''dbo'''' ''

        EXEC (@SQLCmd)

-- ***************************************************************************
-- Get the next database name
        FETCH NEXT
            FROM csrDB
            INTO @DBName

-- ***************************************************************************
-- End of the cursor loop
    END

-- ***************************************************************************
-- Close and deallocate the CURSOR
CLOSE csrDB
DEALLOCATE csrDB

-- ***************************************************************************
-- Return the Database User data
SELECT *
    FROM DBUsers
    ORDER BY [DBName], [DatabaseUserID]

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SSAJ_SQL_Server_System_Report]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SSAJ_SQL_Server_System_Report]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


----------------------------------------------------------------------------------------------------------------------
--	Stored Procedure Details: Listing Of Standard Details Related To The Stored Procedure
----------------------------------------------------------------------------------------------------------------------

-- Purpose: SQL Server Agent Job - SQL Server System Report
-- Create Date: 05/12/2010
-- Created By: Sean Smith (s(DOT)smith(DOT)sql(AT)gmail(DOT)com)
-- Called From: [dbamaint].[dbo].[dbm_SSAJ_SQL_Server_System_Report]
-- Modifications: NONE


----------------------------------------------------------------------------------------------------------------------
--	Main Query: Create Procedure
----------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[dbm_SSAJ_SQL_Server_System_Report]

AS

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET NOCOUNT ON
SET ANSI_WARNINGS OFF
SET ARITHABORT OFF
SET ARITHIGNORE ON


DECLARE @vRecipients AS VARCHAR (MAX)
DECLARE @vCopy_Recipients AS VARCHAR (MAX)
DECLARE @vUnused_Index_Uptime_Threshold AS INT
DECLARE @vOnline_Since AS NVARCHAR (19)
DECLARE @vUptime_Days AS INT
DECLARE @vDate_24_Hours_Ago AS DATETIME
DECLARE @vDate_Now AS DATETIME
DECLARE @vSubject AS NVARCHAR (255)
DECLARE @vFixed_Drives_Free_Space_Table AS TABLE (drive_letter VARCHAR (5), free_space_mb BIGINT)
DECLARE @vDatabase_Name AS NVARCHAR (500)
DECLARE @vXML_String AS NVARCHAR (MAX)
DECLARE @vBody AS NVARCHAR (MAX)
DECLARE @vSQL_String AS NVARCHAR (MAX)


SET @vRecipients = ''mmessano@dexma.com''
SET @vCopy_Recipients = NULL
SET @vUnused_Index_Uptime_Threshold = 7


SELECT
	 @vOnline_Since = CONVERT (NVARCHAR (19), DB.create_date, 120)
	,@vUptime_Days = DATEDIFF (DAY, DB.create_date, GETDATE ())
FROM
	[master].[sys].[databases] DB
WHERE
	DB.name = ''tempdb''


SET @vDate_24_Hours_Ago = GETDATE ()-1
SET @vDate_Now = @vDate_24_Hours_Ago+1
SET @vSubject = ''SQL Server System Report: ''+@@SERVERNAME
SET @vXML_String = ''''
SET @vBody = ''''


----------------------------------------------------------------------------------------------------------------------
--	Error Trapping: Check If Temp Table(s) Already Exist(s) And Drop If Applicable
----------------------------------------------------------------------------------------------------------------------

IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_instance_property_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_instance_property_temp

END


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_database_size_distribution_stats_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_database_size_distribution_stats_temp

END


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_model_compatibility_size_growth_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_model_compatibility_size_growth_temp

END


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_last_backup_set_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_last_backup_set_temp

END


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_agent_jobs_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_agent_jobs_temp

END


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_unused_indexes_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_unused_indexes_temp

END


----------------------------------------------------------------------------------------------------------------------
--	Main Query I: Server Instance Property Information
----------------------------------------------------------------------------------------------------------------------

SELECT
	 SERVERPROPERTY (''ComputerNamePhysicalNetBIOS'') AS netbios_name
	,@@SERVERNAME AS server_name
	,REPLACE (CONVERT (NVARCHAR (128), SERVERPROPERTY (''Edition'')),'' Edition'','''') AS edition
	,SERVERPROPERTY (''ProductVersion'') AS version
	,SERVERPROPERTY (''ProductLevel'') AS [level]
	,@vOnline_Since AS online_since
	,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, @vUptime_Days), 1)), 4, 15)) AS uptime_days
	,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, @@TOTAL_READ), 1)), 4, 15)) AS reads
	,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, @@TOTAL_WRITE), 1)), 4, 15)) AS writes
INTO
	dbo.#ssaj_sssr_instance_property_temp


IF @@ROWCOUNT = 0
BEGIN

	GOTO skip_instance_property

END


SET @vXML_String =

	CONVERT (NVARCHAR (MAX),
		(
			SELECT
				 '''',X.netbios_name AS ''td''
				,'''',X.server_name AS ''td''
				,'''',X.edition AS ''td''
				,'''',X.version AS ''td''
				,'''',X.level AS ''td''
				,'''',X.online_since AS ''td''
				,'''',''right_align''+X.uptime_days AS ''td''
				,'''',''right_align''+X.reads AS ''td''
				,'''',''right_align''+X.writes AS ''td''
			FROM
				dbo.#ssaj_sssr_instance_property_temp X
			FOR
				XML PATH (''tr'')
		)
	)


SET @vBody =

	''
		<h3><center>Server Instance Property Information</center></h3>
		<center>
			<table border=1 cellpadding=2>
				<tr>
					<th>NetBIOS Name</th>
					<th>Server Name</th>
					<th>Edition</th>
					<th>Version</th>
					<th>Level</th>
					<th>Online Since</th>
					<th>Uptime Days</th>
					<th>Reads</th>
					<th>Writes</th>
				</tr>
	''


SET @vBody = @vBody+@vXML_String+

	''
			</table>
		</center>
	''


skip_instance_property:


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_instance_property_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_instance_property_temp

END


----------------------------------------------------------------------------------------------------------------------
--	Main Query II: Fixed Drives Free Space
----------------------------------------------------------------------------------------------------------------------

INSERT INTO @vFixed_Drives_Free_Space_Table

	(
		 drive_letter
		,free_space_mb
	)

EXEC master.dbo.xp_fixeddrives


IF @@ROWCOUNT = 0
BEGIN

	GOTO skip_fixed_drives_free_space

END


SET @vXML_String =

	CONVERT (NVARCHAR (MAX),
		(
			SELECT
				 '''',X.drive_letter+'':'' AS ''td''
				,'''',''right_align''+REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, X.free_space_mb), 1)), 4, 15)) AS ''td''
			FROM
				@vFixed_Drives_Free_Space_Table X
			ORDER BY
				X.drive_letter
			FOR
				XML PATH (''tr'')
		)
	)


SET @vBody = @vBody+

	''
		<br><br>
		<h3><center>Fixed Drives Free Space</center></h3>
		<center>
			<table border=1 cellpadding=2>
				<tr>
					<th>Drive Letter</th>
					<th>Free Space (MB)</th>
				</tr>
	''


SET @vBody = @vBody+@vXML_String+

	''
			</table>
		</center>
	''


skip_fixed_drives_free_space:


----------------------------------------------------------------------------------------------------------------------
--	Main Query III: Database Size (Summary) / Distribution Stats
----------------------------------------------------------------------------------------------------------------------

CREATE TABLE dbo.#ssaj_sssr_database_size_distribution_stats_temp

	(
		 database_name NVARCHAR (500)
		,total_size_mb NVARCHAR (15)
		,unallocated_mb NVARCHAR (15)
		,reserved_mb NVARCHAR (15)
		,data_mb NVARCHAR (15)
		,index_mb NVARCHAR (15)
		,unused_mb NVARCHAR (15)
	)


SET @vDatabase_Name = (SELECT TOP 1 DB.name FROM [master].[sys].[databases] DB WHERE DB.state = 0 AND DB.is_read_only = 0 AND DB.is_in_standby = 0 AND DB.source_database_id IS NULL ORDER BY DB.name)


WHILE @vDatabase_Name IS NOT NULL
BEGIN

	SET @vSQL_String =

		''
			USE [''+@vDatabase_Name+''];


			INSERT INTO dbo.#ssaj_sssr_database_size_distribution_stats_temp

			SELECT
				 DB_NAME () AS database_name
				,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND ((A.total_size*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15)) AS total_size_mb
				,(CASE
					WHEN A.database_size >= B.total_pages THEN REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND (((A.database_size-B.total_pages)*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15))
					ELSE ''''0''''
					END) AS unallocated_mb
				,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND ((B.total_pages*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15)) AS reserved_mb
				,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND ((B.pages*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15)) AS data_mb
				,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND (((B.used_pages-B.pages)*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15)) AS index_mb
				,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND (((B.total_pages-B.used_pages)*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15)) AS unused_mb
			FROM

				(
					SELECT
						 SUM (CASE
								WHEN DBF.type = 0 THEN DBF.size
								ELSE 0
								END) AS database_size
						,SUM (DBF.size) AS total_size
					FROM
						[sys].[database_files] AS DBF
					WHERE
						DBF.type IN (0,1)
				) A

				CROSS JOIN

					(
						SELECT
							 SUM (AU.total_pages) AS total_pages
							,SUM (AU.used_pages) AS used_pages
							,SUM (CASE
									WHEN IT.internal_type IN (202,204) THEN 0
									WHEN AU.type <> 1 THEN AU.used_pages
									WHEN P.index_id <= 1 THEN AU.data_pages
									ELSE 0
									END) AS pages
						FROM
							[sys].[partitions] P
							INNER JOIN [sys].[allocation_units] AU ON AU.container_id = P.partition_id
							LEFT JOIN [sys].[internal_tables] IT ON IT.[object_id] = P.[object_id]
					) B
		''


	EXEC (@vSQL_String)


	SET @vDatabase_Name = (SELECT TOP 1 DB.name FROM [master].[sys].[databases] DB WHERE DB.state = 0 AND DB.is_read_only = 0 AND DB.is_in_standby = 0 AND DB.source_database_id IS NULL AND DB.name > @vDatabase_Name ORDER BY DB.name)

END


IF (SELECT COUNT (*) FROM dbo.#ssaj_sssr_database_size_distribution_stats_temp) = 0
BEGIN

	GOTO skip_database_size_distribution_stats

END


SET @vXML_String =

	CONVERT (NVARCHAR (MAX),
		(
			SELECT
				 '''',X.database_name AS ''td''
				,'''',''right_align''+X.total_size_mb AS ''td''
				,'''',''right_align''+X.unallocated_mb AS ''td''
				,'''',''right_align''+X.reserved_mb AS ''td''
				,'''',''right_align''+X.data_mb AS ''td''
				,'''',''right_align''+X.index_mb AS ''td''
				,'''',''right_align''+X.unused_mb AS ''td''
			FROM
				dbo.#ssaj_sssr_database_size_distribution_stats_temp X
			ORDER BY
				X.database_name
			FOR
				XML PATH (''tr'')
		)
	)


SET @vBody = @vBody+

	''
		<br><br>
		<h3><center>Database Size (Summary) / Distribution Stats</center></h3>
		<center>
			<table border=1 cellpadding=2>
				<tr>
					<th>Database Name</th>
					<th>Total Size (MB)</th>
					<th>Unallocated (MB)</th>
					<th>Reserved (MB)</th>
					<th>Data (MB)</th>
					<th>Index (MB)</th>
					<th>Unused (MB)</th>
				</tr>
	''


SET @vBody = @vBody+@vXML_String+

	''
			</table>
		</center>
	''


skip_database_size_distribution_stats:


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_database_size_distribution_stats_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_database_size_distribution_stats_temp

END


----------------------------------------------------------------------------------------------------------------------
--	Main Query IV: Database Recovery Model / Compatibility / Size (Detailed) / Growth Stats
----------------------------------------------------------------------------------------------------------------------

SELECT
	 DB_NAME (MF.database_id) AS database_name
	,DB.recovery_model_desc
	,DB.compatibility_level
	,CONVERT (NVARCHAR (10), LEFT (UPPER (MF.type_desc),1)+LOWER (SUBSTRING (MF.type_desc, 2, 250))) AS file_type
	,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND ((MF.size*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15)) AS file_size_mb
	,RIGHT ((CASE
				WHEN MF.growth = 0 THEN ''Fixed Size''
				WHEN MF.max_size = -1 THEN ''Unrestricted''
				WHEN MF.max_size = 0 THEN ''None''
				WHEN MF.max_size = 268435456 THEN ''2 TB''
				ELSE REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND ((MF.max_size*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15))+'' MB''
				END),15) AS max_size
	,RIGHT ((CASE
				WHEN MF.growth = 0 THEN ''N/A''
				WHEN MF.is_percent_growth = 1 THEN REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, MF.growth), 1)), 4, 15))+'' %''
				ELSE REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND ((MF.growth*CONVERT (BIGINT, 8192))/1048576.0, 0)), 1)), 4, 15))+'' MB''
				END),15) AS growth_increment
	,ROW_NUMBER () OVER
						(
							PARTITION BY
								MF.database_id
							ORDER BY
								 MF.type
								,MF.[file_id]
						) AS database_filter_id
INTO
	dbo.#ssaj_sssr_model_compatibility_size_growth_temp
FROM
	[master].[sys].[master_files] MF
	INNER JOIN [master].[sys].[databases] DB ON DB.database_id = MF.database_id


IF @@ROWCOUNT = 0
BEGIN

	GOTO skip_model_compatibility_size_growth

END


SET @vXML_String =

	CONVERT (NVARCHAR (MAX),
		(
			SELECT
				 '''',(CASE
						WHEN X.database_filter_id = 1 THEN X.database_name
						ELSE ''''
						END) AS ''td''
				,'''',(CASE
						WHEN X.database_filter_id = 1 THEN X.recovery_model_desc
						ELSE ''''
						END) AS ''td''
				,'''',(CASE
						WHEN X.database_filter_id = 1 THEN ISNULL (CONVERT (VARCHAR (5), X.compatibility_level),''N/A'')
						ELSE ''''
						END) AS ''td''
				,'''',X.file_type AS ''td''
				,'''',''right_align''+X.file_size_mb AS ''td''
				,'''',''right_align''+X.max_size AS ''td''
				,'''',''right_align''+X.growth_increment AS ''td''
			FROM
				dbo.#ssaj_sssr_model_compatibility_size_growth_temp X
			ORDER BY
				 X.database_name
				,X.database_filter_id
			FOR
				XML PATH (''tr'')
		)
	)


SET @vBody = @vBody+

	''
		<br><br>
		<h3><center>Database Recovery Model / Compatibility / Size (Detailed) / Growth Stats</center></h3>
		<center>
			<table border=1 cellpadding=2>
				<tr>
					<th>Database Name</th>
					<th>Recovery Model</th>
					<th>Compatibility</th>
					<th>File Type</th>
					<th>File Size (MB)</th>
					<th>Max Size</th>
					<th>Growth Increment</th>
				</tr>
	''


SET @vBody = @vBody+@vXML_String+

	''
			</table>
		</center>
	''


skip_model_compatibility_size_growth:


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_model_compatibility_size_growth_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_model_compatibility_size_growth_temp

END


----------------------------------------------------------------------------------------------------------------------
--	Main Query V: Last Backup Set Details
----------------------------------------------------------------------------------------------------------------------

SELECT
	 BS.database_name
	,BS.backup_set_id
	,(CASE
		WHEN BS.type = ''D'' THEN ''Database''
		WHEN BS.type = ''F'' THEN ''File Or Filegroup''
		WHEN BS.type = ''G'' THEN ''Differential File''
		WHEN BS.type = ''I'' THEN ''Differential Database''
		WHEN BS.type = ''L'' THEN ''Log''
		WHEN BS.type = ''P'' THEN ''Partial''
		WHEN BS.type = ''Q'' THEN ''Differential Partial''
		ELSE ''N/A''
		END) AS backup_type
	,CONVERT (VARCHAR (19), BS.backup_start_date, 120) AS backup_start_date
	,(CASE
		WHEN DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date) >= 360000 THEN ''99:59:59+''
		WHEN DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date) < 1 THEN ''__:__:__''
		WHEN DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date) < 60 THEN ''__:__:''+RIGHT (''00''+CONVERT (VARCHAR (2), ((DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date))%3600)%60),2)
		WHEN DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date) < 3600 THEN ''__:''+RIGHT (''00''+CONVERT (VARCHAR (2), ((DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date))%3600)/60),2)+'':''+RIGHT (''00''+CONVERT (VARCHAR (2), ((DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date))%3600)%60),2)
		ELSE RIGHT (''00''+CONVERT (VARCHAR (2), (DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date))/3600),2)+'':''+RIGHT (''00''+CONVERT (VARCHAR (2), ((DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date))%3600)/60),2)+'':''+RIGHT (''00''+CONVERT (VARCHAR (2), ((DATEDIFF (SECOND, BS.backup_start_date, BS.backup_finish_date))%3600)%60),2)
		END) AS duration
	,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, ROUND (BS.backup_size/1048576.0, 0)), 1)), 4, 15)) AS backup_size_mb
	,REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, DATEDIFF (DAY, BS.backup_start_date, GETDATE ())), 1)), 4, 15)) AS days_ago
	,ROW_NUMBER () OVER
						(
							PARTITION BY
								BS.database_name
							ORDER BY
								BS.type
						) AS database_filter_id
INTO
	dbo.#ssaj_sssr_last_backup_set_temp
FROM
	msdb.dbo.backupset BS
	INNER JOIN

		(
			SELECT
				MAX (X.backup_set_id) AS backup_set_id_max
			FROM
				msdb.dbo.backupset X
			GROUP BY
				 X.database_name
				,X.type
		) A ON A.backup_set_id_max = BS.backup_set_id


IF @@ROWCOUNT = 0
BEGIN

	GOTO skip_last_backup_set

END


SET @vXML_String =

	CONVERT (NVARCHAR (MAX),
		(
			SELECT
				 '''',(CASE
						WHEN X.database_filter_id = 1 THEN X.database_name
						ELSE ''''
						END) AS ''td''
				,'''',X.backup_set_id AS ''td''
				,'''',X.backup_type AS ''td''
				,'''',X.backup_start_date AS ''td''
				,'''',X.duration AS ''td''
				,'''',''right_align''+X.backup_size_mb AS ''td''
				,'''',''right_align''+X.days_ago AS ''td''
			FROM
				dbo.#ssaj_sssr_last_backup_set_temp X
			ORDER BY
				 X.database_name
				,X.database_filter_id
			FOR
				XML PATH (''tr'')
		)
	)


SET @vBody = @vBody+

	''
		<br><br>
		<h3><center>Last Backup Set Details</center></h3>
		<center>
			<table border=1 cellpadding=2>
				<tr>
					<th>Database Name</th>
					<th>Backup Set ID</th>
					<th>Backup Type</th>
					<th>Backup Start Date</th>
					<th>Duration</th>
					<th>Backup Size (MB)</th>
					<th>Days Ago</th>
				</tr>
	''


SET @vBody = @vBody+@vXML_String+

	''
			</table>
		</center>
	''


skip_last_backup_set:


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_last_backup_set_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_last_backup_set_temp

END


----------------------------------------------------------------------------------------------------------------------
--	Main Query VI: SQL Server Agent Jobs (Last 24 Hours)
----------------------------------------------------------------------------------------------------------------------

SELECT
	 SJ.name AS job_name
	,CONVERT (VARCHAR (19), CONVERT (DATETIME, CONVERT (VARCHAR (8), SJH.run_date)+'' ''+LEFT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_time),6),2)+'':''+SUBSTRING (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_time),6),3,2)+'':''+RIGHT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_time),6),2)), 120) AS last_run_date_time
	,(CASE
		WHEN SJH.run_status = 0 THEN ''Failed''
		WHEN SJH.run_status = 1 THEN ''Succeeded''
		WHEN SJH.run_status = 2 THEN ''Retry''
		WHEN SJH.run_status = 3 THEN ''Canceled''
		WHEN SJH.run_status = 4 THEN ''In Progress''
		END) AS last_status
	,(CASE
		WHEN RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6) = ''000000'' THEN ''__:__:__''
		WHEN LEFT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6),4) = ''0000'' THEN ''__:__:''+RIGHT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6),2)
		WHEN LEFT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6),2) = ''00'' THEN ''__:''+SUBSTRING (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6),3,2)+'':''+RIGHT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6),2)
		ELSE LEFT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6),2)+'':''+SUBSTRING (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6),3,2)+'':''+RIGHT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_duration),6),2)
		END) AS duration
	,ISNULL (CONVERT (VARCHAR (19), B.next_run_date_time, 120),''___________________'') AS next_run_date_time
	,ISNULL (REVERSE (SUBSTRING (REVERSE (CONVERT (VARCHAR (15), CONVERT (MONEY, DATEDIFF (DAY, GETDATE (), B.next_run_date_time)), 1)), 4, 15)),''N/A'') AS days_away
INTO
	dbo.#ssaj_sssr_agent_jobs_temp
FROM
	msdb.dbo.sysjobs SJ
	INNER JOIN msdb.dbo.sysjobhistory SJH ON SJH.job_id = SJ.job_id
		AND CONVERT (DATETIME, CONVERT (VARCHAR (8), SJH.run_date)+'' ''+LEFT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_time),6),2)+'':''+SUBSTRING (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_time),6),3,2)+'':''+RIGHT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJH.run_time),6),2)) >= @vDate_24_Hours_Ago
	INNER JOIN

		(
			SELECT
				MAX (X.instance_id) AS instance_id_max
			FROM
				msdb.dbo.sysjobhistory X
			GROUP BY
				X.job_id
		) A ON A.instance_id_max = SJH.instance_id

	LEFT JOIN

		(
			SELECT
				 SJS.job_id
				,MIN (CONVERT (DATETIME, CONVERT (VARCHAR (8), SJS.next_run_date)+'' ''+LEFT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJS.next_run_time),6),2)+'':''+SUBSTRING (RIGHT (''000000''+CONVERT (VARCHAR (6), SJS.next_run_time),6),3,2)+'':''+RIGHT (RIGHT (''000000''+CONVERT (VARCHAR (6), SJS.next_run_time),6),2))) AS next_run_date_time
			FROM
				msdb.dbo.sysjobschedules SJS
			WHERE
				SJS.next_run_date > 0
			GROUP BY
				SJS.job_id
		) B ON B.job_id = SJ.job_id


IF @@ROWCOUNT = 0
BEGIN

	GOTO skip_agent_jobs

END


SET @vXML_String =

	CONVERT (NVARCHAR (MAX),
		(
			SELECT
				 '''',X.job_name AS ''td''
				,'''',X.last_run_date_time AS ''td''
				,'''',X.last_status AS ''td''
				,'''',X.duration AS ''td''
				,'''',X.next_run_date_time AS ''td''
				,'''',''right_align''+X.days_away AS ''td''
			FROM
				dbo.#ssaj_sssr_agent_jobs_temp X
			ORDER BY
				X.job_name
			FOR
				XML PATH (''tr'')
		)
	)


SET @vBody = @vBody+

	''
		<br><br>
		<h3><center>SQL Server Agent Jobs (Last 24 Hours)</center></h3>
		<center>
			<table border=1 cellpadding=2>
				<tr>
					<th>Job Name</th>
					<th>Last Run Date / Time</th>
					<th>Last Status</th>
					<th>Duration</th>
					<th>Next Run Date / Time</th>
					<th>Days Away</th>
				</tr>
	''


SET @vBody = @vBody+@vXML_String+

	''
			</table>
		</center>
	''


skip_agent_jobs:


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_agent_jobs_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_agent_jobs_temp

END


----------------------------------------------------------------------------------------------------------------------
--	Main Query VII: Unused Indexes
----------------------------------------------------------------------------------------------------------------------

IF @vUptime_Days <= @vUnused_Index_Uptime_Threshold
BEGIN

	GOTO skip_unused_indexes

END


CREATE TABLE dbo.#ssaj_sssr_unused_indexes_temp

	(
		 database_name NVARCHAR (512)
		,[object_name] SYSNAME
		,column_name SYSNAME
		,index_name SYSNAME
		,[disabled] VARCHAR (3)
		,hypothetical VARCHAR (3)
		,drop_index_statement NVARCHAR (4000)
	)


SET @vDatabase_Name = (SELECT TOP 1 DB.name FROM [master].[sys].[databases] DB WHERE DB.state = 0 AND DB.is_read_only = 0 AND DB.is_in_standby = 0 AND DB.source_database_id IS NULL ORDER BY DB.name)


WHILE @vDatabase_Name IS NOT NULL
BEGIN

	SET @vSQL_String =

		''
			USE [''+@vDatabase_Name+''];


			INSERT INTO dbo.#ssaj_sssr_unused_indexes_temp

			SELECT
				 DB_NAME () AS database_name
				,O.name AS [object_name]
				,C.name AS column_name
				,I.name AS index_name
				,(CASE
					WHEN I.is_disabled = 1 THEN ''''Yes''''
					ELSE ''''No''''
					END) AS [disabled]
				,(CASE
					WHEN I.is_hypothetical = 1 THEN ''''Yes''''
					ELSE ''''No''''
					END) AS hypothetical
				,''''USE ''''+DB_NAME ()+''''; DROP INDEX ''''+S.name+''''.''''+O.name+''''.''''+I.name+'''';'''' AS drop_index_statement
			FROM
				[sys].[indexes] I
				INNER JOIN [sys].[objects] O ON O.[object_id] = I.[object_id]
					AND O.type = ''''U''''
					AND O.is_ms_shipped = 0
					AND O.name <> ''''sysdiagrams''''
				INNER JOIN [sys].[tables] T ON T.[object_id] = I.[object_id]
				INNER JOIN [sys].[schemas] S ON S.[schema_id] = T.[schema_id]
				INNER JOIN [sys].[index_columns] IC ON IC.[object_id] = I.[object_id]
					AND IC.index_id = I.index_id
				INNER JOIN [sys].[columns] C ON C.[object_id] = IC.[object_id]
					AND C.column_id = IC.column_id
			WHERE
				I.type > 0
				AND I.is_primary_key = 0
				AND I.is_unique_constraint = 0
				AND NOT EXISTS

					(
						SELECT
							*
						FROM
							[sys].[index_columns] XIC
							INNER JOIN [sys].[foreign_key_columns] FKC ON FKC.parent_object_id = XIC.[object_id]
								AND FKC.parent_column_id = XIC.column_id
						WHERE
							XIC.[object_id] = I.[object_id]
							AND XIC.index_id = I.index_id
					)

				AND NOT EXISTS

					(
						SELECT
							*
						FROM
							[master].[sys].[dm_db_index_usage_stats] IUS
						WHERE
							IUS.database_id = DB_ID (DB_NAME ())
							AND IUS.[object_id] = I.[object_id]
							AND IUS.index_id = I.index_id
					)
		''


	EXEC (@vSQL_String)


	SET @vDatabase_Name = (SELECT TOP 1 DB.name FROM [master].[sys].[databases] DB WHERE DB.state = 0 AND DB.is_read_only = 0 AND DB.is_in_standby = 0 AND DB.source_database_id IS NULL AND DB.name > @vDatabase_Name ORDER BY DB.name)

END


IF (SELECT COUNT (*) FROM dbo.#ssaj_sssr_unused_indexes_temp) = 0
BEGIN

	GOTO skip_unused_indexes

END


SET @vXML_String =

	CONVERT (NVARCHAR (MAX),
		(
			SELECT
				 '''',X.database_name AS ''td''
				,'''',X.[object_name] AS ''td''
				,'''',X.column_name AS ''td''
				,'''',X.index_name AS ''td''
				,'''',X.[disabled] AS ''td''
				,'''',X.hypothetical AS ''td''
				,'''',X.drop_index_statement AS ''td''
			FROM
				dbo.#ssaj_sssr_unused_indexes_temp X
			ORDER BY
				 X.database_name
				,X.[object_name]
				,X.column_name
				,X.index_name
			FOR
				XML PATH (''tr'')
		)
	)


SET @vBody = @vBody+

	''
		<br><br>
		<h3><center>Unused Indexes</center></h3>
		<center>
			<table border=1 cellpadding=2>
				<tr>
					<th>Database Name</th>
					<th>Object Name</th>
					<th>Column Name</th>
					<th>Index Name</th>
					<th>Disabled</th>
					<th>Hypothetical</th>
					<th>Drop Index Statement</th>
				</tr>
	''


SET @vBody = @vBody+@vXML_String+

	''
			</table>
		</center>
	''


skip_unused_indexes:


IF OBJECT_ID (''tempdb.dbo.#ssaj_sssr_unused_indexes_temp'') IS NOT NULL
BEGIN

	DROP TABLE dbo.#ssaj_sssr_unused_indexes_temp

END


----------------------------------------------------------------------------------------------------------------------
--	Variable Update: Finalize @vBody Variable Contents
----------------------------------------------------------------------------------------------------------------------

SET @vBody =

	''
		<html>
			<body>
			<style type="text/css">
				table {font-size:8.0pt;font-family:Arial;text-align:left;}
				tr {text-align:left;}
			</style>
	''

	+@vBody+

	''
			</body>
		</html>
	''


SET @vBody = REPLACE (@vBody,''<td>right_align'',''<td align="right">'')


----------------------------------------------------------------------------------------------------------------------
--	sp_send_dbmail: Deliver Results / Notification To End User(s)
----------------------------------------------------------------------------------------------------------------------

EXEC msdb.dbo.sp_send_dbmail

	 @recipients = @vRecipients
	,@copy_recipients = @vCopy_Recipients
	,@subject = @vSubject
	,@body = @vBody
	,@body_format = ''HTML''

' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_GatherServerTopDuration]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_GatherServerTopDuration]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[dbm_GatherServerTopDuration]
	@SERVER varchar(30)
	
AS
set nocount on


DECLARE @MaxColId int
DECLARE @SQL varchar(1000)

SELECT @MaxColId = ISNULL(MAX(ColId), 0) from dbamaint.dbo.TopDuration where ServerName = @SERVER

SELECT @SQL=
''INSERT	TopDuration 
SELECT	ColId,ServerName,DatabaseID,StartTime,Duration,Reads,Writes,CPU,TextData
from '' + @SERVER + ''.dbamaint.dbo.TopDuration
WHERE (ServerName = '''''' + @SERVER + '''''' AND ColId > ''+ CONVERT(varchar(10),@MaxColId) + '')''

EXEC (@SQL)


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sel_TRNSizing]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sel_TRNSizing]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		mmessano
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sel_TRNSizing] 

AS
BEGIN
SELECT * 
FROM
(
SELECT server_name,database_name,CONVERT(date, backup_finish_date, 101) AS BackupDate,
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''04:30'' AND ''04:59'' THEN backup_size ELSE NULL END) AS [430AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''05:00'' AND ''05:29'' THEN backup_size ELSE NULL END) AS [500AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''05:30'' AND ''05:59'' THEN backup_size ELSE NULL END) AS [530AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''06:00'' AND ''06:29'' THEN backup_size ELSE NULL END) AS [600AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''06:30'' AND ''06:59'' THEN backup_size ELSE NULL END) AS [630AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''07:00'' AND ''07:29'' THEN backup_size ELSE NULL END) AS [700AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''07:30'' AND ''07:59'' THEN backup_size ELSE NULL END) AS [730AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''08:00'' AND ''08:29'' THEN backup_size ELSE NULL END) AS [800AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''08:30'' AND ''08:59'' THEN backup_size ELSE NULL END) AS [830AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''09:00'' AND ''09:29'' THEN backup_size ELSE NULL END) AS [900AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''09:30'' AND ''09:59'' THEN backup_size ELSE NULL END) AS [930AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''10:00'' AND ''10:29'' THEN backup_size ELSE NULL END) AS [1000AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''10:30'' AND ''10:59'' THEN backup_size ELSE NULL END) AS [1030AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''11:00'' AND ''11:29'' THEN backup_size ELSE NULL END) AS [1100AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''11:30'' AND ''11:59'' THEN backup_size ELSE NULL END) AS [1130AM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''12:00'' AND ''12:29'' THEN backup_size ELSE NULL END) AS [1200PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''12:30'' AND ''12:59'' THEN backup_size ELSE NULL END) AS [1230PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''13:00'' AND ''13:29'' THEN backup_size ELSE NULL END) AS [1300PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''13:30'' AND ''13:59'' THEN backup_size ELSE NULL END) AS [1330PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''14:00'' AND ''14:29'' THEN backup_size ELSE NULL END) AS [1400PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''14:30'' AND ''14:59'' THEN backup_size ELSE NULL END) AS [1430PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''15:00'' AND ''15:29'' THEN backup_size ELSE NULL END) AS [1500PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''15:30'' AND ''15:59'' THEN backup_size ELSE NULL END) AS [1530PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''16:00'' AND ''16:29'' THEN backup_size ELSE NULL END) AS [1600PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''16:30'' AND ''16:59'' THEN backup_size ELSE NULL END) AS [1630PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''17:00'' AND ''17:29'' THEN backup_size ELSE NULL END) AS [1700PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''17:30'' AND ''17:59'' THEN backup_size ELSE NULL END) AS [1730PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''18:00'' AND ''18:29'' THEN backup_size ELSE NULL END) AS [1800PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''18:30'' AND ''18:59'' THEN backup_size ELSE NULL END) AS [1830PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''19:00'' AND ''19:29'' THEN backup_size ELSE NULL END) AS [1900PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''19:30'' AND ''19:59'' THEN backup_size ELSE NULL END) AS [1930PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''20:00'' AND ''20:29'' THEN backup_size ELSE NULL END) AS [2000PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''20:30'' AND ''20:59'' THEN backup_size ELSE NULL END) AS [2030PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''21:00'' AND ''21:29'' THEN backup_size ELSE NULL END) AS [2100PM],
		SUM(CASE WHEN CONVERT(time, backup_start_date, 108) BETWEEN ''21:30'' AND ''21:59'' THEN backup_size ELSE NULL END) AS [2130PM]
FROM msdb.dbo.backupset
WHERE type =''L'' -- log
   --and backup_finish_date >= GetDate() - 6
   AND database_name NOT IN (''distribution'',''master'',''model'',''msdb'',''PASCAdmin'')
   GROUP BY server_name, database_name,CONVERT(date, backup_finish_date, 101)
) AS src
GROUP BY server_name, database_name, BackupDate,
		[430AM],[500AM],[530AM],[600AM],
		[630AM],[700AM],[730AM],[800AM],
		[830AM],[900AM],[930AM],[1000AM],
		[1030AM],[1100AM],[1130AM],[1200PM],
		[1230PM],[1300PM],[1330PM],[1400PM],
		[1430PM],[1500PM],[1530PM],[1600PM],
		[1630PM],[1700PM],[1730PM],[1800PM],
		[1830PM],[1900PM],[1930PM],[2000PM],
		[2030PM],[2100PM],[2130PM]
ORDER BY database_name		
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[sel_AuditTrackingReportStatus]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sel_AuditTrackingReportStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


-- =============================================
-- Author:		sbrown
-- Create date: 1/4/2011
-- Description:	Audit Tracking Report Status
-- =============================================
CREATE PROCEDURE [dbo].[sel_AuditTrackingReportStatus] 

AS

BEGIN

SET NOCOUNT ON;

EXEC dbm_logshippingStatus

SELECT p.ClientDB AS Client
	, p.ReportDataCurrentAsOF AS PrimaryReportDate
	, s.ReportDataCurrentAsOF AS SecondaryReportDate
	, DATEDIFF(hh, p.ReportDataCurrentAsOF
	, s.ReportDataCurrentAsOF) AS hours_behind 
FROM LogshippingStatus p 
LEFT JOIN psqlrpt21.dbamaint.dbo.LogshippingStatus s 
	ON p.ClientDB = s.ClientDB 
ORDER BY 1

END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[dbm_SQLFilesAudit]    Script Date: 10/07/2012 15:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dbm_SQLFilesAudit]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		mmessano
-- Create date: 1/18/2010
-- Description:	Enumerates files in specified directories and returns a result set consisting of the FileName and FileTime.
-- =============================================
CREATE PROCEDURE [dbo].[dbm_SQLFilesAudit] 

AS
BEGIN
	SET NOCOUNT ON;

-----------------------------------------------------------------------------------
-- create work table
-- cannot be a table variable due to the inner looping
CREATE TABLE #files
  ( PATH VARCHAR(512)
  , FileTime DATETIME )

-----------------------------------------------------------------------------------
DECLARE @DirRoots VARCHAR(64)
DECLARE @DirRoot VARCHAR(32)
DECLARE @Drive VARCHAR(1)
DECLARE @SubDirs VARCHAR(64)
DECLARE @SubDir VARCHAR(32)
DECLARE @DirPath VARCHAR(256)
DECLARE @File VARCHAR(128)
DECLARE @FileTime VARCHAR(21)
DECLARE @PathID INT
DECLARE @result INT

DECLARE @drives TABLE
  ( drive CHAR(1),
    free  VARCHAR(16)
  );

DECLARE @DBFiles TABLE 
	( ServerName VARCHAR(24)
	, DatabaseName VARCHAR(128)
	, LogicalName VARCHAR(128)
	, FileName VARCHAR(256)
	, LastUpdate DATETIME
	);

DECLARE @TRN TABLE
	( DatabaseName VARCHAR(128)
	, TRNPath VARCHAR(512)
	);

-------------------------------------------------------------------------------	
-- populate table with existing databases information
INSERT INTO @DBFiles
SELECT DISTINCT CONVERT(nvarchar(32), SERVERPROPERTY(''Servername'')) AS Server
			, sdb.Name AS DatabaseName
			, smf.Name AS LogicalName
			, smf.Physical_Name AS FileName
			, GETDATE()
FROM sys.master_files AS smf
	JOIN MASTER.sys.databases AS sdb ON smf.database_id = sdb.database_id

-- populate table with existing TRN file information
INSERT INTO @TRN
	SELECT bs.database_name, bmf.physical_device_name
	FROM msdb.dbo.backupmediafamily bmf
		INNER JOIN msdb.dbo.backupset bs ON bmf.media_set_id = bs.media_set_id
	WHERE bs.type = ''L''
			
SELECT @DirRoots = '':\mssql\'' + '','' + '':\mssql.1\mssql\'' + '','' + '':\MSSQL10.MSSQLSERVER\MSSQL\''
SELECT @SubDirs = ''BAK\'' + '','' + ''Data\'' + '','' + ''LDF\'' + '','' + ''TRN\''

INSERT INTO @drives
            ( drive
            , free
            )
            
EXEC MASTER..Xp_fixeddrives

-------------------------------------------------------------------------------
-- trim storage table
TRUNCATE TABLE dbamaint.dbo.SQLFilesAudit

-- outer loop for each drive letter
DECLARE drive CURSOR FOR
  SELECT drive
  FROM   @drives
WHERE Drive != ''C''

OPEN drive

FETCH NEXT FROM drive INTO @Drive

WHILE @@FETCH_STATUS = 0
  BEGIN
	  -- 2nd loop for each directory root
      DECLARE dirroot CURSOR FOR
        SELECT *
        FROM   [dbamaint].[dbo].[Udf_split](@DirRoots, '','')

      OPEN dirroot

      FETCH NEXT FROM dirroot INTO @DirRoot

      WHILE @@FETCH_STATUS = 0
        BEGIN
			-- check the root directory first for BAK files
			SELECT @DirPath = ''dir /B '' + @Drive + @DirRoot
			EXEC @result = MASTER.dbo.Xp_cmdshell @DirPath, NO_OUTPUT
			IF ( @result = 0 )
				BEGIN
					SELECT @DirPath = @Drive + @DirRoot
					
					INSERT INTO dbamaint.dbo.sqldirpaths
                                    (PATH)
						VALUES      ( @DirPath )

                    -- directory exists, get the contents
                    SET @PathID = (SELECT pathid
                                   FROM   dbamaint.dbo.sqldirpaths
                                   WHERE  PATH = @DirPath)                  
					EXEC dbamaint.dbo.Dbm_listfiles @DirPath, ''#Files'', NULL, NULL, 0, 1
					
					DECLARE files CURSOR FOR
                          SELECT *
                          FROM   #Files

                        OPEN files

                        FETCH NEXT FROM files INTO @File, @FileTime

                        WHILE @@FETCH_STATUS = 0
                          BEGIN
                              IF @File != ''''
                                INSERT INTO dbamaint.dbo.sqlfiles
                                            (pathid,
                                             filepath,
                                             FileTime)
                                VALUES      (@PathID,
                                             @DirPath + @File,
                                             @FileTime)
                              FETCH NEXT FROM files INTO @File, @FileTime
                          END

                        CLOSE files
                        DEALLOCATE files
                        
                        TRUNCATE TABLE #Files
				END
            --commented after testing			
			--ELSE
            --  BEGIN
            --      PRINT ''Directory path '' + @DirPath + '' does not exist.'' + CHAR(10)
            --  END
            
            -- work goes here
            DECLARE subdir CURSOR FOR
              SELECT *
              FROM   [dbamaint].[dbo].[Udf_split](@SubDirs, '','')

            -- 3rd loop for each each sub-directory defined
            OPEN subdir

            FETCH NEXT FROM subdir INTO @SubDir

            WHILE @@FETCH_STATUS = 0
              BEGIN
                  SELECT @DirPath = ''dir /B '' + @Drive + @DirRoot + @SubDir
                  EXEC @result = MASTER.dbo.Xp_cmdshell @DirPath, NO_OUTPUT

                  IF ( @result = 0 )
                    BEGIN
                        -- re-assign @DirPath
                        SELECT @DirPath = @Drive + @DirRoot + @SubDir

                        INSERT INTO dbamaint.dbo.sqldirpaths
                                    (PATH)
						VALUES      ( @DirPath )

                        -- directory exists, get the contents
                        SET @PathID = (SELECT pathid
                                       FROM   dbamaint.dbo.sqldirpaths
                                       WHERE  PATH = @DirPath)

                        EXEC dbamaint.dbo.Dbm_listfiles @DirPath, ''#Files'', NULL, NULL, 0, 1
                        -- files loop
                        DECLARE files CURSOR FOR
                          SELECT *
                          FROM   #Files

                        OPEN files

                        FETCH NEXT FROM files INTO @File, @FileTime

                        WHILE @@FETCH_STATUS = 0
                          BEGIN
                              IF @File != ''''
                                INSERT INTO dbamaint.dbo.sqlfiles
                                            (pathid,
                                             filepath,
                                             FileTime)
                                VALUES      (@PathID,
                                             @DirPath + @File,
                                             @FileTime)
                              FETCH NEXT FROM files INTO @File, @FileTime
                          END

                        CLOSE files
                        DEALLOCATE files
                        
                        TRUNCATE TABLE #Files
                    END
                  --commented after testing
                  --ELSE
                  --  BEGIN
                  --      PRINT ''Directory path '' + @DirPath + '' does not exist.'' + CHAR(10)
                  --  END

                  FETCH NEXT FROM subdir INTO @SubDir
              END -- 3rd loop close

            CLOSE subdir
            DEALLOCATE subdir

            FETCH NEXT FROM dirroot INTO @DirRoot
        END -- 2nd loop close
      CLOSE dirroot
      DEALLOCATE dirroot

      FETCH NEXT FROM drive INTO @Drive
  END -- outer loop close
CLOSE drive
DEALLOCATE drive


-----------------------------------------------------------------------------------  
-- populate storage table for SSIS package
INSERT INTO dbamaint.dbo.SQLFilesAudit
SELECT @@SERVERNAME AS Servername, DatabaseName, FilePath, FileTime, GETDATE()
	FROM @DBFiles dbf
	FULL JOIN sqlfiles f ON dbf.FileName = f.FilePath
WHERE FilePath NOT LIKE ''%cer'' -- ignore certificates
ORDER BY 1,2,3

-- update TRN file databasename
MERGE dbamaint.dbo.SQLFilesAudit AS T  -- target
USING @TRN AS S  -- source
ON (t.FilePath = s.TRNPath)
WHEN MATCHED
	THEN UPDATE SET T.DatabaseName = S.DatabaseName;
-----------------------------------------------------------------------------------
-- cleanup
DROP TABLE #files
TRUNCATE TABLE sqlfiles
DELETE FROM sqldirpaths


END
' 
END
GO
/****** Object:  Default [DF_Jobs_Report_timestamp]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Jobs_Report_timestamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jobs_Report]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Jobs_Report_timestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Jobs_Report] ADD  CONSTRAINT [DF_Jobs_Report_timestamp]  DEFAULT (getdate()) FOR [TimeStamp]
END


End
GO
/****** Object:  Default [DF__filespace__repor__77BFCB91]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__filespace__repor__77BFCB91]') AND parent_object_id = OBJECT_ID(N'[dbo].[filespacestats]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__filespace__repor__77BFCB91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[filespacestats] ADD  CONSTRAINT [DF__filespace__repor__77BFCB91]  DEFAULT (getdate()) FOR [report_date]
END


End
GO
/****** Object:  Default [DF__DTSPackag__Packa__49AFB375]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__DTSPackag__Packa__49AFB375]') AND parent_object_id = OBJECT_ID(N'[dbo].[DTSPackages]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__DTSPackag__Packa__49AFB375]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DTSPackages] ADD  CONSTRAINT [DF__DTSPackag__Packa__49AFB375]  DEFAULT ((0)) FOR [PackageType]
END


End
GO
/****** Object:  Default [DF_Lock_Monitor_Occurs]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Lock_Monitor_Occurs]') AND parent_object_id = OBJECT_ID(N'[dbo].[Lock_Monitor]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Lock_Monitor_Occurs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Lock_Monitor] ADD  CONSTRAINT [DF_Lock_Monitor_Occurs]  DEFAULT (getdate()) FOR [Occurs]
END


End
GO
/****** Object:  Default [DF_dbcchistory_TimeStamp]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_dbcchistory_TimeStamp]') AND parent_object_id = OBJECT_ID(N'[dbo].[DBCCHistory]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_dbcchistory_TimeStamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[DBCCHistory] ADD  CONSTRAINT [DF_dbcchistory_TimeStamp]  DEFAULT (getdate()) FOR [TimeStamp]
END


End
GO
/****** Object:  Default [DF_BlockedQry_InsDate_getdate]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BlockedQry_InsDate_getdate]') AND parent_object_id = OBJECT_ID(N'[dbo].[BlockedQry]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BlockedQry_InsDate_getdate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlockedQry] ADD  CONSTRAINT [DF_BlockedQry_InsDate_getdate]  DEFAULT (getdate()) FOR [InsDate]
END


End
GO
/****** Object:  Default [DF_AUSCondition_DefaultProcessPoint]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AUSCondition_DefaultProcessPoint]') AND parent_object_id = OBJECT_ID(N'[dbo].[AUSCondition]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AUSCondition_DefaultProcessPoint]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AUSCondition] ADD  CONSTRAINT [DF_AUSCondition_DefaultProcessPoint]  DEFAULT ('Empty') FOR [DefaultProcessPoint]
END


End
GO
/****** Object:  Default [DF_AUSCondition_DefaultStatus]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AUSCondition_DefaultStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[AUSCondition]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AUSCondition_DefaultStatus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AUSCondition] ADD  CONSTRAINT [DF_AUSCondition_DefaultStatus]  DEFAULT (1) FOR [DefaultStatus]
END


End
GO
/****** Object:  Default [DF_AUSCondition_DateCreated]    Script Date: 10/07/2012 15:10:13 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_AUSCondition_DateCreated]') AND parent_object_id = OBJECT_ID(N'[dbo].[AUSCondition]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_AUSCondition_DateCreated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AUSCondition] ADD  CONSTRAINT [DF_AUSCondition_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
END


End
GO
/****** Object:  ForeignKey [FK_SQLFiles_SQLDirPaths]    Script Date: 10/07/2012 15:10:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SQLFiles_SQLDirPaths]') AND parent_object_id = OBJECT_ID(N'[dbo].[SQLFiles]'))
ALTER TABLE [dbo].[SQLFiles]  WITH CHECK ADD  CONSTRAINT [FK_SQLFiles_SQLDirPaths] FOREIGN KEY([PathID])
REFERENCES [dbo].[SQLDirPaths] ([PathID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SQLFiles_SQLDirPaths]') AND parent_object_id = OBJECT_ID(N'[dbo].[SQLFiles]'))
ALTER TABLE [dbo].[SQLFiles] CHECK CONSTRAINT [FK_SQLFiles_SQLDirPaths]
GO
