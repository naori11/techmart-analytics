-- TechMart E-commerce Sample Data for MySQL

USE techmart;

-- Insert Categories
INSERT INTO categories (category_name, description) VALUES
('Laptops', 'Portable computers and accessories'),
('Smartphones', 'Mobile phones and related accessories'),
('Tablets', 'Tablet computers and accessories'),
('Audio', 'Headphones, speakers, and audio equipment'),
('Gaming', 'Gaming consoles, games, and accessories'),
('Accessories', 'Various tech accessories and peripherals');

-- Insert Customers
INSERT INTO customers (first_name, last_name, email, phone, registration_date, city, state, age) VALUES
('John', 'Smith', 'john.smith@email.com', '555-0101', '2023-01-15', 'New York', 'NY', 28),
('Sarah', 'Johnson', 'sarah.j@email.com', '555-0102', '2023-02-20', 'Los Angeles', 'CA', 34),
('Mike', 'Davis', 'mike.davis@email.com', '555-0103', '2023-03-10', 'Chicago', 'IL', 45),
('Emma', 'Wilson', 'emma.w@email.com', '555-0104', '2023-04-05', 'Houston', 'TX', 29),
('David', 'Brown', 'david.brown@email.com', '555-0105', '2023-05-12', 'Phoenix', 'AZ', 37),
('Lisa', 'Garcia', 'lisa.garcia@email.com', '555-0106', '2023-06-18', 'Philadelphia', 'PA', 31),
('James', 'Miller', 'james.miller@email.com', '555-0107', '2023-07-22', 'San Antonio', 'TX', 42),
('Anna', 'Moore', 'anna.moore@email.com', '555-0108', '2023-08-14', 'San Diego', 'CA', 26),
('Robert', 'Taylor', 'robert.taylor@email.com', '555-0109', '2023-09-08', 'Dallas', 'TX', 39),
('Jennifer', 'Anderson', 'jen.anderson@email.com', '555-0110', '2023-10-25', 'San Jose', 'CA', 33),
('William', 'Thomas', 'will.thomas@email.com', '555-0111', '2023-11-12', 'Austin', 'TX', 41),
('Michelle', 'Jackson', 'michelle.j@email.com', '555-0112', '2023-12-03', 'Jacksonville', 'FL', 27),
('Christopher', 'White', 'chris.white@email.com', '555-0113', '2024-01-18', 'San Francisco', 'CA', 35),
('Amanda', 'Harris', 'amanda.harris@email.com', '555-0114', '2024-02-14', 'Columbus', 'OH', 30),
('Daniel', 'Martin', 'daniel.martin@email.com', '555-0115', '2024-03-20', 'Fort Worth', 'TX', 44);

-- Insert Products
INSERT INTO products (product_name, category_id, price, cost, stock_quantity, supplier, launch_date) VALUES
('MacBook Pro 14"', 1, 1999.00, 1400.00, 25, 'Apple Inc', '2023-01-01'),
('Dell XPS 13', 1, 1299.00, 950.00, 30, 'Dell Technologies', '2023-02-15'),
('HP Pavilion 15', 1, 699.00, 500.00, 45, 'HP Inc', '2023-01-20'),
('iPhone 15 Pro', 2, 999.00, 650.00, 60, 'Apple Inc', '2023-09-15'),
('Samsung Galaxy S24', 2, 849.00, 580.00, 40, 'Samsung', '2024-01-10'),
('Google Pixel 8', 2, 699.00, 480.00, 35, 'Google', '2023-10-12'),
('iPad Air', 3, 599.00, 420.00, 50, 'Apple Inc', '2023-03-18'),
('Samsung Galaxy Tab S9', 3, 729.00, 510.00, 25, 'Samsung', '2023-08-01'),
('Sony WH-1000XM5', 4, 399.00, 250.00, 80, 'Sony', '2023-05-20'),
('AirPods Pro', 4, 249.00, 150.00, 100, 'Apple Inc', '2023-02-28'),
('PlayStation 5', 5, 499.00, 350.00, 15, 'Sony', '2023-01-10'),
('Xbox Series X', 5, 499.00, 340.00, 20, 'Microsoft', '2023-01-15'),
('Nintendo Switch OLED', 5, 349.00, 240.00, 35, 'Nintendo', '2023-04-01'),
('Logitech MX Master 3', 6, 99.00, 60.00, 75, 'Logitech', '2023-03-10'),
('Apple Magic Keyboard', 6, 179.00, 120.00, 40, 'Apple Inc', '2023-05-05');

-- Insert Employees
INSERT INTO employees (first_name, last_name, department, position, salary, hire_date, manager_id) VALUES
('Alice', 'Cooper', 'Sales', 'Sales Manager', 75000.00, '2020-03-15', NULL),
('Bob', 'Williams', 'Sales', 'Sales Representative', 45000.00, '2021-06-20', 1),
('Carol', 'Davis', 'Sales', 'Sales Representative', 47000.00, '2021-08-10', 1),
('Dave', 'Johnson', 'IT', 'IT Manager', 85000.00, '2019-11-01', NULL),
('Eve', 'Brown', 'IT', 'Database Administrator', 65000.00, '2022-01-15', 4),
('Frank', 'Miller', 'Marketing', 'Marketing Manager', 70000.00, '2020-09-12', NULL),
('Grace', 'Wilson', 'Marketing', 'Digital Marketing Specialist', 52000.00, '2022-03-08', 6),
('Henry', 'Garcia', 'Customer Service', 'CS Manager', 58000.00, '2021-05-20', NULL),
('Ivy', 'Martinez', 'Customer Service', 'CS Representative', 38000.00, '2023-02-14', 8),
('Jack', 'Rodriguez', 'Warehouse', 'Warehouse Manager', 55000.00, '2020-12-03', NULL);

-- Insert Orders
INSERT INTO orders (customer_id, order_date, order_status, shipping_cost, total_amount) VALUES
(1, '2024-01-15', 'delivered', 15.99, 2014.99),
(2, '2024-01-18', 'delivered', 12.99, 1311.99),
(3, '2024-01-22', 'delivered', 9.99, 708.99),
(1, '2024-02-05', 'delivered', 8.99, 257.99),
(4, '2024-02-10', 'delivered', 15.99, 1014.99),
(5, '2024-02-15', 'delivered', 12.99, 861.99),
(6, '2024-02-20', 'shipped', 10.99, 709.99),
(2, '2024-03-01', 'delivered', 18.99, 617.99),
(7, '2024-03-05', 'delivered', 25.99, 524.99),
(8, '2024-03-10', 'processing', 8.99, 107.99),
(3, '2024-03-15', 'delivered', 15.99, 514.99),
(9, '2024-03-20', 'shipped', 12.99, 747.99),
(10, '2024-03-25', 'delivered', 20.99, 369.99),
(4, '2024-04-01', 'cancelled', 0.00, 0.00),
(11, '2024-04-05', 'delivered', 15.99, 1014.99),
(12, '2024-04-10', 'processing', 9.99, 258.99),
(5, '2024-04-15', 'delivered', 12.99, 611.99),
(13, '2024-04-20', 'shipped', 18.99, 1317.99),
(6, '2024-04-25', 'delivered', 8.99, 188.99),
(14, '2024-05-01', 'delivered', 15.99, 415.99);

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
-- Order 1: MacBook Pro 14"
(1, 1, 1, 1999.00),
-- Order 2: Dell XPS 13
(2, 2, 1, 1299.00),
-- Order 3: HP Pavilion 15
(3, 3, 1, 699.00),
-- Order 4: AirPods Pro
(4, 10, 1, 249.00),
-- Order 5: iPhone 15 Pro
(5, 4, 1, 999.00),
-- Order 6: Samsung Galaxy S24
(6, 5, 1, 849.00),
-- Order 7: Google Pixel 8
(7, 6, 1, 699.00),
-- Order 8: iPad Air
(8, 7, 1, 599.00),
-- Order 9: PlayStation 5
(9, 11, 1, 499.00),
-- Order 10: Logitech MX Master 3
(10, 14, 1, 99.00),
-- Order 11: Xbox Series X
(11, 12, 1, 499.00),
-- Order 12: Samsung Galaxy Tab S9
(12, 8, 1, 729.00),
-- Order 13: Nintendo Switch OLED
(13, 13, 1, 349.00),
-- Order 14: Cancelled order (no items)
-- Order 15: iPhone 15 Pro
(15, 4, 1, 999.00),
-- Order 16: AirPods Pro
(16, 10, 1, 249.00),
-- Order 17: iPad Air
(17, 7, 1, 599.00),
-- Order 18: Dell XPS 13
(18, 2, 1, 1299.00),
-- Order 19: Apple Magic Keyboard
(19, 15, 1, 179.00),
-- Order 20: Sony WH-1000XM5
(20, 9, 1, 399.00);

-- Add some multiple item orders for more realistic data
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(9, 10, 1, 249.00),  -- PlayStation 5 order also has AirPods
(12, 10, 1, 249.00), -- Galaxy Tab order also has AirPods
(15, 10, 1, 249.00), -- iPhone order also has AirPods
(17, 14, 1, 99.00);  -- iPad order also has mouse