-- SQL Server Cursors
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
    Salary DECIMAL(10,2)
);


-- Insert Sample Data

INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance');


INSERT INTO Employees VALUES
(1,'John','Doe',1,5000),
(2,'Jane','Smith',2,6000),
(3,'Robert','Brown',3,7000);



-------------------------------------------------
-- 1. Basic Cursor
-------------------------------------------------


DECLARE

@EmployeeID INT,
@FirstName VARCHAR(50),
@Salary DECIMAL(10,2);



DECLARE EmployeeCursor CURSOR

FOR

SELECT
EmployeeID,
FirstName,
Salary

FROM Employees;



OPEN EmployeeCursor;



FETCH NEXT FROM EmployeeCursor

INTO

@EmployeeID,
@FirstName,
@Salary;



WHILE @@FETCH_STATUS = 0

BEGIN


PRINT 
'Employee: '
+ @FirstName
+ ' Salary: '
+ CAST(@Salary AS VARCHAR);



FETCH NEXT FROM EmployeeCursor

INTO

@EmployeeID,
@FirstName,
@Salary;


END;



CLOSE EmployeeCursor;


DEALLOCATE EmployeeCursor;





-------------------------------------------------
-- 2. STATIC Cursor
-------------------------------------------------


DECLARE StaticEmployeeCursor CURSOR STATIC

FOR

SELECT *
FROM Employees;


OPEN StaticEmployeeCursor;


CLOSE StaticEmployeeCursor;


DEALLOCATE StaticEmployeeCursor;





-------------------------------------------------
-- 3. DYNAMIC Cursor
-------------------------------------------------


DECLARE DynamicEmployeeCursor CURSOR DYNAMIC

FOR

SELECT *
FROM Employees;


OPEN DynamicEmployeeCursor;


CLOSE DynamicEmployeeCursor;


DEALLOCATE DynamicEmployeeCursor;





-------------------------------------------------
-- 4. FORWARD ONLY Cursor
-------------------------------------------------


DECLARE ForwardCursor CURSOR FORWARD_ONLY

FOR

SELECT *
FROM Employees;


OPEN ForwardCursor;


CLOSE ForwardCursor;


DEALLOCATE ForwardCursor;   