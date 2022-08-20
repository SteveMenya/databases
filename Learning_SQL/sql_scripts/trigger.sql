-- Trigger
-- A trigger is a series of actions that is activated when a defined event occurs for a specific table.
-- This event can either be an INSERT, UPDATE or DELETE
-- Triggers can be invoked before or after the event


DELIMITER $$

CREATE TRIGGER update_ex_employees BEFORE DELETE ON
employees FOR EACH ROW
BEGIN
  INSERT INTO ex_employees (em_id, em_name, gender)
VALUES (OLD.id, OLD.em_name, OLD.gender);
END $$

DELIMITER ;


/*
	for triggers activated by a DELETE event, we use old keyword
    for triggers activated by a INSERT event, we use new keyword
    for triggers activated by a UPDATE event, we use old keyword to retrieve original data and new keyword to retrieve the updated data
*/