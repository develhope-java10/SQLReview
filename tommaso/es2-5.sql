SELECT tutors.first_name, tutors.competence, courses.name
from tutors
LEFT JOIN tutorsAssignment ON tutorsAssignment.tutor_id = tutors.id
JOIN courses ON courses.id = tutorsAssignment.course_id
where tutors.competence NOT LIKE courses.name;

--fatto in collab con federico