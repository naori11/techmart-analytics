-- 5. Advanced Business Intelligence

	-- Monthly Sales Trends
	SELECT 
		DATE_FORMAT(order_date, '%Y-%m') AS Month,
		COUNT(*) AS 'Total Orders',
		CONCAT('$', FORMAT(SUM(total_amount - shipping_cost), 2)) AS 'Total Revenue',
		CONCAT('$', FORMAT(AVG(total_amount - shipping_cost), 2)) AS 'Average Order Value'
	FROM orders
	WHERE DATE_FORMAT(order_date, '%Y') = '2024'
	AND order_status = 'delivered'
	GROUP BY Month;
    
    -- Customers who haven't ordered this year
    SELECT
		CONCAT(c.first_name, ' ', c.last_name) AS 'Customer Name',
        (SELECT 
			MAX(order_date) 
		FROM orders o2
        WHERE o2.customer_id = c.customer_id) AS 'Last Order Date'
	FROM orders o
    JOIN customers c
    ON o.customer_id = c.customer_id
    WHERE DATE_FORMAT(o.order_date, "%Y") < YEAR(CURDATE());
    
	-- Customers who haven't ordered this year
    SELECT
		CONCAT(c.first_name, ' ', c.last_name) AS 'Customer Name',
        (SELECT 
			DATEDIFF(CURDATE(), MAX(order_date))
		FROM orders o2
        WHERE o2.customer_id = c.customer_id) AS 'Last Order Date'
	FROM orders o
    JOIN customers c
    ON o.customer_id = c.customer_id
    WHERE DATE_FORMAT(o.order_date, "%Y") < YEAR(CURDATE());
    
	-- Profit margin for each product
	SELECT 
		product_name AS 'Product Name',
		CONCAT('$', FORMAT(cost, 2)) AS 'Cost',
		CONCAT('$', FORMAT(price, 2)) AS 'Selling Price',
		CONCAT('$', FORMAT((price - cost), 2)) AS 'Profit Margin'
	FROM products;