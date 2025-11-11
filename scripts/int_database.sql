/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse', Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
*/


USE master;

CREATE DATABASE Datawarehouse;

USE Datawarehouse;
GO

CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO

