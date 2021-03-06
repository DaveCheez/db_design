CREATE DATABASE Pizzeria;
USE Pizzeria;
CREATE TABLE Pizzas (
Toppings VARCHAR(30),
size TINYINT,
stuffedCrust BOOLEAN
);

DESCRIBE Pizzas;

CREATE TABLE customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(30),
email VARCHAR(40),
new_customer BOOLEAN);

# Foreign Key - Primary key of another table

CREATE TABLE orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
pizza_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_ID),
FOREIGN KEY (pizza_id) REFERENCES pizzas(pizza_id)
);
