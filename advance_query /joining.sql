-- Active: 1706320321800@@127.0.0.1@5432@test2




SELECT * FROM employees;


--  inner joining

SELECT employees.name, departments.name,employees.email FROM employees 
INNER JOIN departments ON departments.deptid = employees.deptid;



CREATE TABLE IF NOT EXISTS classes(
    classID SERIAL PRIMARY KEY,
    className text NOT NULL
)


CREATE TABLE IF NOT EXISTS students(
    stID SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NUll,
    phone_number VARCHAR(11),
    classID INTEGER NOT NULL,
        CONSTRAINT class_Id
            Foreign Key (classID) REFERENCES classes (classID)
)


INSERT INTO classes(className) VALUES ('CSE'),('PHYSICS'),('BANGLA')


INSERT INTO students(name,email,phone_number,classID) VALUES('sh','sh1@gmail.com','01',1),('s3','sh3@gmail.com','01',2),('sh3','sh1@gmail.com','01',3)


SELECT students.name,students.email,classes.className FROM students
 INNER JOIN classes ON classes.classID = students.classID;