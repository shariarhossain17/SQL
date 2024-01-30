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


ALTER TABLE user2
ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL


SELECT  * FROM user2 