CREATE DATABASE online_store;

USE online_store;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    country TEXT
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    price REAL
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Arjun', 'arjun@gmail.com', 'India'),
(2, 'Meera', 'meera@gmail.com', 'USA'),
(3, 'Rahul', 'rahul@gmail.com', 'India');

INSERT INTO products VALUES
(101, 'Laptop', 55000),
(102, 'Mobile', 25000),
(103, 'Headphones', 1500);

INSERT INTO orders VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-01-05'),
(3, 1, '2024-01-10');

INSERT INTO order_items VALUES
(1, 1, 101, 1),
(2, 1, 103, 2),
(3, 2, 102, 1),
(4, 3, 103, 1);

SELECT * 
FROM customers
WHERE country = 'India';

SELECT * 
FROM products
ORDER BY price DESC;

SELECT product_id, SUM(quantity) AS total_sold
FROM order_items
GROUP BY product_id;

SELECT c.name, o.order_id, o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);


SELECT AVG(total) AS avg_revenue
FROM (
    SELECT o.customer_id,
           SUM(p.price * oi.quantity) AS total
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY o.customer_id
);


CREATE VIEW customer_orders AS
SELECT c.name, o.order_id, o.order_date
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

SELECT * FROM customer_orders;

CREATE INDEX idx_customer_id
ON orders(customer_id);
