/*es1.4*/
SELECT name AS course_name, number_of_students FROM (SELECT count(*) AS number_of_students, course_id FROM db.courseenrollments GROUP BY course_id) AS   count_students
JOIN db.courses ON count_students.course_id = courses.id;
/*es1.1*/
SELECT first_name, last_name FROM Students
JOIN CourseEnrollments ON Students.id = CourseEnrollments.student_id
JOIN Courses ON course_id = Courses.id
WHERE name LIKE '%Java%';
/*es1.2*/
SELECT name, number_of_students FROM(
SELECT name, COUNT(course_id) AS number_of_students FROM courses
JOIN courseEnrollments ON courses.id = courseEnrollments.course_id
GROUP BY name
) AS table_ WHERE table_.number_of_students > 1;
/*es1.3*/
SELECT name
FROM Courses
WHERE Courses.id
NOT IN (SELECT course_id FROM CourseEnrollments);

SELECT name
FROM Courses
WHERE NOT EXISTS(
    SELECT * FROM  courseEnrollments
    WHERE Courses.id = courseEnrollments.course_id
);
