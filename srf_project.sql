create database SRFPROJECT
use SRFPROJECT

CREATE TABLE studentInformation (
    std_id INT PRIMARY KEY,
    std_FirstName VARCHAR(90),
    std_LastName VARCHAR(90),
    std_phno BIGINT,
    std_class VARCHAR(121),
    std_gender VARCHAR(121),
    std_blood VARCHAR(223),
    std_dob DATE,
    std_address VARCHAR(232),
    std_religion VARCHAR(121),
    std_fatherph BIGINT,
    std_motherph BIGINT,
    stud_photo VARBINARY(MAX),
    std_email TEXT,
    std_city VARCHAR(121),
    std_zipcode BIGINT,
    std_addhar VARCHAR(211),
    std_applicationno VARCHAR(232),
    std_registerno VARCHAR(232),
    std_caste VARCHAR(232),
    std_subcaste VARCHAR(999),
    std_minority VARCHAR(121),
    std_doj DATE,
	std_fee_category VARCHAR(255), 
	std_Admno VARCHAR(255),  
    std_exam_roll_no VARCHAR(255), 
    std_exam_reg_no VARCHAR(255),  
    std_photoUpload VARBINARY(MAX),
    std_parentRelation VARCHAR(20),
    std_parentFirstName VARCHAR(50),
    std_parentMiddleName VARCHAR(50),
    std_parentLastName VARCHAR(50),
    std_parentMobileNumber VARCHAR(15),
    std_parentEmail VARCHAR(100),
    std_primaryContact VARCHAR(20),
    std_primaryFirstName VARCHAR(50),
    std_primaryMiddleName VARCHAR(50),
    std_primaryLastName VARCHAR(50),
    std_primaryMobileNumber VARCHAR(15),
    std_primaryEmail VARCHAR(100),
    std_secondaryContact VARCHAR(20),
    std_secondaryFirstName VARCHAR(50),
    std_secondaryMiddleName VARCHAR(50),
    std_secondaryLastName VARCHAR(50),
    std_secondaryMobileNumber VARCHAR(15),
    std_secondaryEmail VARCHAR(100),
    std_birthdocType VARCHAR(50),
	std_birth VARBINARY(MAX),
    std_birthdocNumber VARCHAR(50),
    std_birthissueDate DATE,
    std_birthexpiryDate DATE,
	std_comunity VARBINARY(MAX),
	std_comudocType VARCHAR(50),
	std_commuissueDate DATE,
    std_commuexpiryDate DATE,
	std_allergies TEXT,             
    std_medication TEXT,            
    std_healthCondition TEXT,       
    std_height INT,                 
    std_weight INT,                 
    std_mealPreference VARCHAR(20), 
    std_foodAllergies TEXT,        
    std_preferredBeverage VARCHAR(20), 
    std_specialInstructions TEXT,
	sibling_Name VARCHAR(255),      
    sibling_Age INT,               
    sibling_Gender VARCHAR(20),     
    school_college_Name VARCHAR(255), 
    standard_course_Name VARCHAR(255)
);

drop table studentInformation
 

INSERT INTO studentInformation (
    std_id, std_FirstName, std_LastName, std_phno, std_class, std_gender, std_blood, std_dob, std_address,
    std_religion, std_fatherph, std_motherph, std_birth, std_comunity, stud_photo, std_email, std_city,
    std_zipcode, std_addhar, std_applicationno, std_registerno, std_caste, std_subcaste, std_minority, std_doj,
    std_fee_category, std_exam_roll_no, std_exam_reg_no, std_photoUpload, std_parentRelation, std_parentFirstName,
    std_parentMiddleName, std_parentLastName, std_parentMobileNumber, std_parentEmail, std_primaryContact,
    std_primaryFirstName, std_primaryMiddleName, std_primaryLastName, std_primaryMobileNumber, std_primaryEmail,
    std_secondaryContact, std_secondaryFirstName, std_secondaryMiddleName, std_secondaryLastName,
    std_secondaryMobileNumber, std_secondaryEmail,std_allergies, std_medication, std_healthCondition, std_height, std_weight, std_mealPreference,
    std_foodAllergies, std_preferredBeverage, std_specialInstructions, sibling_Name, sibling_Age, sibling_Gender,
    school_college_Name, standard_course_Name,std_Admno,std_birthdocType,std_birthdocNumber,std_birthissueDate,
	std_birthexpiryDate
) VALUES		
    (
    1, 'John', 'Doe', 1234567890, 'XI-A', 'Male', 'O+', '2005-08-15', '123 Main St',
    'Christian', 9876543210, 8765432109, NULL, NULL, NULL, 'john@example.com', 'New York',
    12345, '1234 5678 9012', 'APP2023001', 'REG2023001', 'General', 'CasteA', 'No', '2023-08-22',
    'General', '123456', '789012', NULL, 'Father', 'Michael', 'J', 'Doe Sr.', '9876543210', 'michael@example.com',
    'Father', 'Michael', 'J', 'Doe Sr.', '9876543210', 'michael@example.com', 'Mother', 'Jane', 'M', 'Doe Sr.',
    '9876543211', 'jane@example.com',
    'Peanut allergy', 'None', 'Asthma', 170, 65, 'Vegetarian', 'None', 'Water', 'None', 'James', 15, 'Male',
    'High School', '10th Grade',4567,'Null',1234,'2010-01-01','2050-01-01'
);
    
INSERT INTO studentInformation (
    std_id, std_FirstName, std_LastName, std_phno, std_class, std_gender, std_blood, std_dob,
    std_address, std_religion, std_fatherph, std_motherph, stud_photo, std_email, std_city,
    std_zipcode, std_addhar, std_applicationno, std_registerno, std_caste, std_subcaste,
    std_minority, std_doj, std_fee_category, std_Admno, std_exam_roll_no, std_exam_reg_no,
    std_photoUpload, std_parentRelation, std_parentFirstName, std_parentMiddleName,
    std_parentLastName, std_parentMobileNumber, std_parentEmail, std_primaryContact,
    std_primaryFirstName, std_primaryMiddleName, std_primaryLastName, std_primaryMobileNumber,
    std_primaryEmail, std_secondaryContact, std_secondaryFirstName, std_secondaryMiddleName,
    std_secondaryLastName, std_secondaryMobileNumber, std_secondaryEmail, std_birthdocType,
    std_birth, std_birthdocNumber, std_birthissueDate, std_birthexpiryDate, std_comunity,
    std_comudocType, std_commuissueDate, std_commuexpiryDate, std_allergies,
    std_medication, std_healthCondition, std_height, std_weight, std_mealPreference,
    std_foodAllergies, std_preferredBeverage, std_specialInstructions,
    sibling_Name, sibling_Age, sibling_Gender, school_college_Name, standard_course_Name
)
VALUES

    (2, 'John', 'Doe', 1234567890, 'XI-B', 'Male', 'O+', '2005-01-15', '123 Main St',
    'Christian', 9876543210, 9876543211, 0x0123456789ABCDEF, 'john@example.com', 'Cityville',
    123456, '123456789012', 'APP123456', 'REG987654', 'BC', 'SubCaste1', 'No',
    '2023-08-01', 'General', '4237', 'EROLL001', 'EREG001', 0x9876543210ABCDEF,
    'Father', 'Mark', 'James', 'Doe', '9876543212', 'mark@example.com', 'Father',
    'Mark', 'James', 'Doe', '9876543212', 'mark@example.com', 'Mother', 'Alice',
    'Eve', 'Doe', '9876543213', 'alice@example.com', 'BirthCert', 0x0123456789ABCDEF,
    'BC123456', '2020-01-01', '2030-01-01', 0xABCDEF0123456789, 'CommunityDoc', '2020-01-15',
    '2030-01-15', 'No allergies', 'None', 'Good', 160, 60, 'Vegetarian', 'None', 'Water',
    'Special instructions for John', 'Jane', 12, 'Female', 'ABC School', 'Grade 6'),

    (3, 'Jane', 'Smith', 9876543210, 'XII-A', 'Female', 'A-', '2007-03-22', '456 Elm St',
    'Hindu', 8765432109, 8765432108, 0xFEDCBA9876543210, 'jane@example.com', 'Towndale',
    654321, '987654321023', 'APP987654', 'REG123456', 'SC', 'SubCaste2', 'Yes',
    '2023-08-02', 'Term Wise', '4367', 'EROLL002', 'EREG002', 0xFEDCBA9876543210,
    'Mother', 'Linda', 'Marie', 'Smith', '8765432107', 'linda@example.com', 'Guardian',
    'Michael', 'William', 'Johnson', '7654321098', 'michael@example.com', 'Father', 'George',
    'Robert', 'Smith', '7654321099', 'george@example.com', 'Passport', 0xFEDCBA9876543210,
    'PASS654321', '2019-05-10', '2029-05-10', 0x0123456789ABCDEF, 'None', '2022-06-01',
    '2022-12-01', 'Mild allergies', 'Pills as needed', 'Stable', 150, 45, 'Non-Vegetarian',
    'Dairy', 'Juice', 'Special instructions for Jane', 'Alex', 10, 'Male', 'XYZ School', 'Grade 5');

select * from studentInformation

create table admin_user_pass(userid varchar(212),admin_password varchar(232))

insert into admin_user_pass values('Admin','Myheart@143')


--procedure to update first tab 

CREATE PROCEDURE UpdateStudentInformation
    @Admno NVARCHAR(255),
    @Appno NVARCHAR(232),
    @Regno NVARCHAR(232),
    @doj DATE,
    @Religion NVARCHAR(121),
    @Caste NVARCHAR(232),
    @SubCaste NVARCHAR(999),
    @Minority NVARCHAR(121),
    @FeeCategory NVARCHAR(255),
    @ExamRollNo NVARCHAR(255),
    @ExamRegNo NVARCHAR(255),
    @Aadhaar NVARCHAR(211)
AS
BEGIN
    UPDATE studentInformation
    SET
        std_applicationno = @Appno,
        std_registerno = @Regno,
        std_doj = @doj,
        std_religion = @Religion,
        std_caste = @Caste,
        std_subcaste = @SubCaste,
        std_minority = @Minority,
        std_fee_category = @FeeCategory,
        std_exam_roll_no = @ExamRollNo,
        std_exam_reg_no = @ExamRegNo,
        std_addhar = @Aadhaar
    WHERE std_Admno = @Admno;
END;

--procedure for tab2

CREATE PROCEDURE UpdateContactInformation
    @Admno NVARCHAR(255),
    @PrimaryContact VARCHAR(20),
    @PrimaryFirstName NVARCHAR(50),
    @PrimaryMiddleName NVARCHAR(50),
    @PrimaryLastName NVARCHAR(50),
    @PrimaryMobileNumber NVARCHAR(15),
    @PrimaryEmail NVARCHAR(100),
    @SecondaryContact VARCHAR(20),
    @SecondaryFirstName NVARCHAR(50),
    @SecondaryMiddleName NVARCHAR(50),
    @SecondaryLastName NVARCHAR(50),
    @SecondaryMobileNumber NVARCHAR(15),
    @SecondaryEmail NVARCHAR(100)
AS
BEGIN
    UPDATE studentInformation
    SET
        std_parentRelation = @PrimaryContact,
        std_parentFirstName = @PrimaryFirstName,
        std_parentMiddleName = @PrimaryMiddleName,
        std_parentLastName = @PrimaryLastName,
        std_parentMobileNumber = @PrimaryMobileNumber,
        std_parentEmail = @PrimaryEmail,
        std_secondaryContact = @SecondaryContact,
        std_secondaryFirstName = @SecondaryFirstName,
        std_secondaryMiddleName = @SecondaryMiddleName,
        std_secondaryLastName = @SecondaryLastName,
        std_secondaryMobileNumber = @SecondaryMobileNumber,
        std_secondaryEmail = @SecondaryEmail
    WHERE std_Admno = @Admno;
END;

--procedure for tab parents 

CREATE PROCEDURE UpdateParentInformation
    @Admno NVARCHAR(255),
    @ParentRelation NVARCHAR(20),
    @ParentFirstName NVARCHAR(50),
    @ParentMiddleName NVARCHAR(50),
    @ParentLastName NVARCHAR(50),
    @ParentMobileNumber NVARCHAR(15),
    @ParentEmail NVARCHAR(100)
AS
BEGIN
    UPDATE studentInformation
    SET
        std_parentRelation = @ParentRelation,
        std_parentFirstName = @ParentFirstName,
        std_parentMiddleName = @ParentMiddleName,
        std_parentLastName = @ParentLastName,
        std_parentMobileNumber = @ParentMobileNumber,
        std_parentEmail = @ParentEmail
    WHERE std_Admno = @Admno;
END;

--create procedure for sibling

CREATE PROCEDURE UpdateSiblingInformation
    @Admno NVARCHAR(255),
    @SiblingName NVARCHAR(255),
    @SiblingAge INT,
    @SiblingGender NVARCHAR(20),
    @SchoolCollegeName NVARCHAR(255),
    @StandardCourseName NVARCHAR(255)
AS
BEGIN
    UPDATE studentInformation
    SET
        sibling_Name = @SiblingName,
        sibling_Age = @SiblingAge,
        sibling_Gender = @SiblingGender,
        school_college_Name = @SchoolCollegeName,
        standard_course_Name = @StandardCourseName
    WHERE std_Admno = @Admno;
END;

--create a procedure for tab6

CREATE PROCEDURE UpdateHealthInformation
    @Admno NVARCHAR(255),
    @BloodGroup NVARCHAR(223),
    @Allergies TEXT,
    @Medication TEXT,
    @HealthCondition TEXT,
    @Height INT,
    @Weight INT
AS
BEGIN
    UPDATE studentInformation
    SET
        std_blood = @BloodGroup,
        std_allergies = @Allergies,
        std_medication = @Medication,
        std_healthCondition = @HealthCondition,
        std_height = @Height,
        std_weight = @Weight
    WHERE std_Admno = @Admno;
END;

Alter PROCEDURE UpdateDietaryInformation
    @Admno INT,
    @MealPreference NVARCHAR(50),
    @FoodAllergies NVARCHAR(MAX),
    @PreferredBeverage NVARCHAR(50),
    @SpecialInstructions NVARCHAR(MAX)
AS
BEGIN
    UPDATE studentInformation
    SET std_mealPreference = @MealPreference,
        std_foodAllergies= @FoodAllergies,
        std_preferredBeverage = @PreferredBeverage,
        std_specialInstructions = @SpecialInstructions
    WHERE std_Admno = @Admno;
END;


CREATE VIEW StudentView AS
SELECT 
    std_id,
    std_FirstName,
    std_LastName,
    stud_photo,
    std_class,
    std_dob,
    std_address,
    std_blood,
    std_phno,
    std_fatherph,
    std_motherph,
    std_Admno
FROM studentInformation;
SELECT * FROM StudentView;
drop view StudentView
use SRFPROJECT;
