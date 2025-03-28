--Use SISDB;
--Go

--------------------------------------------TASK-4 [Subquery and its type]------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------
----1.Calculate the average number of students enrolled in each course.----------

/*SELECT c.course_name, 
       (SELECT COUNT(*) 
        FROM edu.Enrollments e 
        WHERE e.course_id = c.course_id) AS num_students,
       (SELECT AVG(count_students) 
        FROM (SELECT COUNT(*) AS count_students 
              FROM edu.Enrollments 
              GROUP BY course_id) AS course_counts) AS avg_students
FROM edu.Courses c;*/

----------------------------------------------------------------------------------------------------------------

-----2.Identify the student(s) who made the highest payment.----------

/*SELECT s.first_name, s.last_name, p.amount
FROM edu.Students s
JOIN edu.Payments p ON s.student_id = p.student_id
WHERE p.amount = (SELECT MAX(amount) FROM edu.Payments);*/

-----------------------------------------------------------------------------------------------------------------

-----3.Retrieve a list of courses with the highest number of enrollments.-----------

/*SELECT c.course_name, COUNT(e.student_id) AS enrollment_count
FROM edu.Courses c
JOIN edu.Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name
HAVING COUNT(e.student_id) = (SELECT MAX(enrollment_count) 
                               FROM (SELECT COUNT(student_id) AS enrollment_count 
                                     FROM edu.Enrollments 
                                     GROUP BY course_id) AS subquery);*/

---------------------------------------------------------------------------------------------------------------------

-------4.Calculate the total payments made to courses taught by each teacher.----------

/*SELECT t.first_name, t.last_name, SUM(p.amount) AS total_payments
FROM edu.Teacher t
JOIN edu.Courses c ON t.teacher_id = c.teacher_id
JOIN edu.Enrollments e ON c.course_id = e.course_id
JOIN edu.Payments p ON e.student_id = p.student_id
GROUP BY t.teacher_id, t.first_name, t.last_name;*/

------------------------------------------------------------------------------------------------------------------------

-------5.Identify students who are enrolled in all available courses.------------

/*SELECT s.first_name, s.last_name
FROM edu.Students s
WHERE (SELECT COUNT(DISTINCT course_id) FROM edu.Enrollments e WHERE e.student_id = s.student_id) = 
      (SELECT COUNT(*) FROM edu.Courses);*/
------------------------------------------------------------------------------------------------------------------------

----------6.Retrieve the names of teachers who have not been assigned to any courses using subqueries.--------

/*SELECT t.first_name, t.last_name
FROM edu.Teacher t
WHERE t.teacher_id NOT IN (SELECT DISTINCT teacher_id FROM edu.Courses);*/
-------------------------------------------------------------------------------------------------------------------------

------------7.Calculate the average age of all students using subqueries to calculate the age based on their date of birth.-----

/*SELECT AVG(DATEDIFF(YEAR, date_of_birth, GETDATE())) AS average_age
FROM edu.Students;*/

-----------------------------------------------------------------------------------------------------------------------

----8. Identify courses with no enrollments. Use subqueries to find courses without enrollment records.-------

/*SELECT course_id, course_name
FROM edu.Courses
WHERE course_id NOT IN (
    SELECT DISTINCT course_id
    FROM edu.Enrollments
);*/

-----------------------------------------------------------------------------------------------------------------------

---------9.Calculate the total payments made by each student for each course using subqueries and aggregate functions.----

/*SELECT s.student_id, s.first_name, s.last_name, c.course_id, c.course_name,
       (SELECT SUM(p.amount)
        FROM Payments p
        WHERE p.student_id = s.student_id) AS total_payment
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;*/

---------------------------------------------------------------------------------------------------------------------

-----10.Identify students who have made more than one payment using subqueries and aggregate functions.----

/*SELECT student_id
FROM edu.Payments
GROUP BY student_id
HAVING COUNT(payment_id) > 1;*/

-----------------------------------------------------------------------------------------------------------------------

---------11.Calculate the total payments made by each student by joining the "Students" and "Payments" tables and using GROUP BY.--

/*SELECT s.student_id, s.first_name, s.last_name, SUM(p.amount) AS total_payments
FROM edu.Students s
JOIN edu.Payments p ON s.student_id = p.student_id
GROUP BY s.student_id, s.first_name, s.last_name;*/

-----------------------------------------------------------------------------------------------------------------------

----12.Retrieve a list of course names along with the count of students enrolled in each course using JOIN and GROUP BY---

/*SELECT c.course_name, COUNT(e.student_id) AS enrollment_count
FROM edu.Courses c
JOIN edu.Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;*/

--------------------------------------------------------------------------------------------------------------------------

-------13.Calculate the average payment amount made by students using JOIN and GROUP BY.------

/*SELECT s.student_id, AVG(p.amount) AS average_payment
FROM edu.Students s
JOIN edu.Payments p ON s.student_id = p.student_id
GROUP BY s.student_id;*/

--------------------------------------------------------------------------------------------------------------------------















