CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(40),
    product_price FLOAT,
    quantity INTEGER
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (7845, 't-shirt', 14.99, 2),
(8932, 'sneakers', 59.99, 1),
(7845, 'sneakers', 59.99, 2),
(6720, 'baseball cap', 11.99, 2),
(8932, 'baseball cap', 11.99, 1);

SELECT * from orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) 
FROM orders
GROUP BY person_id;