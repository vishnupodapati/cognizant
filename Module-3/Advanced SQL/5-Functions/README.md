
# SQL Server User Defined Functions

## Objective

The objective of this exercise is to understand and implement User Defined Functions in SQL Server.

Functions allow developers to create reusable database logic that performs calculations and returns results.

---

## Description

A Function in SQL Server is a database object that accepts input parameters, performs operations, and returns a result.

Functions help avoid rewriting the same logic multiple times.

They improve readability, maintainability, and reusability of SQL code.

This exercise uses an Employee Management System to demonstrate different types of SQL functions.

---

# Concepts Implemented


## 1. Scalar Function

A scalar function accepts input values and returns a single value.

It is useful for calculations and data transformations.

Example:

A function is created to calculate employee annual salary.

Annual Salary = Monthly Salary × 12

---

## 2. Table-Valued Function

A table-valued function returns data in table format.

It behaves like a virtual table and can be used inside SELECT queries.

Example:

Retrieving employees based on Department ID.

---

## 3. User Defined Function for Bonus Calculation

Custom business calculations can be implemented using functions.

A bonus calculation function calculates employee bonus based on salary percentage.

---

## 4. Modifying Functions

Existing functions can be updated using ALTER FUNCTION.

This allows changing business logic without creating a new function.

---

## 5. Nested Functions

One function can call another function.

Nested functions help divide complex calculations into smaller reusable parts.

Example:

Total compensation is calculated using annual salary and bonus functions.

---

## Advantages of Functions

- Improves code reusability
- Reduces duplicate SQL logic
- Makes queries easier to understand
- Helps maintain business rules
- Supports modular programming

---

## Technologies Used

- SQL Server
- SQL Server Management Studio (SSMS)

---

## Conclusion

User Defined Functions make database applications more efficient by creating reusable and maintainable SQL logic.

They are widely used for calculations, validations, and data processing in real-world applications.