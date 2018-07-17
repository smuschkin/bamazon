DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE bamazon_products (
 item_id INTEGER NOT NULL AUTO_INCREMENT,
 product_name VARCHAR (50),
 department_name VARCHAR (50),
 price DECIMAL (45,2) DEFAULT NULL, 
 stock_quantity INTEGER NULL,
 PRIMARY KEY (item_id)
 );
 
INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Soap Dispenser', 'Kitchen', '10.45', '100');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Shovel', 'Garden', '30.18', '90');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'iPod', 'Electronics', '80.44', '80');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Can Opener', 'Kitchen', '3.55', '70');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Watch', 'Electronics', '20.01', '60');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Tampons', 'Beauty', '6.54', '50');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Batteries', 'Electronics', '2.25', '42');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Coffee', 'Food', '4.56', '50');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Toilet Paper', 'Bathroom', '7.99', '60');

INSERT INTO bamazon_products (item_id, product_name, department_name, price, stock_quantity)
VALUES (item_id, 'Spoon Set', 'Kitchen', '12.99', '70');


SELECT * FROM bamazon_products;