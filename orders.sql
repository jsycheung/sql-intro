--1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name TEXT,
    product_price FLOAT,
    quantity INT
);

--2. Add 5 orders to the orders table. Make orders for at least two different people. person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'bread', 4.3, 1),
(2, 'coke', 3, 2),
(1, 'lunchbox', 9, 1),
(1, 'apples', 1, 4),
(2, 'vitamins', 10, 2);


--3. Select all the records from the orders table.
SELECT * FROM orders;

--4. Calculate the total number of products ordered.
SELECT SUM(quantity) AS total_no_of_products FROM orders;

--5. Calculate the total order price.
SELECT SUM(product_price * quantity) AS total_order_price FROM orders;

--6. Calculate the total order price by a single person_id.
SELECT person_id, SUM(product_price * quantity) AS total_order_price
FROM orders
GROUP BY person_id
ORDER BY person_id;