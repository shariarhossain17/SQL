-- Active: 1706320321800@@127.0.0.1@5432@test1
CREATE Table courses(
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    publish_date DATE
)





INSERT INTO courses(course_name,description,publish_date) 
VALUES 
    ('java','hello world','2024-07-11'),
    ('javascript','hello world','2022-07-11'),
    ('c++','hello world','2023-07-11');


SELECT * FROM courses;
