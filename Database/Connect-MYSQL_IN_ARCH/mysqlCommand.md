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

These commands cover essential aspects of MySQL database management, including creating and modifying databases and tables, manipulating data, retrieving information, performing joins, indexing for performance optimization, and managing security.
