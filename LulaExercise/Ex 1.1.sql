SELECT Students.first_name, Students.last_name
FROM Students
JOIN CourseEnrollments ON Students.id = CourseEnrollments.student_id
JOIN Courses ON CourseEnrollments.course_id = Courses.id
WHERE Courses.name LIKE '%Java%';