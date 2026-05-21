-- =============================================
-- TABLE MANAGEMENT: ALTER TABLE & CONSTRAINTS
-- PostgreSQL Practice
-- =============================================


-- View all data
SELECT *
FROM admission_info;


-- =============================================
-- UPDATE: Modify existing data
-- =============================================

-- Update a specific row by name
UPDATE admission_info
SET age = 35
WHERE name = 'Shihab';

-- Update multiple rows using a condition
UPDATE admission_info
SET age = 30
WHERE age <= 25;

-- Update multiple columns at once
UPDATE admission_info
SET gmail = 'gms250@gmail.com', age = 35
WHERE name = 'Saimoon';

-- Update using existing value (expression)
UPDATE admission_info
SET age = age - 1
WHERE gmail LIKE '%@gmail.com';


-- View updated data
SELECT *
FROM admission_info
ORDER BY user_id ASC;


-- =============================================
-- ALTER TABLE: Modify table structure
-- =============================================

-- Rename a column
ALTER TABLE admission_info
RENAME COLUMN name TO full_name;

-- Change column data type (INT to SMALLINT)
ALTER TABLE admission_info
ALTER COLUMN age TYPE SMALLINT;

-- Add NOT NULL constraint to a column
ALTER TABLE admission_info
ALTER COLUMN full_name SET NOT NULL;

-- Drop existing constraint
ALTER TABLE admission_info
DROP CONSTRAINT age;

-- Add CHECK constraint (business rule: age must be 18+)
ALTER TABLE admission_info
ADD CONSTRAINT age CHECK (age >= 18);


-- =============================================
-- INSERT: Test the new constraint
-- =============================================

-- This insert works because age = 18 satisfies the constraint
INSERT INTO admission_info (user_id, full_name, gmail, age)
VALUES (8, 'Pracir', 'pracir@gmail.com', 18);


-- =============================================
-- RENAME TABLE
-- =============================================

ALTER TABLE admission_info
RENAME TO admission;


-- Final view with new table name
SELECT *
FROM admission
ORDER BY user_id ASC;
