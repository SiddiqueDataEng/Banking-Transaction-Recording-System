/*
 * Banking Transaction Recording System
 * Project #26 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, Triggers
 * Created: 2013
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'BankingDB')
BEGIN
    ALTER DATABASE BankingDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE BankingDB;
END
GO

CREATE DATABASE BankingDB
ON PRIMARY
(
    NAME = 'BankingDB_Data',
    FILENAME = 'C:\SQLData\BankingDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'BankingDB_Log',
    FILENAME = 'C:\SQLData\BankingDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE BankingDB SET RECOVERY SIMPLE;
ALTER DATABASE BankingDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE BankingDB;
GO

PRINT 'Database BankingDB created successfully';
PRINT 'Project: Banking Transaction Recording System';
PRINT 'Description: Customer transactions with audit controls logging';
GO
