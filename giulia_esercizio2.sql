CREATE TABLE IF NOT EXISTS `TutorsAssignment`(
tutor_id INT,
course_id INT,
FOREIGN KEY(tutor_id) REFERENCES Tutors(id),
FOREIGN KEY(course_id) REFERENCES courses(id),
PRIMARY KEY (tutor_id, course_id));

INSERT INTO Tutors (id, name, surname, yearsOfExperience, areaOfCompetence) VALUES
(1, 'Mario', 'Rossi', 5, 'Java'),
(2, 'Giulia', 'Verdi', 3, 'SQL'),
(3, 'Luca', 'Bianchi', 7, 'Python');

INSERT INTO TutorsAssignment (tutor_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 1);

-- Elenco dei nomi dei corsi del tutor con indice 1
SELECT Courses.name AS assigned_course, Tutors.name AS tutor_name FROM TutorsAssignment
INNER JOIN Tutors ON TutorsAssignment.tutor_id = Tutors.id
INNER JOIN Courses ON TutorsAssignment.course_id = courses.id
WHERE Tutors.id = 1;

-- Elenco di righe aventi come colonne nome e cognome di un tutor ed uno dei corsi a cui è assegnato.
--(se un tutor lavora in più corsi, deve avere più righe corrispondenti)
SELECT Courses.name AS assigned_course, Tutors.name AS tutor_name, Tutors.surname AS tutor_surname FROM TutorsAssignment
INNER JOIN Tutors ON TutorsAssignment.tutor_id = Tutors.id
INNER JOIN Courses ON TutorsAssignment.course_id = courses.id;

-- Elenco dei tutor che non lavorano in nessun corso
SELECT Tutors.name AS tutor_name, Tutors.surname AS tutor_surname FROM TutorsAssignment
INNER JOIN Tutors ON TutorsAssignment.tutor_id = Tutors.id
INNER JOIN Courses ON TutorsAssignment.course_id = courses.id
GROUP BY Tutors.id
HAVING COUNT(course_id) = 0;

-- Elenco dei tutor che hanno più di 5 anni di esperienza e lavorano in un solo corso, riportando anche il nome del corso
SELECT courses.name AS course_name, Tutors.name AS tutor_name, Tutors.surname AS tutor_surname FROM TutorsAssignment
INNER JOIN Tutors ON TutorsAssignment.tutor_id = Tutors.id
INNER JOIN Courses ON TutorsAssignment.course_id = courses.id
WHERE tutors.yearsOfExperience > 5
GROUP BY Tutors.id, course_name
HAVING COUNT(TutorsAssignment.course_id);

--Elenco dei tutor che lavorano in un corso diverso dalla loro area di competenza, riportando sia l'area di competenza che il nome del corso.--

SELECT DISTINCT courses.name AS course_name, Tutors.name AS tutor_name, Tutors.surname AS tutor_surname, tutors.areaOfCompetence
FROM TutorsAssignment
INNER JOIN Tutors ON TutorsAssignment.tutor_id = Tutors.id
INNER JOIN Courses ON TutorsAssignment.course_id = courses.id
WHERE tutors.areaOfCompetence <> courses.name;




