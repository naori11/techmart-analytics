-- 2. Product Performance Report (Product Catalog)

	-- Show all products with their categories 
	SELECT 
		c.category_name AS 'Category Name',
        p.product_name AS 'Product Name',
        CONCAT('$', FORMAT(p.price, 2)) AS 'Selling Price',
        p.supplier AS 'Supplier',
        p.launch_date AS 'Launch Date'
	FROM products p
	JOIN categories c
	ON p.category_id = c.category_id;
    
    -- Most expensive products per category
    SELECT
    category_name AS Category,
    product_name AS 'Product Name',
    CONCAT('$', FORMAT(price, 2)) AS Price
    FROM (
		SELECT 
		c.category_name, 
		p.price, 
        p.product_name,
		ROW_NUMBER() OVER (PARTITION BY c.category_id ORDER BY p.price DESC) as rn
		FROM products p
		JOIN categories c ON p.category_id = c.category_id
    ) ranked
    WHERE rn = 1;
    
    -- Products that costs < 100 to source
    SELECT 
		product_name AS 'Product Name', 
        supplier, CONCAT('$', FORMAT(cost, 2)) AS Cost 
	FROM products 
    WHERE cost < 100;
    
	-- Products w/ stock quantity below 30 units (needs reorder)
	SELECT product_name, stock_quantity, cost, supplier FROM products WHERE stock_quantity < 30;
