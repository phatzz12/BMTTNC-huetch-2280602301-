CREATE TABLE order_details (
id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
price DECIMAL(10, 2) NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders(id)
);

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255) NOT NULL UNIQUE,
password VARCHAR(255) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- T?o c? s? d? li?u và s? d?ng nó
CREATE DATABASE IF NOT EXISTS my_store;
USE my_store;
-- T?o b?ng danh m?c s?n ph?m
CREATE TABLE IF NOT EXISTS category (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
description TEXT
);
-- T?o b?ng s?n ph?m
CREATE TABLE IF NOT EXISTS product (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
description TEXT,
price DECIMAL(10,2) NOT NULL,
image VARCHAR(255) DEFAULT NULL,
category_id INT,
FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE CASCADE
);
-- Chèn d? li?u vào b?ng category
INSERT INTO category (name, description) VALUES
('?i?n tho?i', 'Danh m?c các lo?i ?i?n tho?i'),
('Laptop', 'Danh m?c các lo?i laptop'),
('Máy tính b?ng', 'Danh m?c các lo?i máy tính b?ng'),
('Ph? ki?n', 'Danh m?c ph? ki?n ?i?n t?'),
('Thi?t b? âm thanh', 'Danh m?c loa, tai nghe, micro');

