-- Active: 1706320321800@@127.0.0.1@5432@test1

-- ALTER TABLE

-- add a column,DROP column,change datatype of a COLUMN
-- RENAME a column,set DEFAULT value a COLUMN
-- add CONSTRAINT to a COLUMN,drop CONSTRAINT a COLUMN
-- table RENAME


-- syntax ALTER TABLE action

CREATE TABLE "user2"(
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE  NOT NULL,
    first_name VARCHAR(255) UNIQUE NOT NULL,
    age INT DEFAULT 18
)



-- add COLUMN
ALTER TABLE user2
ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL


--drop COLUMN
ALTER TABLE user2 DROP COLUMN age

--change data type

ALTER TABLE user2
ADD COLUMN demo int;

ALTER TABLE user2
    Alter COLUMN demo type text ;


--set default VALUES
ALTER TABLE user2 
    Alter COLUMN demo set DEFAULT 'Bangladesh';

-- DROP DEFAULT VALUES
ALTER TABLE user2 
    Alter COLUMN demo DROP DEFAULT;


--RENAME column

ALTER TABLE user2 
    RENAME COLUMN country to demo;





--insert USER
INSERT INTO user2(email,first_name) VALUES ('sh@1.com','sh1');



-- get data
SELECT  * FROM user2 