-- SQL Server Indexes Example
-- Implementation of Clustered and Non-Clustered Indexes


-- Create Employee Table

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);


-- Insert Sample Data

INSERT INTO Employees VALUES
(1,'John','Doe','IT',60000),
(2,'Jane','Smith','HR',55000),
(3,'Robert','Brown','Finance',70000),
(4,'Emily','Davis','IT',65000);



-- Clustered Index
-- Primary key automatically creates clustered index

SELECT * 
FROM Employees
WHERE EmployeeID = 1;



-- Create Non Clustered Index

CREATE NONCLUSTERED INDEX IX_Employee_Department
ON Employees(Department);



-- Searching using indexed column

SELECT *
FROM Employees
WHERE Department = 'IT';



-- Composite Index

CREATE INDEX IX_Employee_Name
ON Employees(FirstName, LastName);



SELECT *
FROM Employees
WHERE FirstName='John'
AND LastName='Doe';



-- Delete Index

DROP INDEX IX_Employee_Name
ON Employees;