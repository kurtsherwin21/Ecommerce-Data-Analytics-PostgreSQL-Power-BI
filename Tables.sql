-- This is table for customers.csv -- 
CREATE TABLE customers (
customer_id INT PRIMARY KEY,
country VARCHAR(100) NOT NULL,
age_range VARCHAR(10) NOT NULL,
signup_date DATE NOT NULL
)

SELECT *
FROM customers


CREATE TABLE sales (
sale_id INT PRIMARY KEY,
channel VARCHAR(100) NOT NULL,
discounted BOOLEAN NOT NULL,
total_amount NUMERIC(10, 2) NOT NULL,
sale_date DATE NOT NULL,
customer_id INT NOT NULL,
country VARCHAR(100) NOT NULL
)

SELECT *
FROM sales


CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(100) NOT NULL,
brand VARCHAR(100) NOT NULL,
color VARCHAR(100) NOT NULL,
size VARCHAR(10) NOT NULL,
catalog_price NUMERIC(10, 2) NOT NULL,
cost_price NUMERIC (10, 2) NOT NULL,
gender VARCHAR(50) 
)

SELECT *
FROM products;

CREATE TABLE stock (
  country VARCHAR(100) NOT NULL,
  product_id INT NOT NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (country, product_id)
);

SELECT *
FROM stock

CREATE TABLE campaigns (
  campaign_id INT PRIMARY KEY,
  campaign_name VARCHAR(100) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  channel VARCHAR(50) NOT NULL,
  discount_type VARCHAR(50) NOT NULL,
  discount_value NUMERIC(5, 2) NOT NULL  -- Store percentage as decimal (e.g., 10.00 for 10%)
);

SELECT *
FROM campaigns;

CREATE TABLE sales_items (
item_id INT PRIMARY KEY,
sale_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
original_price NUMERIC(10, 2) NOT NULL,
unit_price NUMERIC(10, 2) NOT NULL,
discount_applied NUMERIC(10, 2) NOT NULL,
discount_percent NUMERIC (5, 2) NOT NULL,
discounted BOOLEAN NOT NULL,
item_total NUMERIC(10,2) NOT NULL,
sale_date DATE NOT NULL,
channel VARCHAR(100) NOT NULL,
channel_campaigns VARCHAR(100) NOT NULL
)

SELECT *
FROM sales_items;





