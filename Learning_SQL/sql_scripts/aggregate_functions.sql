-- Aggregate Functions
/* mysql also comes with a large number of pre-written aggregate functions
	An aggregate function is a function that performs calculation on a set of values and returns the results of the calculation as a single
    value.
    */
    
-- Example
SELECT COUNT(*) FROM employees;

SELECT MAX(salary) as maximum FROM employees;

SELECT MIN(salary) as minimun FROM employees;

SELECT SUM(salary) as total FROM employees;

SELECT gender, MAX(salary) FROM employees GROUP BY gender;

SELECT gender, MAX(salary) FROM employees GROUP BY gender having MAX(salary) > 10000;
