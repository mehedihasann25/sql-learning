-- Topic: CREATE TABLE, INSERT, DELETE, DROP
-- Date: May 2026

-- Database তৈরি
CREATE DATABASE employee;

-- Table তৈরি (SERIAL = auto increment)
CREATE TABLE employee(
    employee_id SERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    position    VARCHAR(50),
    department  VARCHAR(50),
    hire_date   VARCHAR(50),
    salary      NUMERIC(10,2)
);

-- Data insert
INSERT INTO employee (name, position, department, hire_date, salary)
VALUES 
    ('Mehedi', 'Operation Analyst', 'Operation Management', '2026-10-01', 50000.00),
    ('Arafat', 'Web Developer', 'Developer', '2026-10-01', 100000.00),
    ('Saimon', 'Researcher', 'Research and Development', '2026-10-01', 50000.00),
    ('Shihab', 'Assistant Director', 'Bangladesh Bank', '2026-10-01', 70000.00);

-- নির্দিষ্ট row delete
DELETE FROM hr_employee WHERE department = 'Sales';

-- Column বাদ দাও
ALTER TABLE hr_employee DROP COLUMN salary;

-- Table মুছে ফেলো (IF EXISTS = error message দেখায় না)
DROP TABLE IF EXISTS hr_employee;
DROP DATABASE IF EXISTS hr_employee;
