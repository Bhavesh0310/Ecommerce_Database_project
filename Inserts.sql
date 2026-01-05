USE ecommerce_db;

-- Customers details
INSERT INTO customers (first_name, last_name, email, phone, city, country)
VALUES
('Rahul', 'Sharma', 'rahul@example.com', '9876543210', 'Mumbai', 'India'),
('Priya', 'Verma', 'priya@example.com', '9876500011', 'Delhi', 'India'),
('Aman', 'Gupta', 'aman@example.com', '9123456700', 'Bangalore', 'India'),
('Neha', 'Singh', 'neha@example.com', '9988776655', 'Pune', 'India'),
('Karan', 'Patel', 'karan@example.com', '7878787878', 'Ahmedabad', 'India'),
('Simran', 'Kaur', 'simran@example.com', '9090909090', 'Chandigarh', 'India'),
('Anil', 'Kapoor', 'anil@example.com', '9876000001', 'Hyderabad', 'India'),
('Sneha', 'Rao', 'sneha@example.com', '9876000002', 'Chennai', 'India'),
('Vikas', 'Jain', 'vikas@example.com', '9876000003', 'Jaipur', 'India'),
('Tanya', 'Roy', 'tanya@example.com', '9876000004', 'Kolkata', 'India'),
('Arjun', 'Mehta', 'arjun@example.com', '9876000005', 'Mumbai', 'India'),
('Pooja', 'Chawla', 'pooja@example.com', '9876000006', 'Noida', 'India'),
('Ravi', 'Nair', 'ravi@example.com', '9876000007', 'Kochi', 'India'),
('Meera', 'Shetty', 'meera@example.com', '9876000008', 'Mangalore', 'India'),
('Dhruv', 'Desai', 'dhruv@example.com', '9876000009', 'Surat', 'India'),
('Ananya', 'Iyer', 'ananya@example.com', '9876000010', 'Chennai', 'India'),
('Suresh', 'Reddy', 'suresh@example.com', '9876000011', 'Hyderabad', 'India'),
('Ashwini', 'Joshi', 'ashwini@example.com', '9876000012', 'Pune', 'India'),
('Yash', 'Tiwari', 'yash@example.com', '9876000013', 'Lucknow', 'India'),
('Ritika', 'Malhotra', 'ritika@example.com', '9876000014', 'Delhi', 'India');


-- Categories
INSERT INTO categories (category_name)
VALUES
('Electronics'),
('Clothing'),
('Home & Kitchen'),
('Books');

-- products detail
INSERT INTO products (product_name, category_id, price, stock)
VALUES
('Smartphone A', 1, 15000.00, 50),
('Laptop B', 1, 55000.00, 20),
('Bluetooth Earbuds', 1, 2999.00, 150),
('Smartwatch Pro', 1, 4999.00, 80),
('Wireless Speaker', 1, 1999.00, 70),

('T-shirt Blue', 2, 599.00, 100),
('Jeans Black', 2, 1299.00, 120),
('Jacket Winter', 2, 2899.00, 60),
('Formal Shirt', 2, 999.00, 90),
('Sneakers White', 2, 2199.00, 110),

('Mixer Grinder', 3, 3200.00, 30),
('Air Fryer 3L', 3, 4500.00, 25),
('Electric Kettle', 3, 899.00, 95),
('Vacuum Cleaner', 3, 5600.00, 18),
('Rice Cooker', 3, 2200.00, 40),

('Motivational Book', 4, 399.00, 80),
('Data Science Book', 4, 999.00, 60),
('Mystery Novel', 4, 499.00, 100),
('Python Programming', 4, 799.00, 50),
('History of India', 4, 699.00, 70);


-- orders
INSERT INTO orders (customer_id, status, shipping_address)
VALUES
(1, 'PAID', 'Andheri, Mumbai'),
(2, 'PAID', 'Saket, Delhi'),
(3, 'PENDING', 'HSR Layout, Bangalore'),
(4, 'PAID', 'Wakad, Pune'),
(5, 'PAID', 'Navrangpura, Ahmedabad'),
(6, 'PAID', 'Sector 17, Chandigarh'),
(7, 'PENDING', 'Banjara Hills, Hyderabad'),
(8, 'PAID', 'T Nagar, Chennai'),
(9, 'PAID', 'Malviya Nagar, Jaipur'),
(10, 'PAID', 'Salt Lake, Kolkata'),
(11, 'PAID', 'Andheri West, Mumbai'),
(12, 'PENDING', 'Sector 62, Noida'),
(13, 'PAID', 'Marine Drive, Kochi'),
(14, 'PAID', 'Kankanady, Mangalore'),
(15, 'PENDING', 'Vesu, Surat'),
(16, 'PAID', 'Anna Nagar, Chennai'),
(17, 'PENDING', 'Madhapur, Hyderabad'),
(18, 'PAID', 'Baner, Pune'),
(19, 'PAID', 'Hazratganj, Lucknow'),
(20, 'PENDING', 'Connaught Place, Delhi');


-- order_items
INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 15000.00),
(1, 6, 2, 599.00),
(2, 2, 1, 55000.00),
(3, 16, 1, 399.00),
(4, 11, 1, 3200.00),
(5, 3, 1, 2999.00),
(6, 9, 2, 999.00),
(7, 5, 1, 1999.00),
(8, 7, 1, 1299.00),
(9, 10, 1, 2199.00),
(10, 4, 1, 4999.00),
(11, 13, 1, 899.00),
(12, 17, 1, 999.00),
(13, 8, 1, 2899.00),
(14, 14, 1, 5600.00),
(15, 15, 1, 2200.00),
(16, 12, 1, 4500.00),
(17, 18, 2, 499.00),
(18, 19, 1, 799.00),
(19, 20, 1, 699.00),
(20, 3, 1, 2999.00);

-- Payments
INSERT INTO payments (order_id, amount, method, status)
VALUES
(1, 16200.00, 'CARD', 'SUCCESS'),
(2, 55000.00, 'UPI', 'SUCCESS'),
(4, 3200.00, 'COD', 'SUCCESS'),
(5, 2999.00, 'UPI', 'SUCCESS'),
(6, 1998.00, 'CARD', 'SUCCESS'),
(8, 1299.00, 'NETBANKING', 'SUCCESS'),
(9, 2199.00, 'UPI', 'SUCCESS'),
(10, 4999.00, 'CARD', 'SUCCESS'),
(11, 899.00, 'UPI', 'SUCCESS'),
(13, 2899.00, 'COD', 'SUCCESS'),
(14, 5600.00, 'UPI', 'SUCCESS'),
(16, 4500.00, 'CARD', 'SUCCESS'),
(18, 799.00, 'UPI', 'SUCCESS'),
(19, 699.00, 'NETBANKING', 'SUCCESS');

SELECT * FROM customers;

SELECT 
    p.product_id,
    p.product_name,
    c.category_name,
    p.price,
    p.stock
FROM products p
LEFT JOIN categories c ON p.category_id = c.category_id;

-- Show all orders with customer name
SELECT 
	o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    o.status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Calculate total amount of each order
SELECT 
    oi.order_id,
    SUM(oi.quantity * oi.unit_price) AS order_total
FROM order_items oi
GROUP BY oi.order_id;

-- Monthly sales report (basic)
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS yearr_month,
    SUM(oi.quantity * oi.unit_price) AS total_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'PAID'
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY yearr_month;

-- Top 3 best-selling products (by quantity)
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 3;

-- Customer Lifetime Value (total spent per customer)
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    SUM(pay.amount) AS total_spent
FROM payments pay
JOIN orders o ON pay.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE pay.status = 'SUCCESS'
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC;

-- Orders that have not been paid yet
SELECT 
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    o.status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
LEFT JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;

-- Create a View (for reporting)
CREATE VIEW order_summary_view AS
SELECT 
    o.order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    o.order_date,
    o.status,
    SUM(oi.quantity * oi.unit_price) AS order_total
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id, customer_name, o.order_date, o.status;

SELECT * FROM order_summary_view ORDER BY order_date DESC;
.
   v9A
 
