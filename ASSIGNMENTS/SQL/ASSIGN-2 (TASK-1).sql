--1.Create Database SISDB;

/*Use SISDB;
GO*/
--------------------------------------------------TASK-1 [Database Design]----------------------------------
--2.Define the Schema for the Table

--Create Schema edu;

------------------------------Creating the Tables-----------------------------------

--Students Table

/*CREATE TABLE edu.Students (
    student_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,           
    last_name VARCHAR(50) NOT NULL,            
    date_of_birth DATE NOT NULL,               
    email VARCHAR(100) UNIQUE NOT NULL,        
    phone_number VARCHAR(15) UNIQUE NOT NULL   
);*/


--Teacher Table

/*CREATE TABLE edu.Teacher (
    teacher_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,          
    last_name VARCHAR(50) NOT NULL,            
    email VARCHAR(100) UNIQUE NOT NULL        
);*/


--Courses Table

/*CREATE TABLE edu.Courses (
    course_id INT IDENTITY(1,1) PRIMARY KEY,  
    course_name VARCHAR(100) NOT NULL,         
    credits INT CHECK (credits > 0) NOT NULL,  
    teacher_id INT,     
    FOREIGN KEY (teacher_id) REFERENCES edu.Teacher(teacher_id) ON DELETE CASCADE
);*/


--Enrollments Table

/*CREATE TABLE edu.Enrollments (
    enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT NOT NULL,                      
    course_id INT NOT NULL,                       
    enrollment_date DATE DEFAULT GETDATE(),       
    FOREIGN KEY (student_id) REFERENCES edu.Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES edu.Courses(course_id) ON DELETE CASCADE
);*/


--Payment Table

/*CREATE TABLE edu.Payments (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT NOT NULL,                    
    amount DECIMAL(10,2), 
    payment_date DATE DEFAULT GETDATE(),       
    FOREIGN KEY (student_id) REFERENCES edu.Students(student_id) ON DELETE CASCADE
);*/


-----------------------------Inserting the Values---------------------------------------
--Students Table

/*
INSERT INTO edu.Students (first_name, last_name, date_of_birth, email, phone_number) VALUES
('Satish', 'Kumar', '2003-05-12', 'satish.kumar@example.com', '9876543210'),
('Priya', 'Chitra', '2004-08-25', 'priya.chitra@example.com', '9786543120'),
('Arun', 'Prakash', '2002-11-15', 'arun.prakash@example.com', '9658741230'),
('Divya', 'Shree', '2003-07-09', 'divya.shree@example.com', '9988776655'),
('Vignesh', 'Karthik', '2002-03-22', 'vignesh.karthik@example.com', '9123456780'),
('Meena', 'Lakshmi', '2004-12-30', 'meena.lakshmi@example.com', '9345678123'),
('Karthikeyan', 'R', '2003-06-18', 'karthikeyan.r@example.com', '9456123789'),
('Sowmya', 'Ramesh', '2002-09-05', 'sowmya.ramesh@example.com', '9567412380'),
('Dinesh', 'Rajan', '2003-01-27', 'dinesh.rajan@example.com', '9678234501'),
('Bhuvana', 'Devi', '2004-04-14', 'bhuvana.devi@example.com', '9789543210');
*/

--Teacher Table

/*
INSERT INTO edu.Teacher (first_name, last_name, email) VALUES
('Manikandan', 'Ravi', 'manikandan@example.com'),
('Muthukumaraswamy', 'Perumal', 'muthukumaraswamy@example.com'),
('Sangeetha', 'Devi', 'sangeetha@example.com'),
('Surekha', 'Murthy', 'surekha@example.com'),
('Sudha', 'Narayanan', 'sudha@example.com'),
('Arunachalam', 'Gopal', 'arunachalam@example.com'),
('Jayanthi', 'Lakshmi', 'jayanthi@example.com'),
('Selvakumar', 'Balu', 'selvakumar@example.com'),
('Vasuki', 'Chandran', 'vasuki@example.com'),
('Gopinath', 'Balaji', 'ravichandran@example.com');
*/



--Courses Table

/*
INSERT INTO edu.Courses (course_name, credits, teacher_id) VALUES
('Python Basics', 3, 1),
('Web Development', 4, 2),
('SQL and Databases', 3, 3),
('Java Programming', 4, 4),
('C Programming', 2, 5),
('Data Structures', 3, 6),
('Machine Learning', 4, 7),
('Cyber Security Basics', 3, 8),
('Cloud Computing', 4, 9),
('Mobile App Development', 5, 10);
*/

--Enrollments Table

/*INSERT INTO edu.Enrollments (student_id, course_id, enrollment_date) VALUES
(1, 2, '2025-03-01'),
(2, 3, '2025-03-05'),
(3, 1, '2025-03-07'),
(4, 5, '2025-03-10'),
(5, 6, '2025-03-12'),
(6, 4, '2025-03-15'),
(7, 7, '2025-03-18'),
(8, 8, '2025-03-20'),
(9, 9, '2025-03-22'),
(10, 10, '2025-03-25');
*/



--Payment Table

/*
INSERT INTO edu.Payments (student_id, amount, payment_date) VALUES
(1, 70000, '2025-03-02'),
(2, 40500, '2025-03-06'),
(3, 50000, '2025-03-08'),
(4, 30000, '2025-03-11'),
(5, 55000, '2025-03-13'),
(6, 60000, '2025-03-16'),
(7, 80000, '2025-03-19'),
(8, 75000, '2025-03-21'),
(9, 95000, '2025-03-23'),
(10, 100000, '2025-03-26');
*/

----------------Viewing the Table----------------------------

--SELECT * FROM edu.Students;
--SELECT * FROM edu.Courses;
--SELECT * FROM edu.Enrollments;
--SELECT * FROM edu.Teacher;
--SELECT * FROM edu.Payments;
