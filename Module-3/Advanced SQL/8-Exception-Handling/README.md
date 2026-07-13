# SQL Server Exception Handling

## Objective

The objective of this exercise is to understand and implement exception handling mechanisms in SQL Server.

Exception handling helps manage runtime errors and maintain database reliability.

---

## Description

Errors can occur during database operations due to invalid input, constraint violations, or transaction failures.

SQL Server provides exception handling techniques to detect errors and handle them safely without stopping the entire application.

This exercise demonstrates error handling using an Employee Management System.

---

# Concepts Implemented


## 1. TRY...CATCH

TRY...CATCH is used to handle runtime errors in SQL Server.

The TRY block contains SQL statements that may generate errors.

The CATCH block executes when an error occurs.

It allows developers to:

- Capture error messages
- Store error logs
- Prevent unexpected failures

---

## 2. ERROR_MESSAGE()

ERROR_MESSAGE() returns details about the error that occurred.

It helps developers identify and debug database issues.

---

## 3. THROW

THROW is used to raise an exception.

It can re-send an error after catching it so that applications can handle the problem.

---

## 4. RAISERROR

RAISERROR is used to create custom error messages.

It helps implement business validations.

Example:

Preventing salary values less than or equal to zero.

---

## 5. Transactions With Error Handling

Transactions ensure database consistency.

If all operations succeed:

COMMIT saves the changes.

If any operation fails:

ROLLBACK cancels the changes.

This protects the database from incomplete updates.

---

## Advantages of Exception Handling

- Prevents application failures
- Improves database reliability
- Maintains data consistency
- Helps debugging using error logs
- Supports secure transaction handling

---

## Technologies Used

- SQL Server
- SQL Server Management Studio (SSMS)

---

## Conclusion

Exception handling is an important part of database programming.

Using TRY CATCH, THROW, RAISERROR, and transactions helps create reliable and error-resistant database applications.