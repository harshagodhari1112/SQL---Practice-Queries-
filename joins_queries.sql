
-- SQL Joins Practice Queries

-- 1. INNER JOIN - Get all sales with customer name
SELECT s.sale_id, s.sale_date, c.customer_name
FROM sale s
INNER JOIN customer c ON s.customer_id = c.customer_id;

-- 2. LEFT JOIN - Get all customers with or without sales
SELECT c.customer_name, s.sale_id, s.sale_date
FROM customer c
LEFT JOIN sale s ON c.customer_id = s.customer_id;

-- 3. RIGHT JOIN - Get all sales even if customer is not found (if any)
SELECT c.customer_name, s.sale_id, s.sale_date
FROM customer c
RIGHT JOIN sale s ON c.customer_id = s.customer_id;

-- 4. FULL OUTER JOIN - All customers and sales (only works in some DBMS like SQL Server)
-- For SQL Server:
-- SELECT c.customer_name, s.sale_id, s.sale_date
-- FROM customer c
-- FULL OUTER JOIN sale s ON c.customer_id = s.customer_id;

-- 5. JOIN with WHERE condition
SELECT s.sale_id, s.sale_date, c.customer_name
FROM sale s
INNER JOIN customer c ON s.customer_id = c.customer_id
WHERE s.sale_date >= '2024-01-01';

-- 6. JOIN three tables - sale, customer, and employee
SELECT s.sale_id, s.sale_date, c.customer_name, e.employee_name
FROM sale s
INNER JOIN customer c ON s.customer_id = c.customer_id
INNER JOIN employee e ON s.employee_id = e.employee_id;

-- 7. LEFT JOIN with NULL check - customers with no sales
SELECT c.customer_id, c.customer_name
FROM customer c
LEFT JOIN sale s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;

-- Practice these queries using your SaleOrder database.
