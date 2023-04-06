//ESERCIZIO 1

CREATE TABLE IF NOT EXISTS Tutors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    experience_years INTEGER,
    area_of_expertise VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS TutorsAssignment (
    tutor_id INTEGER,
    course_id INTEGER,
    FOREIGN KEY (tutor_id) REFERENCES Tutors(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

INSERT INTO Tutors (first_name, last_name, experience_years, area_of_expertise)
VALUES ('Lorenzo', 'Catania', 3, 'Java');

INSERT INTO Tutors (first_name, last_name, experience_years, area_of_expertise)
VALUES ('Marco', 'Adriani', 7, 'SQL');

INSERT INTO TutorsAssignment (tutor_id, course_id)
VALUES (1, 3);

INSERT INTO TutorsAssignment (tutor_id, course_id)
VALUES (2, 2);

INSERT INTO TutorsAssignment (tutor_id, course_id)
VALUES (2, 4);

// - QUERY 1

SELECT name
FROM Courses
JOIN TutorsAssignment ON Courses.id = TutorsAssignment.course_id
WHERE TutorsAssignment.tutor_id = 1;

// - QUERY 2

SELECT first_name, last_name, Courses.name
FROM Tutors
JOIN TutorsAssignment ON Tutors.id = TutorsAssignment.tutor_id
JOIN Courses ON TutorsAssignment.course_id = Courses.id;

// - QUERY 3

SELECT Tutors.first_name, Tutors.last_name
FROM Tutors
LEFT JOIN TutorsAssignment ON Tutors.id = TutorsAssignment.tutor_id
WHERE TutorsAssignment.tutor_id IS NULL

// - QUERY 4

SELECT Tutors.first_name, Tutors.last_name, Courses.name
FROM Tutors
JOIN TutorsAssignment ON Tutors.id = TutorsAssignment.tutor_id
JOIN Courses ON TutorsAssignment.course_id = Courses.id
WHERE Tutors.experience_years > 5
GROUP BY Tutors.id, Courses.name
HAVING COUNT(TutorsAssignment.course_id) = 1;

// - QUERY 5

SELECT Tutors.first_name, Tutors.last_name, Courses.name, Tutors.area_of_expertise
FROM Tutors
JOIN TutorsAssignment ON Tutors.id = TutorsAssignment.tutor_id
JOIN Courses ON TutorsAssignment.course_id = Courses.id
WHERE Tutors.area_of_expertise <> Courses.name;