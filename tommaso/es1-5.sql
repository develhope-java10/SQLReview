/*Adding rows to CourseEnrollments;*/
/*INSERT INTO CourseEnrollments(student_id, course_id);*/
/*VALUES  (1,2), (3, 2);*/
/*Onestamente non so come funziona questa query, da rivedere sicuramente*/
SELECT n.first_name, n.last_name, COUNT(*) as courses_enrolled
FROM (
    SELECT id, first_name, last_name
    FROM Students
    JOIN CourseEnrollments
    ON Students.id = CourseEnrollments.student_id
    ) AS n
GROUP BY n.id;