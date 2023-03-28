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
SELECT Courses.name FROM CourseEnrollments
INNER JOIN Students ON CourseEnrollments.student_id = Students.id
INNER JOIN Courses ON CourseEnrollments.course_id = Courses.id
GROUP BY Courses.id
HAVING COUNT(Students.id) = 0;