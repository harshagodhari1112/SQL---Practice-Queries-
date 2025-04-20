
-- Basic SQL Queries for Learning and Practice

-- 1. Select all columns from customer table
SELECT * FROM customer;

-- 2. Select specific columns from employee table
SELECT employee_id, employee_name, department FROM employee;

-- 3. Use WHERE clause to filter records
SELECT * FROM inventory WHERE quantity_available > 10;

-- 4. ORDER BY clause
SELECT * FROM customer ORDER BY customer_name ASC;

-- 5. GROUP BY clause with aggregate function
SELECT city, COUNT(*) AS total_customers FROM customer GROUP BY city;

-- 6. Filtering groups using HAVING
SELECT city, COUNT(*) AS total_customers 
FROM customer 
GROUP BY city 
HAVING COUNT(*) > 5;

-- 7. LIMIT (For MySQL) or TOP (For SQL Server)
-- For MySQL:
SELECT * FROM employee LIMIT 5;

-- For SQL Server:
-- SELECT TOP 5 * FROM employee;

-- 8. BETWEEN operator
SELECT * FROM inventory WHERE price BETWEEN 100 AND 500;

-- 9. IN operator
SELECT * FROM sale WHERE payment_mode IN ('Cash', 'Credit Card');

-- 10. IS NULL / IS NOT NULL
SELECT * FROM customer WHERE email IS NULL;

-- Practice these queries using your SaleOrder database.
