DELETE FROM CourseEnrollments;
DELETE FROM Courses;
DELETE FROM Students;

INSERT INTO Students(id, first_name, last_name) VALUES (3, "Giulia", "Contarino"), (2, "Tommaso", "Tranchese"), (1, "Federico", "Urbani");

INSERT INTO Courses(id, name) VALUES (1, "Java 10"), (2, "SQL 15");

INSERT INTO CourseEnrollments(student_id, course_id) VALUES (3, 1), (2, 2), (1, 1);
