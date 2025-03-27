--Create Database ECOMMERCE;

/*Use ECOMMERCE;
GO*/

-----------------------------Creating the Tables-----------------------------------

--Customers Table

/*CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL, 
	last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL
);*/



--Products Table

/*CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
	price DECIMAL(10, 2) NOT NULL,
    stockQuantity INT NOT NULL
);*/


--Cart Table

/*CREATE TABLE Cart (
    cart_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);*/


--Orders Table

/*CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    shipping_address VARCHAR(255) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);*/


--Order_Items Table

/*CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
	item_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);*/


-----------------------------Inserting the Values---------------------------------------

--Customers Table

/*INSERT INTO Customers (customer_id, first_name, last_name, email, address)
VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '123 Main St, City'),
(2, 'Jane', 'Smith', 'janesmith@example.com', '456 Elm St, Town'),
(3, 'Robert', 'Johnson', 'robert@example.com', '789 Oak St, Village'),
(4, 'Sarah', 'Brown', 'sarah@example.com', '101 Pine St, Suburb'),
(5, 'David', 'Lee', 'david@example.com', '234 Cedar St, District'),
(6, 'Laura', 'Hall', 'laura@example.com', '567 Birch St, County'),
(7, 'Michael', 'Davis', 'michael@example.com', '890 Maple St, State'),
(8, 'Emma', 'Wilson', 'emma@example.com', '321 Redwood St, Country'),
(9, 'William', 'Taylor', 'william@example.com', '432 Spruce St, Province'),
(10, 'Olivia', 'Adams', 'olivia@example.com', '765 Fir St, Territory');
*/


--Products Table

/*INSERT INTO Products (product_id, name, description, price, stockQuantity)
VALUES
(1, 'Laptop', 'High-performance laptop', 800.00, 10),
(2, 'Smartphone', 'Latest smartphone', 600.00, 15),
(3, 'Tablet', 'Portable tablet', 300.00, 20),
(4, 'Headphones', 'Noise-canceling', 150.00, 30),
(5, 'TV', '4K Smart TV', 900.00, 5),
(6, 'Coffee Maker', 'Automatic coffee maker', 50.00, 25),
(7, 'Refrigerator', 'Energy-efficient', 700.00, 10),
(8, 'Microwave Oven', 'Countertop microwave', 80.00, 15),
(9, 'Blender', 'High-speed blender', 70.00, 20),
(10, 'Vacuum Cleaner', 'Bagless vacuum cleaner', 120.00, 10);*/


--Cart Table

/*INSERT INTO Cart (cart_id, customer_id, product_id, quantity)
VALUES
(1, 1, 1, 2),
(2, 1, 3, 1),
(3, 2, 2, 3),
(4, 3, 4, 4),
(5, 3, 5, 2),
(6, 4, 6, 1),
(7, 5, 1, 1),
(8, 6, 10, 2),
(9, 6, 9, 3),
(10, 7, 7, 2);*/

--Orders Table

/*INSERT INTO Orders (order_id, customer_id, order_date, total_amount, shipping_address)
VALUES
(1, 1, '2023-01-05', 1200.00, '123 MG Road, Chennai'),
(2, 2, '2023-02-10', 900.00, '456 BTM Layout, Bangalore'),
(3, 3, '2023-03-15', 300.00, '789 Indira Nagar, Hyderabad'),
(4, 4, '2023-04-20', 150.00, '101 Vasant Vihar, New Delhi'),
(5, 5, '2023-05-25', 1800.00, '202 Green Street, Mumbai'),
(6, 6, '2023-06-30', 400.00, '123 Park Avenue, Kolkata'),
(7, 7, '2023-07-05', 700.00, '234 Beach Road, Chennai'),
(8, 8, '2023-08-10', 160.00, '678 Whitefield, Bangalore'),
(9, 9, '2023-09-15', 140.00, '345 MG Road, Pune'),
(10, 10, '2023-10-20', 1400.00, '890 South Extension, Delhi');
*/


--Order_Items Table

/*INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, item_amount)
VALUES
(1, 1, 1, 2, 1600.00),
(2, 1, 3, 1, 300.00),
(3, 2, 2, 3, 1800.00),
(4, 3, 5, 2, 1800.00),
(5, 4, 4, 4, 600.00),
(6, 4, 6, 1, 50.00),
(7, 5, 1, 1, 800.00),
(8, 5, 2, 2, 1200.00),
(9, 6, 10, 2, 240.00),
(10, 6, 9, 3, 210.00);*/


----------------Viewing the Table----------------------------

--SELECT * FROM Customers;
--SELECT * FROM Products;
--SELECT * FROM Cart;
--SELECT * FROM Orders;
--SELECT * FROM Order_Items;

-------------------------------------------------------------------------

--1.Update refrigerator product price to 800.---

/*UPDATE Products
SET price = 800.00
WHERE name = 'Refrigerator';*/

--SELECT * FROM Products;
--------------------------------------------------------------------------
--2.Remove all cart items for a specific customer.---

/*DELETE FROM Cart
WHERE customer_id = 1;*/

--SELECT * FROM Cart;
---------------------------------------------------------------------------
--3. Retrieve Products Priced Below $100.---

/*SELECT * FROM Products
WHERE price < 100;*/

----------------------------------------------------------------------------

--4.Find Products with Stock Quantity Greater Than 5.---

/*SELECT * FROM Products
WHERE stockQuantity > 5;*/
-----------------------------------------------------------------------------

--5.Retrieve Orders with Total Amount Between $500 and $1000.---

/*SELECT * FROM Orders
WHERE total_amount BETWEEN 500 AND 1000;*/
------------------------------------------------------------------------------
--6.Find Products which name end with letter ‘r’.---

/*SELECT * FROM Products
WHERE name LIKE '%r';*/
--------------------------------------------------------------------------------

--7.Retrieve Cart Items for Customer 5.---

/*SELECT * FROM Cart
WHERE customer_id = 5;*/
---------------------------------------------------------------------------------

--8.Find Customers Who Placed Orders in 2023.---

/*SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE YEAR(o.order_date) = 2023;*/
----------------------------------------------------------------------------------

--9.Determine the Minimum Stock Quantity for Each Product Category.---

/*SELECT MIN(stockQuantity) AS min_stock, name
FROM Products
GROUP BY name;*/
-----------------------------------------------------------------------------------

--10.Calculate the Total Amount Spent by Each Customer.---

/*SELECT c.customer_id, c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;*/
-------------------------------------------------------------------------------------

--11. Find the Average Order Amount for Each Customer.---

/*SELECT c.customer_id, c.first_name, c.last_name, AVG(o.total_amount) AS avg_order_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;*/
---------------------------------------------------------------------------------------

--12.Count the Number of Orders Placed by Each Customer.---

/*SELECT c.customer_id, c.first_name, c.last_name, COUNT(o.order_id) AS order_count
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;*/
----------------------------------------------------------------------------------------

--13. Find the Maximum Order Amount for Each Customer.---

/*SELECT c.customer_id, c.first_name, c.last_name, MAX(o.total_amount) AS max_order_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;*/
-----------------------------------------------------------------------------------------

--14.Get Customers Who Placed Orders Totaling Over $1000.---

/*SELECT DISTINCT c.customer_id, c.first_name, c.last_name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > 1000;*/
-------------------------------------------------------------------------------------------

--15.Find Products Not in the Cart.---

/*SELECT * FROM Products 
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM Cart);*/
-------------------------------------------------------------------------------------------

--16.Find Customers Who Haven't Placed Orders.---

/*SELECT *FROM Customers 
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM Orders);*/
--------------------------------------------------------------------------------------------

--17.Calculate the Percentage of Total Revenue for a Product.---

/*SELECT p.product_id, p.name, 
       (SUM(oi.item_amount) * 100) / (SELECT SUM(total_amount) FROM Orders) AS revenue_percentage
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.name;*/
-----------------------------------------------------------------------------------------------

--18. Find Products with Low Stock.---

/*SELECT * FROM Products 
WHERE stockQuantity < (SELECT AVG(stockQuantity) FROM Products);*/
------------------------------------------------------------------------------------------------

--19.Find Customers Who Placed High-Value Orders.---

/*SELECT * FROM Customers 
WHERE customer_id IN (SELECT customer_id FROM Orders WHERE total_amount > 1000);*/




























