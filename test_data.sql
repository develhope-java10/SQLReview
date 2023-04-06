DELETE FROM CourseEnrollments;
DELETE FROM Courses;
DELETE FROM Students;

INSERT INTO Students(id, first_name, last_name) VALUES(7,"Lorenzo", "Catania"), (6,"Eduard","Ancuta"), (5,"Giada", "Dell'Ara"), (4,"Lucrezia","Rumore"), (3, "Giulia", "Contarino"), (2, "Tommaso", "Tranchese"), (1, "Federico", "Urbani");

INSERT INTO Courses(id, name) VALUES (1, "Java 10"), (2, "SQL 15");

INSERT INTO CourseEnrollments(student_id, course_id) VALUES (7,2), (7,1), (6,2), (5,1), (4,2), (4,1), (3, 1), (2, 2), (1, 1);
