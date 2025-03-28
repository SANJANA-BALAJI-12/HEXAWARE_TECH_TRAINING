--Use SISDB
--Go

--------------------------------------------TASK-3  [Aggregate functions, Having, Order By, GroupBy and Joins]-------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------
--------1.Calculate the total payments made by a specific student.-----------

/*SELECT s.student_id, s.first_name, s.last_name, SUM(p.amount) AS total_payment  
FROM edu.Students s  
JOIN edu.Payments p ON s.student_id = p.student_id  
WHERE s.student_id = 3  
GROUP BY s.student_id, s.first_name, s.last_name; */

------------------------------------------------------------------------------------------------------------------

-----------2.Retrieve a list of courses with the count of students enrolled in each course.-----------

/*SELECT c.course_id, c.course_name, COUNT(e.student_id) AS student_count  
FROM edu.Courses c  
LEFT JOIN edu.Enrollments e ON c.course_id = e.course_id  
GROUP BY c.course_id, c.course_name;  */

-------------------------------------------------------------------------------------------------------------------

----------3.Find the names of students who have not enrolled in any course.----------------------------

/*SELECT s.first_name, s.last_name  
FROM edu.Students s  
LEFT JOIN edu.Enrollments e ON s.student_id = e.student_id  
WHERE e.student_id IS NULL;  */

--------------------------------------------------------------------------------------------------------------------

-----------4. Retrieve the first name, last name of students, and the names of the courses they are enrolled in.-----

/*SELECT s.first_name, s.last_name, c.course_name  
FROM edu.Students s  
JOIN edu.Enrollments e ON s.student_id = e.student_id  
JOIN edu.Courses c ON e.course_id = c.course_id;  */

---------------------------------------------------------------------------------------------------------------------

--------5.List the names of teachers and the courses they are assigned to.-----------

/*SELECT t.first_name, t.last_name, c.course_name  
FROM edu.Teacher t  
JOIN edu.Courses c ON t.teacher_id = c.teacher_id;  */

----------------------------------------------------------------------------------------------------------------------

---6.Retrieve a list of students and their enrollment dates for a specific course.------------

/*SELECT s.first_name, s.last_name, e.enrollment_date  
FROM edu.Students s  
JOIN edu.Enrollments e ON s.student_id = e.student_id  
JOIN edu.Courses c ON e.course_id = c.course_id  
WHERE c.course_id = 2;*/

--------------------------------------------------------------------------------------------------------------------

---------7.Find the names of students who have not made any payments.----------

/*SELECT s.first_name, s.last_name  
FROM edu.Students s  
LEFT JOIN edu.Payments p ON s.student_id = p.student_id  
WHERE p.payment_id IS NULL;*/

-------------------------------------------------------------------------------------------------------------------

----------8.Identify courses that have no enrollments.------------

/*SELECT c.course_name  
FROM edu.Courses c  
LEFT JOIN edu.Enrollments e ON c.course_id = e.course_id  
WHERE e.student_id IS NULL; */

-----------------------------------------------------------------------------------------------------------------

-----9.Identify students who are enrolled in more than one course.----------------

/*SELECT e1.student_id, s.first_name, s.last_name  
FROM edu.Enrollments e1  
JOIN edu.Enrollments e2 ON e1.student_id = e2.student_id AND e1.course_id != e2.course_id  
JOIN edu.Students s ON e1.student_id = s.student_id  
GROUP BY e1.student_id, s.first_name, s.last_name; */

-----------------------------------------------------------------------------------------------------------------

-----10.Find teachers who are not assigned to any courses.----------------

/*SELECT t.first_name, t.last_name
FROM edu.Teacher t
LEFT JOIN edu.Courses c ON t.teacher_id = c.teacher_id
WHERE c.course_id IS NULL;*/











