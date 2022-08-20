-- creating ex_employee table to back up deleted employees

CREATE TABLE ex_employees (
  em_id INT PRIMARY KEY,
  em_name VARCHAR(255) NOT NULL,
  gender CHAR(1) NOT NULL,
  date_left TIMESTAMP DEFAULT NOW()
);