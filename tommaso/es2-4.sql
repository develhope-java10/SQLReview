SELECT Tutors.id, Tutors.first_name, Tutors.last_name
FROM Tutors
LEFT JOIN TutorsAssignment
ON Tutors.id = TutorsAssignment.tutor_id
WHERE year_of_experience>=5
GROUP BY id
HAVING COUNT = 1;
