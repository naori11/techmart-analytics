-- 3. Sales Revenue Analysis (Revenue Insights)

	-- Total revenue from completed (delivered) orders
	SELECT CONCAT('$', ROUND(SUM(total_amount - shipping_cost), 2)) AS 'Total Revenue' FROM orders WHERE order_status = "delivered";
    
    -- Average order value 
    SELECT CONCAT('$', ROUND(AVG(total_amount - shipping_cost), 2)) AS 'Average Order Value' FROM orders;
    
    -- Top 5 customers by total spending
    SELECT
		customer_name AS 'Customer Name', 
		CONCAT('$', FORMAT(total_spending, 2)) AS 'Total Spending'
    FROM (
		SELECT 
			CONCAT(c.first_name, ' ', c.last_name) as customer_name,
			SUM(oi.unit_price * oi.quantity) AS total_spending
		FROM order_items oi
		JOIN products p
		ON oi.product_id = p.product_id
		JOIN orders o
		ON oi.order_id = o.order_id
		LEFT JOIN customers c
		ON o.customer_id = c.customer_id
        WHERE o.order_status = 'delivered'
        GROUP BY c.customer_id, c.first_name, c.last_name
	) customer_orders
    ORDER BY total_spending DESC
    LIMIT 5;
    
    -- Orders placed in March 2024
    SELECT 
		o.order_id, 
		CONCAT(c.first_name, ' ', c.last_name) AS 'Customer Name', 
		o.order_date,
        o.order_status,
        o.shipping_cost,
        o.total_amount
    FROM orders o
    JOIN customers c
    ON o.customer_id = c.customer_id
    WHERE DATE_FORMAT(o.order_date, '%Y-%m') = '2024-03'
    ORDER BY o.order_date;