-- ============================================================
-- OPERATORS IN PostgreSQL
-- Arithmetic, Comparison, Logical, BETWEEN, LIKE, IN,
-- IS NULL, ORDER BY, LIMIT, DISTINCT
-- ============================================================

-- Sample table used throughout this file
-- (assumes employee2 is already loaded via data_import.sql)
SELECT * FROM employee2;


-- ------------------------------------------------------------
-- 1. ARITHMETIC OPERATORS
-- +  -  *  /  and expressions
-- ------------------------------------------------------------

-- Calculate 10% bonus for each employee
SELECT first_name,
       salary,
       (salary * 0.10) AS bonus
FROM employee2;

-- Calculate annual salary and new salary after 5% increment
SELECT first_name,
       last_name,
       salary,
       (salary * 12)   AS annual_salary,
       (salary * 0.05) AS increment_amount,
       (salary * 1.05) AS new_salary
FROM employee2;


-- ------------------------------------------------------------
-- 2. COMPARISON OPERATORS
-- =  !=  >  <  >=  <=
-- ------------------------------------------------------------

-- Exact match
SELECT * FROM employee2
WHERE age = 30;

-- Not equal
SELECT first_name, age FROM employee2
WHERE age != 30;

-- Less than
SELECT first_name, salary FROM employee2
WHERE salary < 50000;


-- ------------------------------------------------------------
-- 3. LOGICAL OPERATORS
-- AND  OR  NOT
-- ------------------------------------------------------------

-- AND: both conditions must be true
SELECT * FROM employee2
WHERE age >= 60 AND salary >= 90000;

-- OR: at least one condition must be true
SELECT * FROM employee2
WHERE age >= 60 OR salary >= 100000;

-- NOT: exclude a condition
SELECT * FROM employee2
WHERE NOT (department = 'IT');


-- ------------------------------------------------------------
-- 4. BETWEEN, LIKE, IN
-- ------------------------------------------------------------

-- BETWEEN: inclusive range filter
SELECT first_name, last_name, salary
FROM employee2
WHERE salary BETWEEN 40000 AND 60000;

-- LIKE: pattern matching
-- % = any number of characters, _ = single character
SELECT first_name, last_name, email
FROM employee2
WHERE email LIKE '%@gmail.com';

SELECT first_name FROM employee2
WHERE first_name LIKE '%j%';

-- IN: match against a list of values
SELECT first_name, last_name, department
FROM employee2
WHERE department IN ('Finance', 'Marketing', 'IT');


-- ------------------------------------------------------------
-- 5. OTHER OPERATORS
-- IS NULL, ORDER BY, LIMIT, DISTINCT
-- ------------------------------------------------------------

-- IS NULL: find rows with missing values
SELECT first_name, last_name, email
FROM employee2
WHERE email IS NULL;

-- ORDER BY: sort results (ASC = low to high, DESC = high to low)
SELECT first_name, last_name, salary
FROM employee2
ORDER BY salary ASC;

-- LIMIT: restrict number of rows returned
SELECT first_name, last_name, salary
FROM employee2
ORDER BY salary DESC
LIMIT 5;

-- DISTINCT: count unique values (removes duplicates)
SELECT COUNT(DISTINCT department) AS unique_department_count
FROM employee2;
