-- CREATING A DATABASE 
CREATE DATABASE VishalMegaMart ;

-- USING THE DATABASE TRO CREATE TABLE IN IT 
USE VishalMegaMart ;

-- CREATING CUSTOMERS TABLE 
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    city VARCHAR(50),
    signup_date DATE
);

-- CREATING PRODUCTS TABLE 
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price INT,
    stock_qty INT
);

-- CREATING ORDERS TABLE 
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- CREATING ORDER_ITEMS TABLE 
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
