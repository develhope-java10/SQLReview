SELECT first_name, last_name, name
FROM Tutors
JOIN TutorsAssignment
ON Tutors.id = TutorsAssignment.tutor_id
JOIN Courses
ON TutorsAssignment.course_id=Courses.id;