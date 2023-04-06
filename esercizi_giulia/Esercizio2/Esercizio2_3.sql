-- Elenco dei tutor che non lavorano in nessun corso

SELECT name AS tutor_name, surname AS tutor_surname FROM tutors
WHERE NOT EXISTS (SELECT * FROM tutorsassignment
WHERE tutors.id = tutorsassignment.tutor_id);