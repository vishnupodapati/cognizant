# SQL Server Indexes

## Objective

The objective of this exercise is to understand and implement indexes in SQL Server.

Indexes help improve the performance of database queries by allowing faster data retrieval.

---

## Description

An index is a database object that improves the speed of searching and accessing records from a table.

Without indexes, SQL Server scans every row in a table to find required data. This process becomes slow when the table contains large amounts of data.

Indexes work similar to an index in a book, where we can quickly find information without reading every page.

---

## Types of Indexes Implemented

### 1. Clustered Index

A clustered index determines the physical order of data stored in a table.

A table can contain only one clustered index because data rows can be arranged in only one order.

In SQL Server, creating a primary key automatically creates a clustered index.

Example:

EmployeeID is used as the primary key and helps retrieve employee records faster.

---

### 2. Non-Clustered Index

A non-clustered index stores index data separately from actual table data.

It contains pointers that help SQL Server quickly locate the required rows.

It improves search performance on frequently used columns.

Example:

Created an index on Department column to quickly search employees by department.

---

### 3. Composite Index

A composite index is created using multiple columns.

It is useful when queries frequently search using more than one column.

Example:

Created index using FirstName and LastName columns.

---

## Advantages of Indexes

- Faster searching
- Improves query performance
- Reduces data scanning
- Helps in sorting and filtering operations

---

## Disadvantages

- Requires additional storage
- Slows down INSERT, UPDATE, DELETE operations because indexes must also be updated

---

## Technologies Used

- SQL Server
- SQL Server Management Studio (SSMS)

---

## Conclusion

Indexes are important for database optimization.

Proper usage of indexes improves query execution speed and helps applications handle large amounts of data efficiently.