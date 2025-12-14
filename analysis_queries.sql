-- SQL Analysis Queries for VishalMegaMart

-- =====================================
-- BASIC DATA EXPLORATION
-- =====================================


-- QUERY 1 — Retrieve all customer records from the VishalMegaMart database to understand the customer base.
SELECT *
FROM customers;

-- QUERY 2 — List all customers who belong to the city of Delhi.
SELECT customer_id, customer_name, city
	FROM customers
WHERE city = 'Delhi';

-- QUERY 3 — Find the total number of orders placed in VishalMegaMart.
SELECT COUNT(*) AS total_orders
FROM orders;

--  QUERY 4 — How to check how many order are  Delivered and CancelledDetermine how many orders were delivered and how many were cancelled. 
SELECT order_status, 
COUNT(*) AS total_orders
FROM orders
GROUP BY order_status;

-- =====================================
-- RELATIONAL ANALYSIS
-- =====================================

-- QUERY 5 — Display each order along with the corresponding customer name, order date, and order status.
SELECT 
    o.order_id,
    c.customer_name,
    o.order_date,
    o.order_status
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

-- QUERY 6 — Calculate the total sales amount for each order in VishalMegaMart.
SELECT 
    oi.order_id,
    SUM(p.price * oi.quantity) AS order_amount
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY oi.order_id;

-- QUERY 7 — Calculate the total amount spent by each customer and rank them based on their spending.
SELECT 
    c.customer_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- QUERY 8 — Identify the best-selling products based on total quantity sold.
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_units_sold
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units_sold DESC;


-- =====================================
-- BUSINESS & EDGE CASE ANALYSIS
-- =====================================

-- QUERY 9 — Customers who never ordered
SELECT c.customer_id, c.customer_name, c.city
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- QUERY 10 — Cancelled orders impact
SELECT c.customer_name, o.order_id, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'Cancelled';

-- QUERY 11 — Monthly order trend
SELECT MONTH(order_date) AS order_month, COUNT(*) AS total_orders
FROM orders
GROUP BY MONTH(order_date)
ORDER BY order_month;

-- QUERY 12 — Monthly sales trend
SELECT MONTH(o.order_date) AS sales_month,
       SUM(p.price * oi.quantity) AS monthly_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status = 'Delivered'
GROUP BY MONTH(o.order_date)
ORDER BY sales_month;

-- QUERY 13 — Category-wise revenue
SELECT p.category, SUM(p.price * oi.quantity) AS category_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- QUERY 14 — High value customers
SELECT c.customer_name, SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
HAVING total_spent > 50000
ORDER BY total_spent DESC;

-- QUERY 15 — Low stock products
SELECT product_name, stock_qty
FROM products
WHERE stock_qty < 30
ORDER BY stock_qty;

-- =====================================
-- DATA VALIDATION
-- =====================================

-- QUERY 16 — Duplicate customers
SELECT customer_name, COUNT(*) AS count_entries
FROM customers
GROUP BY customer_name
HAVING count_entries > 1;

-- QUERY 17 — Orders without items
SELECT o.order_id, o.customer_id
FROM orders o
LEFT JOIN order_items oi ON o.order_id = oi.order_id
WHERE oi.order_item_id IS NULL;

-- QUERY 18 — Customers without orders
SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
