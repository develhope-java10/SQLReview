SELECT name, number_of_students
FROM(
    SELECT name, COUNT(course_id) AS number_of_students FROM courses
    JOIN courseEnrollments ON courses.id = courseEnrollments.course_id
    GROUP BY name) AS table_
WHERE table_.number_of_students > 1;