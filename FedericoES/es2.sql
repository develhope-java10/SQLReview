-- Aggiungere una tabella Tutors aventi colonne id, nome, cognome, anni di esperienza del tutor ed area di competenza
-- (riportata come stringa, tipo "Java", "SQL"...). Aggiungere una tabella TutorsAssignment che mettà in relazione un tutor con tutti i corsi in cui lavora.

CREATE TABLE IF NOT EXISTS Tutors(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    years_of_experience INTEGER,
    competence VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS TutorsAssignment(
     tutor_id int NOT NULL,
        course_id int NOT NULL,
        FOREIGN KEY (tutor_id) REFERENCES Tutors(id),
        FOREIGN KEY (course_id) REFERENCES Courses(id)
);

-- Elenco dei nomi dei corsi del tutor con indice 1.

SELECT name
from tutorsAssignment
JOIN courses ON tutorsAssignment.course_id = courses.id
where tutor_id=1;

-- Elenco di righe aventi come colonne nome e cognome di un tutor ed uno dei corsi a cui è assegnato. (se un tutor lavora in più corsi, deve avere più righe corrispondenti)

SELECT first_name, last_name, name
FROM Tutors
JOIN TutorsAssignment
ON Tutors.id = TutorsAssignment.tutor_id
JOIN Courses
ON TutorsAssignment.course_id=Courses.id;

-- Elenco dei tutor che non lavorano in nessun corso

SELECT first_name, last_name
FROM tutors
WHERE tutors.id
NOT IN (
    SELECT tutor_id
    FROM tutorsAssignment
    );

-- Elenco dei tutor che hanno più di 5 anni di esperienza e lavorano in un solo corso, riportando anche il nome del corso


SELECT courses.name AS course_name, Tutors.first_name AS tutor_name,
tutors.years_of_experience FROM TutorsAssignment
LEFT JOIN tutors ON tutors.id = tutorsAssignment.tutor_id
LEFT JOIN courses ON courses.id = tutorsAssignment.course_id
where years_of_experience>4
GROUP BY tutors.id,course_name
HAVING COUNT(tutorsAssignment.course_id)<2;



-- Elenco dei tutor che lavorano in un corso diverso dalla loro area di competenza, riportando sia l'area di competenza che il nome del corso.
-- tutor ,, ta - courses

SELECT tutors.first_name, tutors.competence, courses.name
from tutors
LEFT JOIN tutorsAssignment ON tutorsAssignment.tutor_id = tutors.id
JOIN courses ON courses.id = tutorsAssignment.course_id
where tutors.competence NOT LIKE courses.name;
