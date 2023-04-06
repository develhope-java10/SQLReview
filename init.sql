CREATE TABLE IF NOT EXISTS Students(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Courses(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS CourseEnrollments(
    student_id INTEGER, 
    course_id INTEGER, 

    FOREIGN KEY (student_id) REFERENCES Students(id),
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

CREATE TABLE IF NOT EXISTS Tutors(
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    exp_years INTEGER,
    class VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS TutorsAssignment(
	tutor_id INTEGER,
    coursee_id INTEGER,
    
    FOREIGN KEY (tutor_id) REFERENCES Tutors(id),
    FOREIGN KEY (coursee_id) REFERENCES Courses(id)
);    
