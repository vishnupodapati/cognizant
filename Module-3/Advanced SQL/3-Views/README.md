# SQL Server Views

## Objective

The objective of this exercise is to understand and implement Views in SQL Server.

Views help developers simplify complex queries, improve readability, and provide controlled access to database information.

---

## Description

A View is a virtual table in SQL Server that is created based on the result of a SQL query.

It does not store data physically. Instead, it stores the query definition and retrieves updated data from the original tables whenever it is executed.

Views are useful when we need to hide complex SQL logic and provide simplified access to users.

In this implementation, an Employee Management System is used to demonstrate different types of views.

---

## Concepts Implemented

### 1. Basic View

A basic view is created to display selected information from one or more tables.

The EmployeeBasicInfo view combines Employees and Departments tables using JOIN.

It displays employee details along with department names.

---

### 2. View with Computed Column

Computed columns are created by performing calculations or operations on existing columns.

In this exercise, FullName is created by combining FirstName and LastName.

This avoids repeating the same calculation in multiple queries.

---

### 3. Annual Salary View

A view is created to calculate yearly salary from monthly salary.

AnnualSalary is calculated by multiplying salary by 12.

This helps generate financial reports easily.

---

### 4. Employee Report View

A complete employee report view is created containing:

- Employee ID
- Full Name
- Department Name
- Annual Salary
- Bonus Calculation

This represents how views are used in real-time reporting systems.

---

## Advantages of Views

- Simplifies complex SQL queries
- Improves code readability
- Provides data security
- Avoids duplicate query writing
- Helps in report generation

---

## Technologies Used

- SQL Server
- SQL Server Management Studio (SSMS)

---

## Conclusion

Views are powerful database objects used to simplify data access and improve database design.

They help developers create reusable queries and provide secure access to required information.