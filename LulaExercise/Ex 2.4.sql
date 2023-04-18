
SELECT Tutors.first_name, Tutors.last_name, Courses.name
FROM Tutors
JOIN TutorsAssignment ON Tutors.id = TutorsAssignment.tutor_id
JOIN Courses ON TutorsAssignment.course_id = Courses.id
WHERE Tutors.experience_years > 5
GROUP BY Tutors.id, Courses.name
HAVING COUNT(TutorsAssignment.course_id) = 1;