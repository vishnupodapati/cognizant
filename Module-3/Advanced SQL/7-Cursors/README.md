# SQL Server Cursors

## Objective

The objective of this exercise is to understand and implement Cursors in SQL Server.

Cursors allow row-by-row processing of query results when set-based operations are not suitable.

---

## Description

A Cursor is a database object used to retrieve and process records one row at a time.

Normally SQL works with complete sets of data, but sometimes applications require processing individual rows separately.

In such situations, cursors provide controlled row-by-row access.

This exercise demonstrates cursor operations using an Employee Management System.

---

# Concepts Implemented


## 1. Cursor Life Cycle

A cursor follows these steps:

### Declare Cursor

Defines the SELECT query whose result will be processed.

### Open Cursor

Executes the query and prepares records for processing.

### Fetch Data

Retrieves rows one by one from the cursor.

### Close Cursor

Stops cursor processing.

### Deallocate Cursor

Removes cursor resources from memory.

---

## 2. Static Cursor

A Static Cursor creates a temporary copy of result data.

Changes made to original data after opening the cursor are not reflected.

---

## 3. Dynamic Cursor

A Dynamic Cursor reflects changes made in the database while the cursor is open.

It provides real-time data visibility.

---

## 4. Forward Only Cursor

A Forward Only Cursor moves only from the first row to the next row.

It provides better performance because backward movement is not allowed.

---

## Advantages of Cursors

- Allows row-by-row processing
- Useful for complex operations
- Provides more control over records

---

## Disadvantages of Cursors

- Slower than normal SQL queries
- Uses more memory
- Not recommended for large datasets

---

## Technologies Used

- SQL Server
- SQL Server Management Studio (SSMS)

---

## Conclusion

Cursors are useful when individual row processing is required.

However, they should be used carefully because normal set-based SQL operations provide better performance in most situations.