USE CattleFarmingDB
GO

--Inserting Partners Detail
INSERT INTO Partners (PartnerName, ContactInfo, PartnershipDate) VALUES 
('Nayeem Chaklader', 'Dhaka, Bangladesh, 01516709633', '2023-01-01'),
('Rakib Bepari', 'Chittagong, Bangladesh, 01521329700', '2023-01-01'),
('Mazharul Chy', 'Sylhet, Bangladesh, 01321456987', '2023-03-01'),
('Khalid Mia', 'Rajshahi, Bangladesh, 01321456989', '2023-04-01'),
('Faysal Khan', 'Khulna, Bangladesh, 01321456980', '2023-05-01');
GO
SELECT * FROM Partners
GO


-- Assuming the PartnerID starts from 1 and increments sequentially
INSERT INTO Share (PartnerID, ShareType, SharePercentage) VALUES 
(1, 'Equity', 20.00),
(2, 'Debt', 15.00),
(3, 'Equity', 25.00),
(4, 'Debt', 10.00),
(5, 'Equity', 30.00);
GO
SELECT * FROM Share
GO

--Inserting Staffs Information & Detail
INSERT INTO Staff (StaffName, Designation, CurrentAddress, PermanentAddress, ContactNumber, BloodGroup, Salary) VALUES 
('Arif Ahmed', 'Manager', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01511111111', 'A+', 45000.00),
('Mahmudul Hasan', 'Assistant Manager', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01512222222', 'B+', 40000.00),
('Kamrul Islam', 'Supervisor', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01513333333', 'O+', 35000.00),
('Nusrat Jahan', 'Accountant', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01514444444', 'AB+', 30000.00),
('Rafiqul Islam', 'Technician', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01515555555', 'A-', 25000.00),
('Shamim Hossain', 'Driver', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01516666666', 'B-', 20000.00),
('Ayesha Akhter', 'Cleaner', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01517777777', 'O-', 15000.00),
('Jannatul Ferdous', 'Security Guard', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01518888888', 'AB-', 18000.00),
('Mustafizur Rahman', 'Field Worker', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01519999999', 'A+', 22000.00),
('Farhana Ahmed', 'Office Assistant', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01521111111', 'B+', 23000.00),
('Hafizur Rahman', 'Veterinarian', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01522222222', 'O+', 50000.00),
('Salma Akhter', 'HR Officer', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01523333333', 'AB+', 38000.00),
('Hasan Mahmud', 'IT Support', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01524444444', 'A-', 34000.00),
('Rubel Hossain', 'Farm Hand', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01525555555', 'B-', 21000.00),
('Mehdi Hassan', 'Logistics Coordinator', 'Chittagong, Bangladesh', 'Chittagong, Bangladesh', '01526666666', 'O-', 29000.00);
GO
SELECT * FROM Staff
GO

--Inserting Cattle Gender
INSERT INTO Genders (Gender) VALUES ('Male'), ('Female'), ('Other');
GO

--Inserting Cattle Assuming GenderID 1 = Male, 2 = Female, 3 = Other
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0001', '2022-01-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0002', '2022-02-01', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0003', '2022-03-01', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0004', '2022-04-01', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0005', '2022-05-01', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0006', '2022-01-05', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0007', '2022-02-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0008', '2022-03-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0009', '2022-04-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0010', '2022-05-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0011', '2022-06-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0012', '2022-07-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0013', '2022-08-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0014', '2022-09-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0015', '2022-10-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0016', '2022-11-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0017', '2022-12-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0018', '2023-01-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0019', '2023-02-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0020', '2023-03-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0021', '2023-04-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0022', '2023-05-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0023', '2023-06-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0024', '2023-07-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0025', '2023-08-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0026', '2023-09-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0027', '2023-10-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0028', '2023-11-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0029', '2023-12-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0030', '2024-01-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0031', '2024-02-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0032', '2024-03-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0033', '2024-04-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0034', '2024-05-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0035', '2024-06-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0036', '2024-07-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0037', '2024-08-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0038', '2024-09-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0039', '2024-10-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0040', '2024-11-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0041', '2024-12-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0042', '2025-01-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0043', '2025-02-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0044', '2025-03-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0045', '2025-04-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0046', '2025-05-01', 'Holstein', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0047', '2025-06-10', 'Jersey', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0048', '2025-07-15', 'Guernsey', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0049', '2025-08-20', 'Ayrshire', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0050', '2025-09-25', 'Brown Swiss', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0051', '2022-01-05', 'Bangladeshi', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0052', '2022-02-10', 'Pakistani', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0053', '2022-03-15', 'Indian', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0054', '2022-04-20', 'Nepali', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0055', '2022-05-25', 'Bangladeshi', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0056', '2022-06-01', 'Pakistani', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0057', '2022-07-10', 'Indian', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0058', '2022-08-15', 'Nepali', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0059', '2022-09-20', 'Bangladeshi', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0060', '2022-10-25', 'Pakistani', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0061', '2022-11-01', 'Indian', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0062', '2022-12-10', 'Nepali', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0063', '2023-01-15', 'Bangladeshi', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0064', '2023-02-20', 'Pakistani', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0065', '2023-03-25', 'Indian', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0066', '2023-04-01', 'Nepali', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0067', '2023-05-10', 'Bangladeshi', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0068', '2023-06-15', 'Pakistani', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0069', '2023-07-20', 'Indian', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0070', '2023-08-25', 'Nepali', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0071', '2023-09-01', 'Bangladeshi', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0072', '2023-10-10', 'Pakistani', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0073', '2023-11-15', 'Indian', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0074', '2023-12-20', 'Nepali', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0075', '2024-01-25', 'Bangladeshi', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0076', '2024-02-01', 'Pakistani', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0077', '2024-03-10', 'Indian', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0078', '2024-04-15', 'Nepali', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0079', '2024-05-20', 'Bangladeshi', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0080', '2024-06-25', 'Pakistani', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0081', '2024-07-01', 'Indian', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0082', '2024-08-10', 'Nepali', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0083', '2024-09-15', 'Bangladeshi', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0084', '2024-10-20', 'Pakistani', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0085', '2024-11-25', 'Indian', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0086', '2024-12-01', 'Nepali', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0087', '2025-01-10', 'Bangladeshi', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0088', '2025-02-15', 'Pakistani', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0089', '2025-03-20', 'Indian', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0090', '2025-04-25', 'Nepali', 3);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0091', '2025-05-01', 'Bangladeshi', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0092', '2025-06-10', 'Pakistani', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0093', '2025-07-15', 'Indian', 1);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0094', '2025-08-20', 'Nepali', 2);
INSERT INTO Cattle (TagNumber, BirthDate, Breed, GenderID) VALUES ('T0095', '2025-09-25', 'Bangladeshi', 3);
GO
SELECT * FROM Cattle
GO


-- Inserting data into Shed table
-- Insert কোয়েরী
INSERT INTO Shed (Line, Capacity)
VALUES ('North Wing', 30),
       ('South Wing', 30),
       ('East Wing', 40),
       ('West Wing', 40);
GO
SELECT * FROM Shed
GO

-- Inserting data into ShedAssignment table 

INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 1, '2024-01-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 2, '2024-01-18');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 3, '2024-02-22');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 4, '2024-03-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 5, '2024-03-12');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 6, '2024-04-04');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 7, '2024-04-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 8, '2024-04-28');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 9, '2024-05-10');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 10, '2024-05-20');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 11, '2024-06-01');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 12, '2024-06-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 13, '2024-06-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 14, '2024-07-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 15, '2024-07-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 16, '2024-07-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 17, '2024-08-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 18, '2024-08-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 19, '2024-08-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 20, '2024-09-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 21, '2024-09-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 22, '2024-09-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 23, '2024-10-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 24, '2024-10-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 25, '2024-10-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 26, '2024-11-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 27, '2024-11-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 28, '2024-11-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 29, '2024-12-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 30, '2024-12-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 31, '2024-12-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 32, '2025-01-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 33, '2025-01-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 34, '2025-01-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 35, '2025-02-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 36, '2025-02-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 37, '2025-02-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 38, '2025-03-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 39, '2025-03-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 40, '2025-03-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 41, '2025-04-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 42, '2025-04-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 43, '2025-04-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 44, '2025-05-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 45, '2025-05-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 46, '2025-05-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 47, '2025-06-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 48, '2025-06-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 49, '2025-06-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 50, '2025-07-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 51, '2025-07-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 52, '2025-07-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 53, '2025-08-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 54, '2025-08-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 55, '2025-08-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 56, '2025-09-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 57, '2025-09-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 58, '2025-09-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 59, '2025-10-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 60, '2025-10-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 61, '2025-10-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 62, '2025-11-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 63, '2025-11-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 64, '2025-11-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 65, '2025-12-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 66, '2025-12-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 67, '2025-12-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 68, '2026-01-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 69, '2026-01-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 70, '2026-01-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 71, '2026-02-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 72, '2026-02-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 73, '2026-02-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 74, '2026-03-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 75, '2026-03-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 76, '2026-03-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 77, '2026-04-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 78, '2026-04-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 79, '2026-04-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 80, '2026-05-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 81, '2026-05-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 82, '2026-05-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 83, '2026-06-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 84, '2026-06-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 85, '2026-06-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 86, '2026-07-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 87, '2026-07-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 88, '2026-07-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 89, '2026-08-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 90, '2026-08-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 91, '2026-08-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 92, '2026-09-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 93, '2026-09-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 94, '2026-09-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 95, '2026-10-05');
GO
SELECT * FROM ShedAssignment
GO

SELECT COUNT(*) AS FemaleCattleCount FROM Cattle WHERE GenderID = 2; 
GO

-- Assuming GenderID = 2 for Female in the Cattle table
-- Inserting records into MilkProduction table
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity)
VALUES
    (2, '2023-01-01', 15.5, 1.0),
    (4, '2023-01-02', 18.2, 1.2),
    (7, '2023-01-03', 20.0, 0.5),
    (9, '2023-01-04', 14.8, 0.8),
    (12, '2023-01-05', 22.3, 1.0),
    (14, '2023-01-06', 19.1, 0.7),
    (17, '2023-01-07', 23.5, 1.1),
    (19, '2023-01-08', 21.0, 0.9),
    (22, '2023-01-09', 16.4, 1.0),
    (24, '2023-01-10', 17.5, 1.2),
    (27, '2023-01-11', 18.8, 0.6),
    (29, '2023-01-12', 20.7, 0.8),
    (32, '2023-01-13', 22.2, 1.0),
    (34, '2023-01-14', 19.0, 0.7),
    (37, '2023-01-15', 23.1, 1.3),
    (39, '2023-01-16', 21.5, 0.9),
    (42, '2023-01-17', 20.0, 1.0),
    (44, '2023-01-18', 22.5, 0.8),
    (47, '2023-01-19', 19.3, 1.1),
    (49, '2023-01-20', 21.8, 1.2),
    (52, '2023-01-21', 22.7, 0.7),
    (54, '2023-01-22', 23.0, 1.0),
    (57, '2023-01-23', 20.5, 0.8),
    (59, '2023-01-24', 19.9, 1.1),
    (62, '2023-01-25', 21.7, 1.0),
    (64, '2023-01-26', 22.0, 0.9),
    (67, '2023-01-27', 23.4, 1.2),
    (69, '2023-01-28', 21.2, 0.7),
    (72, '2023-01-29', 20.8, 1.0),
    (74, '2023-01-30', 22.6, 0.8),
    (77, '2023-01-31', 21.1, 1.0),
    (79, '2023-02-01', 20.9, 1.3),
    (82, '2023-02-02', 23.2, 0.9),
    (84, '2023-02-03', 21.4, 1.1),
    (87, '2023-02-04', 20.6, 1.0),
    (89, '2023-02-05', 22.9, 0.8),
    (92, '2023-02-06', 21.3, 1.0),
	(94, '2023-02-05', 22.9, 0.8);
GO

SELECT * FROM MilkProduction
SELECT * FROM Cattle where GenderID= 2
GO
--Truncate Table MilkProduction
--GO


--Inserting data on MilkSales 
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (2, '2024-01-15', 1500.00, 'Rahim Uddin');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (4, '2024-01-18', 1600.00, 'Karim Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (7, '2024-01-20', 1550.00, 'Abdul Hakim');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (9, '2024-01-22', 1650.00, 'Fahim Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (12, '2024-01-25', 1700.00, 'Mokhlesur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (14, '2024-01-28', 1520.00, 'Ayesha Akhter');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (17, '2024-01-30', 1580.00, 'Mustafizur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (19, '2024-02-02', 1600.00, 'Salma Akhter');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (22, '2024-02-05', 1620.00, 'Shamim Hossain');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (24, '2024-02-08', 1570.00, 'Rubel Hossain');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (27, '2024-02-11', 1640.00, 'Jannatul Ferdous');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (29, '2024-02-14', 1680.00, 'Farhana Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (32, '2024-02-17', 1590.00, 'Mahmudul Hasan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (34, '2024-02-20', 1625.00, 'Kamrul Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (37, '2024-02-23', 1675.00, 'Arif Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (39, '2024-02-26', 1650.00, 'Nusrat Jahan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (42, '2024-02-28', 1610.00, 'Fahim Chowdhury');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (44, '2024-03-01', 1670.00, 'Saiful Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (47, '2024-03-03', 1600.00, 'Mehedi Hassan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (49, '2024-03-05', 1690.00, 'Rafiqul Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (52, '2024-03-07', 1700.00, 'Aminul Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (54, '2024-03-10', 1620.00, 'Hasibul Hasan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (57, '2024-03-12', 1680.00, 'Shoriful Alam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (59, '2024-03-14', 1600.00, 'Hasan Mahmud');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (62, '2024-03-16', 1690.00, 'Ferdous Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (64, '2024-03-18', 1720.00, 'Jahid Hasan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (67, '2024-03-20', 1650.00, 'Iqbal Hossain');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (69, '2024-03-22', 1680.00, 'Manzur Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (72, '2024-03-24', 1600.00, 'Naimur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (74, '2024-03-26', 1670.00, 'Rashed Khan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (77, '2024-03-28', 1640.00, 'Mahfuzur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (79, '2024-03-30', 1690.00, 'Kamal Hossain');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (82, '2024-04-01', 1610.00, 'Mostafizur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (84, '2024-04-03', 1700.00, 'Mizanur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (87, '2024-04-05', 1650.00, 'Tariqul Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (89, '2024-04-07', 1720.00, 'Sultan Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (92, '2024-04-09', 1630.00, 'Wasim Akram');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (94, '2024-04-11', 1660.00, 'Shakib Al Hasan');
GO
SELECT * FROM MilkSales
GO
SELECT SUM(SalePrice) AS TotalSalePrice
FROM MilkSales;
GO

-- Assuming we have various breeds and genders
--Inserting VetVisit records
INSERT INTO VetVisits (CattleID, StaffID, VisitDate, VetName, Diagnosis, Treatment, Cost) VALUES 
(1, 11, '2024-01-01', 'Dr. Hafizur Rahman', 'Fever', 'Antibiotics', 500.00),
(2, 12, '2024-01-03', 'Dr. Hafizur Rahman', 'Infection', 'Vaccination', 1500.50),
(3, 13, '2024-01-05', 'Dr. Hafizur Rahman', 'Worms', 'Deworming', 300.00),
(4, 14, '2024-01-07', 'Dr. Hafizur Rahman', 'Mastitis', 'Antibiotics', 800.00),
(5, 15, '2024-01-09', 'Dr. Hafizur Rahman', 'Foot Rot', 'Topical Treatment', 250.00),
(8, 11, '2024-01-15', 'Dr. Hafizur Rahman', 'Pneumonia', 'Antibiotics', 700.00),
(9, 12, '2024-01-17', 'Dr. Hafizur Rahman', 'Lameness', 'Physical Therapy', 500.00),
(10, 13, '2024-01-19', 'Dr. Hafizur Rahman', 'Eye Infection', 'Eye Drops', 300.00),
(11, 14, '2024-01-21', 'Dr. Hafizur Rahman', 'Skin Disease', 'Topical Treatment', 350.00),
(12, 15, '2024-01-23', 'Dr. Hafizur Rahman', 'Anemia', 'Iron Supplements', 550.00),
(15, 11, '2024-01-29', 'Dr. Hafizur Rahman', 'Bloat', 'Antigas', 300.00),
(16, 12, '2024-01-31', 'Dr. Hafizur Rahman', 'Allergy', 'Antihistamines', 350.00),
(17, 13, '2024-02-02', 'Dr. Hafizur Rahman', 'Fever', 'Antipyretics', 500.00),
(18, 14, '2024-02-04', 'Dr. Hafizur Rahman', 'Infection', 'Antibiotics', 600.00),
(19, 15, '2024-02-06', 'Dr. Hafizur Rahman', 'Dehydration', 'IV Fluids', 700.00),
(22, 11, '2024-02-12', 'Dr. Hafizur Rahman', 'Mastitis', 'Antibiotics', 750.00),
(23, 12, '2024-02-14', 'Dr. Hafizur Rahman', 'Fungal Infection', 'Antifungal', 350.00),
(24, 13, '2024-02-16', 'Dr. Hafizur Rahman', 'Foot and Mouth Disease', 'Vaccination', 1000.00),
(25, 14, '2024-02-18', 'Dr. Hafizur Rahman', 'Tick Infestation', 'Pesticides', 400.00);
GO
SELECT * FROM VetVisits
GO

--Inserting data on CattleStatus table
INSERT INTO CattleStatus (CattleID, StatusDate, Status, Description) VALUES 
(1, '2024-01-01', 'Healthy', 'Cattle is in good health'),
(2, '2024-01-03', 'Sick', 'Cattle has a mild fever'),
(3, '2024-01-05', 'Recovered', 'Cattle has recovered from fever'),
(4, '2024-01-07', 'Injured', 'Cattle has a leg injury'),
(5, '2024-01-09', 'Under Treatment', 'Cattle is under treatment for the leg injury'),
(6, '2024-01-11', 'Healthy', 'Cattle is in good health'),
(7, '2024-01-13', 'Sick', 'Cattle has diarrhea'),
(8, '2024-01-15', 'Recovered', 'Cattle has recovered from diarrhea'),
(9, '2024-01-17', 'Healthy', 'Cattle is in good health'),
(10, '2024-01-19', 'Sick', 'Cattle has a cold'),
(11, '2024-01-21', 'Under Treatment', 'Cattle is under treatment for the cold'),
(12, '2024-01-23', 'Healthy', 'Cattle is in good health'),
(13, '2024-01-25', 'Injured', 'Cattle has a minor cut'),
(14, '2024-01-27', 'Under Treatment', 'Cattle is under treatment for the cut'),
(15, '2024-01-29', 'Healthy', 'Cattle is in good health'),
(16, '2024-01-31', 'Sick', 'Cattle has an eye infection'),
(17, '2024-02-02', 'Under Treatment', 'Cattle is under treatment for the eye infection'),
(18, '2024-02-04', 'Recovered', 'Cattle has recovered from the eye infection'),
(19, '2024-02-06', 'Healthy', 'Cattle is in good health'),
(20, '2024-02-08', 'Sick', 'Cattle has a cough'),
(21, '2024-02-10', 'Under Treatment', 'Cattle is under treatment for the cough'),
(22, '2024-02-12', 'Healthy', 'Cattle is in good health'),
(23, '2024-02-14', 'Injured', 'Cattle has a bruised leg'),
(24, '2024-02-16', 'Under Treatment', 'Cattle is under treatment for the bruised leg'),
(25, '2024-02-18', 'Healthy', 'Cattle is in good health');
GO
SELECT * FROM CattleStatus
GO

-- Inserting data into MeatSales table
INSERT INTO MeatSales (CattleID, Quantity, UnitPrice, SaleDate, BuyerName) VALUES 
(22, 300.00, 520.00, '2024-05-03', 'Karim Ahmed'),
(34, 320.00, 530.00, '2024-05-07', 'Fahim Rahman'),
(25, 290.00, 515.00, '2024-05-09', 'Mokhlesur Rahman');

INSERT INTO MeatSales (CattleID, Quantity, UnitPrice, SaleDate, BuyerName) VALUES 
(23, 260.00, 500.00, '2024-05-13', 'Karim Ullah'),
(20, 315.00, 530.00, '2024-05-19', 'Rubel Hossain');

INSERT INTO MeatSales (CattleID, Quantity, UnitPrice, SaleDate, BuyerName) VALUES 
(42, 305.00, 520.00, '2024-05-23', 'Farhana Ahmed'),
(44, 310.00, 530.00, '2024-05-27', 'Kamrul Islam');
GO
SELECT * FROM MeatSales

-- Using CattleID from the Cattle table
INSERT INTO Fertilizer (CattleID, CollectionDate, Quantity, UsageType) VALUES 
(1, '2024-06-01', 50.00, 'Agriculture'),
(2, '2024-06-03', 45.00, 'Gardening'),
(3, '2024-06-05', 55.00, 'Agriculture'),
(4, '2024-06-07', 60.00, 'Farming'),
(5, '2024-06-09', 50.00, 'Horticulture'),
(6, '2024-06-11', 48.00, 'Agriculture'),
(7, '2024-06-13', 52.00, 'Gardening'),
(8, '2024-06-15', 46.00, 'Farming'),
(9, '2024-06-17', 58.00, 'Agriculture'),
(10, '2024-06-19', 54.00, 'Horticulture');

INSERT INTO Fertilizer (CattleID, CollectionDate, Quantity, UsageType) VALUES 
(21, '2024-06-21', 49.00, 'Gardening'),
(22, '2024-06-23', 53.00, 'Agriculture'),
(23, '2024-06-25', 56.00, 'Farming'),
(24, '2024-06-27', 47.00, 'Agriculture'),
(25, '2024-06-29', 59.00, 'Horticulture'),
(26, '2024-07-01', 51.00, 'Gardening'),
(27, '2024-07-03', 50.00, 'Agriculture'),
(28, '2024-07-05', 55.00, 'Farming'),
(29, '2024-07-07', 45.00, 'Agriculture'),
(30, '2024-07-09', 52.00, 'Horticulture');

INSERT INTO Fertilizer (CattleID, CollectionDate, Quantity, UsageType) VALUES 
(11, '2024-07-11', 54.00, 'Gardening'),
(12, '2024-07-13', 48.00, 'Agriculture'),
(13, '2024-07-15', 57.00, 'Farming'),
(14, '2024-07-17', 46.00, 'Agriculture'),
(15, '2024-07-19', 50.00, 'Horticulture'),
(16, '2024-07-21', 55.00, 'Gardening'),
(17, '2024-07-23', 53.00, 'Agriculture'),
(18, '2024-07-25', 49.00, 'Farming'),
(19, '2024-07-27', 56.00, 'Agriculture'),
(20, '2024-07-29', 51.00, 'Horticulture');

INSERT INTO Fertilizer (CattleID, CollectionDate, Quantity, UsageType) VALUES 
(31, '2024-08-01', 50.00, 'Gardening'),
(32, '2024-08-03', 47.00, 'Agriculture'),
(33, '2024-08-05', 58.00, 'Farming'),
(34, '2024-08-07', 54.00, 'Agriculture'),
(35, '2024-08-09', 55.00, 'Horticulture');

GO
SELECT * FROM Fertilizer
GO

-- Inserting data into Revenue table
INSERT INTO Revenue (RevenueDate, RevenueAmount, Description) VALUES 
('2024-01-01', 15000.00, 'Milk Sales'),
('2024-01-03', 20000.00, 'Meat Sales'),
('2024-01-05', 10000.00, 'Fertilizer Sales'),
('2024-01-07', 12000.00, 'Vet Services'),
('2024-01-09', 18000.00, 'Shed Rentals');


INSERT INTO Revenue (RevenueDate, RevenueAmount, Description) VALUES 
('2024-01-11', 16000.00, 'Milk Sales'),
('2024-01-13', 22000.00, 'Meat Sales'),
('2024-01-15', 10500.00, 'Fertilizer Sales'),
('2024-01-17', 12500.00, 'Vet Services'),
('2024-01-19', 18500.00, 'Shed Rentals');

INSERT INTO Revenue (RevenueDate, RevenueAmount, Description) VALUES 
('2024-01-21', 15500.00, 'Milk Sales'),
('2024-01-23', 21000.00, 'Meat Sales'),
('2024-01-25', 11000.00, 'Fertilizer Sales'),
('2024-01-27', 13000.00, 'Vet Services'),
('2024-01-29', 17500.00, 'Shed Rentals');

INSERT INTO Revenue (RevenueDate, RevenueAmount, Description) VALUES 
('2024-01-31', 16500.00, 'Milk Sales'),
('2024-02-01', 22500.00, 'Meat Sales'),
('2024-02-03', 12000.00, 'Fertilizer Sales'),
('2024-02-05', 14000.00, 'Vet Services'),
('2024-02-07', 19000.00, 'Shed Rentals');

INSERT INTO Revenue (RevenueDate, RevenueAmount, Description) VALUES 
('2024-02-09', 17500.00, 'Milk Sales'),
('2024-02-11', 23000.00, 'Meat Sales'),
('2024-02-13', 11500.00, 'Fertilizer Sales'),
('2024-02-15', 13500.00, 'Vet Services'),
('2024-02-17', 19500.00, 'Shed Rentals');
GO
SELECT * FROM Revenue
GO


-- Inserting data into Expenses table
INSERT INTO Expenses (StaffID, ExpenseDate, ExpenseAmount, Description) VALUES 
(9, '2024-01-01', 1500.00, 'Purchase of feed'),
(11, '2024-01-03', 1200.00, 'Veterinary supplies'),
(15, '2024-01-05', 1800.00, 'Shed maintenance'),
(8, '2024-01-07', 2000.00, 'Medical expenses'),
(6, '2024-01-09', 1100.00, 'Transport costs');

INSERT INTO Expenses (StaffID, ExpenseDate, ExpenseAmount, Description) VALUES 
(15, '2024-01-11', 1600.00, 'Purchase of equipment'),
(4, '2024-01-13', 1300.00, 'Utility bills'),
(14, '2024-01-15', 1400.00, 'Fertilizer costs'),
(4, '2024-01-19', 1500.00, 'Salary expenses');

INSERT INTO Expenses (StaffID, ExpenseDate, ExpenseAmount, Description) VALUES 
(9, '2024-01-21', 1900.00, 'Feed supplements'),
(12, '2024-01-23', 1150.00, 'Insurance costs'),
(12, '2024-01-25', 2000.00, 'Repair costs'),
(15, '2024-01-27', 1750.00, 'Purchase of seeds'),
(13, '2024-01-29', 1600.00, 'Advertisement costs');

INSERT INTO Expenses (StaffID, ExpenseDate, ExpenseAmount, Description) VALUES 
(7, '2024-01-31', 1450.00, 'Cleaning supplies'),
(14, '2024-02-01', 1800.00, 'Office supplies'),
(14, '2024-02-03', 1700.00, 'Fuel costs'),
(4, '2024-02-05', 1650.00, 'Veterinary fees');

INSERT INTO Expenses (StaffID, ExpenseDate, ExpenseAmount, Description) VALUES 
(15, '2024-02-09', 1300.00, 'Utility bills'),
(15, '2024-02-11', 1950.00, 'Equipment maintenance'),
(15, '2024-02-13', 1450.00, 'Shed repairs'),
(15, '2024-02-15', 1850.00, 'Farm machinery fuel'),
(9, '2024-02-17', 1750.00, 'Purchase of feed');
GO
SELECT * FROM Expenses
GO


-- Insert queries for AuditTable
INSERT INTO AuditTable (Action, PartnerID, ActionDate, Description)
VALUES 
    ('INSERT', 1, '2023-01-01', 'Inserted new partner record'),
    ('UPDATE', 2, '2023-01-02', 'Updated contact information for partner'),
    ('DELETE', 3, '2023-01-03', 'Deleted partner record'),
    ('INSERT', 4, '2023-01-04', 'Inserted new partner record'),
    ('UPDATE', 5, '2023-01-05', 'Updated partnership date for partner');
GO
SELECT * FROM AuditTable
GO


--=================================
--========= TRANSACTION ===========
--=================================
BEGIN TRANSACTION;

UPDATE Cattle
SET Breed = 'Updated Breed'
WHERE CattleID = 1;

SAVE TRANSACTION SavePoint1;

INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity)
VALUES (1, '2023-01-01', 20.5, 1.0);

SAVE TRANSACTION SavePoint2;

IF (SELECT COUNT(*) FROM Cattle WHERE Breed = 'Updated Breed') = 0
BEGIN
    ROLLBACK TRANSACTION SavePoint1;
END
ELSE
BEGIN
    COMMIT;
END;
GO

--=================================
--============= CTE ===============
--=================================
-- Creating a CTE to calculate average milk production per cattle breed
WITH BreedMilkProduction AS (
    SELECT 
        c.Breed,
        mp.ProductionDate,
        mp.Quantity
    FROM 
        Cattle c
    INNER JOIN 
        MilkProduction mp ON c.CattleID = mp.CattleID
)
-- Using the CTE to get the results
SELECT 
    Breed,
    AVG(Quantity) AS AverageMilkProduced
FROM 
    BreedMilkProduction
GROUP BY 
    Breed;
GO

--=========================================================================
--============== Some == FUNCTIONS == are == given == below ===============
--=========================================================================
-- Scalar Functions Example
SELECT LEN(PartnerName) AS NameLength, 
	   SUBSTRING(ContactInfo, 1, 10) AS ContactSnippet
FROM Partners;

-- Aggregate Functions Example
SELECT SUM(Salary) AS TotalSalary, 
	   AVG(Salary) AS AverageSalary, 
	   MIN(Salary) AS MinSalary, 
	   MAX(Salary) AS MaxSalary, 
	   COUNT(StaffID) AS TotalStaff
FROM Staff;

-- Date And Time Functions Example
SELECT GETDATE() AS CurrentDateTime, 
DATEADD(YEAR, 1, GETDATE()) AS NextYear, 
DATEDIFF(DAY, PartnershipDate, GETDATE()) AS DaysSincePartnership
FROM Partners;

-- String Functions Example
SELECT REPLACE(ContactInfo, '-', '') AS CleanedContact, 
REVERSE(PartnerName) AS ReversedName, 
LTRIM(RTRIM(PartnerName)) AS TrimmedName
FROM Partners;

-- Math Functions Example
SELECT ROUND(Salary, 2) AS RoundedSalary, 
ABS(Salary) AS AbsoluteSalary, 
CEILING(Salary) AS CeilingSalary, 
FLOOR(Salary) AS FloorSalary
FROM Staff;

-- Grouping Functions Example
SELECT Designation, SUM(Salary) AS TotalSalary
FROM Staff
GROUP BY Designation
HAVING SUM(Salary) > 50000;

-- Window Functions Example
SELECT StaffID, Salary,
       ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum,
       RANK() OVER (ORDER BY Salary DESC) AS Rank,
       DENSE_RANK() OVER (ORDER BY Salary DESC) AS DenseRank,
       LEAD(Salary, 1, 0) OVER (ORDER BY Salary DESC) AS NextSalary,
       LAG(Salary, 1, 0) OVER (ORDER BY Salary DESC) AS PreviousSalary
FROM Staff;


--==========================================
--======= Stored Procedure Execution =======
--==========================================
-- Creating a new partner
EXEC sp_CRUD_Partners 'CREATE', NULL, 'John Smith', 'john.smith@example.com', '2023-11-26';
GO
-- Reading a partner's details
EXEC sp_CRUD_Partners 'READ', 1;
GO
-- Updating a partner's details
EXEC sp_CRUD_Partners 'UPDATE', 1, 'John Doe', 'john.doe@newdomain.com', '2023-11-27';
GO
-- Deleting a partner
EXEC sp_CRUD_Partners 'DELETE', 1;
GO


--==========================================
--=========== FUNCTION Execution ===========
--==========================================
--SCALAR FUNCTION
SELECT dbo.fn_CalculateAge('2020-01-01') AS Age;
GO

-- Table-Valued FUNCTION 
SELECT * FROM dbo.fn_GetPartnerDetails('John Doe');
GO

-- Multi-Statement Table-Valued FUNCTION
SELECT * FROM dbo.fn_GetPartnerRevenue(1);
GO
