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

# see all the user with pass that created on the postgresql:

### Only the user:

```sql
SELECT usename FROM pg_user;
```

### User with password:

```sql
SELECT usename, usesuper, usecreatedb, usesysid FROM pg_user;
```
To see all,

```sql
SELECT * FROM pg_user;
```
<br><br>

- **usename:** The name of the PostgreSQL user.
- **usesuper:** Indicates whether the user is a superuser. In this case, "t" means true, so the "postgres" user is a superuser.
- **usecreatedb:** Indicates whether the user is allowed to create databases. "t" means true, so the "postgres" user can create databases.
- **usesysid:** The system identifier for the user.


<br> <br> <br> <br>

`To grant all permissions to the user "yasin" and create a database under that user, you can use the following steps:`

### 1. Grant All Permissions to User "yasin":

Assuming you want to grant all permissions to "yasin" on an existing database, you can use the `GRANT` command. Replace `existing_database` with the name of the database:

```sql
GRANT ALL PRIVILEGES ON DATABASE existing_database TO yasin;
```

### 2. Create a Database Under User "yasin":

To create a new database under the user "yasin," you can use the following command. Replace `new_database` with the desired name:

```sql
CREATE DATABASE new_database WITH OWNER yasin;
```

### 3. Show Password for User "yasin":

To view or show the password for a user in PostgreSQL, you can't directly retrieve it due to security reasons. However, you can change the password, and during that process, you can see it.

#### Change Password:

Connect to the PostgreSQL interactive terminal:

```bash
sudo -u postgres psql
```

Change the password for the user "yasin":

```sql
\password yasin
```

You will be prompted to enter a new password for the "yasin" user. Once you confirm the password change, you'll have successfully set a new password.

### Important Notes:

- **Security:** Be cautious when granting privileges and handling passwords. Only provide the necessary permissions for security reasons.

- **Password Visibility:** It's a security best practice not to display or retrieve passwords directly. Changing the password is a common way to manage credentials.

- **Database Owner:** When creating a new database, specifying the owner ensures that the user has full control over the database.

Remember to replace placeholders like `existing_database` and `new_database` with the actual database names you are working with. Adjust the permissions and actions based on your specific requirements.