-- 1. Customer Demographic Analysis

	-- Total number of customers
	SELECT COUNT(*) AS 'Total Customers' FROM customers;
    
	-- Average age of customers
	SELECT AVG(age) AS 'Average Customer Age' FROM customers;
    
	-- List of customers from specific states
	SELECT 
		CONCAT(first_name, ' ', last_name) AS 'Customer Name',
        age AS Age,
        city AS City
    FROM customers WHERE state = "TX";

	-- Find the oldest and youngest customers in the database
	SELECT * FROM customers WHERE age = (SELECT MIN(age) FROM customers);
	SELECT * FROM customers WHERE age = (SELECT MAX(age) FROM customers);