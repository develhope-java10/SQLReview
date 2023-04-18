SELECT Tutors.first_name, Tutors.last_name
FROM Tutors
LEFT JOIN TutorsAssignment ON Tutors.id = TutorsAssignment.tutor_id
WHERE TutorsAssignment.tutor_id IS NULL