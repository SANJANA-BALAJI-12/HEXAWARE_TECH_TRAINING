--CREATE DATABASE JOINS;

--USE  JOINS;

---Create SalesMan Table-----

/*GO
CREATE TABLE SalesMan (
    Salesman_ID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50),
    Commission DECIMAL(5,2)
);

INSERT INTO SalesMan (Salesman_ID, Name, City, Commission)
VALUES
    (5001, 'James Hoog', 'New York', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5005, 'Pit Alex', 'London', 0.11),
    (5006, 'Mc Lyon', 'Paris', 0.14),
    (5007, 'Paul Adam', 'Rome', 0.13),
    (5003, 'Lauson Hen', 'San Jose', 0.12);
GO*/
--SELECT * FROM SalesMan;


----------Create Customer Table----------
/*GO
CREATE TABLE Customer (
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
    (3001, 'Brad Guzan', 'London', NULL, 5005);
GO*/

--SELECT * FROM Customer;


----Create Order Table----------

/*GO
CREATE TABLE Orders (
    Ord_No INT PRIMARY KEY,
    Purch_Amt DECIMAL(10,2),
    Ord_Date DATE,
    Customer_ID INT,
    Salesman_ID INT
);

INSERT INTO Orders (Ord_No, Purch_Amt, Ord_Date, Customer_ID, Salesman_ID)
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
    (70012, 250.45, '2012-06-27', 3008, 5002);
GO*/

--SELECT * FROM Orders;


--------------------------------TASK-1-----------------------------------
--1. From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.

/*SELECT s.Name AS SalesMan, c.Cust_Name AS Customer, s.City 
FROM SalesMan s
JOIN Customer c ON s.City = c.City;*/



------------------------------TASK-2------------------------------------
--2. From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.

/*SELECT o.Ord_No, o.Purch_Amt, c.Cust_Name, c.City
FROM Orders o
JOIN Customer c ON o.Customer_ID = c.Customer_ID
WHERE o.Purch_Amt BETWEEN 500 AND 2000;*/


------------------------------TASK-3-----------------------------------
--Create SalesPerson Table

/*GO
CREATE TABLE SALESPERSON (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    commission DECIMAL(5,2)
);
INSERT INTO SALESPERSON (salesman_id, name, city, commission)
VALUES
    (5001, 'James Hoog', 'New York', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5005, 'Pit Alex', 'London', 0.11),
    (5006, 'Mc Lyon', 'Paris', 0.14),
    (5007, 'Paul Adam', 'Rome', 0.13),
    (5003, 'Lauson Hen', 'San Jose', 0.12);
GO*/

--SELECT * FROM SalesPerson;

--3. From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.

/*SELECT c.Cust_Name, c.City, s.Name AS SalesMan, s.Commission
FROM Customer c
JOIN SalesPerson s ON c.SalesMan_ID = s.SalesMan_id;*/

----------------------TASK-4---------------------------------------
--4. From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.  

/*SELECT c.Cust_Name, c.City, s.Name AS SalesMan, s.Commission
FROM Customer c
JOIN SalesPerson s ON c.SalesMan_ID = s.SalesMan_id
WHERE s.Commission > 0.12;*/


----------------------TASK-5---------------------------------------
--5. From the following tables write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.  

/*SELECT c.Cust_Name, c.City AS Customer_City, 
       s.Name AS SalesMan, s.City AS Salesman_City, s.Commission
FROM Customer c
JOIN SalesPerson s ON c.SalesMan_ID = s.SalesMan_id
WHERE s.City <> c.City 
AND s.Commission > 0.12; */


-----------------------TASK-6---------------------------------
--6. From the following tables write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.  

/*SELECT o.Ord_No, o.Ord_Date, o.Purch_Amt, 
       c.Cust_Name, c.Grade, 
       s.Name AS Salesman, s.Commission
FROM Orders o
JOIN Customer c ON o.Customer_ID = c.Customer_ID
JOIN Salesperson s ON c.Salesman_ID = s.Salesman_ID;*/


-------------------------TASK-7-----------------------------
--7. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned. 

/*SELECT 
    o.Ord_No, o.Ord_Date, o.Purch_Amt, 
    c.Cust_Name, c.City AS Customer_City, c.Grade, 
    s.Name AS Salesman, s.City AS Salesman_City, s.Commission
FROM Orders o
INNER JOIN Customer c ON o.Customer_ID = c.Customer_ID
INNER JOIN Salesperson s ON c.Salesman_ID = s.Salesman_ID;*/


-------------------------TASK-8---------------------------------
--8. From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.  

/*SELECT 
    c.Customer_ID, 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    c.Grade, 
    s.Name AS Salesman, 
    s.City AS Salesman_City
FROM Customer c
INNER JOIN Salesperson s ON c.Salesman_ID = s.Salesman_ID
ORDER BY c.Customer_ID ASC;*/

----------------------------TASK-9----------------------------
--9. From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id. 

/*SELECT 
    c.Customer_ID, 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    c.Grade, 
    s.Name AS Salesman, 
    s.City AS Salesman_City
FROM Customer c
INNER JOIN Salesperson s ON c.Salesman_ID = s.Salesman_ID
WHERE c.Grade < 300
ORDER BY c.Customer_ID ASC;*/


------------------------------TASK-10--------------------------
--10. Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.

/*SELECT 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    o.Ord_No AS Order_Number, 
    o.Ord_Date AS Order_Date, 
    o.Purch_Amt AS Order_Amount
FROM Customer c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
ORDER BY o.Ord_Date ASC;*/


---------------------------TASK-11-------------------------
--11.SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.

/*SELECT 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    o.Ord_No AS Order_Number, 
    o.Ord_Date AS Order_Date, 
    o.Purch_Amt AS Order_Amount, 
    s.Name AS Salesperson_Name, 
    s.Commission
FROM Customer c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
LEFT JOIN Salesperson s ON c.Salesman_ID = s.Salesman_ID
ORDER BY o.Ord_Date ASC;*/


------------------------TASK-12------------------------------
--12. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers.

/*SELECT 
    s.Name AS Salesperson_Name, 
    s.City AS Salesperson_City, 
    s.Commission
FROM SalesPerson s
LEFT JOIN Customer c ON s.Salesman_ID = c.Salesman_ID
GROUP BY s.Salesman_ID, s.Name, s.City, s.Commission
ORDER BY s.Name ASC;*/


---------------------------TASK-13-----------------------
--13. From the following tables write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount. Condition for selecting list of salesmen : 1. Salesmen who works for one or more customer or, 2. Salesmen who not yet join under any customer, Condition for selecting list of customer : 3. placed one or more orders, or 4. no order placed to their salesman.

/*SELECT 
    s.Name AS Salesperson_Name, 
    s.City AS Salesperson_City, 
    s.Commission, 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    c.Grade, 
    o.Ord_No AS Order_Number, 
    o.Ord_Date AS Order_Date, 
    o.Purch_Amt AS Order_Amount
FROM SalesPerson s
LEFT JOIN Customer c ON s.Salesman_ID = c.Salesman_ID
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
ORDER BY s.Name ASC, c.Cust_Name ASC, o.Ord_Date ASC;*/

-----------------------------------TASK-14---------------------------------
--14. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier

/*SELECT 
    s.Name AS Salesperson_Name, 
    s.City AS Salesperson_City, 
    s.Commission, 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    c.Grade, 
    o.Ord_No AS Order_Number, 
    o.Ord_Date AS Order_Date, 
    o.Purch_Amt AS Order_Amount
FROM Salesperson s
LEFT JOIN Customer c ON s.Salesman_ID = c.Salesman_ID
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID 
    AND o.Purch_Amt >= 2000
WHERE c.Grade IS NOT NULL OR o.Ord_No IS NULL
ORDER BY s.Name ASC, c.Cust_Name ASC, o.Ord_Date ASC;*/


--------------------------TASK-15-------------------------------------------
--15. For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, create a report containing the customer name, city, order number, order date, and purchase amount

/*SELECT 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    o.Ord_No AS Order_Number, 
    o.Ord_Date AS Order_Date, 
    o.Purch_Amt AS Order_Amount
FROM Customer c
LEFT JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Ord_No IS NOT NULL
ORDER BY c.Cust_Name ASC, o.Ord_Date ASC;*/

----------------------TASK-16------------------------------------------
--16. Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list who must have a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade

/*SELECT 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    o.Ord_No AS Order_Number, 
    o.Ord_Date AS Order_Date, 
    o.Purch_Amt AS Order_Amount
FROM Customer c
JOIN Orders o ON c.Customer_ID = o.Customer_ID
WHERE (c.Grade IS NOT NULL AND o.Ord_No IS NOT NULL)
   OR (c.Grade IS NULL AND o.Customer_ID NOT IN (SELECT Customer_ID FROM Customer))
ORDER BY c.Cust_Name ASC, o.Ord_Date ASC;*/


--------------------------TASK-17---------------------------------------
--17. Write a SQL query to combine each row of the salesman table with each row of the customer table.

/*SELECT 
    s.Salesman_ID, 
    s.Name AS Salesperson_Name, 
    s.City AS Salesperson_City, 
    s.Commission, 
    c.Customer_ID, 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    c.Grade
FROM Salesperson s
CROSS JOIN Customer c;*/

-------------------------TASK-18-----------------------------------------
--18. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.

/*SELECT 
    s.Salesman_ID, 
    s.Name AS Salesperson_Name, 
    s.City AS Salesperson_City, 
    s.Commission, 
    c.Customer_ID, 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    c.Grade
FROM Salesperson s
JOIN Customer c ON s.City = c.City;*/


------------------------------TASK-19----------------------------------------
--19. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.

/*SELECT 
    s.Salesman_ID, 
    s.Name AS Salesperson_Name, 
    s.City AS Salesperson_City, 
    s.Commission, 
    c.Customer_ID, 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    c.Grade
FROM Salesperson s
JOIN Customer c ON s.City = c.City
WHERE c.Grade IS NOT NULL;*/


---------------------------------TASK-20--------------------------------
--20. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.

/*SELECT 
    s.Salesman_ID, 
    s.Name AS Salesperson_Name, 
    s.City AS Salesperson_City, 
    s.Commission, 
    c.Customer_ID, 
    c.Cust_Name AS Customer_Name, 
    c.City AS Customer_City, 
    c.Grade
FROM Salesperson s
JOIN Customer c ON s.City != c.City
WHERE c.Grade IS NOT NULL;*/

---------------------------------TASK-21-------------------------------
--Create company_mast Table

/*GO
CREATE TABLE company_mast (
    COM_ID INT PRIMARY KEY,
    COM_NAME VARCHAR(100)
);

INSERT INTO company_mast (COM_ID, COM_NAME)
VALUES
    (11, 'Samsung'),
    (12, 'iBall'),
    (13, 'Epsion'),
    (14, 'Zebronics'),
    (15, 'Asus'),
    (16, 'Frontech');
GO*/

--SELECT * FROM company_mast;


--Create item_mast Table

/*GO
CREATE TABLE item_mast (
    PRO_ID INT PRIMARY KEY,
    PRO_NAME VARCHAR(100),
    PRO_PRICE DECIMAL(10, 2),
    PRO_COM INT
);

INSERT INTO item_mast (PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM)
VALUES
    (101, 'Mother Board', 3200.00, 15),
    (102, 'Key Board', 450.00, 16),
    (103, 'ZIP drive', 250.00, 14),
    (104, 'Speaker', 550.00, 16),
    (105, 'Monitor', 5000.00, 11),
    (106, 'DVD drive', 900.00, 12),
    (107, 'CD drive', 800.00, 12),
    (108, 'Printer', 2600.00, 13),
    (109, 'Refill cartridge', 350.00, 13),
    (110, 'Mouse', 250.00, 12);
GO*/
--SELECT * FROM item_mast;

/*SELECT 
    i.PRO_ID, 
    i.PRO_NAME, 
    i.PRO_PRICE, 
    i.PRO_COM, 
    c.COM_ID, 
    c.COM_NAME
FROM 
    item_mast i
INNER JOIN 
    company_mast c
ON 
    i.PRO_COM = c.COM_ID;*/


-----------------------------TASK-22---------------------------------
--22. Write a SQL query to display the item name, price, and company name of all the products.

/*SELECT 
    i.PRO_NAME AS Item_Name, 
    i.PRO_PRICE AS Price, 
    c.COM_NAME AS Company_Name
FROM 
    item_mast i
INNER JOIN 
    company_mast c
ON 
    i.PRO_COM = c.COM_ID;*/


---------------------------TASK-23---------------------------------
--23. From the following tables write a SQL query to calculate the average price of items of each company. Return average value and company name.

/*SELECT 
    c.COM_NAME AS Company_Name,
    AVG(i.PRO_PRICE) AS Average_Price
FROM 
    item_mast i
INNER JOIN 
    company_mast c
ON 
    i.PRO_COM = c.COM_ID
GROUP BY 
    c.COM_NAME;*/

--------------------------TASK-24-----------------------------
--24. From the following tables write a SQL query to calculate and find the average price of items of each company higher than or equal to Rs. 350. Return average value and company name.

/*SELECT 
    c.COM_NAME AS Company_Name,
    AVG(i.PRO_PRICE) AS Average_Price
FROM 
    item_mast i
INNER JOIN 
    company_mast c
ON 
    i.PRO_COM = c.COM_ID
WHERE 
    i.PRO_PRICE >= 350
GROUP BY 
    c.COM_NAME;*/

-------------------------------TASK-25-----------------------
--25. From the following tables write a SQL query to find the most expensive product of each company. Return pro_name, pro_price and com_name.

/*SELECT 
    i.PRO_NAME AS Product_Name, 
    i.PRO_PRICE AS Product_Price, 
    c.COM_NAME AS Company_Name
FROM 
    item_mast i
INNER JOIN 
    company_mast c
ON 
    i.PRO_COM = c.COM_ID
WHERE 
    i.PRO_PRICE = (
        SELECT MAX(PRO_PRICE)
        FROM item_mast
        WHERE PRO_COM = i.PRO_COM
    );
*/

------------------------TASK-26--------------------------------------
--Create emp_department Table

/*GO
CREATE TABLE emp_department (
    DPT_CODE INT PRIMARY KEY,
    DPT_NAME VARCHAR(50),
    DPT_ALLOTMENT DECIMAL(10, 2)
);

INSERT INTO emp_department (DPT_CODE, DPT_NAME, DPT_ALLOTMENT)
VALUES
    (57, 'IT', 65000),
    (63, 'Finance', 15000),
    (47, 'HR', 240000),
    (27, 'RD', 55000),
    (89, 'QC', 75000);
GO*/

--SELECT * FROM emp_department;


-- Create emp_details Table

/*GO
CREATE TABLE emp_details (
    EMP_IDNO INT PRIMARY KEY,
    EMP_FNAME VARCHAR(50),
    EMP_LNAME VARCHAR(50),
    EMP_DEPT INT
);

INSERT INTO emp_details (EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT)
VALUES
    (127323, 'Michale', 'Robbin', 57),
    (526689, 'Carlos', 'Snares', 63),
    (843795, 'Enric', 'Dosio', 57),
    (328717, 'Jhon', 'Snares', 63),
    (444527, 'Joseph', 'Dosni', 47),
    (659831, 'Zanifer', 'Emily', 47),
    (847674, 'Kuleswar', 'Sitaraman', 57),
    (748681, 'Henrey', 'Gabriel', 47),
    (555935, 'Alex', 'Manuel', 57);
GO*/

--SELECT * FROM emp_details;

/*SELECT 
    e.EMP_IDNO, 
    e.EMP_FNAME, 
    e.EMP_LNAME, 
    e.EMP_DEPT, 
    d.DPT_NAME, 
    d.DPT_ALLOTMENT
FROM 
    emp_details e
INNER JOIN 
    emp_department d
ON 
    e.EMP_DEPT = d.DPT_CODE;*/

------------------------------TASK-27---------------------------------------
--27. From the following tables write a SQL query to display the first and last names of each employee, as well as the department name and sanction amount.

/*SELECT 
    e.EMP_FNAME, 
    e.EMP_LNAME, 
    d.DPT_NAME, 
    d.DPT_ALLOTMENT
FROM 
    emp_details e
INNER JOIN 
    emp_department d
ON 
    e.EMP_DEPT = d.DPT_CODE;*/

------------------------------------TASK-28---------------------------------
--28. From the following tables write a SQL query to find the departments with budgets more than Rs. 50000 and display the first name and last name of employees.

/*SELECT 
    e.EMP_FNAME, 
    e.EMP_LNAME, 
    d.DPT_NAME, 
    d.DPT_ALLOTMENT
FROM 
    emp_details e
INNER JOIN 
    emp_department d
ON 
    e.EMP_DEPT = d.DPT_CODE
WHERE 
    d.DPT_ALLOTMENT > 50000;*/

-------------------------------------TASKS-29-------------------------------
--29. From the following tables write a SQL query to find the names of departments where more than two employees are employed. Return dpt_name.

/*SELECT 
    d.DPT_NAME
FROM 
    emp_details e
INNER JOIN 
    emp_department d
ON 
    e.EMP_DEPT = d.DPT_CODE
GROUP BY 
    d.DPT_NAME
HAVING 
    COUNT(e.EMP_IDNO) > 2;*/































