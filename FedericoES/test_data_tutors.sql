DELETE FROM Tutors;
DELETE FROM tutorsassignment;

INSERT INTO Tutors(id, first_name, last_name, years_of_experience, competence) VALUES (1, "profnome1", "profcognome1",3,"Java 10, Pyhton"), (2, "profnome2", "profcognome2",2,"Java 10, Pyhton, SQL 15");

INSERT INTO tutorsassignment(tutor_id, course_id) VALUES (1, 1), (1, 3), (2, 1), (2, 2), (2, 3);

INSERT INTO `newdb`.`tutors` (`id`, `first_name`,`last_name`, `years_of_experience`, `competence`) VALUES (3, 'profnome3','profcognome3',5,'HTML, JS');