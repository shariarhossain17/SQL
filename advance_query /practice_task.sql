-- Active: 1706320321800@@127.0.0.1@5432@practice
CREATE DATABASE practice;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY, emp_name VARCHAR(50), department VARCHAR(50), salary DECIMAL(10, 2)
)

INSERT INTO
    employee (
        emp_id, emp_name, department, salary
    )
VALUES (1, 'John Doe', 'HR', 50000.00),
    (
        2, 'Jane Smith', 'IT', 60000.00
    ),
    (
        3, 'Michael Johnson', 'Finance', 55000.00
    ),
    (
        4, 'Emily Brown', 'HR', 52000.00
    );

--  task 1 Write an SQL query to retrieve the names and salaries of employees who work in the "HR" department.

SELECT emp_name, salary FROM employee WHERE department = 'HR';