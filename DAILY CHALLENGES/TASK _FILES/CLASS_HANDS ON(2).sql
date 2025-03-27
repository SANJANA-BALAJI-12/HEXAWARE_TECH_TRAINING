--CREATE DATABASE DAY6;

USE DAY6;
GO

----------------TASK-1--------------------
/*CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,  
    Name VARCHAR(100) NOT NULL,  
    Department VARCHAR(50) NOT NULL,  
    Salary DECIMAL(10,2) NOT NULL 
);*/

/*INSERT INTO Employees (EmployeeID, Name, Department, Salary)  
VALUES  
(1, 'Satish Kumar', 'HR', 60000),  
(2, 'Suresh Reddy', 'Software Engineering', 75000),  
(3, 'Gopinath Rao', 'HR', 52000),  
(4, 'Pooja Sharma', 'Marketing', 45000),  
(5, 'Saranya Devi', 'Cloud Computing', 72000),  
(6, 'Vikram Raj', 'HR', 48000),  
(7, 'Deepak Nair', 'Data Science', 81000),  
(8, 'Anjali Menon', 'HR', 51000),  
(9, 'Ramesh Iyer', 'HR', 53000),  
(10, 'Meera Krishnan', 'Finance', 68000);*/

--SELECT * FROM Employees;

/*SELECT Name  
FROM Employees  
WHERE Department = 'HR' AND Salary > 50000;*/

--------------TASK-2-----------------------------

/*CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,  
    CustomerID INT NOT NULL,  
    OrderDate DATE NOT NULL,  
    OrderAmount DECIMAL(10,2) CHECK (OrderAmount > 0)  
);*/

/*INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount)  
VALUES  
(1, 101, '2024-01-10', 2500.50),  
(2, 102, '2024-01-15', 1800.00),  
(3, 101, '2024-02-05', 3200.75),  
(4, 103, '2024-02-20', 5000.00),  
(5, 104, '2024-03-01', 1500.00),  
(6, 102, '2024-03-10', 2750.25),  
(7, 105, '2024-03-15', 4200.80),  
(8, 101, '2024-03-20', 6000.90),  
(9, 103, '2024-03-25', 3600.00),  
(10, 102, '2024-04-01', 2900.45);*/

--SELECT * FROM Orders;
/*SELECT DISTINCT CustomerID  
FROM Orders  
WHERE CustomerID IN (  
    SELECT CustomerID  
    FROM Orders  
    GROUP BY CustomerID  
    HAVING COUNT(*) > 1  
);*/

-------------------TASK-3-------------------------------

/*CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    SaleDate DATE NOT NULL
);*/

/*INSERT INTO Sales (SaleID, ProductID, Quantity, SaleDate)
VALUES
(1, 1001, 5, '2024-01-10'),
(2, 1002, 3, '2024-01-12'),
(3, 1001, 7, '2024-01-15'),
(4, 1003, 4, '2024-01-18'),
(5, 1002, 6, '2024-01-20'),
(6, 1001, 2, '2024-01-25');*/

/*SELECT DISTINCT 
    ProductID, 
    SUM(Quantity) OVER (PARTITION BY ProductID) AS TotalQuantity
FROM Sales;*/


-------------------TASK-4---------------------------------------

/*CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT NOT NULL,
    TransactionDate DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL
);*/

/*INSERT INTO Transactions (TransactionID, AccountID, TransactionDate, Amount)
VALUES
(1, 201, '2025-03-21', 150.00),  
(2, 202, '2025-03-15', 200.00),  
(3, 203, '2025-03-10', 350.00),  
(4, 204, '2025-03-05', 400.00),  
(5, 205, '2025-02-25', 250.00),
(6, 206, '2025-02-15', 300.00),
(7, 207, '2025-02-10', 220.00),
(8, 208, '2025-02-01', 180.00),
(9, 209, '2025-01-25', 275.00),
(10, 210, '2025-01-10', 330.00);*/

/*SELECT TransactionID, AccountID, TransactionDate, Amount
FROM Transactions
WHERE TransactionDate BETWEEN '2025-02-19' AND '2025-03-21';*/

--------------------------------TASK-5------------------------------------

/*CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL
);*/


/*INSERT INTO Products (ProductID, ProductName, Price, StockQuantity)
VALUES
(1, 'Laptop', 50000.00, 45),   
(2, 'Keyboard', 1500.00, 120), 
(3, 'Mouse', 800.00, 80),      
(4, 'Monitor', 12000.00, 95),  
(5, 'Headphones', 2500.00, 110), 
(6, 'Speaker', 3500.00, 60),   
(7, 'Tablet', 30000.00, 130),  
(8, 'Printer', 15000.00, 85); */

/*UPDATE Products
SET Price = Price * 1.10
WHERE StockQuantity < 100;*/

--SELECT * FROM Products;

----------------------TASK-6----------------------------------

/*CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(100) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Status VARCHAR(20) NOT NULL,  
    LastLoginDate DATE NOT NULL
);*/

/*INSERT INTO Users (UserID, Username, Email, Status, LastLoginDate)
VALUES
(1, 'Arun', 'arun@example.com', 'active', '2025-02-15'),
(2, 'Divya', 'divya@example.com', 'inactive', '2023-12-10'), 
(3, 'Karthik', 'karthik@example.com', 'active', '2024-11-20'),
(4, 'Meena', 'meena@example.com', 'inactive', '2023-02-28'), 
(5, 'Suresh', 'suresh@example.com', 'inactive', '2024-04-01'), 
(6, 'Priya', 'priya@example.com', 'active', '2025-03-10'),
(7, 'Vikram', 'vikram@example.com', 'inactive', '2023-08-05'); */

/*DELETE FROM Users
WHERE Status = 'inactive'
AND LastLoginDate < DATEADD(YEAR, -1, GETDATE());*/

--SELECT * FROM Users;

--------------------------TASK-9------------------------------
/*CREATE TABLE Products1 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Discount VARCHAR(20) NULL
);*/

/*INSERT INTO Products1 (ProductID, ProductName, Category, Discount)
VALUES
(1, 'Laptop', 'Electronics', '10%'),
(2, 'Keyboard', 'Electronics', NULL), 
(3, 'Mouse', 'Electronics', '5%'),
(4, 'Monitor', 'Electronics', NULL),   
(5, 'Tablet', 'Gadgets', '15%'),
(6, 'Printer', 'Office Supplies', NULL);*/

/*SELECT ProductName, 
       ISNULL(Discount, 'No Discount') AS Discount
FROM Products1;*/

------------------------------TASK-10---------------------------------
/*CREATE TABLE Sales1 (
    SaleID INT PRIMARY KEY,
    ProductID INT NOT NULL,
    SaleAmount DECIMAL(10,2) NOT NULL,
    SaleDate DATE NOT NULL
);*/


/*INSERT INTO Sales1 (SaleID, ProductID, SaleAmount, SaleDate)
VALUES
(1, 101, 5000.00, '2025-03-15'),
(2, 101, 3000.00, '2025-03-14'),
(3, 102, 7000.00, '2025-03-13'),
(4, 102, 7000.00, '2025-03-12'), 
(5, 103, 2000.00, '2025-03-11'),
(6, 101, 4000.00, '2025-03-10'),
(7, 103, 3500.00, '2025-03-09');*/

/*SELECT 
    SaleID, 
    ProductID, 
    SaleAmount, 
    SaleDate
FROM Sales1
ORDER BY ProductID, SaleAmount DESC;*/

------------------------TASK-12--------------------------
-- Find the 10th highest salary
/*SELECT MIN(Salary) 
FROM (SELECT DISTINCT TOP 10 Salary FROM Employees ORDER BY Salary DESC) AS TopSalaries;*/

------------------------TASK-13---------------------------

---Insert/Update Col2 to be the opposite of Col1
/*UPDATE TableName 
SET Col2 = CASE WHEN Col1 = 1 THEN 0 ELSE 1 END;*/




























