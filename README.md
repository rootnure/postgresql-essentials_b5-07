# PostgreSQL Essentials

## Run ```psql``` in other CLI
- Add PSQL ```bin``` folder location (Default: ```C:\Program Files\PostgreSQL\17\bin```) to PC's Environment Variable path
- Run PSQL in PC's CLI --> ```psql```
- Run PSQL in PC's CLI using DB's registered user --> ```psql -U <registered_username>```
    - Above command will open with database matches the username (if any)
- Run PSQL in PC's CLI using DB's registered user with specific database --> ```psql -U <username> -d <db_name>```
- CLI flags ( ```-U```, ```-d``` ) must be used correctly for above commands to work properly

## psql
### Basic Commands
- Basic Commands in SQL Shell (psql):
- Check version --> ```select version();```
- Database List --> ```\l```
- Go to different DB --> ```\c <db_name>``` i.e: ```\c template1```
- Show relations/table list (with vue) in a DB --> ```\d```
- Show relations/table list in a DB with more info --> ```\d+```
- Show relations/table list without vue --> ```\dt```
- Create a Table in DB --> ```CREATE TABLE <table_name>(<attribute_name> <attribute_type>(<attribute_length>));```
    - ```CREATE TABLE test_table(name varchar(50));```
- Show schema --> ```\dn```
- Clear SQL Shell Console --> ```\! cls```
- Show connection information --> ```\conninfo```
- Quit SQL Shell Console --> ```\q```
### Startup Commands
- Show all schema --> ```\dn```
- Show all users with Attributes --> ```\du```
- Create Database (Minimum) --> ```CREATE DATABASE <database_name>;```
    - ```CREATE DATABASE test_db;```
- Create Database (Simple Modification) --> ```CREATE DATABASE <db_name> USING TEMPLATE template0;```
    - ```CREATE DATABASE test_db1 USING TEMPLATE template0;```
- Create new user --> ```CREATE USER <username> WITH LOGIN ENCRYPTED PASSWORD '<password>';```
    - ```CREATE USER user1 WITH LOGIN ENCRYPTED PASSWORD '121212';```
- Create new role --> ```CREATE ROLE <rolename> WITH LOGIN ENCRYPTED PASSWORD '<password>';```
    - ```CREATE ROLE role1 WITH LOGIN ENCRYPTED PASSWORD '123123';```
- Insert data in table --> ```INSERT INTO <table_name>(<column_name>) values(<value>);```
    - ```INSERT INTO test_table(name) values('Nur');```
- Show all data from a table --> ```SELECT * FROM <table_name>;```
    - ```SELECT * FROM test_table;```
- Give all access --> ```GRANT ALL PRIVILEGES ON TABLE <table_name> TO <user_name>;```
    - ```GRANT ALL PRIVILEGES ON TABLE test_table TO user1;```
- Give specific access --> ```GRANT <access_keyword> ON TABLE <table_name> TO <username>;```
    - ```GRANT SELECT ON TABLE test_table TO user2;```
- Remove all access --> ```REVOKE ALL PRIVILEGES ON TABLE <table_name> TO <username>;```
    - ```REVOKE ALL PRIVILEGES ON TABLE test_table TO user1;```
- Remove specific access --> ```REVOKE <access_keyword> ON TABLE <table_name> TO <username>;```
    - ```REVOKE SELECT ON TABLE test_table TO user2;```
- Give all access for all table --> ```GRANT ALL PRIVILEGES ON ALL TABLE TO <username>;```
    - ```GRANT ALL PRIVILEGES ON ALL TABLE TO user2;```
    - <span style='color="red";'>Not Recommended</span>
- Give all access for all table for public schema only --> ```GRANT ALL PRIVILEGES ON ALL TABLE IN SCHEMA public TO <username>;```
    - ```GRANT ALL PRIVILEGES ON ALL TABLE IN SCHEMA public TO user2;```
- Assign access to role --> ```GRANT SELECT ON ALL TABLE TO <role_name>;```
    - ```GRANT SELECT ON ALL TABLE TO role1;```
- Assign role (access in the role) to user --> ```GRANT <role_name> TO <username>;```
        - ```GRANT role1 TO user2;```
- Create table --> ```CREATE TABLE users(id SERIAL, name VARCHAR(100), age INT);```
- Drop (Delete) table --> ```DROP TABLE users;```
- Drop (Delete) Database --> ```DROP DATABASE test_db;```


## Basic Data Types in Postgres
- Boolean --> ```true```, ```false```, ```null```
- Integers --> ```INT``` (4 Bytes), ```BIGINT``` (8 Bytes), ```SMALLINT``` (2 Bytes), ```FLOAT4``` (4 Bytes), ```FLOAT8``` (8 Bytes), ```NUMERIC(precision, scale)```, ```SERIAL``` (No negative and auto increment)
- Characters --> ```CHAR``` (Fixed Length), ```VARCHAR``` (Length Varies upon Data), ```TEXT```
- Date --> Supports all format of dates
- UUID --> Universally Unique Identifiers (Kind of MongoDB id)

## Constraints
- Constraints --> Restrictions (More Rules for Data)
- Column Constraints
    - ```NOT NULL``` --> Value can’t be null
    - ```UNIQUE``` --> Data don’t repeat in a column
    - ```PRIMARY KEY``` --> NOT NULL & UNIQUE
    - Foreign Key --> Referential Integrity (Present ```PRIMARY KEY``` in another relation/table)
    - ```DEFAULT``` --> Set a value by default if no value is provided for that column
    - ```CHECK``` --> Custom Validation