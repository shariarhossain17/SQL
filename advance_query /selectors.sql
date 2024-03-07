-- Active: 1706320321800@@127.0.0.1@5432@test2



CREATE TABLE IF NOT EXISTS departments(
    deptID SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS employees(
    employeeID SERIAL PRIMARY KEY,
    name text NOT NULL,
    email text NOT NULL,
    salary INTEGER NOT NULL,
    joining_date DATE NOT NULL,
    deptID INTEGER NOT NUll,
    CONSTRAINT fk_deptID
       FOREIGN KEY (deptID)
        REFERENCES departments(deptID)
    
)

INSERT INTO departments(name) 
VALUES ('it'),('HR'),('marketing');
   

INSERT INTO employees(name,email,salary,joining_date,deptID) 
VALUES 
    ('java','hell@gmail.com',22222,'2024-07-11',1),
      ('javascript','script@gmail.com',20000,'2024-07-11',1),
          ('c++','c@.comm',5000,'2024-07-11',1);


-- select all fields/row

SELECT * FROM departments;


SELECT * FROM employees;

-- select some table
SELECT employeeID,email,name FROM employees;

-- filtering data from table

-->< <= >= <>(not)
SELECT * FROM employees
    WHERE salary>2000 and salary<21000;



--limit OFFSET asc desc

-- get data descending order
SELECT * FROM employees ORDER BY name DESC;

-- get data asc ORDER BY by NAME

SELECT * FROM employees ORDER BY name ASC;      

-- get data by LIMIT
SELECT * FROM employees LIMIT 4;


-- get data by LIMIT and OFFSET
SELECT * FROM employees ORDER BY salary DESC LIMIT 2 OFFSET 1;


-- get highest salary PERMISSION

SELECT * FROM employees
    ORDER BY salary desc LIMIT 1;

-- get third highest salary;

SELECT * FROM employees
    ORDER BY salary desc LIMIT 1 OFFSET 2;


-- in ,not in ,between,like   

--in
SELECT * FROM employees WHERE employeeid IN(1,5);

-- not IN
SELECT * FROM employees WHERE employeeid NOT IN(1,5);


-- BETWEEN

SELECT * FROM employees WHERE salary BETWEEN 1000 and 5000;


-- LIKE


-- all CHARACTER
SELECT * FROM employees WHERE name LIKE '%c%';

--start CHARACTER
 SELECT * FROM employees WHERE name LIKE 'c%';

-- end CHARACTER
SELECT * FROM employees WHERE name LIKE '%c';






