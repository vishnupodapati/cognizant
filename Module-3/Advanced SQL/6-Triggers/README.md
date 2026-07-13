# SQL Server Triggers

## Objective

The objective of this exercise is to understand and implement Triggers in SQL Server.

Triggers are used to automatically execute SQL operations when specific database events occur.

---

## Description

A Trigger is a special type of stored procedure that automatically runs when an event happens in the database.

Triggers are mainly used for maintaining data consistency, auditing changes, and applying business rules automatically.

This exercise demonstrates triggers using an Employee Management System.

---

# Concepts Implemented


## 1. AFTER Trigger

An AFTER trigger executes automatically after INSERT, UPDATE, or DELETE operations.

In this exercise:

- Employee salary updates are monitored
- Old and new salary values are stored
- Changes are recorded in an audit table

This helps maintain history of database modifications.

---

## 2. INSTEAD OF Trigger

An INSTEAD OF trigger executes instead of the original database operation.

It is useful when we want to control or restrict certain actions.

Example:

Preventing deletion of employee records.

---

## 3. Audit Logging

Audit logging stores information about database changes.

It helps organizations track:

- Who changed data
- What data changed
- When the change happened

---

## 4. Trigger for Automatic Updates

Triggers can automatically update related columns.

Example:

Annual salary is updated automatically whenever monthly salary changes.

---

## Advantages of Triggers

- Maintains data consistency
- Automates database actions
- Provides audit history
- Improves data security
- Enforces business rules

---

## Disadvantages

- Difficult to debug
- Can affect performance if overused
- Hidden execution may increase complexity

---

## Technologies Used

- SQL Server
- SQL Server Management Studio (SSMS)

---

## Conclusion

Triggers are powerful SQL Server objects that automatically respond to database events.

They help maintain data integrity and automate important database operations in real-world applications.
