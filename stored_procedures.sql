
-- Stored Procedure Example (SQL Server Syntax)

-- 1. Simple procedure to get sales by customer
CREATE PROCEDURE GetSalesByCustomer
    @CustomerId INT
AS
BEGIN
    SELECT * FROM sale WHERE customer_id = @CustomerId;
END;

-- 2. Procedure with INSERT
CREATE PROCEDURE AddCustomer
    @CustomerName VARCHAR(100),
    @Email VARCHAR(100),
    @City VARCHAR(50)
AS
BEGIN
    INSERT INTO customer (customer_name, email, city)
    VALUES (@CustomerName, @Email, @City);
END;
