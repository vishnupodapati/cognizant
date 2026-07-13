# SQL Server Stored Procedures

## Objective

The objective of this exercise is to understand and implement Stored Procedures in SQL Server.

Stored Procedures help in storing SQL logic inside the database and executing it whenever required.

---

## Description

A Stored Procedure is a collection of SQL statements stored permanently in the database.

Instead of writing the same SQL query repeatedly, developers can create a procedure once and execute it multiple times.

Stored procedures improve code reusability, security, and performance.

In this exercise, an Employee Management System is used to demonstrate stored procedure operations.

---

# Concepts Implemented


## 1. Creating Stored Procedure

A stored procedure is created using CREATE PROCEDURE command.

It contains SQL statements that perform specific database operations.

Example:

Retrieving employees based on Department ID.

---

## 2. Stored Procedure With Parameters

Parameters allow users to send input values into stored procedures.

They make procedures dynamic and reusable.

Example:

DepartmentID is passed as input to filter employees.

---

## 3. Insert Operation Using Stored Procedure

A procedure is created to insert employee details into the Employees table.

This reduces repeated INSERT query writing.

---

## 4. Update Operation Using Stored Procedure

Stored procedures can modify existing records.

In this exercise, employee salary is updated using EmployeeID.

---

## 5. Returning Data From Procedure

Stored procedures can return processed information.

Example:

Counting number of employees available in a department.

---

## 6. Transactions In Stored Procedures

Transactions ensure database consistency.

They follow ACID properties:

- Atomicity
- Consistency
- Isolation
- Durability

If an operation fails, transaction rollback prevents incorrect data changes.

---

## Advantages of Stored Procedures

- Code reusability
- Better performance
- Improved security
- Easy maintenance
- Reduces duplicate SQL code

---

## Technologies Used

- SQL Server
- SQL Server Management Studio (SSMS)

---

## Conclusion

Stored Procedures are important database objects used in real-world applications.

They simplify database operations and help maintain secure and efficient database systems.