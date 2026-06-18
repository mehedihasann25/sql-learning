-- ============================================================
-- DATA IMPORT IN PostgreSQL
-- Two methods to load CSV data into a table
-- ============================================================


-- ------------------------------------------------------------
-- METHOD 1: COPY Command (Standard)
-- Use when you have direct file access on the server
-- ------------------------------------------------------------

DROP TABLE IF EXISTS employee2;

CREATE TABLE employee2 (
    employee_id  INT PRIMARY KEY,
    first_name   VARCHAR(20) NOT NULL,
    last_name    VARCHAR(20) NOT NULL,
    email        VARCHAR(50),
    department   VARCHAR(20),
    salary       NUMERIC(10,2),
    joining_date DATE,
    age          INT
);

-- Load data from CSV file
COPY employee2 (employee_id, first_name, last_name, email, department, salary, joining_date, age)
FROM 'your/file/path/employee_data.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM employee2;


-- ------------------------------------------------------------
-- METHOD 2: Direct Mode (pgAdmin GUI)
-- Use \copy or pgAdmin's import tool when server file access
-- is not available (e.g., local machine vs remote server)
-- Steps: Right-click table → Import/Export → select CSV file
-- ------------------------------------------------------------

DROP TABLE IF EXISTS employee3;

CREATE TABLE employee3 (
    employee_id  INT PRIMARY KEY,
    first_name   VARCHAR(20) NOT NULL,
    last_name    VARCHAR(20) NOT NULL,
    email        VARCHAR(50),
    department   VARCHAR(20),
    salary       NUMERIC(10,2),
    joining_date DATE,
    age          INT
);

SELECT * FROM employee3;
