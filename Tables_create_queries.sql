--Green Pages Tables

-- create table customers
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name  VARCHAR(50) NOT NULL,
  last_name   VARCHAR(50) NOT NULL,
  country     VARCHAR(50),
  score       INTEGER
);

-- Insert customers data
INSERT INTO customers (customer_id, first_name, last_name, country, score) VALUES
(1,'Maria', 'Cramer', 'Germany',350),
(2,'John','Steel','USA', 900),
(3,'Georg','Pipps', 'UK', 750),
(4,'Martin','Müller','Germany', 500),
(5,'Peter','Franken','USA', NULL);


-- create table orders
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
  order_id    SERIAL PRIMARY KEY,
  customer_id INTEGER NOT NULL,
  order_date  DATE,
  quantity    INTEGER
);

-- Insert orders data
INSERT INTO orders (order_id, customer_id, order_date, quantity) VALUES
(1001,1,'2021-01-11',250),
(1002,2,'2021-04-05',1150),
(1003,3,'2021-06-18',500),
(1004,6,'2021-08-31',750);
