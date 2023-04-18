-- Elenco dei tutor che hanno più di 5 anni di esperienza e lavorano in un solo corso,
-- riportando anche il nome del corso

SELECT courses.name AS course_name, Tutors.name AS tutor_name, Tutors.surname AS tutor_surname,
tutors.yearsOfExperience FROM TutorsAssignment
JOIN Tutors ON TutorsAssignment.tutor_id = Tutors.id
JOIN Courses ON TutorsAssignment.course_id = courses.id
WHERE tutors.yearsOfExperience > 5
GROUP BY Tutors.id, course_name
HAVING COUNT(TutorsAssignment.course_id) = 1;

