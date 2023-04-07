SELECT name
FROM Courses
WHERE Courses.id
NOT IN (
    SELECT course_id
    FROM CourseEnrollments
    );

SELECT name
FROM Courses
WHERE NOT EXISTS(
    SELECT * FROM  courseEnrollments
    WHERE Courses.id = courseEnrollments.course_id
    );