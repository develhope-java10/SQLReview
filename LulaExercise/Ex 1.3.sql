SELECT Courses.name
FROM Courses
LEFT JOIN CourseEnrollments ON Courses.id = CourseEnrollments.course_id
WHERE CourseEnrollments.course_id IS NULL;

- secondo modo

SELECT *
FROM Courses
WHERE id NOT IN (SELECT course_id FROM CourseEnrollments);

- terzo modo

SELECT *
FROM Courses
WHERE EXISTS (SELECT * FROM CourseEnrollments WHERE id = course_id);