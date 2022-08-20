CREATE TABLE co_employees (
  id INT PRIMARY KEY AUTO_INCREMENT,
  em_name VARCHAR(255) NOT NULL,
  gender CHAR(1) NOT NULL,
  contact_number VARCHAR(255),
  age INT NOT NULL,
  date_created TIMESTAMP NOT NULL DEFAULT NOW()
);