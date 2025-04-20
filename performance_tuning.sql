
-- SQL Performance Tuning Tips

-- 1. Create Index on frequently searched column
CREATE INDEX idx_customer_name ON customer(customer_name);

-- 2. Use EXISTS instead of IN for better performance
SELECT customer_name FROM customer
WHERE EXISTS (
    SELECT 1 FROM sale WHERE sale.customer_id = customer.customer_id
);

-- 3. Avoid SELECT * in production
SELECT customer_id, customer_name FROM customer;

-- 4. Use proper data types and avoid implicit conversions
-- 5. Analyze execution plan to identify slow queries
-- 6. Keep statistics and indexes updated
