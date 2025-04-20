
-- Sample Insurance Domain Queries

-- 1. Policyholders with more than 2 claims
SELECT customer_id, COUNT(*) AS total_claims
FROM claims
GROUP BY customer_id
HAVING COUNT(*) > 2;

-- 2. Policies expiring within 30 days
SELECT policy_id, expiry_date
FROM policies
WHERE expiry_date BETWEEN GETDATE() AND DATEADD(DAY, 30, GETDATE());

-- 3. Total premium collected per month
SELECT FORMAT(premium_date, 'yyyy-MM') AS month, SUM(premium_amount) AS total_premium
FROM premiums
GROUP BY FORMAT(premium_date, 'yyyy-MM');

-- 4. Claims with pending status
SELECT * FROM claims WHERE claim_status = 'Pending';

-- 5. Customers without active policy
SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN policies p ON c.customer_id = p.customer_id AND p.status = 'Active'
WHERE p.policy_id IS NULL;
