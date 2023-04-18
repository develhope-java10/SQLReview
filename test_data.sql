DELETE FROM CourseEnrollments;
DELETE FROM Courses;
DELETE FROM Students;

INSERT INTO Students(id, first_name, last_name) VALUES (3, "Giulia", "Contarino"), (2, "Tommaso", "Tranchese"), (1, "Federico", "Urbani"), (4, "Lucrezia", "Rumore");

INSERT INTO Courses(id, name) VALUES (1, "Java 10"), (2, "SQL 15");

INSERT INTO CourseEnrollments(student_id, course_id) VALUES (3, 1), (2, 2), (1, 1), (4,1);

SELECT Students.first_name, Students.last_name
FROM Students
JOIN CourseEnrollments ON Students.id = CourseEnrollments.student_id
JOIN Courses ON CourseEnrollments.course_id = Courses.id
WHERE Courses.name LIKE '%Java%';