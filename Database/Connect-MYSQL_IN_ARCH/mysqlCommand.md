**1. Database Operations:**
   - **CREATE DATABASE:** Creates a new database.
     ```sql
     CREATE DATABASE database_name;
     ```

   - **DROP DATABASE:** Deletes an existing database.
     ```sql
     DROP DATABASE database_name;
     ```

   - **USE:** Selects a specific database to work with.
     ```sql
     USE database_name;
     ```

**2. Table Operations:**
   - **CREATE TABLE:** Creates a new table with specified columns and data types.
     ```sql
     CREATE TABLE table_name (
       column1 datatype,
       column2 datatype,
       ...
     );
     ```

   - **ALTER TABLE:** Modifies an existing table structure (add, modify, or drop columns).
     ```sql
     ALTER TABLE table_name
     ADD column_name datatype;

     ALTER TABLE table_name
     MODIFY column_name new_datatype;

     ALTER TABLE table_name
     DROP column_name;
     ```

   - **DROP TABLE:** Deletes an existing table and its data.
     ```sql
     DROP TABLE table_name;
     ```

**3. Data Manipulation:**
   - **INSERT:** Adds new records into a table.
     ```sql
     INSERT INTO table_name (column1, column2, ...)
     VALUES (value1, value2, ...);
     ```

   - **SELECT:** Retrieves data from one or more tables.
     ```sql
     SELECT column1, column2, ...
     FROM table_name
     WHERE condition;
     ```

   - **UPDATE:** Modifies existing records in a table.
     ```sql
     UPDATE table_name
     SET column1 = value1, column2 = value2, ...
     WHERE condition;
     ```

   - **DELETE:** Removes records from a table based on a condition.
     ```sql
     DELETE FROM table_name
     WHERE condition;
     ```

**4. Data Retrieval:**
   - **DISTINCT:** Returns unique values in a column.
     ```sql
     SELECT DISTINCT column_name
     FROM table_name;
     ```

   - **ORDER BY:** Sorts the result set based on one or more columns.
     ```sql
     SELECT column1, column2, ...
     FROM table_name
     ORDER BY column1 [ASC | DESC], column2 [ASC | DESC], ...;
     ```

   - **GROUP BY:** Groups rows based on a specified column.
     ```sql
     SELECT column1, COUNT(*)
     FROM table_name
     GROUP BY column1;
     ```

   - **HAVING:** Filters results of the GROUP BY clause.
     ```sql
     SELECT column1, COUNT(*)
     FROM table_name
     GROUP BY column1
     HAVING COUNT(*) > 1;
     ```

**5. Joins:**
   - **INNER JOIN:** Retrieves records that have matching values in both tables.
     ```sql
     SELECT columns
     FROM table1
     INNER JOIN table2 ON table1.column = table2.column;
     ```

   - **LEFT (OUTER) JOIN:** Retrieves all records from the left table and matched records from the right table.
     ```sql
     SELECT columns
     FROM table1
     LEFT JOIN table2 ON table1.column = table2.column;
     ```

   - **RIGHT (OUTER) JOIN:** Retrieves all records from the right table and matched records from the left table.
     ```sql
     SELECT columns
     FROM table1
     RIGHT JOIN table2 ON table1.column = table2.column;
     ```

   - **FULL (OUTER) JOIN:** Retrieves all records when there is a match in either the left or right table.
     ```sql
     SELECT columns
     FROM table1
     FULL JOIN table2 ON table1.column = table2.column;
     ```

**6. Indexing:**
   - **CREATE INDEX:** Creates an index on one or more columns to improve query performance.
     ```sql
     CREATE INDEX index_name
     ON table_name (column1, column2, ...);
     ```

   - **DROP INDEX:** Removes an existing index.
     ```sql
     DROP INDEX index_name
     ON table_name;
     ```

**7. Security:**
   - **GRANT:** Provides specific privileges to database users.
     ```sql
     GRANT privileges
     ON database_name.table_name
     TO 'user'@'host';
     ```

   - **REVOKE:** Removes specific privileges from database users.
     ```sql
     REVOKE privileges
     ON database_name.table_name
     FROM 'user'@'host';
     ```

   - **SHOW GRANTS:** Displays the privileges assigned to a user.
     ```sql
     SHOW GRANTS FOR 'user'@'host';
     ```
Certainly! Here are some additional MySQL commands:

**8. Aggregate Functions:**
   - **COUNT:** Returns the number of rows that satisfy the given condition.
     ```sql
     SELECT COUNT(column_name)
     FROM table_name
     WHERE condition;
     ```

   - **SUM:** Calculates the sum of values in a numeric column.
     ```sql
     SELECT SUM(column_name)
     FROM table_name
     WHERE condition;
     ```

   - **AVG:** Calculates the average value of a numeric column.
     ```sql
     SELECT AVG(column_name)
     FROM table_name
     WHERE condition;
     ```

   - **MIN:** Retrieves the minimum value in a column.
     ```sql
     SELECT MIN(column_name)
     FROM table_name
     WHERE condition;
     ```

   - **MAX:** Retrieves the maximum value in a column.
     ```sql
     SELECT MAX(column_name)
     FROM table_name
     WHERE condition;
     ```

**9. Transactions:**
   - **START TRANSACTION:** Begins a new transaction.
     ```sql
     START TRANSACTION;
     ```

   - **COMMIT:** Saves the changes made during the current transaction.
     ```sql
     COMMIT;
     ```

   - **ROLLBACK:** Undoes the changes made during the current transaction.
     ```sql
     ROLLBACK;
     ```

**10. View:**
   - **CREATE VIEW:** Creates a virtual table based on the result of a SELECT query.
     ```sql
     CREATE VIEW view_name AS
     SELECT column1, column2, ...
     FROM table_name
     WHERE condition;
     ```

   - **DROP VIEW:** Deletes an existing view.
     ```sql
     DROP VIEW view_name;
     ```

**11. Stored Procedures:**
   - **CREATE PROCEDURE:** Defines a stored procedure.
     ```sql
     CREATE PROCEDURE procedure_name(parameters)
     BEGIN
       -- SQL statements
     END;
     ```

   - **DROP PROCEDURE:** Removes an existing stored procedure.
     ```sql
     DROP PROCEDURE procedure_name;
     ```

   - **CALL:** Invokes a stored procedure.
     ```sql
     CALL procedure_name(parameters);
     ```

**12. Functions:**
   - **CREATE FUNCTION:** Defines a user-defined function.
     ```sql
     CREATE FUNCTION function_name(parameters)
     RETURNS datatype
     BEGIN
       -- SQL statements
     END;
     ```

   - **DROP FUNCTION:** Removes an existing user-defined function.
     ```sql
     DROP FUNCTION function_name;
     ```

**13. Show Information:**
   - **SHOW DATABASES:** Displays a list of databases.
     ```sql
     SHOW DATABASES;
     ```

   - **SHOW TABLES:** Shows a list of tables in the current database.
     ```sql
     SHOW TABLES;
     ```

   - **DESCRIBE or EXPLAIN:** Provides information about the structure of a table.
     ```sql
     DESCRIBE table_name;
     ```

   - **SHOW COLUMNS:** Displays information about the columns of a table.
     ```sql
     SHOW COLUMNS FROM table_name;
     ```

**14. Triggers:**
   - **CREATE TRIGGER:** Defines a trigger that is executed in response to a specific event.
     ```sql
     CREATE TRIGGER trigger_name
     BEFORE/AFTER INSERT/UPDATE/DELETE ON table_name
     FOR EACH ROW
     BEGIN
       -- SQL statements
     END;
     ```

   - **DROP TRIGGER:** Removes an existing trigger.
     ```sql
     DROP TRIGGER trigger_name;
     ```


Certainly! Here are some more MySQL commands covering various aspects of database management:

**15. Subqueries:**
   - **IN:** Checks if a value matches any value in a subquery or a list.
     ```sql
     SELECT column1
     FROM table_name
     WHERE column2 IN (SELECT column3 FROM another_table);
     ```

   - **EXISTS:** Tests for the existence of rows in a subquery.
     ```sql
     SELECT column1
     FROM table_name
     WHERE EXISTS (SELECT column2 FROM another_table WHERE condition);
     ```

**16. Data Types:**
   - **ENUM:** Defines a column that can have one of a set of predefined values.
     ```sql
     CREATE TABLE table_name (
       column1 ENUM('value1', 'value2', 'value3')
     );
     ```

   - **DATE, TIME, DATETIME, TIMESTAMP:** Store date and time values in different formats.
     ```sql
     CREATE TABLE table_name (
       column1 DATE,
       column2 TIME,
       column3 DATETIME,
       column4 TIMESTAMP
     );
     ```

**17. Index Types:**
   - **UNIQUE INDEX:** Ensures that all values in the index column are unique.
     ```sql
     CREATE UNIQUE INDEX index_name
     ON table_name (column1);
     ```

   - **FULLTEXT INDEX:** Enables full-text searching on text columns.
     ```sql
     CREATE FULLTEXT INDEX index_name
     ON table_name (column1);
     ```

**18. Foreign Keys:**
   - **FOREIGN KEY:** Establishes a link between two tables.
     ```sql
     CREATE TABLE table1 (
       column1 INT PRIMARY KEY,
       column2 INT,
       FOREIGN KEY (column2) REFERENCES table2(column3)
     );
     ```

   - **CASCADE:** Specifies that changes to the parent table should cascade to the child table.
     ```sql
     ON DELETE CASCADE;
     ON UPDATE CASCADE;
     ```

**19. UNION and UNION ALL:**
   - **UNION:** Combines the result sets of two or more SELECT statements, removing duplicates.
     ```sql
     SELECT column1 FROM table1
     UNION
     SELECT column1 FROM table2;
     ```

   - **UNION ALL:** Similar to UNION but includes duplicates.
     ```sql
     SELECT column1 FROM table1
     UNION ALL
     SELECT column1 FROM table2;
     ```

**20. User Management:**
   - **CREATE USER:** Creates a new database user.
     ```sql
     CREATE USER 'username'@'host' IDENTIFIED BY 'password';
     ```

   - **ALTER USER:** Modifies user properties.
     ```sql
     ALTER USER 'username'@'host' IDENTIFIED BY 'new_password';
     ```

   - **DROP USER:** Removes an existing user.
     ```sql
     DROP USER 'username'@'host';
     ```

**21. Session Management:**
   - **SHOW PROCESSLIST:** Displays information about currently executing statements.
     ```sql
     SHOW PROCESSLIST;
     ```

   - **KILL:** Terminates a currently executing statement or connection.
     ```sql
     KILL [CONNECTION | QUERY] process_id;
     ```

**22. Regular Expressions:**
   - **REGEXP:** Performs a regular expression pattern match.
     ```sql
     SELECT column1
     FROM table_name
     WHERE column2 REGEXP 'pattern';
     ```

**23. Data Import/Export:**
   - **LOAD DATA INFILE:** Loads data from a text file into a table.
     ```sql
     LOAD DATA INFILE 'file.txt'
     INTO TABLE table_name;
     ```

   - **SELECT INTO OUTFILE:** Writes the result set into a text file.
     ```sql
     SELECT column1, column2
     INTO OUTFILE 'file.txt'
     FROM table_name;
     ```
