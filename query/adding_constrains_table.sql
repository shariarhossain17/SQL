-- Active: 1706320321800@@127.0.0.1@5432@test1

-- ## create a table WITH constrains


CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age int DEFAULT 18
)

-- CREATE TABLE users1(
--     user_id SERIAL,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     PRIMARY KEY(user_id,username),
--     age int DEFAULT 18
-- )


-- insert USER
INSERT INTO users VALUES(1,'abc','abc@gmail.com')


-- get users

SELECT * from users;