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

-- task2 Task 2: Aggregation and HAVING Clause Create a table named "orders" with columns (order_id, customer_id, total_amount) and insert the following data:

CREATE TABLE orders (
    order_id INT PRIMARY KEY, customer_id INT, total_amount DECIMAL(10, 2)
)

INSERT INTO
    orders (
        order_id, customer_id, total_amount
    )
VALUES (101, 1, 200.00),
    (102, 2, 300.00),
    (103, 1, 150.00),
    (104, 3, 400.00),
    (105, 2, 250.00);

SELECT * FROM orders;

SELECT customer_id, avg(total_amount) as total_amount
from orders
GROUP BY
    customer_id
HAVING
    avg(total_amount) >= 250;

-- Task 3: JOIN and GROUP BY Create two tables named "students" and "courses" with columns as follows:

CREATE TABLE students (
    student_id INT PRIMARY KEY, student_name VARCHAR(50), age INT, gender VARCHAR(10)
)

CREATE TABLE courses (
    course_id INT PRIMARY KEY, course_name VARCHAR(50), credits INT
)

INSERT INTO
    students (
        student_id, student_name, age, gender
    )
VALUES (1, 'Alice', 22, 'Female'),
    (2, 'Bob', 21, 'Male'),
    (3, 'Charlie', 23, 'Male');

INSERT INTO
    courses (
        course_id, course_name, credits
    )
VALUES (101, 'Mathematics', 3),
    (102, 'History', 4),
    (103, 'Physics', 3);

CREATE TABLE enrollment (
    enrollment_id INT PRIMARY KEY, student_id INT, course_id INT
)

INSERT INTO
    enrollment (
        enrollment_id, student_id, course_id
    )
VALUES (1, 1, 101),
    (2, 1, 102),
    (3, 2, 103),
    (4, 3, 101);

SELECT s.student_name, course_name, credits
FROM
    students s
    INNER JOIN enrollment e on e.student_id = s.student_id
    INNER JOIN courses cr on cr.course_id = e.course_id;

-- task 4

CREATE TABLE employees (
    emp_id INT PRIMARY KEY, emp_name VARCHAR(50), department_id INT
)

CREATE TABLE departments (
    department_id INT PRIMARY KEY, department_name VARCHAR(50)
)

CREATE Table salaries ( emp_id INT, salary DECIMAL(10, 2) )