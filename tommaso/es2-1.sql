SELECT Courses.name AS course_name, first_name AS tutor_name
FROM Tutors
JOIN TutorsAssignment
ON Tutors.id = TutorsAssignment.tutor_id
JOIN Courses
ON TutorsAssignment.course_id = Courses.id
WHERE Tutors.id = 1;
