USE DAY6;
GO

------------TASK-1------------------------------------
--1.	Write a SQL statement that displays all the information about all salespeople.

/*CREATE TABLE Salespeople (
    Salesman_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Commission DECIMAL(5,2)
);*/

/*INSERT INTO Salespeople (Salesman_ID, Name, City, Commission)
VALUES
    (5001, 'James Hoog', 'New York', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5005, 'Pit Alex', 'London', 0.11),
    (5006, 'Mc Lyon', 'Paris', 0.14),
    (5007, 'Paul Adam', 'Rome', 0.13),
    (5003, 'Lauson Hen', 'San Jose', 0.12);*/

--SELECT * FROM Salespeople;

-----------------TASK-2-----------------------------------
--2.	Write a SQL statement to display specific columns such as names and commissions for all salespeople. 

--SELECT Name, Commission FROM Salespeople;

---------------TASK-3------------------------------------
--3.	Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.  

/*CREATE TABLE Orders1 (
    Ord_No INT PRIMARY KEY,
    Purch_Amt DECIMAL(10,2),
    Ord_Date DATE,
    Customer_ID INT,
    Salesman_ID INT
);*/

/*INSERT INTO Orders1 (Ord_No, Purch_Amt, Ord_Date, Customer_ID, Salesman_ID)
VALUES
    (70001, 150.5, '2012-10-05', 3005, 5002),
    (70009, 270.65, '2012-09-10', 3001, 5005),
    (70002, 65.26, '2012-10-05', 3002, 5001),
    (70004, 110.5, '2012-08-17', 3009, 5003),
    (70007, 948.5, '2012-09-10', 3005, 5002),
    (70005, 2400.6, '2012-07-27', 3007, 5001),
    (70008, 5760, '2012-09-10', 3002, 5001),
    (70010, 1983.43, '2012-10-10', 3004, 5006),
    (70003, 2480.4, '2012-10-10', 3009, 5003),
    (70012, 250.45, '2012-06-27', 3008, 5002);*/

--SELECT * FROM Orders1;

/*SELECT Ord_Date AS "Order Date", 
       Salesman_ID AS "Salesman ID", 
       Ord_No AS "Order Number", 
       Purch_Amt AS "Purchase Amount"
FROM Orders1;*/

--------------------------TASK-4-----------------------------------
--4.  Write a SQL query to identify the unique salespeople ID. Return salesman_id. 

--SELECT DISTINCT Salesman_ID FROM Orders1;

--------------------TASK-5-------------------------------------
--5. Write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city. 

/*SELECT Name, City 
FROM Salespeople 
WHERE City = 'Paris';*/

--------------------------TASK-6-------------------------------

--6.From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id.  

/*CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Cust_Name VARCHAR(100),
    City VARCHAR(50),
    Grade INT NULL,
    Salesman_ID INT
);


INSERT INTO Customer (Customer_ID, Cust_Name, City, Grade, Salesman_ID)
VALUES
    (3002, 'Nick Rimando', 'New York', 100, 5001),
    (3007, 'Brad Davis', 'New York', 200, 5001),
    (3005, 'Graham Zusi', 'California', 200, 5002),
    (3008, 'Julian Green', 'London', 300, 5002),
    (3004, 'Fabian Johnson', 'Paris', 300, 5006),
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003),
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007),
    (3001, 'Brad Guzan', 'London', NULL, 5005);*/

--SELECT * FROM Customer;
/*SELECT Customer_ID, Cust_Name, City, Grade, Salesman_ID
FROM Customer
WHERE Grade = 200;*/


--------------------TASK-7----------------------------------
--7.From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt.  

/*SELECT ord_no, ord_date, purch_amt
FROM Orders1
WHERE salesman_id = 5001;*/


----------------------TASK-8-----------------------------
--8.From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner. 

/*CREATE TABLE nobel_win (
    YEAR INT,
    SUBJECT VARCHAR(50),
    WINNER VARCHAR(100),
    COUNTRY VARCHAR(50),
    CATEGORY VARCHAR(50)
);
INSERT INTO nobel_win (YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY)
VALUES
    (1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
    (1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),
    (1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
    (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
    (1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist'),
    (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
    (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),
    (1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
    (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist');
	*/

/*SELECT YEAR,SUBJECT,WINNER
FROM nobel_win
WHERE YEAR=1970;*/

---------------TASK-9--------------------------------------
--9.From the following table, write a SQL query that combines the winners in Physics, 1970 and in Economics, 1971. Return year, subject, winner, country, and category. 

/*SELECT YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY
FROM nobel_win
WHERE SUBJECT IN ('Physics','Economics') and year=1970;*/















