 <br>

# ________ RUN MYSQL COMMAND ON ARCH LINUX ________

<br>

### Installation:

Open a terminal and run the following command to install MySQL:

```bash
sudo pacman -S mysql
```

### Start and Enable MySQL service:

Once the installation is complete, you need to start and enable the MySQL service. Run the following commands:

```bash
sudo systemctl start mysqld
sudo systemctl enable mysqld
```

### Secure MySQL Installation:

MySQL comes with a script to secure the installation. Run the following command and follow the prompts:

```bash
sudo mysql_secure_installation
```

This script will guide you through setting a root password, removing anonymous users, disallowing root login remotely, and more.

### Access MySQL Shell:

After installation and securing, you can access the MySQL shell using the following command:

```bash
mysql -u root -p
```

`For my arch distro the root user password is (b5***)`

You will be prompted to enter the root password you set during the secure installation.

### Running MySQL Commands:

Once you are in the MySQL shell, you can run SQL commands. For example:

```sql
SHOW DATABASES;
```
It is DATABASES not DATABASE.
This will display a list of databases.

Remember to exit the MySQL shell when you are done:

```sql
EXIT;
```

<br>

# ______ How Many Users Are In `Your` MYSQL SERVER ________

<br>

There is a Default database name `mysql`. To check how many users are available in your server check the 
table name `user` in `mysql` database.

- Follow This command

```sql
SHOW DATABASES;
```

```sql
USE mysql;
```

```sql
SHOW TABLES;
```

```sql
DESCRIBE user;
```

```sql
SELECT user FROM user;
```

- All this can done by one single command

```sql
SELECT user FROM mysql.user;
```


<br>

# ___________________ Create A New User ___________________

<br>

- First we need to know who can create a new user?
    - Administrative user can create a new user (Who has all database  rights)
    - Or a User Having `CREATE USER` and `GRANT` privileges can also create a new user

- Query to create a new user

  ```sql
  CREATE USER 'new_user_name'@'localhost' IDENTIFIED BY 'user_password';
  
  example:
  CREATE USER 'yasin'@'localhost' IDENTIFIED BY 'yasin55555';
  ```
- In a particular host ip like: 10.4.9.7

  ```sql
  CREATE USER 'new_user_name'@'10.4.9.7' IDENTIFIED BY 'user_password';
  ```
  
- From any host

 ```sql
  CREATE USER 'user_name'@'%' IDENTIFIED BY 'user_password';
  ```


  <br><br>
  
- **Grant Privileges:**
   Use the `GRANT` statement to give the user specific privileges. Replace 'database_name' with the name of the database, and 'privilege' with the specific privilege you     want to grant. Here's an example:

   ```sql
   GRANT ALL PRIVILEGES ON database_name.* TO 'new_user'@'localhost';
   ```

   If you want to grant all privileges on all databases, use the wildcard '*':

   ```sql
   GRANT ALL PRIVILEGES ON *.* TO 'new_user'@'localhost';
   ```

   Don't forget to run the `FLUSH PRIVILEGES;` command to apply the changes:

   ```sql
   FLUSH PRIVILEGES;
   ```

4. **Exit MariaDB:**
   After creating the user and granting privileges, you can exit the MariaDB shell:

   ```sql
   EXIT;
   ```
