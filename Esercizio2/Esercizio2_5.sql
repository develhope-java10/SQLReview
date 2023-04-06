--Elenco dei tutor che lavorano in un corso diverso dalla loro area di competenza,
--riportando sia l'area di competenza che il nome del corso.

SELECT courses.name AS course_name, Tutors.name AS tutor_name,
Tutors.surname AS tutor_surname, tutors.areaOfCompetence
FROM TutorsAssignment
JOIN Tutors ON TutorsAssignment.tutor_id = Tutors.id
JOIN Courses ON TutorsAssignment.course_id = courses.id
WHERE tutors.areaOfCompetence <> courses.name;
