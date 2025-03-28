--Use SISDB;
--Go

----------------------------------------------TASK-2 [Select, Where, Between, AND, LIKE]---------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------
--1.Insert a new student into the "Students" table with given details----

/*INSERT INTO edu.Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
VALUES (11, 'John', 'Doe', '1995-08-15', 'john.doe@example.com', '1234567890');*/

--SELECT * FROM edu.Students;

------------------------------------------------------------------------------------------------------------------------

--2.Enroll an existing student in a course with the enrollment date.-----

/*INSERT INTO edu.Enrollments (enrollment_id, student_id, course_id, enrollment_date)  
VALUES (36, 3, 2, '2025-03-24'); */

--SELECT * FROM edu.Enrollments;

---------------------------------------------------------------------------------------------------------------------------

---3.Update the email of a specific teacher.-------------------

/*UPDATE edu.Teacher  
SET email = 'newemail@example.com'  
WHERE teacher_id = 3;*/

--SELECT * FROM edu.Teacher;

------------------------------------------------------------------------------------------------------------------------------

------4.Delete a specific enrollment record based on student and course.------

/*DELETE FROM edu.Enrollments  
WHERE student_id = 3 AND course_id = 2;*/

--SELECT * FROM edu.Enrollments;

--------------------------------------------------------------------------------------------------------------------------------

-----5.Assign a specific teacher to a course.--------------

/*UPDATE edu.Courses  
SET teacher_id = 5  
WHERE course_id = 3;*/

--SELECT * FROM edu.Courses;

-------------------------------------------------------------------------------------------------------------------------------

-------6.Delete a specific student and their enrollment records.---------

/*DELETE FROM edu.Students  
WHERE student_id = 4;*/

--SELECT * FROM edu.Students;

-------------------------------------------------------------------------------------------------------------------------------

------7. Update the payment amount for a specific payment record.---------------

/*UPDATE edu.Payments  
SET amount = 8500  
WHERE payment_id = 3;*/

--SELECT * FROM edu.Payments;





 

