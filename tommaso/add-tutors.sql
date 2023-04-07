CREATE TABLE IF NOT EXISTS Tutors(
    id  INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    year_of_experience INTEGER,
    subject_field VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS TutorsAssignment(
    tutor_id INTEGER,
    course_id INTEGER,

    FOREIGN KEY (tutor_id) REFERENCES Tutors(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

INSERT INTO Tutors(first_name, last_name,year_of_experience, subject_field)
VALUES  ('Lorenzo', 'Catania', 6, 'Java 10'),
        ('Marco', 'Adriani', 2, 'SQL 15'),
        ('Luca',  'Reina', 5, 'Java 10');

INSERT INTO TutorsAssignment(tutor_id, course_id)
VALUES (1,1), (2,2), (1,3);