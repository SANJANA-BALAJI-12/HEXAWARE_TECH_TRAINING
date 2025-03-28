--1.Create Database SISDB;

/*Use SISDB;
GO*/
--------------------------------------------------TASK-1 [Database Design]----------------------------------
--2.Define the Schema for the Table

--Create Schema edu;

------------------------------Creating the Tables-----------------------------------

--Students Table

/*CREATE TABLE edu.Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,           
    last_name VARCHAR(50) NOT NULL,            
    date_of_birth DATE NOT NULL,               
    email VARCHAR(100) UNIQUE NOT NULL,        
    phone_number VARCHAR(15) UNIQUE NOT NULL   
);*/


--Teacher Table

/*CREATE TABLE edu.Teacher (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,          
    last_name VARCHAR(50) NOT NULL,            
    email VARCHAR(100) UNIQUE NOT NULL        
);*/


--Courses Table

/*CREATE TABLE edu.Courses (
    course_id INT PRIMARY KEY,  
    course_name VARCHAR(100) NOT NULL,         
    credits INT CHECK (credits > 0) NOT NULL,  
    teacher_id INT,     
    FOREIGN KEY (teacher_id) REFERENCES edu.Teacher(teacher_id) ON DELETE CASCADE
);*/


--Enrollments Table

/*CREATE TABLE edu.Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,                      
    course_id INT NOT NULL,                       
    enrollment_date DATE DEFAULT GETDATE(),       
    FOREIGN KEY (student_id) REFERENCES edu.Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES edu.Courses(course_id) ON DELETE CASCADE
);*/


--Payment Table

/*CREATE TABLE edu.Payments (
    payment_id INT PRIMARY KEY,
    student_id INT NOT NULL,                    
    amount DECIMAL(10,2), 
    payment_date DATE DEFAULT GETDATE(),       
    FOREIGN KEY (student_id) REFERENCES edu.Students(student_id) ON DELETE CASCADE
);*/


-----------------------------Inserting the Values---------------------------------------
--Students Table

/*
INSERT INTO edu.Students (student_id, first_name, last_name, date_of_birth, email, phone_number) VALUES
(1, 'Satish', 'Kumar', '2003-05-12', 'satish.kumar@example.com', '9876543210'),
(2, 'Priya', 'Chitra', '2004-08-25', 'priya.chitra@example.com', '9786543120'),
(3, 'Arun', 'Prakash', '2002-11-15', 'arun.prakash@example.com', '9658741230'),
(4, 'Divya', 'Shree', '2003-07-09', 'divya.shree@example.com', '9988776655'),
(5, 'Vignesh', 'Karthik', '2002-03-22', 'vignesh.karthik@example.com', '9123456780'),
(6, 'Meena', 'Lakshmi', '2004-12-30', 'meena.lakshmi@example.com', '9345678123'),
(7, 'Karthikeyan', 'R', '2003-06-18', 'karthikeyan.r@example.com', '9456123789'),
(8, 'Sowmya', 'Ramesh', '2002-09-05', 'sowmya.ramesh@example.com', '9567412380'),
(9, 'Dinesh', 'Rajan', '2003-01-27', 'dinesh.rajan@example.com', '9678234501'),
(10, 'Bhuvana', 'Devi', '2004-04-14', 'bhuvana.devi@example.com', '9789543210');
*/

--Teacher Table

/*
INSERT INTO edu.Teacher (teacher_id, first_name, last_name, email) VALUES
(1, 'Manikandan', 'Ravi', 'manikandan@example.com'),
(2, 'Muthukumaraswamy', 'Perumal', 'muthukumaraswamy@example.com'),
(3, 'Sangeetha', 'Devi', 'sangeetha@example.com'),
(4, 'Surekha', 'Murthy', 'surekha@example.com'),
(5, 'Sudha', 'Narayanan', 'sudha@example.com'),
(6, 'Arunachalam', 'Gopal', 'arunachalam@example.com'),
(7, 'Jayanthi', 'Lakshmi', 'jayanthi@example.com'),
(8, 'Selvakumar', 'Balu', 'selvakumar@example.com'),
(9, 'Vasuki', 'Chandran', 'vasuki@example.com'),
(10, 'Gopinath', 'Balaji', 'ravichandran@example.com');
*/



--Courses Table

/*
INSERT INTO edu.Courses (course_id, course_name, credits, teacher_id) VALUES
(1, 'Python Basics', 3, 1),
(2, 'Web Development', 4, 2),
(3, 'SQL and Databases', 3, 3),
(4, 'Java Programming', 4, 4),
(5, 'C Programming', 2, 5),
(6, 'Data Structures', 3, 6),
(7, 'Machine Learning', 4, 7),
(8, 'Cyber Security Basics', 3, 8),
(9, 'Cloud Computing', 4, 9),
(10, 'Mobile App Development', 5, 10);
*/

--Enrollments Table

/*INSERT INTO edu.Enrollments (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1, 1, 2, '2025-03-01'),
(2, 2, 3, '2025-03-05'),
(3, 3, 1, '2025-03-07'),
(4, 4, 5, '2025-03-10'),
(5, 5, 6, '2025-03-12'),
(6, 6, 4, '2025-03-15'),
(7, 7, 7, '2025-03-18'),
(8, 8, 8, '2025-03-20'),
(9, 9, 9, '2025-03-22'),
(10, 10, 10, '2025-03-25'),
(11, 1, 5, '2025-03-28'),
(12, 2, 6, '2025-03-30'),
(13, 3, 7, '2025-04-02'),
(14, 4, 8, '2025-04-05'),
(15, 5, 9, '2025-04-08'),
(16, 6, 10, '2025-04-10'),
(17, 7, 1, '2025-04-12'),
(18, 8, 2, '2025-04-15'),
(19, 9, 3, '2025-04-18'),
(20, 10, 4, '2025-04-20'),
(21, 3, 1, '2025-03-03'),
(22, 3, 3, '2025-03-07'),
(23, 3, 5, '2025-03-12'),
(24, 3, 7, '2025-03-17'),
(25, 3, 9, '2025-03-22'),
(26, 4, 2, '2025-03-04'),
(27, 4, 4, '2025-03-08'),
(28, 4, 6, '2025-03-13'),
(29, 4, 8, '2025-03-18'),
(30, 4, 10, '2025-03-23'),
(31, 5, 1, '2025-03-05'),
(32, 5, 2, '2025-03-09'),
(33, 5, 3, '2025-03-14'),
(34, 5, 4, '2025-03-19'),
(35, 5, 5, '2025-03-24');
*/



--Payment Table

/*
INSERT INTO edu.Payments (payment_id, student_id, amount, payment_date) VALUES
(1, 1, 7000, '2025-03-02'),
(2, 2, 4000, '2025-03-06'),
(3, 3, 5000, '2025-03-08'),
(4, 4, 3000, '2025-03-11'),
(5, 5, 5500, '2025-03-13'),
(6, 6, 6000, '2025-03-16'),
(7, 7, 8000, '2025-03-19'),
(8, 8, 7500, '2025-03-21'),
(9, 9, 9000, '2025-03-23'),
(10, 10, 10000, '2025-03-26');
*/

----------------Viewing the Table----------------------------

--SELECT * FROM edu.Students;
--SELECT * FROM edu.Courses;
--SELECT * FROM edu.Enrollments;
--SELECT * FROM edu.Teacher;
--SELECT * FROM edu.Payments;



