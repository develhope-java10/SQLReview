SELECT Tutors.first_name, Tutors.last_name, Courses.name, Tutors.area_of_expertise
FROM Tutors
JOIN TutorsAssignment ON Tutors.id = TutorsAssignment.tutor_id
JOIN Courses ON TutorsAssignment.course_id = Courses.id
WHERE Tutors.area_of_expertise <> Courses.name;