SELECT first_name, last_name, COUNT(CourseEnrollments.course_id) AS num_courses
FROM Students
JOIN CourseEnrollments ON Students.id = CourseEnrollments.student_id
GROUP BY Students.id;