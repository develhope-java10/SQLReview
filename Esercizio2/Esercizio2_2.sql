-- Elenco di righe aventi come colonne nome e cognome di un tutor ed uno dei corsi a cui è assegnato.
--(se un tutor lavora in più corsi, deve avere più righe corrispondenti)
SELECT Courses.name AS assigned_course, Tutors.name AS tutor_name, Tutors.surname AS tutor_surname FROM TutorsAssignment
INNER JOIN Tutors ON TutorsAssignment.tutor_id = Tutors.id
INNER JOIN Courses ON TutorsAssignment.course_id = courses.id;