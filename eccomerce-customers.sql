CREATE DATABASE ecommerce;

USE ecommerce;

-- 1. customers table:

CREATE TABLE Customers(Customer_id INT PRIMARY KEY,
Name VARCHAR (50),
Email VARCHAR(50),
Password VARCHAR(50));

INSERT INTO customers(Customer_id, Name, Email, Password) 
VALUES (1, 'Shubham', 'shubh@gmail.com', 'jfvhnskjvnfj'),
(2, 'Denise S. Valverde', 'DeniseSValverde@jourrapide.com', 'suu9eidohD2'),
(3, 'Carlos B. Schnabel', 'carlosSch@gmail.com', 'eeH8kieph6th'),
(4, 'Jeff L. Clark', 'JeffLClark@teleworm.us', 'AiP5thai'),
(5, 'Ethel J. Naquin', 'EthelJNaquin@armyspy.com', 'io7OoghooX'),
(6, 'Abigail D. Kester', 'AbigailDKester@rhyta.com', 'quaneThohj9');


select * from customers;
 
 
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
  
-- 3. cart table:

CREATE TABLE Cart(Cart_id INT PRIMARY KEY,
Customer_id INT,
Product_id INT,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
Quantity INT);

INSERT INTO Cart(Cart_id, Customer_id, Product_id, Quantity)
VALUES (1, 1, 4857, 2),  
(2, 1, 2547, 1),          
(3, 2, 8306, 3),        
(4, 3, 7249, 1),       
(5, 4, 9348, 2),        
(6, 4, 3764, 1),          
(7, 5, 5968, 2);   

SELECT * FROM Cart; 

-- 4. orders table;

CREATE TABLE Orders(Order_id INT PRIMARY KEY,
Customer_id INT,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
Order_date DATE,
Total_price INT,
Shipping_address TEXT);

INSERT INTO Orders(Order_id, Customer_id, Order_date, Total_price, Shipping_address)
VALUES (1, 1, '2024-01-23', 120000, '123 Main St, Cityville, XYZ'),
(2, 2, '2024-01-23', 7497, '456 Oak St, Townsville, ABC'),
(3, 3, '2024-01-23', 53990, '789 Pine St, Villageton, DEF'),
(4, 4, '2024-01-23', 105980, '101 Cedar St, Hamletown, GHI'),
(5, 5, '2024-01-23', 65980, '202 Elm St, Boroughburg, JKL');

SELECT * FROM Orders;

-- 5. order_items table (to store order details):

CREATE TABLE Order_items(Order_item_id INT PRIMARY KEY,
Order_id INT,
Product_ID INT,
FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
Quantity INT);

INSERT INTO Order_items (Order_item_id, Order_id, Product_id, Quantity)
VALUES
    (1, 1, 4857, 2),  
    (2, 1, 2547, 1),  
    (3, 2, 8306, 3),  
    (4, 3, 7249, 1),  
    (5, 4, 9348, 2),  
    (6, 4, 3764, 1),  
    (7, 5, 5968, 2);
    
SELECT * FROM Order_items;