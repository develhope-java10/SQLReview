
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