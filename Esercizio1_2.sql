-- Scrivere una query per elencare tutti i corsi con almeno 2 iscritti --
SELECT Courses.name FROM CourseEnrollments
INNER JOIN Courses ON CourseEnrollments.course_id = Courses.id
GROUP BY Courses.id
HAVING COUNT(Student_id) >= 2;
