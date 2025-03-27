--Use SISDB;
--Go

----------------------------------------------TASK-2 [Select, Where, Between, AND, LIKE]---------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
--1.Insert a new student into the "Students" table with given details----

/*INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
VALUES (11, 'John', 'Doe', '1995-08-15', 'john.doe@example.com', '1234567890');*/

--SELECT * FROM Students;

------------------------------------------------------------------------------------------------------------------------

--2.Enroll an existing student in a course with the enrollment date.-----

/*INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)  
VALUES (36, 3, 2, '2025-03-24'); */

--SELECT * FROM Enrollments;

---------------------------------------------------------------------------------------------------------------------------

---3.Update the email of a specific teacher.-------------------

/*UPDATE Teacher  
SET email = 'newemail@example.com'  
WHERE teacher_id = 3;*/

--SELECT * FROM Teacher;

------------------------------------------------------------------------------------------------------------------------------

------4.Delete a specific enrollment record based on student and course.------

/*DELETE FROM Enrollments  
WHERE student_id = 3 AND course_id = 2;*/

--SELECT * FROM Enrollments;

--------------------------------------------------------------------------------------------------------------------------------

-----5.Assign a specific teacher to a course.--------------

/*UPDATE Courses  
SET teacher_id = 5  
WHERE course_id = 3;*/

--SELECT * FROM Courses;

-------------------------------------------------------------------------------------------------------------------------------

-------6.Delete a specific student and their enrollment records.---------

/*DELETE FROM Students  
WHERE student_id = 4;*/

--SELECT * FROM Students;

-------------------------------------------------------------------------------------------------------------------------------

------7. Update the payment amount for a specific payment record.---------------

/*UPDATE Payments  
SET amount = 8500  
WHERE payment_id = 3;*/

--SELECT * FROM Payments;





 

