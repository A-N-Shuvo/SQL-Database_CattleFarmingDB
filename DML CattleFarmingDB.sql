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
DELETE FROM Cattle WHERE CattleID between 96 and 190
GO

-- Inserting data into Shed table
-- Inserting data into ShedAssignment table starting with CattleID 191

INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 191, '2024-01-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 192, '2024-01-18');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 193, '2024-02-22');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 194, '2024-03-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 195, '2024-03-12');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 196, '2024-04-04');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 197, '2024-04-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 198, '2024-04-28');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 199, '2024-05-10');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 200, '2024-05-20');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 201, '2024-06-01');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 202, '2024-06-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 203, '2024-06-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 204, '2024-07-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 205, '2024-07-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 206, '2024-07-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 207, '2024-08-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 208, '2024-08-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 209, '2024-08-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 210, '2024-09-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 211, '2024-09-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 212, '2024-09-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 213, '2024-10-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 214, '2024-10-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 215, '2024-10-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 216, '2024-11-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 217, '2024-11-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 218, '2024-11-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 219, '2024-12-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 220, '2024-12-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 221, '2024-12-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 222, '2025-01-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 223, '2025-01-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 224, '2025-01-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 225, '2025-02-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 226, '2025-02-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 227, '2025-02-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 228, '2025-03-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 229, '2025-03-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 230, '2025-03-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 231, '2025-04-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 232, '2025-04-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 233, '2025-04-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 234, '2025-05-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 235, '2025-05-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 236, '2025-05-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 237, '2025-06-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 238, '2025-06-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 239, '2025-06-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 240, '2025-07-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 241, '2025-07-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 242, '2025-07-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 243, '2025-08-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 244, '2025-08-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 245, '2025-08-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 246, '2025-09-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 247, '2025-09-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 248, '2025-09-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 249, '2025-10-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 250, '2025-10-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 251, '2025-10-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 252, '2025-11-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 253, '2025-11-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 254, '2025-11-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 255, '2025-12-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 256, '2025-12-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 257, '2025-12-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 258, '2026-01-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 259, '2026-01-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 260, '2026-01-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 261, '2026-02-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 262, '2026-02-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 263, '2026-02-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 264, '2026-03-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 265, '2026-03-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 266, '2026-03-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 267, '2026-04-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 268, '2026-04-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 269, '2026-04-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 270, '2026-05-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 271, '2026-05-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 272, '2026-05-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 273, '2026-06-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 274, '2026-06-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 275, '2026-06-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 276, '2026-07-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 277, '2026-07-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 278, '2026-07-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 279, '2026-08-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 280, '2026-08-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 281, '2026-08-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 282, '2026-09-05');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (1, 283, '2026-09-15');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (2, 284, '2026-09-25');
INSERT INTO ShedAssignment (ShedID, CattleID, AssignmentDate) VALUES (3, 285, '2026-10-05');
GO
SELECT * FROM ShedAssignment
GO

SELECT COUNT(*) AS FemaleCattleCount FROM Cattle WHERE GenderID = 2; 
GO

-- Assuming GenderID = 2 for Female in the Cattle table
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (192, '2024-01-01', 50.00, 5.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (194, '2024-01-03', 60.00, 3.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (197, '2024-01-07', 65.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (199, '2024-01-09', 70.00, 1.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (202, '2024-01-11', 52.00, 2.50);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (204, '2024-01-13', 58.00, 3.50);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (207, '2024-01-17', 63.00, 3.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (209, '2024-01-19', 59.00, 1.50);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (212, '2024-01-21', 66.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (214, '2024-01-23', 68.00, 3.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (217, '2024-01-25', 57.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (219, '2024-01-27', 62.00, 4.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (222, '2024-01-29', 69.00, 1.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (224, '2024-01-31', 70.00, 5.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (227, '2024-02-02', 58.00, 4.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (229, '2024-02-02', 58.00, 4.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (232, '2024-02-04', 65.00, 3.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (234, '2024-02-06', 60.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (237, '2024-02-16', 59.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (239, '2024-02-18', 70.00, 1.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (242, '2024-02-20', 64.00, 4.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (244, '2024-02-22', 67.00, 3.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (247, '2024-02-24', 71.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (249, '2024-02-26', 73.00, 1.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (252, '2024-02-28', 69.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (254, '2024-03-04', 72.00, 4.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (257, '2024-03-08', 68.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (259, '2024-03-10', 74.00, 3.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (262, '2024-03-12', 66.00, 4.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (264, '2024-03-14', 61.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (267, '2024-03-16', 67.00, 1.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (269, '2024-03-20', 65.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (272, '2024-03-22', 70.00, 4.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (274, '2024-03-24', 74.00, 1.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (277, '2024-03-26', 60.00, 3.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (279, '2024-03-28', 71.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (282, '2024-04-01', 69.00, 2.00);
INSERT INTO MilkProduction (CattleID, ProductionDate, Quantity, WasteQuantity) VALUES (284, '2024-04-03', 68.00, 4.00);
GO
SELECT * FROM MilkProduction
Truncate Table MilkProduction
GO
SELECT * FROM Cattle where GenderID= 2
GO

--Inserting data on MilkSales 
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (192, '2024-01-15', 1500.00, 'Rahim Uddin');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (194, '2024-01-18', 1600.00, 'Karim Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (197, '2024-01-20', 1550.00, 'Abdul Hakim');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (199, '2024-01-22', 1650.00, 'Fahim Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (202, '2024-01-25', 1700.00, 'Mokhlesur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (204, '2024-01-28', 1520.00, 'Ayesha Akhter');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (207, '2024-01-30', 1580.00, 'Mustafizur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (209, '2024-02-02', 1600.00, 'Salma Akhter');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (212, '2024-02-05', 1620.00, 'Shamim Hossain');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (214, '2024-02-08', 1570.00, 'Rubel Hossain');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (217, '2024-02-11', 1640.00, 'Jannatul Ferdous');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (219, '2024-02-14', 1680.00, 'Farhana Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (222, '2024-02-17', 1590.00, 'Mahmudul Hasan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (224, '2024-02-20', 1625.00, 'Kamrul Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (227, '2024-02-23', 1675.00, 'Arif Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (229, '2024-02-26', 1650.00, 'Nusrat Jahan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (232, '2024-02-28', 1610.00, 'Fahim Chowdhury');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (234, '2024-03-01', 1670.00, 'Saiful Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (237, '2024-03-03', 1600.00, 'Mehedi Hassan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (239, '2024-03-05', 1690.00, 'Rafiqul Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (242, '2024-03-07', 1700.00, 'Aminul Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (244, '2024-03-10', 1620.00, 'Hasibul Hasan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (247, '2024-03-12', 1680.00, 'Shoriful Alam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (249, '2024-03-14', 1600.00, 'Hasan Mahmud');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (252, '2024-03-16', 1690.00, 'Ferdous Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (254, '2024-03-18', 1720.00, 'Jahid Hasan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (257, '2024-03-20', 1650.00, 'Iqbal Hossain');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (259, '2024-03-22', 1680.00, 'Manzur Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (262, '2024-03-24', 1600.00, 'Naimur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (264, '2024-03-26', 1670.00, 'Rashed Khan');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (267, '2024-03-28', 1640.00, 'Mahfuzur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (269, '2024-03-30', 1690.00, 'Kamal Hossain');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (272, '2024-04-01', 1610.00, 'Mostafizur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (274, '2024-04-03', 1700.00, 'Mizanur Rahman');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (277, '2024-04-05', 1650.00, 'Tariqul Islam');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (279, '2024-04-07', 1720.00, 'Sultan Ahmed');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (282, '2024-04-09', 1630.00, 'Wasim Akram');
INSERT INTO MilkSales (CattleID, SaleDate, SalePrice, BuyerName) VALUES (284, '2024-04-11', 1660.00, 'Shakib Al Hasan');
GO
SELECT * FROM MilkSales
GO
SELECT SUM(SalePrice) AS TotalSalePrice
FROM MilkSales;
GO

-- Assuming we have various breeds and genders
--Inserting VetVisit records
INSERT INTO VetVisits (CattleID, StaffID, VisitDate, VetName, Diagnosis, Treatment, Cost) VALUES 
(191, 11, '2024-01-01', 'Dr. Hafizur Rahman', 'Fever', 'Antibiotics', 500.00),
(192, 12, '2024-01-03', 'Dr. Hafizur Rahman', 'Infection', 'Vaccination', 1500.50),
(193, 13, '2024-01-05', 'Dr. Hafizur Rahman', 'Worms', 'Deworming', 300.00),
(194, 14, '2024-01-07', 'Dr. Hafizur Rahman', 'Mastitis', 'Antibiotics', 800.00),
(195, 15, '2024-01-09', 'Dr. Hafizur Rahman', 'Foot Rot', 'Topical Treatment', 250.00),
(198, 11, '2024-01-15', 'Dr. Hafizur Rahman', 'Pneumonia', 'Antibiotics', 700.00),
(199, 12, '2024-01-17', 'Dr. Hafizur Rahman', 'Lameness', 'Physical Therapy', 500.00),
(200, 13, '2024-01-19', 'Dr. Hafizur Rahman', 'Eye Infection', 'Eye Drops', 300.00),
(201, 14, '2024-01-21', 'Dr. Hafizur Rahman', 'Skin Disease', 'Topical Treatment', 350.00),
(202, 15, '2024-01-23', 'Dr. Hafizur Rahman', 'Anemia', 'Iron Supplements', 550.00),
(205, 11, '2024-01-29', 'Dr. Hafizur Rahman', 'Bloat', 'Antigas', 300.00),
(206, 12, '2024-01-31', 'Dr. Hafizur Rahman', 'Allergy', 'Antihistamines', 350.00),
(207, 13, '2024-02-02', 'Dr. Hafizur Rahman', 'Fever', 'Antipyretics', 500.00),
(208, 14, '2024-02-04', 'Dr. Hafizur Rahman', 'Infection', 'Antibiotics', 600.00),
(209, 15, '2024-02-06', 'Dr. Hafizur Rahman', 'Dehydration', 'IV Fluids', 700.00),
(212, 11, '2024-02-12', 'Dr. Hafizur Rahman', 'Mastitis', 'Antibiotics', 750.00),
(213, 12, '2024-02-14', 'Dr. Hafizur Rahman', 'Fungal Infection', 'Antifungal', 350.00),
(214, 13, '2024-02-16', 'Dr. Hafizur Rahman', 'Foot and Mouth Disease', 'Vaccination', 1000.00),
(215, 14, '2024-02-18', 'Dr. Hafizur Rahman', 'Tick Infestation', 'Pesticides', 400.00);
GO
SELECT * FROM VetVisits
GO

--Inserting data on CattleStatus table
INSERT INTO CattleStatus (CattleID, StatusDate, Status, Description) VALUES 
(191, '2024-01-01', 'Healthy', 'Cattle is in good health'),
(192, '2024-01-03', 'Sick', 'Cattle has a mild fever'),
(193, '2024-01-05', 'Recovered', 'Cattle has recovered from fever'),
(194, '2024-01-07', 'Injured', 'Cattle has a leg injury'),
(195, '2024-01-09', 'Under Treatment', 'Cattle is under treatment for the leg injury'),
(196, '2024-01-11', 'Healthy', 'Cattle is in good health'),
(197, '2024-01-13', 'Sick', 'Cattle has diarrhea'),
(198, '2024-01-15', 'Recovered', 'Cattle has recovered from diarrhea'),
(199, '2024-01-17', 'Healthy', 'Cattle is in good health'),
(200, '2024-01-19', 'Sick', 'Cattle has a cold'),
(201, '2024-01-21', 'Under Treatment', 'Cattle is under treatment for the cold'),
(202, '2024-01-23', 'Healthy', 'Cattle is in good health'),
(203, '2024-01-25', 'Injured', 'Cattle has a minor cut'),
(204, '2024-01-27', 'Under Treatment', 'Cattle is under treatment for the cut'),
(205, '2024-01-29', 'Healthy', 'Cattle is in good health'),
(206, '2024-01-31', 'Sick', 'Cattle has an eye infection'),
(207, '2024-02-02', 'Under Treatment', 'Cattle is under treatment for the eye infection'),
(208, '2024-02-04', 'Recovered', 'Cattle has recovered from the eye infection'),
(209, '2024-02-06', 'Healthy', 'Cattle is in good health'),
(210, '2024-02-08', 'Sick', 'Cattle has a cough'),
(211, '2024-02-10', 'Under Treatment', 'Cattle is under treatment for the cough'),
(212, '2024-02-12', 'Healthy', 'Cattle is in good health'),
(213, '2024-02-14', 'Injured', 'Cattle has a bruised leg'),
(214, '2024-02-16', 'Under Treatment', 'Cattle is under treatment for the bruised leg'),
(215, '2024-02-18', 'Healthy', 'Cattle is in good health');
GO
SELECT * FROM CattleStatus
GO

-- Inserting data into MeatSales table
INSERT INTO MeatSales (CattleID, Quantity, UnitPrice, SaleDate, BuyerName) VALUES 
(232, 300.00, 520.00, '2024-05-03', 'Karim Ahmed'),
(234, 320.00, 530.00, '2024-05-07', 'Fahim Rahman'),
(235, 290.00, 515.00, '2024-05-09', 'Mokhlesur Rahman');

INSERT INTO MeatSales (CattleID, Quantity, UnitPrice, SaleDate, BuyerName) VALUES 
(237, 260.00, 500.00, '2024-05-13', 'Karim Ullah'),
(240, 315.00, 530.00, '2024-05-19', 'Rubel Hossain');

INSERT INTO MeatSales (CattleID, Quantity, UnitPrice, SaleDate, BuyerName) VALUES 
(242, 305.00, 520.00, '2024-05-23', 'Farhana Ahmed'),
(244, 310.00, 530.00, '2024-05-27', 'Kamrul Islam');
GO
SELECT * FROM MeatSales

-- Using CattleID from the Cattle table
INSERT INTO Fertilizer (CattleID, CollectionDate, Quantity, UsageType) VALUES 
(191, '2024-06-01', 50.00, 'Agriculture'),
(192, '2024-06-03', 45.00, 'Gardening'),
(193, '2024-06-05', 55.00, 'Agriculture'),
(194, '2024-06-07', 60.00, 'Farming'),
(195, '2024-06-09', 50.00, 'Horticulture'),
(196, '2024-06-11', 48.00, 'Agriculture'),
(197, '2024-06-13', 52.00, 'Gardening'),
(198, '2024-06-15', 46.00, 'Farming'),
(199, '2024-06-17', 58.00, 'Agriculture'),
(200, '2024-06-19', 54.00, 'Horticulture');

INSERT INTO Fertilizer (CattleID, CollectionDate, Quantity, UsageType) VALUES 
(201, '2024-06-21', 49.00, 'Gardening'),
(202, '2024-06-23', 53.00, 'Agriculture'),
(203, '2024-06-25', 56.00, 'Farming'),
(204, '2024-06-27', 47.00, 'Agriculture'),
(205, '2024-06-29', 59.00, 'Horticulture'),
(206, '2024-07-01', 51.00, 'Gardening'),
(207, '2024-07-03', 50.00, 'Agriculture'),
(208, '2024-07-05', 55.00, 'Farming'),
(209, '2024-07-07', 45.00, 'Agriculture'),
(210, '2024-07-09', 52.00, 'Horticulture');

INSERT INTO Fertilizer (CattleID, CollectionDate, Quantity, UsageType) VALUES 
(211, '2024-07-11', 54.00, 'Gardening'),
(212, '2024-07-13', 48.00, 'Agriculture'),
(213, '2024-07-15', 57.00, 'Farming'),
(214, '2024-07-17', 46.00, 'Agriculture'),
(215, '2024-07-19', 50.00, 'Horticulture'),
(216, '2024-07-21', 55.00, 'Gardening'),
(217, '2024-07-23', 53.00, 'Agriculture'),
(218, '2024-07-25', 49.00, 'Farming'),
(219, '2024-07-27', 56.00, 'Agriculture'),
(220, '2024-07-29', 51.00, 'Horticulture');

INSERT INTO Fertilizer (CattleID, CollectionDate, Quantity, UsageType) VALUES 
(221, '2024-08-01', 50.00, 'Gardening'),
(222, '2024-08-03', 47.00, 'Agriculture'),
(223, '2024-08-05', 58.00, 'Farming'),
(224, '2024-08-07', 54.00, 'Agriculture'),
(225, '2024-08-09', 55.00, 'Horticulture');

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
