-- Active: 1706320321800@@127.0.0.1@5432@test1

-- ## create a table WITH constrains


CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
)

CREATE TABLE users1(
    user_id SERIAL,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    PRIMARY KEY(user_id,username)
)