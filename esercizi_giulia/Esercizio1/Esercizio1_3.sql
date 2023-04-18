-- Scrivere una query per elencare tutti i corsi senza nessun iscritto --
SELECT courses.name FROM Courses
WHERE NOT EXISTS (SELECT * FROM courseenrollments WHERE course_id = Courses.id);