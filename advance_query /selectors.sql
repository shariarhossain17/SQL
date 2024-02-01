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
    ('java','hell@gmail.com',60,'2024-07-11',1),
      ('javascript','script@gmail.com',60,'2024-07-11',1),
          ('c++','c@.comm',60,'2024-07-11',1);


-- select all fields/row

SELECT * FROM departments;


SELECT * FROM employees;

-- select data from table

SELECT employeeID,email,name FROM employees;
      