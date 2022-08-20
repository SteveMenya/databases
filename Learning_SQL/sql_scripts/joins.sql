-- Joins

/*
	There are three main types of joins: inner join, left join, right join
*/

SELECT employees.id, mentorships.mentor_id,
employees.em_name AS 'Mentor', mentorships.project AS
'Project Name'
FROM
mentorships
JOIN
employees
ON
employees.id = mentorships.mentor_id;