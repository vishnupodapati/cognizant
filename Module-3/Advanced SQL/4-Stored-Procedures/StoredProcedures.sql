-- SQL Server Stored Procedures Example
-- Employee Management System


-- Create Departments Table

CREATE TABLE Departments
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);


-- Create Employees Table

CREATE TABLE Employees
(
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,

    FOREIGN KEY(DepartmentID)
    REFERENCES Departments(DepartmentID)
);


-- Insert Sample Data

INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance');


INSERT INTO Employees
(FirstName,LastName,DepartmentID,Salary,JoinDate)
VALUES
('John','Doe',1,5000,'2022-01-10'),
('Smith','Alex',2,6000,'2021-05-20');



-- 1. Create Stored Procedure

CREATE PROCEDURE sp_GetEmployeesByDepartment
@DepartmentID INT
AS
BEGIN

SELECT *
FROM Employees
WHERE DepartmentID=@DepartmentID;

END;



-- Execute Procedure

EXEC sp_GetEmployeesByDepartment 1;



-- 2. Insert Employee Procedure

CREATE PROCEDURE sp_InsertEmployee

@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@DepartmentID INT,
@Salary DECIMAL(10,2),
@JoinDate DATE

AS
BEGIN

INSERT INTO Employees
(
FirstName,
LastName,
DepartmentID,
Salary,
JoinDate
)

VALUES
(
@FirstName,
@LastName,
@DepartmentID,
@Salary,
@JoinDate
);

END;



EXEC sp_InsertEmployee
'David',
'Warner',
3,
7000,
'2023-02-15';



-- 3. Update Salary Procedure

CREATE PROCEDURE sp_UpdateEmployeeSalary

@EmployeeID INT,
@NewSalary DECIMAL(10,2)

AS

BEGIN

UPDATE Employees
SET Salary=@NewSalary
WHERE EmployeeID=@EmployeeID;

END;



EXEC sp_UpdateEmployeeSalary 1,8000;



-- 4. Count Employees

CREATE PROCEDURE sp_CountEmployees

@DepartmentID INT

AS

BEGIN

SELECT COUNT(*) AS TotalEmployees
FROM Employees
WHERE DepartmentID=@DepartmentID;

END;



EXEC sp_CountEmployees 2;



-- 5. Procedure With Transaction

CREATE PROCEDURE sp_UpdateSalaryTransaction

@EmployeeID INT,
@Salary DECIMAL(10,2)

AS

BEGIN

BEGIN TRANSACTION

UPDATE Employees
SET Salary=@Salary
WHERE EmployeeID=@EmployeeID;


IF @@ERROR = 0

COMMIT TRANSACTION;

ELSE

ROLLBACK TRANSACTION;

END;



-- 6. Delete Procedure Example

DROP PROCEDURE sp_CountEmployees;