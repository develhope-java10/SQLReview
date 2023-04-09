--Scrivere una query per elencare tutti gli studenti iscritti ad un corso che ha "Java" nel nome
SELECT first_name, last_name
FROM Students
JOIN CourseEnrollments ON Students.id = CourseEnrollments.student_id
JOIN Courses ON course_id = Courses.id
WHERE name LIKE '%Java%';

--Scrivere una query per elencare tutti i corsi con almeno 2 iscritti

SELECT course_id
,count(student_id) as stud_numbers
FROM courseenrollments
group by course_id
having stud_numbers>1;

--Scrivere una query per elencare tutti i corsi senza nessun iscritto

SELECT name
FROM Courses
WHERE Courses.id
NOT IN (
    SELECT course_id
    FROM CourseEnrollments
    );

--Scrivere una query che elenchi per ogni riga il nome di ogni corso con il corrispondente numero di iscritti

SELECT name AS course_name, number_of_students
FROM (
    SELECT IFNULL(COUNT(*), 0) AS number_of_students, course_id
    FROM newdb.courseenrollments
    GROUP BY course_id) AS   count_students
RIGHT JOIN newdb.courses ON count_students.course_id = courses.id ;


--Scrivere una query che elenchi per ogni riga il nome ed il cognome di ogni studente con il corrispondente numero di corsi a cui è iscritto/a

SELECT studwcourse.first_name, studwcourse.last_name, COUNT(*) as courses_of_student
FROM (
    SELECT *
    FROM Students
    JOIN CourseEnrollments
    ON Students.id = CourseEnrollments.student_id
    ) AS studwcourse
GROUP BY studwcourse.id;