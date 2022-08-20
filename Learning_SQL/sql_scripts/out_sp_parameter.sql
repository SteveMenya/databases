-- OUT parameter

DELIMITER $$

CREATE PROCEDURE employee_name_gender(IN p_em_id INT,
OUT p_name VARCHAR(255), OUT p_gender CHAR(1))
BEGIN
  SELECT em_name, gender INTO p_name, p_gender FROM
employees WHERE id = p_em_id;
END $$

DELIMITER ;