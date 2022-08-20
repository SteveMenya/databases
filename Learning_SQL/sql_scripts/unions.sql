-- UNIONS

/*
	The union keyword is used to combine the results of two or more select statements.
    Each select statement must have the same number of columns
*/

SELECT em_name, salary FROM employees WHERE gender =
'M'
UNION
SELECT em_name, years_in_company FROM employees WHERE
gender = 'F';