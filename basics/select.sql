-- Topic: SELECT Statement
-- Date: May 2026
-- Course: PostgreSQL (Module 1-3)

-- সব column দেখাও
SELECT * FROM employee;

-- নির্দিষ্ট column দেখাও
SELECT name, department, salary FROM employee;

-- Column-কে নতুন নাম দাও (Alias)
SELECT name AS employee_name, salary AS monthly_salary
FROM employee;

-- Note: * দিলে সব column আসে, কিন্তু large database-এ slow হয়
--       তাই specific column name দেওয়া ভালো practice
