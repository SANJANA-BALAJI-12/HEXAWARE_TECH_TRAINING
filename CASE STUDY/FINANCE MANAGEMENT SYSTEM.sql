--Create Database FINANCEMANAGEMENT;

/*Use FINANCEMANAGEMENT;
Go*/

------------------------------Creating the Tables-----------------------------------

--Users Table

/*CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    email VARCHAR(100)
);*/


--ExpenseCategories Table

/*CREATE TABLE ExpenseCategories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);*/


--Expenses Table

/*CREATE TABLE Expenses (
    expense_id INT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10,2),
    category_id INT,
    date DATE,
    description TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (category_id) REFERENCES ExpenseCategories(category_id)
);*/


-----------------------------Inserting the Values---------------------------------------


/*INSERT INTO Users (user_id, username, password, email) VALUES  
(1, 'Gopinath', 'password123', 'gopinath@example.com'),  
(2, 'Sathish', 'securepass', 'sathish@example.com'),  
(3, 'Shyam', 'shyampass', 'shyam@example.com'),  
(4, 'Nandini', 'nandinipass', 'nandini@example.com'),  
(5, 'Karthik', 'karthikpass', 'karthik@example.com'),  
(6, 'Harini', 'harinipass', 'harini@example.com'),  
(7, 'Vignesh', 'vigneshpass', 'vignesh@example.com'),  
(8, 'Meena', 'meenapass', 'meena@example.com'),  
(9, 'Prakash', 'prakashpass', 'prakash@example.com'),  
(10, 'Divya', 'divyapass', 'divya@example.com'); */


/*INSERT INTO ExpenseCategories (category_id, category_name) VALUES  
(1, 'Groceries'),  
(2, 'Public Transport'),  
(3, 'Electricity & Water'),  
(4, 'Movies & Dining'),  
(5, 'Medical Expenses'),  
(6, 'Tuition Fees'),  
(7, 'Clothing & Accessories'),  
(8, 'House Rent'),  
(9, 'Vacation & Trips'),  
(10, 'Other Expenses');  */

/*INSERT INTO Expenses (expense_id, user_id, amount, category_id, date, description) VALUES  
(1, 1, 5000.00, 1, '2025-02-01', 'Groceries'),  
(2, 2, 1500.00, 2, '2025-02-05', 'Bus fare'),  
(3, 3, 1000.00, 3, '2025-02-10', 'Electricity bill'),  
(4, 4, 2000.00, 4, '2025-03-02', 'Concert ticket'),  
(5, 5, 750.00, 5, '2025-03-08', 'Doctor consultation'),  
(6, 6, 300.00, 6, '2025-03-15', 'Tuition fee'),  
(7, 7, 1200.00, 7, '2025-04-01', 'Clothes shopping'),  
(8, 8, 8000.00, 8, '2025-04-05', 'Monthly rent'),  
(9, 9, 50000.00, 9, '2025-04-10', 'Vacation trip'),  
(10, 10, 600.00, 10, '2025-04-15', 'Other expenses'); */ 


