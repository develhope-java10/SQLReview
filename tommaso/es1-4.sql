SELECT name AS course_name, number_of_students
FROM (
    SELECT count(*) AS number_of_students, course_id
    FROM db.courseenrollments
    GROUP BY course_id) AS   count_students
JOIN db.courses ON count_students.course_id = courses.id;