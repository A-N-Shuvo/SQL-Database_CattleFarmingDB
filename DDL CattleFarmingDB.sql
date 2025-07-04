USE master;
GO
CREATE DATABASE CattleFarmingDB;
GO

USE CattleFarmingDB
GO

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
    ShareID INT IDENTITY(1,1) PRIMARY KEY,
    PartnerID INT,
    ShareType NVARCHAR(50),
    SharePercentage DECIMAL(5, 2),
    FOREIGN KEY (PartnerID) REFERENCES Partners(PartnerID)
);
GO

-- Creating Staff Table
CREATE TABLE Staff (
    StaffID INT IDENTITY(1,1) PRIMARY KEY,
    StaffName NVARCHAR(100) NOT NULL,
    Designation NVARCHAR(100),
    CurrentAddress NVARCHAR(255),
    PermanentAddress NVARCHAR(255),
    ContactNumber NVARCHAR(15),
    BloodGroup NVARCHAR(10),
    Salary DECIMAL(10, 2)
);
GO

-- Creating Gender Table for normalization
CREATE TABLE Genders (
    GenderID INT IDENTITY(1,1) PRIMARY KEY,
    Gender NVARCHAR(10) NOT NULL
);
GO

-- Creating Cattle Table with reference to Genders table
CREATE TABLE Cattle (
    CattleID INT IDENTITY(1,1) PRIMARY KEY,
    TagNumber NVARCHAR(50) NOT NULL,
    BirthDate DATE NOT NULL,
    Breed NVARCHAR(100),
    GenderID INT,
    FOREIGN KEY (GenderID) REFERENCES Genders(GenderID)
);
GO

--Creating Table for Cattle Shed
CREATE TABLE Shed (
    ShedID INT IDENTITY(1,1) PRIMARY KEY,
    Location NVARCHAR(255) NOT NULL,
    Capacity INT NOT NULL
);
GO

-- Using sp_rename to change column name
EXEC sp_rename 'Shed.Location', 'LineNumber', 'COLUMN';
GO
SELECT * FROM Shed
GO

--Creating ShedAssignment Table
CREATE TABLE ShedAssignment (
    AssignmentID INT IDENTITY(1,1) PRIMARY KEY,
    ShedID INT,
    CattleID INT,
    AssignmentDate DATE NOT NULL,
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
    ReserveQuantity AS Quantity - WasteQuantity,
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
    Diagnosis NVARCHAR(255),
    Treatment NVARCHAR(255),
    Cost DECIMAL(10, 2),
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
    Quantity DECIMAL(10, 2),
    UnitPrice DECIMAL(10, 2),
    SaleDate DATE NOT NULL,
    BuyerName NVARCHAR(100),
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID)
);
GO

--Creating Table for Fertilizer
CREATE TABLE Fertilizer (
    FertilizerID INT IDENTITY(1,1) PRIMARY KEY,
    CattleID INT,
    CollectionDate DATE NOT NULL,
    Quantity DECIMAL(10, 2) NOT NULL,
    UsageType NVARCHAR(100),
    FOREIGN KEY (CattleID) REFERENCES Cattle(CattleID)
);
GO

-- Creating Revenue Table
CREATE TABLE Revenue (
    RevenueID INT IDENTITY(1,1) PRIMARY KEY,
    RevenueDate DATE NOT NULL,
    RevenueAmount DECIMAL(10, 2) NOT NULL,
    Description NVARCHAR(255),
    ReferenceID INT,
    ReferenceType NVARCHAR(50)
);
GO
ALTER TABLE Revenue
DROP COLUMN ReferenceID;
GO
ALTER TABLE Revenue
DROP COLUMN ReferenceType;
GO

-- Creating Expenses Table
CREATE TABLE Expenses (
    ExpenseID INT IDENTITY(1,1) PRIMARY KEY,
    StaffID INT,
    ExpenseDate DATE NOT NULL,
    ExpenseAmount DECIMAL(10, 2) NOT NULL,
    Description NVARCHAR(255),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);
GO