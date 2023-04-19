SELECT first_name, last_name
FROM Students
JOIN CourseEnrollments ON Students.id = CourseEnrollments.student_id
JOIN Courses ON course_id = Courses.id
WHERE name LIKE '%Java%';