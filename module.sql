-- Creating Database
-- CREate DATABASE ph;

-- Create Table
-- CREATE  TABLE person(
--     
--     u_id SERIAL,
--     f_name VARCHAR(50),
--     l_name VARCHAR(50),
--     age INTEGER,
--     is_active BOOLEAN,
--     dob DATE
-- 
-- );

-- Rename Table name
-- Alter table person RENAME to users;

-- Drop (Delete) a table
-- DROP  TABLE users;

-- Create Table with constrains
-- CREATE TABLE person(
--     
--     u_id SERIAL PRIMARY KEY,
--     username VARCHAR(20) NOT NULL UNIQUE,
--     age INTEGER CHECK (age >= 18)
-- 
-- );

-- Crate table with constrains (define constrains at the end)
-- CREATE TABLE person2(
--     
--     u_id SERIAL,
--     username VARCHAR(20) NOT NULL,
--     age INTEGER CHECK (age >= 18),
--     PRIMARY KEY(u_id),
--     UNIQUE(username)
-- 
-- );

-- Crate table with constrains at the end (composite primary key)
-- CREATE TABLE person3(
--     
--     u_id SERIAL,
--     username VARCHAR(20) NOT NULL,
--     email varchar(50) not null,
--     age INTEGER CHECK (age >= 18),
--     PRIMARY KEY(username, email), -- composite primary key
--     UNIQUE(u_id, email) -- multiple values must be unique
-- 
-- );



-- Insert single data into table
-- INSERT INTO person(u_id, username, age) VALUES(1, 'nur', 26);


-- Insert multiple data into table
-- INSERT INTO person(u_id, username, age) VALUES(2, 'rony', 24), (3, 'rakib', 22), (4, 'roktim', 31);


-- Insert data without column names
-- INSERT  INTO person VALUES(5, 'safayet', 28);



-- Check constraints
-- INSERT INTO person(u_id, username, age) VALUES(6, 'rafi', 17); -- violet CHECK constraints for age >= 18
-- INSERT INTO person(u_id, username, age) VALUES(5, 'rafi', 22); -- violet UNIQUE u_id constraints
-- INSERT INTO person3(u_id, username, email, age) VALUES(1, 'shanto', 'shanto@mail.co', 24);
-- INSERT INTO person3(u_id, username, email, age) VALUES(2, 'shanto22', 'shanto@mail.co', 25); -- violet unique email

-- Show all data
-- SELECT * from person;
SELECT * FROM person3;