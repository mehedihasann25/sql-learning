-- Drop the table if it already exists
DROP TABLE IF EXISTS employees;

-- Create the employees table

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

-- Insert sample data

INSERT INTO employees (first_name, last_name, department, salary, joining_date, age)
VALUES
    ('Amit','Sharma', 'IT', 60000.00, '2022-05-01', 29),
    ('Neha','Patel',  'HR', 55000.00, '2021-08-15', 32),
    ('Ravi','Kumar',  'Finance',70000.00, '2020-03-10', 35),
    ('Anjali','Verma','IT', 65000.00, '2019-11-22', 28),
    ('Suresh','Reddy','Operations', 50000.00, '2023-01-10', 26);

-- View all data
SELECT * FROM employees;


-- Q1: Retrieve all employees' first names and departments
SELECT first_name, department
FROM employees;


-- Q2: Increase salary by 10% for IT department employees

UPDATE employees
SET salary = salary + (salary * 0.1)
WHERE department = 'IT';

SELECT * FROM employees
ORDER BY employee_id ASC;


-- Q3: Delete employees older than 34

DELETE FROM employees
WHERE age > 34;

-- Q4: Add a new column 'email'

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);


-- Q5: Rename 'department' column to 'dept_name'

ALTER TABLE employees
RENAME COLUMN department TO dept_name;


-- Q6: Retrieve employees who joined after Jan 1, 2021
SELECT *
FROM employees
WHERE joining_date > '2021-01-01';

-- Q7: Change salary column data type to INTEGER

ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;


-- Q8: List employees by age and salary (descending salary)

SELECT first_name, last_name, age, salary
FROM employees
ORDER BY salary DESC;


-- Q9: Insert a new employee

INSERT INTO employees (first_name, last_name, dept_name, salary, joining_date, age)
VALUES ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);


-- Q10: Increase age of every employee by 1

UPDATE employees
SET age = age + 1;

