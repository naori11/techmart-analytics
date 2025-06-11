-- 6. Inventory and Supplier Analysis

	-- Total inventory value by supplier
	SELECT 
		supplier AS Supplier,
		CONCAT('$', FORMAT(SUM(price * stock_quantity), 2)) AS 'Total Inventory Value'
	FROM products
	GROUP BY supplier
    ORDER BY SUM(price * stock_quantity) DESC, Supplier;
    
    -- Stock value of each apple product
    SELECT
		product_name AS 'Product Name',
        CONCAT('$', FORMAT(price, 2)) AS 'Product Price',
        stock_quantity AS 'Stock Quantity',
		CONCAT('$', FORMAT(price * stock_quantity, 2)) AS 'Total Stock Value'
	FROM products
	WHERE supplier = 'Apple Inc';
    
    -- Comparison of products launched in 2023 vs 2024
    SELECT
		YEAR(launch_date) AS 'Launch Year',
        COUNT(*) AS 'Product Count',
        CONCAT('$', FORMAT(AVG(price), 2)) AS 'Average Price of Products'
	FROM products
    WHERE DATE_FORMAT(launch_date, '%Y') IN ('2023', '2024')
    GROUP BY YEAR(launch_date)
    ORDER BY YEAR(launch_date);