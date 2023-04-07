SELECT id, first_name,  last_name
FROM Tutors
WHERE NOT EXISTS(
    SELECT tutor_id
    FROM TutorsAssignment
    WHERE TutorsAssignment.tutor_id = Tutors.id
);

SELECT id, first_name,  last_name
FROM Tutors
WHERE id NOT IN(
    SELECT tutor_id
    FROM TutorsAssignment
);
