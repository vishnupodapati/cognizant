-- Advanced SQL Concepts
-- ROW_NUMBER, RANK, DENSE_RANK, CTE, MERGE, PIVOT

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES
(1,'John','IT',60000),
(2,'Smith','IT',55000),
(3,'David','HR',50000),
(4,'Mary','HR',45000),
(5,'Alex','Finance',70000);


-- ROW_NUMBER
SELECT 
Name,
Department,
Salary,
ROW_NUMBER() OVER
(PARTITION BY Department ORDER BY Salary DESC) 
AS RowNumber
FROM Employees;


-- RANK
SELECT 
Name,
Salary,
RANK() OVER(ORDER BY Salary DESC) AS RankNo
FROM Employees;


-- DENSE_RANK
SELECT
Name,
Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) 
AS DenseRankNo
FROM Employees;


-- CTE Example
WITH EmployeeCTE AS
(
    SELECT Name, Salary
    FROM Employees
    WHERE Salary > 50000
)
SELECT * FROM EmployeeCTE;


-- GROUP BY ROLLUP
SELECT 
Department,
SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY ROLLUP(Department);