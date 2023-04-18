DELETE FROM CourseEnrollments;
DELETE FROM Courses;
DELETE FROM Students;
DELETE FROM Tutors;
DELETE FROM TutorsAssignment;

INSERT INTO Students(id, first_name, last_name) VALUES(7,"Lorenzo", "Catania"), (6,"Eduard","Ancuta"), (5,"Giada", "Dell'Ara"), (4,"Lucrezia","Rumore"), (3, "Giulia", "Contarino"), (2, "Tommaso", "Tranchese"), (1, "Federico", "Urbani");

INSERT INTO Courses(id, name) VALUES (1, "Java 10"), (2, "SQL 15");

INSERT INTO CourseEnrollments(student_id, course_id) VALUES (7,2), (7,1), (6,2), (5,1), (4,2), (4,1), (3, 1), (2, 2), (1, 1);

INSERT INTO Tutors(id, first_name, last_name, exp_year, class) VALUES(1, "Marco", "Rossi",5, "Java 10"), (2, "Marta", "Bianchi",7 ,"SQL 15"), (3, "Roberta", "Verdi", 10, "Java 10");

INSERT INTO TutorsAssignment VALUES (1, 1), (1,2), (2, 2), (3,1), (3,2);