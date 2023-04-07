CREATE TABLE IF NOT EXISTS Tutors(
    id  INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    subject_field VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS TutorsAssignment(
    tutor_id INTEGER,
    course_id INTEGER,

    FOREIGN KEY (tutor_id) REFERENCES Tutors(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

INSERT INTO Tutors(first_name, last_name, subject_field)
VALUES  ('Lorenzo', 'Catania', 'Java 10'),
        ('Marco', 'Adriani',  'SQL 15');

INSERT INTO TutorsAssignment(tutor_id, course_id)
VALUES (1,1), (2,2);