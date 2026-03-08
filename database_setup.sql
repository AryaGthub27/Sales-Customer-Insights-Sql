CREATE DATABASE sales_project;
USE sales_project;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
region VARCHAR(50)
);

CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(100),
price DECIMAL(10,2)
);

CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_details (
order_details_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Rahul', 'North'),
(2, 'Amit', 'South'),
(3, 'Priya', 'East'),
(4, 'Neha', 'West'),
(5, 'Simran', 'North'),
(6, 'Tushar', 'South'),
(7, 'Nikhil', 'East'),
(8, 'Rohan', 'North'),
(9, 'Ramesh', 'North'),
(10, 'Akash', 'South'),
(11, 'Varun', 'East'),
(12, 'Geeta', 'West'),
(13, 'Rekha', 'East'),
(14, 'Akshu', 'South'),
(15, 'Priyanshi', 'East'),
(16, 'Neelu', 'West'),
(17, 'Harshit', 'East'),
(18, 'Amesha', 'South'),
(19, 'Pranjal', 'East'),
(20, 'Aman', 'North');

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 50000),
(2, 'Mobile', 'Electronics', 20000),
(3, 'Chair', 'Furniture', 5000),
(4, 'Table', 'Furniture', 7000),
(5, 'Charger', 'Electronics', 500),
(6, 'TypeC_cable', 'Electronics', 200),
(7, 'Mouse', 'Electronics', 600),
(8, 'Ram', 'Electronics', 9000),
(9, 'Pendrive', 'Electronics', 700),
(10, 'Hardisk', 'Electronics', 10000),
(11, 'Camera', 'Electronics', 25000),
(12, 'Watch', 'Electronics', 3000),
(13, 'Laptop', 'Electronics', 50000),
(14, 'Mobile', 'Electronics', 20000),
(15, 'Table', 'Furniture', 7000),
(16, 'Table', 'Furniture', 7000),
(17, 'Laptop', 'Electronics', 50000),
(18, 'Chair', 'Furniture', 5000),
(19, 'Chair', 'Furniture', 5000),
(20, 'Table', 'Furniture', 7000);

INSERT INTO orders VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-02-15'),
(3, 1, '2024-03-05'),
(4, 3, '2024-03-20'),
(5, 4, '2024-04-07'),
(6, 4, '2024-05-08'),
(7, 5, '2024-05-13'),
(8, 8, '2024-05-25'),
(9, 9, '2024-06-11'),
(10, 10, '2024-06-12'),
(11, 13, '2024-07-21'),
(12, 10, '2024-07-25'),
(13, 11, '2024-08-10'),
(14, 12, '2024-09-13'),
(15, 15, '2024-10-07'),
(16, 14, '2024-10-09'),
(17, 11, '2024-11-19'),
(18, 4, '2024-11-21'),
(19, 7, '2024-12-05'),
(20, 13, '2024-12-23');

INSERT INTO order_details VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 3),
(4, 3, 2, 1),
(5, 4, 4, 2),
(6, 5, 7, 1),
(7, 6, 7, 2),
(8, 7, 9, 3),
(9, 7, 10, 1),
(10, 10, 12, 2),
(11, 11, 13, 1),
(12, 13, 14, 2),
(13, 14, 14, 3),
(14, 15, 15, 1),
(15, 15, 16, 2),
(16, 16, 16, 1),
(17, 17, 18, 2),
(18, 18, 19, 3),
(19, 19, 20, 1),
(20, 20, 8, 2);
