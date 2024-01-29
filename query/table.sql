-- Active: 1706320321800@@127.0.0.1@5432@test1

-- create table
CREATE TABLE student  (
    student_id INT,
    first_name VARCHAR( 50),
    last_name VARCHAR(50),
    cgpa NUMERIC(1,2)
)

--Rename TABLE
ALTER TABLE student RENAME TO students


--delete TABLE
DROP TABLE student


