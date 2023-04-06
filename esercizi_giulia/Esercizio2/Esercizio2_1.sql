-- Elenco dei nomi dei corsi del tutor con indice 1
SELECT Courses.name AS assigned_course, tutor_id FROM TutorsAssignment
INNER JOIN Courses ON TutorsAssignment.course_id = courses.id
WHERE tutor_id = 1;