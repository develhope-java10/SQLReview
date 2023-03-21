SELECT first_name, last_name, Courses.name AS course_name FROM 
    Students JOIN Courses WHERE EXISTS 
        (
            SELECT * FROM CourseEnrollments 
            WHERE CourseEnrollments.student_id = Students.id 
            AND CourseEnrollments.course_id = Courses.id
        );
