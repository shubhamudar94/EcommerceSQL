-- 3. cart table:

CREATE TABLE Cart(Cart_id INT PRIMARY KEY,
Customer_id INT,
Product_id INT,
FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
Quantity INT);

select * from cart;