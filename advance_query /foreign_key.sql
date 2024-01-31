-- Active: 1706320321800@@127.0.0.1@5432@test1
CREATE TABLE Department(
    deptId SERIAL PRIMARY KEY,
    dept_name VARCHAR(255) UNIQUE
);  


INSERT INTO Department VALUES (1,'Psychology');