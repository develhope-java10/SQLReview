-- Scrivere una query per elencare tutti gli studenti iscritti ad un corso che ha "Java" nel nome --

-- SELECT Students.first_name, Students.last_name, Courses.name FROM CourseEnrollments
-- INNER JOIN Students ON CourseEnrollments.student_id = Students.id
-- INNER JOIN Courses ON CourseEnrollments.course_id = Courses.id
-- WHERE Courses.name LIKE ('Java%');

-- Scrivere una query per elencare tutti i corsi con almeno 2 iscritti --
-- SELECT Courses.name FROM CourseEnrollments
-- INNER JOIN Students ON CourseEnrollments.student_id = Students.id
-- INNER JOIN Courses ON CourseEnrollments.course_id = Courses.id
-- GROUP BY Courses.id
-- HAVING COUNT(Students.id) >= 2;

-- Scrivere una query per elencare tutti i corsi senza nessun iscritto --
--SELECT Courses.name FROM CourseEnrollments
--INNER JOIN Students ON CourseEnrollments.student_id = Students.id
--INNER JOIN Courses ON CourseEnrollments.course_id = Courses.id
--GROUP BY Courses.id
--HAVING COUNT(Students.id) = 0

--Scrivere una query che elenchi per ogni riga il nome di ogni corso con il corrispondente numero di iscritti
--SELECT Courses.name, COUNT(Students.id) AS students_enrolled FROM CourseEnrollments
--INNER JOIN Students ON CourseEnrollments.student_id = Students.id
--INNER JOIN Courses ON CourseEnrollments.course_id = Courses.id
--GROUP BY Courses.name;

--Scrivere una query che elenchi per ogni riga il nome ed il cognome di ogni studente
--con il corrispondente numero di corsi a cui è iscritto/a
--SELECT students.first_name, students.last_name, COUNT(courses.id) AS number_of_courses FROM CourseEnrollments
--INNER JOIN Students ON CourseEnrollments.student_id = Students.id
--INNER JOIN Courses ON CourseEnrollments.course_id = Courses.id
--GROUP BY CourseEnrollments.student_id;