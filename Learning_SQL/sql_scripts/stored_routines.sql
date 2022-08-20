-- Stored Routines

/*
	A stored routine is a set of SQL statements that are grouped, named and stored together in the server.
    There are two types of stored routines - stored procedures and stored functions
    
    There are three types of parameters for a stored procedure: IN, OUT INOUT
    An IN parameter is used to pass information into the stored procedure
    An OUT paremeter is used to get information from the stored procedure
    AN INOUT serves as both IN and OUT parameter
*/

DELIMITER $$

CREATE PROCEDURE select_info()
BEGIN
  SELECT * FROM employees;
  SELECT * FROM mentorships;
END $$

DELIMITER ;
