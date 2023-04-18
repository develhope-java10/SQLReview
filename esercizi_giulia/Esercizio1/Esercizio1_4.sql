--Scrivere una query che elenchi per ogni riga il nome di ogni corso con il corrispondente numero di iscritti

SELECT Courses.name, COUNT(Student_id) AS students_enrolled FROM CourseEnrollments
INNER JOIN Courses ON CourseEnrollments.course_id = Courses.id
GROUP BY Courses.name;