CREATE DATABASE IF NOT EXISTS FlowerShop;

USE FlowerShop;

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE Flower (
    flower_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    color VARCHAR(50),
    type VARCHAR(50),
    season VARCHAR(50),
    region VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE Bouquet (
    bouquet_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    style VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE Shop (
    shop_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(255)
);

CREATE TABLE Florist (
    florist_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(100),
    shop_id INT,
    FOREIGN KEY (shop_id) REFERENCES Shop(shop_id)
);

CREATE TABLE CustomerOrder (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    total_amount DECIMAL(10, 2),
    order_date DATETIME,
    status ENUM('pending', 'completed', 'cancelled') DEFAULT 'pending',
    customer_id INT,
    florist_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (florist_id) REFERENCES Florist(florist_id)
);

CREATE TABLE OrderDetail (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    quantity INT,
    order_id INT,
    bouquet_id INT,
    FOREIGN KEY (order_id) REFERENCES CustomerOrder(order_id),
    FOREIGN KEY (bouquet_id) REFERENCES Bouquet(bouquet_id)
);

CREATE TABLE Sale (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATETIME,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES CustomerOrder(order_id)
);

CREATE TABLE Composition (
    bouquet_id INT,
    flower_id INT,
    quantity INT,
    PRIMARY KEY (bouquet_id, flower_id),
    FOREIGN KEY (bouquet_id) REFERENCES Bouquet(bouquet_id),
    FOREIGN KEY (flower_id) REFERENCES Flower(flower_id)
);
