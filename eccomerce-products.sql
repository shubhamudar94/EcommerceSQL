-- 2. products table:

CREATE TABLE Products(Product_id INT PRIMARY KEY,
Name VARCHAR(50),
Price INT,
Description VARCHAR(100),
StockQuantity INT);

INSERT INTO Products(Product_id, Name, Price, Description, StockQuantity)
VALUES (4857, 'TV', 60000, '55 inches KD-55X74L (Black)', 19),
(2547, 'Smartphone', 23999, '5G (Gray, 8GB RAM, 128GB Storage)', 31),
(8306, 'Smartwatch', 2499, 'AMOLED, Bluetooth Calling, 60Hz, Black', 25),
(7249, 'Laptop', 53990, 'Gaming, 12th Gen Intel, 16GB, 512GB, Black', 7),
(9348, 'A/C', 51990, '1.5 Ton, 5 Star, Convertible', 5),
(3764, 'Shoes', 1119, 'Running Shoes, MESH, BLK/RED', 10),
(5968, 'Washing Machine', 32990, '8 kg, 5 Star, Fully-Automatic, Front Load, White', 3);

SELECT * FROM Products;