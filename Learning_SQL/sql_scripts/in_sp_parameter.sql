-- IN parameter

DELIMITER $$

CREATE PROCEDURE employee_info(IN p_em_id INT)
BEGIN
  SELECT * FROM mentorships WHERE mentor_id =
p_em_id;
  SELECT * FROM mentorships WHERE mentee_id =
p_em_id;
  SELECT * FROM employees WHERE id = p_em_id;
END $$

DELIMITER ;