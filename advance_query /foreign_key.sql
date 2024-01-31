-- Active: 1706320321800@@127.0.0.1@5432@test1
CREATE TABLE Department(
    deptId SERIAL PRIMARY KEY,
    dept_name VARCHAR(255) UNIQUE
);  


INSERT INTO Department VALUES (1,'Psychology');

SELECT * FROM Department;


-- create employee TABLE
CREATE TABLE employee(
    employeeId SERIAL PRIMARY KEY,
    e_name VARCHAR(255) UNIQUE NOT  NULL ,
    deptID  INT,
    CONSTRAINT fk_constraint_dept
        FOREIGN KEY (deptID)
        REFERENCES Department(deptId)
)


