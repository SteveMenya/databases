-- MYSQL Functions

use companyhr;
SELECT CONCAT(em_name, ' ', salary) as employee_salary from employees; -- allows combining two or more strings into a single string

SELECT SUBSTRING(date_created , 1,10) AS create_year from employees; --  allows us to extract a substring from a specified string


Select curdate() as the_day; -- gives us current date

Select curtime() as the_time; -- gives us current time