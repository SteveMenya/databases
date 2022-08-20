-- IN OUT store_procedure

DELIMITER $$

CREATE PROCEDURE get_mentor(INOUT p_em_id INT, IN
p_project VARCHAR(255))
BEGIN
 SELECT mentor_id INTO p_em_id FROM mentorships
WHERE mentee_id = p_em_id AND project = p_project;
END $$

DELIMITER ;