
-- Advanced SQL Queries

-- 1. Subquery in SELECT
SELECT customer_name,
       (SELECT COUNT(*) FROM sale s WHERE s.customer_id = c.customer_id) AS total_sales
FROM customer c;

-- 2. Subquery in WHERE
SELECT * FROM inventory
WHERE price > (SELECT AVG(price) FROM inventory);

-- 3. Common Table Expression (CTE)
WITH HighValueSales AS (
    SELECT * FROM sale WHERE amount > 10000
)
SELECT * FROM HighValueSales;

-- 4. Window Function - RANK()
SELECT customer_id, sale_id, amount,
       RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS rank
FROM sale;

-- 5. ROW_NUMBER() for pagination
SELECT * FROM (
    SELECT *, ROW_NUMBER() OVER (ORDER BY sale_date DESC) AS rn
    FROM sale
) AS numbered_sales
WHERE rn BETWEEN 1 AND 10;

-- 6. CASE statement
SELECT sale_id, amount,
       CASE
           WHEN amount >= 10000 THEN 'High'
           WHEN amount >= 5000 THEN 'Medium'
           ELSE 'Low'
       END AS sale_category
FROM sale;
