--Scrivere una query che elenchi per ogni riga il nome ed il cognome di ogni studente
--con il corrispondente numero di corsi a cui è iscritto/a

SELECT students.first_name, students.last_name, COUNT(course_id) AS number_of_courses FROM CourseEnrollments
RIGHT JOIN Students ON CourseEnrollments.student_id = Students.id
GROUP BY Students.id;