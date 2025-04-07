SELECT * FROM Customer;

SELECT * FROM Flower;

SELECT name, price FROM Bouquet;

SELECT * FROM CustomerOrder WHERE customer_id = 1;

SELECT * FROM OrderDetail WHERE order_id = 1;

SELECT f.name, c.quantity 
FROM Composition c
JOIN Flower f ON c.flower_id = f.flower_id
WHERE c.bouquet_id = 1;

SELECT * FROM Florist WHERE shop_id = 1;

SELECT SUM(total_amount) AS total_sales
FROM CustomerOrder
WHERE DATE(order_date) = '2024-06-30';
