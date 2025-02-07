CREATE DATABASE alx_book_store;
SHOW DATABASES;
USE DATABASE alx_book_store;
CREATE TABLE Books(book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130),
author_id INT,
FOREIGN KEY(author_id) REFERENCES Authors(author_id),
price DOUBLE,
publication_date DATE);

CREATE TABLE Authors(author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215)NOT NULL);

CREATE TABLE Customers(customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215),
email VARCHAR(215) UNIQUE,
address TEXT);

CREATE TABLE Orders(order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
FOREIGN KEY(customer_id)REFERENCES Customers(customer_id),
order_date DATE);

CREATE TABLE Order_Dates(order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
FOREIGN KEY(order_id)REFERENCES Orders(order_id),
book_id INT,
FOREIGN KEY(book_id)REFERENCES Books(book_id),
quantity DOUBLE);
