SELECT name
FROM Courses
JOIN TutorsAssignment ON Courses.id = TutorsAssignment.course_id
WHERE TutorsAssignment.tutor_id = 1;