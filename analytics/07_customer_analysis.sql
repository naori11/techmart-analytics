-- 7. Customer Behavior Analysis

	-- Customers that placed multiple orders
	SELECT 	
		CONCAT(c.first_name, ' ', c.last_name) as 'Customer Name',
        COUNT(o.order_id) AS 'Order Count',
        CONCAT('$', FORMAT(SUM(total_amount - shipping_cost), 2)) AS 'Total Order Value',
		CONCAT('$', FORMAT(AVG(total_amount - shipping_cost), 2)) AS 'Average Order Price',
		CONCAT('$', FORMAT(MAX(total_amount - shipping_cost), 2)) AS 'Highest Order Price',
		CONCAT('$', FORMAT(MIN(total_amount - shipping_cost), 2)) AS 'Lowest Order Price'
	FROM orders o
    JOIN customers c
    ON o.customer_id = c.customer_id
    GROUP BY c.customer_id
    ORDER BY COUNT(o.order_id) DESC, SUM(total_amount - shipping_cost) DESC;
    
    -- Most popular products
    SELECT
		p.product_name AS 'Product Name',
        COUNT(oi.order_id) AS 'Quantity Sold'
	FROM products p
    JOIN order_items oi
    ON p.product_id = oi.product_id
    GROUP BY p.product_name
    ORDER BY COUNT(oi.order_id) DESC, p.product_name;

	-- Average days between customer registration and first order
    SELECT
    AVG(date_difference) AS 'Average Days to First Order',
	MIN(date_difference) AS 'Minimum Days',
    MAX(date_difference) AS 'Maximum Days'
    FROM
		(SELECT 
			c.customer_id,
			DATEDIFF(MIN(o.order_date), c.registration_date) AS date_difference
		FROM customers c
		LEFT JOIN orders o
		ON c.customer_id = o.customer_id
		GROUP BY c.customer_id) date_diff;