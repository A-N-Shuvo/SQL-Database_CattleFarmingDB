USE master;
GO
CREATE DATABASE CattleFarmingDB;
--GO
--Use master
--	declare @data_path nvarchar (256)
--	Set @data_path =(select SUBSTRING(physical_name,1, CHARINDEX(N'master.mdf',lower(physical_name))-1)
--	from master.sys.master_files
--	Where database_id=1 and file_id=1)

--Execute (
--	 'create database CattleFarmingDB
--	  on primary (Name=CattleFarmingDB_DDL_Data, Filename='''+@data_path+'CattleFarmingDB_DDL_data.mdf'', size=20MB,maxsize=unlimited,filegrowth=3MB)
--	  log on (Name=CattleFarmingDB_DDLlog, Filename='''+@data_path+'CattleFarmingDB_DDL_log.ldf'', size=10MB,maxsize=100MB,filegrowth=1MB)'
--	 )
--go
-- Creating Partners Table
CREATE TABLE Partners (
    PartnerID INT IDENTITY(1,1) PRIMARY KEY,
    PartnerName NVARCHAR(100) NOT NULL,
    ContactInfo NVARCHAR(255),
    PartnershipDate DATE
);
GO

-- Creating Share Table
CREATE TABLE Share (
    ShareID TINYINT IDENTITY(1,1) PRIMARY KEY,
    PartnerID INT,
    ShareType VARCHAR(50),
    SharePercentage NUMERIC(5, 2),
    FOREIGN KEY (PartnerID) REFERENCES Partners(PartnerID)
);
GO

-- Creating Staff Table
CREATE TABLE Staff (
    StaffID INT IDENTITY(1,1) PRIMARY KEY,
    StaffName NVARCHAR(100) NOT NULL,
    Designation NVARCHAR(100),
    CurrentAddress VARCHAR(255),
    PermanentAddress VARCHAR(255),
    ContactNumber CHAR(15),
    BloodGroup NCHAR(10),
    Salary DECIMAL(10, 2)
);
GO

-- Creating Genders Table for normalization
CREATE TABLE Genders (
    GenderID SMALLINT IDENTITY(1,1) PRIMARY KEY,
    Gender NVARCHAR(10) NOT NULL
);
GO

-- Creating Cattle Table with reference to Genders table
CREATE TABLE Cattle (
    CattleID INT IDENTITY(1,1) PRIMARY KEY,
    TagNumber VARCHAR(50) NOT NULL,
    BirthDate DATETIME NOT NULL,
    Breed NVARCHAR(100),
    GenderID SMALLINT,
    FOREIGN KEY (GenderID) REFERENCES Genders(GenderID)
);
GO

-- Creating Shed Table
CREATE TABLE Shed (
    ShedID INT IDENTITY(1,1) PRIMARY KEY,
    Line NVARCHAR(255) NOT NULL,
    Capacity SMALLINT NOT NULL
);
GO

-- Creating ShedAssignment Table
CREATE TABLE ShedAssignment (
    AssignmentID BIGINT IDENTITY(1,1) PRIMARY KEY,
    ShedID INT,
    CattleID INT,
    AssignmentDate DATETIME2 NOT NULL,
    FOREIGN KEY (ShedID) REFERENCES Shed(ShedID),
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID)
);
GO

-- Creating MilkProduction Table
CREATE TABLE MilkProduction (
    ProductionID INT IDENTITY(1,1) PRIMARY KEY,
    CattleID INT,
    ProductionDate DATE NOT NULL,
    Quantity DECIMAL(10, 2) NOT NULL,
    WasteQuantity DECIMAL(10, 2) NULL,
    ReserveQuantity AS (Quantity - WasteQuantity),
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID)
);
GO

-- Creating MilkSales Table
CREATE TABLE MilkSales (
    SaleID INT IDENTITY(1,1) PRIMARY KEY,
    CattleID INT,
    SaleDate DATE NOT NULL,
    SalePrice DECIMAL(10, 2) NOT NULL,
    BuyerName NVARCHAR(100),
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID)
);
GO

-- Creating VetVisits Table
CREATE TABLE VetVisits (
    VisitID INT IDENTITY(1,1) PRIMARY KEY,
    CattleID INT,
    StaffID INT,
    VisitDate DATE NOT NULL,
    VetName NVARCHAR(100),
    Diagnosis VARCHAR(255),
    Treatment NVARCHAR(255),
    Cost REAL,
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);
GO

-- Creating CattleStatus Table
CREATE TABLE CattleStatus (
    StatusID INT IDENTITY(1,1) PRIMARY KEY,
    CattleID INT,
    StatusDate DATE NOT NULL,
    Status NVARCHAR(50),
    Description NVARCHAR(255),
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID)
);
GO

-- Creating MeatSales Table
CREATE TABLE MeatSales (
    MeatSaleID INT IDENTITY(1,1) PRIMARY KEY,
    CattleID INT,
    Quantity FLOAT,
    UnitPrice DECIMAL(10, 2),
    TotalPrice AS (Quantity * UnitPrice),
    SaleDate DATE NOT NULL,
    BuyerName NVARCHAR(100),
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID)
);
GO

-- Creating Fertilizer Table
CREATE TABLE Fertilizer (
    FertilizerID INT IDENTITY(1,1) PRIMARY KEY,
    CattleID INT,
    CollectionDate DATETIME NOT NULL,
    Quantity DECIMAL(10, 2) NOT NULL,
    UsageType NVARCHAR(100),
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID)
);
GO

-- Creating Revenue Table
CREATE TABLE Revenue (
    RevenueID INT,
    RevenueDate DATE NOT NULL,
    RevenueAmount DECIMAL(10, 2) NOT NULL,
    Description NVARCHAR(255)
);
GO

-- Creating Expenses Table
CREATE TABLE Expenses (
    ExpenseID INT IDENTITY(1,1) PRIMARY KEY,
    StaffID INT,
    ExpenseDate DATE NOT NULL,
    ExpenseAmount DECIMAL(10, 2) NOT NULL,
    Description VARCHAR(255),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);
GO

-- Creating AuditTable
CREATE TABLE AuditTable (
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    Action NVARCHAR(50),
    PartnerID INT,
    ActionDate DATETIME,
    Description NVARCHAR(255)
);
GO

--========================================
--================ INDEX =================
--========================================
--CLUSTERED INDEX
CREATE CLUSTERED INDEX IDX_Revenue_RevenueID 
ON Revenue (RevenueID); 
GO

--NON-CLUSTERED INDEX
CREATE NONCLUSTERED INDEX IDX_Staff_StaffName 
ON Staff (StaffName); 
GO

--=====================================
--=============== VIEW ================
--=====================================
-- Creating "VIEW" with SCHEMABINDING and ENCRYPTION
CREATE VIEW dbo.VW_PartnerDetails
WITH SCHEMABINDING, ENCRYPTION
AS
    SELECT 
        PartnerID, 
        PartnerName, 
        ContactInfo, 
        PartnershipDate
    FROM 
        dbo.Partners;
GO

--SCHEMA Creating
CREATE SCHEMA FarmSchema; 
GO

--=============================================
--============= STORED PROCEDURE ==============
--=============================================
--"STORED PROCEDURE" creating for CRUD operations on Partners table
CREATE PROCEDURE sp_CRUD_Partners
    @Action NVARCHAR(10), 
    @PartnerID INT = NULL,
    @PartnerName NVARCHAR(100) = NULL,
    @ContactInfo NVARCHAR(255) = NULL,
    @PartnershipDate DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    IF @Action = 'CREATE'
    BEGIN
        INSERT INTO Partners (PartnerName, ContactInfo, PartnershipDate)
        VALUES (@PartnerName, @ContactInfo, @PartnershipDate);
    END
    ELSE IF @Action = 'READ'
    BEGIN
        SELECT * FROM Partners
        WHERE PartnerID = @PartnerID;
    END
    ELSE IF @Action = 'UPDATE'
    BEGIN
        UPDATE Partners
        SET PartnerName = @PartnerName, 
            ContactInfo = @ContactInfo, 
            PartnershipDate = @PartnershipDate
        WHERE PartnerID = @PartnerID;
    END
    ELSE IF @Action = 'DELETE'
    BEGIN
        DELETE FROM Partners
        WHERE PartnerID = @PartnerID;
    END
    ELSE
    BEGIN
        PRINT 'Invalid action. Please specify CREATE, READ, UPDATE, or DELETE.';
    END
END;
GO

--=====================================
--============  FUNCTION  =============
--=====================================
--"SCALAR FUNCTION" creating to calculate the age of a partner based on their partnership date
CREATE FUNCTION dbo.fn_CalculateAge (@PartnershipDate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT;
    SET @Age = DATEDIFF(YEAR, @PartnershipDate, GETDATE());
    RETURN @Age;
END;
GO
---- Usage
--SELECT dbo.fn_CalculateAge('2020-01-01') AS Age;
--GO

-- Table-Valued FUNCTION to get partner details by partner name
CREATE FUNCTION dbo.fn_GetPartnerDetails (@PartnerName NVARCHAR(100))
RETURNS TABLE
AS
RETURN
(
    SELECT PartnerID, PartnerName, ContactInfo, PartnershipDate
    FROM Partners
    WHERE PartnerName = @PartnerName
);
GO
---- Usage
--SELECT * FROM dbo.fn_GetPartnerDetails('John Doe');
--GO


-- Multi-Statement Table-Valued FUNCTION to get partner revenue details
CREATE FUNCTION dbo.fn_GetPartnerRevenue (@RevenueID INT)
RETURNS @RevenueTable TABLE
(
    RevenueID INT,
    RevenueDate DATE,
    RevenueAmount DECIMAL(10, 2),
    Description NVARCHAR(255)
)
AS
BEGIN
    INSERT INTO @RevenueTable
    SELECT RevenueID, RevenueDate, RevenueAmount, Description
    FROM Revenue
    WHERE RevenueID = @RevenueID;

    RETURN;
END;
GO
---- Usage
--SELECT * FROM dbo.fn_GetPartnerRevenue(1);
--GO

--========================================================
--======================= Trigger ========================
--========================================================
-- Creating a new log table for logging trigger actions 
CREATE TABLE TriggerLog ( 
LogID INT IDENTITY(1,1) PRIMARY KEY, 
Action NVARCHAR(50), 
PartnerID INT, 
ActionDate DATETIME, 
Description NVARCHAR(255) ); 
GO

-- Creating an AFTER INSERT Trigger on the Partners table
CREATE TRIGGER trg_AfterInsert_Partners
ON Partners
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO AuditTable (Action, PartnerID, ActionDate)
    SELECT 'INSERT', i.PartnerID, GETDATE()
    FROM inserted i;
END;
GO

-- Creating an INSTEAD OF (DELETE) Trigger on the Partners table
CREATE TRIGGER trg_InsteadOfDelete_Partners
ON Partners
INSTEAD OF DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO AuditTable (Action, PartnerID, ActionDate, Description)
    SELECT 'DELETE_ATTEMPT', d.PartnerID, GETDATE(), 'Delete operation prevented'
    FROM deleted d;
    RAISERROR('Delete operation is not allowed on this table.', 16, 1);
END;
GO


--==================================================
--====== Some Alter Operation are given below ====== 
--==================================================
USE CattleFarmingDB;
GO
--======  Alter Table  ======
-- Adding a new column to the Partners table
ALTER TABLE Partners
ADD Address NVARCHAR(255);
-- Modifying an existing column in the Partners table
ALTER TABLE Partners
ALTER COLUMN ContactInfo NVARCHAR(100);
GO

--======  Alter INDEX  ======
USE CattleFarmingDB;
GO
-- Rebuilding an existing index
ALTER INDEX IX_PartnerName
ON Partners
REBUILD;
GO
-- Disabling an existing index
ALTER INDEX IX_PartnerName
ON Partners
DISABLE;
GO

--======  Alter VIEW  ======
USE CattleFarmingDB;
GO
-- Modifying an existing view
ALTER VIEW vw_PartnerDetails
AS
SELECT PartnerID, PartnerName, ContactInfo, PartnershipDate, Address
FROM Partners;
GO

--======  Alter Stored Procedure  ======
USE CattleFarmingDB;
GO
-- Modifying an existing stored procedure
ALTER PROCEDURE sp_CRUD_Partners
    @Action NVARCHAR(10), 
    @PartnerID INT = NULL,
    @PartnerName NVARCHAR(100) = NULL,
    @ContactInfo NVARCHAR(255) = NULL,
    @PartnershipDate DATE = NULL,
    @Address NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    IF @Action = 'CREATE'
    BEGIN
        INSERT INTO Partners (PartnerName, ContactInfo, PartnershipDate, Address)
        VALUES (@PartnerName, @ContactInfo, @PartnershipDate, @Address);
    END
    ELSE IF @Action = 'READ'
    BEGIN
        SELECT * FROM Partners
        WHERE PartnerID = @PartnerID;
    END
    ELSE IF @Action = 'UPDATE'
    BEGIN
        UPDATE Partners
        SET PartnerName = @PartnerName, 
            ContactInfo = @ContactInfo, 
            PartnershipDate = @PartnershipDate,
            Address = @Address
        WHERE PartnerID = @PartnerID;
    END
    ELSE IF @Action = 'DELETE'
    BEGIN
        DELETE FROM Partners
        WHERE PartnerID = @PartnerID;
    END
    ELSE
    BEGIN
        PRINT 'Invalid action. Please specify CREATE, READ, UPDATE, or DELETE.';
    END
END;
GO

--======  Alter FUNCTION  ======
USE CattleFarmingDB;
GO
-- Modifying an existing scalar function
ALTER FUNCTION dbo.fn_CalculateAge (@PartnershipDate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT;
    SET @Age = DATEDIFF(YEAR, @PartnershipDate, GETDATE());
    RETURN @Age;
END;
GO

--======  Alter TRIGGER  ======
USE CattleFarmingDB;
GO
-- Modifying an existing trigger
ALTER TRIGGER trg_AfterInsert_Partners
ON Partners
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO TriggerLog (Action, PartnerID, ActionDate, Description)
    SELECT 'INSERT', i.PartnerID, GETDATE(), 'Inserted new partner record'
    FROM inserted i;
END;
GO


--==================================================
--====== Some Drop Operation are given below =======
--==================================================
USE CattleFarmingDB;
GO
-- Dropping the Shed table
DROP TABLE Shed;
GO
-- Dropping an index from the Partners table
DROP INDEX IX_PartnerName ON Partners;
GO
-- Dropping the vw_PartnerDetails view
DROP VIEW vw_PartnerDetails;
GO
-- Dropping the sp_CRUD_Partners stored procedure
DROP PROCEDURE sp_CRUD_Partners;
GO
-- Dropping the dbo.fn_CalculateAge function
DROP FUNCTION dbo.fn_CalculateAge;
GO
-- Dropping the trg_AfterInsert_Partners trigger
DROP TRIGGER trg_AfterInsert_Partners;
GO
-- Dropping the trg_InsteadOfDelete_Partners trigger
DROP TRIGGER trg_InsteadOfDelete_Partners;
GO

