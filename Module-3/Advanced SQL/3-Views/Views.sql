-- SQL Server Views Example
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
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),

    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
);


-- Insert Department Records

INSERT INTO Departments VALUES
(1,'HR'),
(2,'Finance'),
(3,'IT');


-- Insert Employee Records

INSERT INTO Employees VALUES
(101,'John','Doe',1,50000),
(102,'Smith','Alex',2,60000),
(103,'David','Warner',3,70000);



-- View 1 : Basic Employee Information

CREATE VIEW vw_EmployeeBasicInfo
AS
SELECT
E.EmployeeID,
E.FirstName,
E.LastName,
D.DepartmentName
FROM Employees E
JOIN Departments D
ON E.DepartmentID = D.DepartmentID;



SELECT * FROM vw_EmployeeBasicInfo;



-- View 2 : Full Name Computed Column

CREATE VIEW vw_EmployeeFullName
AS
SELECT
EmployeeID,
FirstName + ' ' + LastName AS FullName
FROM Employees;



SELECT * FROM vw_EmployeeFullName;



-- View 3 : Annual Salary Calculation

CREATE VIEW vw_EmployeeAnnualSalary
AS
SELECT
EmployeeID,
Salary,
Salary * 12 AS AnnualSalary
FROM Employees;



SELECT * FROM vw_EmployeeAnnualSalary;



-- View 4 : Complete Employee Report

CREATE VIEW vw_EmployeeReport
AS
SELECT
E.EmployeeID,
E.FirstName + ' ' + E.LastName AS FullName,
D.DepartmentName,
E.Salary * 12 AS AnnualSalary,
(E.Salary * 12) * 0.10 AS Bonus
FROM Employees E
JOIN Departments D
ON E.DepartmentID=D.DepartmentID;



SELECT * FROM vw_EmployeeReport;