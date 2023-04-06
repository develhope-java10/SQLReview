//ESERCIZIO 1
// - QUERY 1
SELECT Students.first_name, Students.last_name
FROM Students
JOIN CourseEnrollments ON Students.id = CourseEnrollments.student_id
JOIN Courses ON CourseEnrollments.course_id = Courses.id
WHERE Courses.name LIKE '%Java%';

// - QUERY 2
SELECT Courses.name, COUNT(CourseEnrollments.student_id) AS num_students
FROM Courses
JOIN CourseEnrollments ON Courses.id = CourseEnrollments.course_id
GROUP BY Courses.id
HAVING COUNT(CourseEnrollments.student_id) >= 2;

// - QUERY 3

SELECT Courses.name
FROM Courses
LEFT JOIN CourseEnrollments ON Courses.id = CourseEnrollments.course_id
WHERE CourseEnrollments.course_id IS NULL;

- secondo modo

SELECT *
FROM Courses
WHERE id NOT IN (SELECT course_id FROM CourseEnrollments);

- terzo modo

SELECT *
FROM Courses
WHERE EXISTS (SELECT * FROM CourseEnrollments WHERE id = course_id);

// - QUERY 4

SELECT name, COUNT(CourseEnrollments.student_id) AS num_students
FROM Courses
LEFT JOIN CourseEnrollments ON Courses.id = CourseEnrollments.course_id
GROUP BY Courses.id;

// - QUERY 5

SELECT first_name, last_name, COUNT(CourseEnrollments.course_id) AS num_courses
FROM Students
JOIN CourseEnrollments ON Students.id = CourseEnrollments.student_id
GROUP BY Students.id

