-- SQL Server Triggers
-- Employee Management System


-- Create Employees Table

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10,2),
    AnnualSalary DECIMAL(10,2)
);


-- Insert Sample Data

INSERT INTO Employees VALUES
(1,'John','Doe',5000,60000),
(2,'Jane','Smith',6000,72000);



-- Create Table For Audit Logs

CREATE TABLE EmployeeChanges
(
    ChangeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT,
    OldSalary DECIMAL(10,2),
    NewSalary DECIMAL(10,2),
    ChangeDate DATETIME
);



-- 1. AFTER Trigger
-- Logs salary changes

CREATE TRIGGER trg_AfterSalaryUpdate

ON Employees

AFTER UPDATE

AS

BEGIN

INSERT INTO EmployeeChanges
(
EmployeeID,
OldSalary,
NewSalary,
ChangeDate
)

SELECT

i.EmployeeID,
d.Salary,
i.Salary,
GETDATE()

FROM inserted i

JOIN deleted d

ON i.EmployeeID=d.EmployeeID;

END;



-- Testing AFTER Trigger

UPDATE Employees

SET Salary = 7000

WHERE EmployeeID = 1;



SELECT * FROM EmployeeChanges;



-- 2. INSTEAD OF DELETE Trigger
-- Prevent employee deletion


CREATE TRIGGER trg_PreventDelete

ON Employees

INSTEAD OF DELETE

AS

BEGIN

RAISERROR
(
'Employee records cannot be deleted',
16,
1
);

END;



-- Testing Delete Trigger

DELETE FROM Employees

WHERE EmployeeID=1;



-- 3. Trigger For Updating Computed Column


CREATE TRIGGER trg_UpdateAnnualSalary

ON Employees

AFTER UPDATE

AS

BEGIN

UPDATE Employees

SET AnnualSalary = Salary * 12

WHERE EmployeeID IN
(
SELECT EmployeeID FROM inserted
);

END;



-- Testing Annual Salary Trigger

UPDATE Employees

SET Salary=8000

WHERE EmployeeID=2;


SELECT * FROM Employees;