USE FlowerShop;

-- Insert data into Customer
INSERT INTO Customer (first_name, last_name, email, phone, address) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '123 Elm Street'),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Oak Avenue'),
('Emily', 'Jones', 'emily.jones@example.com', '555-8765', '789 Pine Road');

-- Insert data into Flower
INSERT INTO Flower (name, color, type, season, region, price) VALUES
('Rose', 'Red', 'Perennial', 'Spring', 'Netherlands', 2.50),
('Tulip', 'Yellow', 'Annual', 'Spring', 'Netherlands', 1.50),
('Lily', 'White', 'Perennial', 'Summer', 'USA', 3.00),
('Sunflower', 'Yellow', 'Annual', 'Summer', 'Russia', 1.75);

-- Insert data into Bouquet
INSERT INTO Bouquet (name, style, price) VALUES
('Romantic Red', 'Romantic', 25.00),
('Sunny Day', 'Bright', 20.00),
('Pure Elegance', 'Elegant', 30.00);

-- Insert data into Shop
INSERT INTO Shop (name, location) VALUES
('Flower Heaven', '123 Blossom Lane'),
('Petals & Stems', '456 Garden Street');

-- Insert data into Florist
INSERT INTO Florist (first_name, last_name, position, shop_id) VALUES
('Alice', 'Johnson', 'Senior Florist', 1),
('Bob', 'Williams', 'Junior Florist', 1),
('Cathy', 'Brown', 'Manager', 2);

-- Insert data into CustomerOrder
INSERT INTO CustomerOrder (total_amount, order_date, status, customer_id, florist_id) VALUES
(50.00, '2024-06-30 10:00:00', 'completed', 1, 1),
(30.00, '2024-06-29 12:00:00', 'pending', 2, 2),
(45.00, '2024-06-28 09:45:00', 'completed', 3, 3);

-- Insert data into OrderDetail
INSERT INTO OrderDetail (quantity, order_id, bouquet_id) VALUES
(2, 1, 1),
(1, 2, 2),
(3, 3, 3);

-- Insert data into Sale
INSERT INTO Sale (sale_date, order_id) VALUES
('2024-06-30 10:00:00', 1),
('2024-06-29 12:45:00', 2),
('2024-06-28 10:00:00', 3);

-- Insert data into Composition
INSERT INTO Composition (bouquet_id, flower_id, quantity) VALUES
(1, 1, 10), -- 10 Red Roses in Romantic Red bouquet
(1, 2, 5),  -- 5 Yellow Tulips in Romantic Red bouquet
(2, 4, 15), -- 15 Yellow Sunflowers in Sunny Day bouquet
(3, 3, 10), -- 10 White Lilies in Pure Elegance bouquet
(3, 1, 5);  -- 5 Red Roses in Pure Elegance bouquet
