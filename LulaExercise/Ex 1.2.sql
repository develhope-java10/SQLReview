SELECT Courses.name, COUNT(CourseEnrollments.student_id) AS num_students
FROM Courses
JOIN CourseEnrollments ON Courses.id = CourseEnrollments.course_id
GROUP BY Courses.id
HAVING COUNT(CourseEnrollments.student_id) >= 2;