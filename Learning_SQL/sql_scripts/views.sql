-- What is a view?

/*
	In contrast to actual tables, views do not contain data. Instead they contain select statements
    Advantage of using views is that it allows programmers to simplify their code.
    The can write relatively complex SELECT statements to join multiple tables into a single virtual table.
    Once that is done, they can access that virtual table like a normal table and perform simple searches on it.
    
    In addition, they allow us to restrict access to certain data in our tables
*/

-- creating a view

CREATE VIEW myView AS
SELECT employees.id, mentorships.mentor_id,
employees.em_name AS 'Mentor', mentorships.project AS
'Project Name'
FROM
mentorships
JOIN
employees
ON
employees.id = mentorships.mentor_id; 


-- selecting from myView
SELECT mentor_id, `Project Name` FROM myView;