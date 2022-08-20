-- SELECTING

SELECT * FROM employees;  -- selects all

SELECT  gender AS 'Gender' FROM employees; -- selects a column and assigns a New Column name

SELECT DISTINCT(gender) FROM employees; -- selects unique

SELECT * FROM employees where ID != 1; -- comparison

SELECT * FROM employees WHERE id BETWEEN 1 AND 3; -- returns a range

SELECT * FROM employees WHERE em_name LIKE '%er'; -- selects columns whose values look like

SELECT em_name from employees WHERE id in
	(select mentor_id FROM mentorships WHERE project = 'SQF Limited'); -- subquery select is used to filter results of one table based on results of a query of another table