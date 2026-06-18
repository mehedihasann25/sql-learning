-- ============================================================
-- FUNCTIONS IN PostgreSQL
-- Set Operators, Aggregate Functions, String Functions
-- ============================================================


-- ------------------------------------------------------------
-- 1. SET OPERATORS
-- Combine results from two or more SELECT queries
-- Both queries must have same number of columns & data types
-- ------------------------------------------------------------

-- Sample tables
DROP TABLE IF EXISTS students_2023;
CREATE TABLE students_2023 (
    student_id   INT PRIMARY KEY,
    student_name VARCHAR(100),
    course       VARCHAR(50)
);
INSERT INTO students_2023 VALUES
(1, 'Aarav Sharma',  'Computer Science'),
(2, 'Ishita Verma',  'Mechanical Engineering'),
(3, 'Kabir Patel',   'Electronics'),
(4, 'Ananya Desai',  'Civil Engineering'),
(5, 'Rahul Gupta',   'Computer Science');

DROP TABLE IF EXISTS students_2024;
CREATE TABLE students_2024 (
    student_id   INT PRIMARY KEY,
    student_name VARCHAR(100),
    course       VARCHAR(50)
);
INSERT INTO students_2024 VALUES
(3, 'Kabir Patel',   'Electronics'),
(4, 'Ananya Desai',  'Civil Engineering'),
(6, 'Meera Rao',     'Computer Science'),
(7, 'Vikram Singh',  'Mathematics'),
(8, 'Sanya Kapoor',  'Physics');


-- UNION: combines both tables, removes duplicates
SELECT student_name, course FROM students_2023
UNION
SELECT student_name, course FROM students_2024;

-- UNION ALL: combines both tables, keeps duplicates
SELECT student_name, course FROM students_2023
UNION ALL
SELECT student_name, course FROM students_2024;

-- INTERSECT: returns only rows that exist in BOTH tables
SELECT student_name, course FROM students_2023
INTERSECT
SELECT student_name, course FROM students_2024;

-- EXCEPT: returns rows in first table but NOT in second
SELECT student_name, course FROM students_2023
EXCEPT
SELECT student_name, course FROM students_2024;


-- ------------------------------------------------------------
-- 2. AGGREGATE FUNCTIONS
-- Perform calculations across multiple rows
-- SUM  COUNT  AVG  MAX  MIN
-- ------------------------------------------------------------

-- Sample table
DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id    SERIAL PRIMARY KEY,
    product_name  VARCHAR(100),
    category      VARCHAR(50),
    price         NUMERIC(10,2),
    quantity      INT,
    added_date    DATE,
    discount_rate NUMERIC(5,2)
);
INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop',       'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone',   'Electronics', 45000.99, 25, '2024-02-20',  5.00),
('Headphones',   'Accessories',  1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture',    5500.00, 20, '2023-12-01', 20.00),
('Desk',         'Furniture',    8000.00, 15, '2023-11-20', 12.00),
('Monitor',      'Electronics', 12000.00,  8, '2024-01-10',  8.00),
('Printer',      'Electronics',  9500.50,  5, '2024-02-01',  7.50),
('Mouse',        'Accessories',   750.00, 40, '2024-03-18', 10.00),
('Keyboard',     'Accessories',  1250.00, 35, '2024-03-18', 10.00),
('Tablet',       'Electronics', 30000.00, 12, '2024-02-28',  5.00);


-- SUM: total quantity across all products
SELECT SUM(quantity) AS total_quantity
FROM products;

-- SUM with condition
SELECT SUM(quantity) AS electronics_over_20k
FROM products
WHERE category = 'Electronics' AND price > 20000;

-- COUNT: total number of rows
SELECT COUNT(*) AS total_products
FROM products;

-- COUNT with condition
SELECT COUNT(*) AS phone_products
FROM products
WHERE product_name LIKE '%phone%';

-- AVG: average price
SELECT AVG(price) AS average_price
FROM products;

-- AVG with condition
SELECT AVG(price) AS avg_accessories_or_recent
FROM products
WHERE category = 'Accessories' OR added_date > '2024-02-01';

-- MAX and MIN: highest and lowest price
SELECT MAX(price) AS max_price,
       MIN(price) AS min_price
FROM products;


-- ------------------------------------------------------------
-- 3. STRING FUNCTIONS
-- Manipulate and format text data
-- ------------------------------------------------------------

-- UPPER / LOWER: change text case
SELECT UPPER(category) AS category_upper FROM products;
SELECT LOWER(category) AS category_lower FROM products;

-- CONCAT: join two or more strings
SELECT CONCAT(product_name, ' - ', category) AS product_details
FROM products;

-- SUBSTRING: extract part of a string (start_position, length)
SELECT SUBSTRING(product_name, 1, 5) AS short_name
FROM products;

-- LENGTH: count characters in a string
SELECT product_name,
       LENGTH(product_name) AS char_count
FROM products;

-- TRIM: remove leading and trailing spaces
SELECT LENGTH(TRIM('  Monitor    ')) AS trimmed_length;
SELECT LENGTH('  Monitor    ')       AS original_length;

-- REPLACE: substitute one word with another
SELECT REPLACE(product_name, 'phone', 'device') AS updated_name
FROM products;

-- RIGHT: extract N characters from the right side
SELECT RIGHT(category, 3) AS last_3_chars
FROM products;
