SELECT name, COUNT(CourseEnrollments.student_id) AS num_students
FROM Courses
LEFT JOIN CourseEnrollments ON Courses.id = CourseEnrollments.course_id
GROUP BY Courses.id;