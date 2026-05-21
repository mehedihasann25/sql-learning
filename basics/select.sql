-- Topic: SELECT Statement
-- Date: May 2026
-- Course: PostgreSQL (Module 1-3)

-- সব column দেখাও
SELECT * FROM employees;

-- নির্দিষ্ট column দেখাও  
SELECT name, department, salary FROM employees;

-- Column-কে নতুন নাম দাও (Alias)
SELECT name AS employee_name, salary AS monthly_pay
FROM employees;

-- Note: * দিলে সব column আসে, কিন্তু large database-এ slow হয়
--       তাই specific column name দেওয়া ভালো practice
