-- SQL Server User Defined Functions
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


-- Insert Data

INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance');


INSERT INTO Employees VALUES
(1,'John','Doe',1,5000),
(2,'Jane','Smith',2,6000),
(3,'Robert','Brown',3,7000);



-- 1. Scalar Function
-- Calculate Annual Salary

CREATE FUNCTION fn_CalculateAnnualSalary
(
    @Salary DECIMAL(10,2)
)

RETURNS DECIMAL(10,2)

AS

BEGIN

RETURN @Salary * 12;

END;



-- Execute Scalar Function

SELECT 
FirstName,
Salary,
dbo.fn_CalculateAnnualSalary(Salary)
AS AnnualSalary

FROM Employees;



-- 2. Table Valued Function

CREATE FUNCTION fn_GetEmployeesByDepartment
(
    @DepartmentID INT
)

RETURNS TABLE

AS

RETURN

(
    SELECT *
    FROM Employees
    WHERE DepartmentID=@DepartmentID
);



-- Execute Table Function

SELECT *
FROM dbo.fn_GetEmployeesByDepartment(2);



-- 3. Bonus Calculation Function

CREATE FUNCTION fn_CalculateBonus
(
    @Salary DECIMAL(10,2)
)

RETURNS DECIMAL(10,2)

AS

BEGIN

RETURN @Salary * 0.10;

END;



SELECT
FirstName,
dbo.fn_CalculateBonus(Salary)
AS Bonus

FROM Employees;



-- 4. Modify Function

ALTER FUNCTION fn_CalculateBonus
(
    @Salary DECIMAL(10,2)
)

RETURNS DECIMAL(10,2)

AS

BEGIN

RETURN @Salary * 0.15;

END;



-- 5. Nested Function

CREATE FUNCTION fn_TotalCompensation
(
    @Salary DECIMAL(10,2)
)

RETURNS DECIMAL(10,2)

AS

BEGIN

RETURN 
dbo.fn_CalculateAnnualSalary(@Salary)
+
dbo.fn_CalculateBonus(@Salary);

END;



SELECT
FirstName,
dbo.fn_TotalCompensation(Salary)
AS TotalCompensation

FROM Employees;



-- Delete Function Example

DROP FUNCTION fn_TotalCompensation;