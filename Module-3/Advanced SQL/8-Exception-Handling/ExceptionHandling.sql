-- SQL Server Exception Handling
-- TRY CATCH, THROW, RAISERROR


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
    Email VARCHAR(100) UNIQUE,
    Salary DECIMAL(10,2),
    DepartmentID INT,

    FOREIGN KEY(DepartmentID)
    REFERENCES Departments(DepartmentID)
);


-- Create Audit Log Table

CREATE TABLE AuditLog
(
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    Action VARCHAR(100),
    ErrorMessage VARCHAR(4000),
    ActionDate DATETIME DEFAULT GETDATE()
);



-- Insert Department Data

INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT');




-------------------------------------------------
-- 1. TRY CATCH Error Handling
-------------------------------------------------


CREATE PROCEDURE AddEmployee

@EmployeeID INT,
@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@Email VARCHAR(100),
@Salary DECIMAL(10,2),
@DepartmentID INT


AS

BEGIN


BEGIN TRY


INSERT INTO Employees

VALUES
(
@EmployeeID,
@FirstName,
@LastName,
@Email,
@Salary,
@DepartmentID
);


END TRY



BEGIN CATCH


INSERT INTO AuditLog
(
Action,
ErrorMessage
)

VALUES
(
'Insert Employee Failed',
ERROR_MESSAGE()
);


END CATCH


END;




-- Execute Procedure

EXEC AddEmployee
1,
'John',
'Doe',
'john@gmail.com',
5000,
1;





-------------------------------------------------
-- 2. RAISERROR Example
-------------------------------------------------


CREATE PROCEDURE ValidateSalary

@Salary DECIMAL(10,2)

AS

BEGIN


IF @Salary <= 0


BEGIN


RAISERROR
(
'Salary must be greater than zero',
16,
1
);


END


END;




EXEC ValidateSalary -100;





-------------------------------------------------
-- 3. THROW Example
-------------------------------------------------


BEGIN TRY


SELECT 10/0;


END TRY



BEGIN CATCH


THROW;


END CATCH;





-------------------------------------------------
-- 4. Transaction With TRY CATCH
-------------------------------------------------


BEGIN TRY


BEGIN TRANSACTION


UPDATE Employees

SET Salary = 7000

WHERE EmployeeID = 1;



COMMIT TRANSACTION;


END TRY



BEGIN CATCH


ROLLBACK TRANSACTION;



INSERT INTO AuditLog
(
Action,
ErrorMessage
)

VALUES
(
'Transaction Failed',
ERROR_MESSAGE()
);


END CATCH;




SELECT * FROM AuditLog;