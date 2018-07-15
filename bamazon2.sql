DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

CREATE TABLE bamazon_products (
 item_id INTEGER NOT NULL AUTO_INCREMENT,
 product_name VARCHAR (50),
 department_name VARCHAR (50),
 price integer (10) NULL, 
 stock_quantity INTEGER,
 PRIMARY KEY (item_id)
 );
 
INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Soap Dispenser', 'Kitchen', 10.45, 15);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Shovel', 'Garden', 30.18, 11);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'iPod', 'Electronics', 80.40, 5);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Can Opener', 'Kitchen', 3.50, 8);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Watch', 'Electronics', 20.00, 10);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Tampons', 'Beauty', 6.54, 20);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Batteries', 'Electronics', 2.25, 92);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Coffee', 'Food', 4.56, 18);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Toilet Paper', 'Bathroom', 7.90, 16);

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Spoon Set', 'Kitchen', 12.99, 4);

SELECT * FROM bamazon_products;