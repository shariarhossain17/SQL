-- Active: 1706320321800@@127.0.0.1@5432@test1


CREATE TABLE "user2"(
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE  NOT NULL,
    first_name VARCHAR(255) UNIQUE NOT NULL,
    age INT DEFAULT 18
)


INSERT INTO user2(user_id, email, first_name, age)VALUES(1, 'sh@gmail.com', 'sh', 18);