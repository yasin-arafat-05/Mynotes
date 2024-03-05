To install PostgreSQL on Arch Linux, you can use the package manager `pacman`. Here are the steps to install and set up PostgreSQL:

1. Open a terminal.

2. Update the package database:

```bash
sudo pacman -Syu
```

3. Install PostgreSQL:

```bash
sudo pacman -S postgresql
```

4. Initialize the database:

```bash
sudo su - postgres
initdb -E UTF8 -D '/var/lib/postgres/data'

```

This creates the initial database cluster.

<br> <br> <br>

# Start and enable the PostgreSQL service:

```bash
sudo systemctl start postgresql
sudo systemctl enable postgresql
```

Now, PostgreSQL should be up and running on your Arch Linux system.

6. Set a password for the default PostgreSQL user (`postgres`):

```bash
sudo -u postgres psql
\password postgres
```

Enter and confirm the desired password for the `postgres` user.

7. Create a new PostgreSQL user and database (replace `username` and `databasename` with your preferred values):

```bash
sudo -u postgres createuser --interactive
sudo -u postgres createdb databasename
```

<br> <br>

<br> <br>

<br> <br>

# Basic command of postgresql

1. **Access the PostgreSQL prompt:**
   ```bash
   sudo -u postgres psql
   ```

   This command allows you to enter the PostgreSQL interactive terminal as the 'postgres' user.

2. **Exit the PostgreSQL prompt:**
   ```sql
   \q
   ```

   This command is used to exit the PostgreSQL interactive terminal.

3. **Create a new database:**
   ```sql
   CREATE DATABASE database_name;
   ```

   Replace `database_name` with the desired name for your new database.

4. **List all databases:**
   ```sql
   \l
   ```

   This command lists all the databases in the PostgreSQL server.

5. **Connect to a specific database:**
   ```sql
   \c database_name;
   ```

   Use this command to connect to a specific database. Replace `database_name` with the name of the database you want to connect to.

6. **Create a new user:**
   ```sql
   CREATE USER username WITH PASSWORD 'password';
   ```

   Replace `username` with the desired username and `'password'` with the desired password.

7. **Grant privileges to a user on a database:**
   ```sql
   GRANT ALL PRIVILEGES ON DATABASE database_name TO username;
   ```

   Replace `database_name` with the database name and `username` with the username.

8. **List all tables in the current database:**
   ```sql
   \dt
   ```

   This command lists all the tables in the current database.

9. **Describe a table:**
   ```sql
   \d table_name
   ```

   Replace `table_name` with the name of the table you want to describe.

10. **Exit psql and return to the command line:**
    ```sql
    \q
    ```

11. **To delete a database:**
In PostgreSQL, you can use the `DROP DATABASE` command. Be very cautious when using this command, as it permanently removes the specified database and all its associated data.

Here's the basic syntax:

```sql
DROP DATABASE [IF EXISTS] database_name;
```

- `database_name`: The name of the database you want to delete.
- `IF EXISTS`: This clause is optional and prevents an error if the specified database does not exist.

For example, to delete a database named "exampledb," you can use:

```sql
DROP DATABASE IF EXISTS exampledb;
```

