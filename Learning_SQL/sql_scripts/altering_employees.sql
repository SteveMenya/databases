use companyHR;

-- Renaming a table name
RENAME TABLE co_employees TO employees;

-- Altering some of the column and table contraints of tables.
/*
AUTO_INCREMENT = starting_value to change the starting value of the auto increment column,
ADD CONSTRAINT [name of constraint]
details_of_constraint to add a table constraint (including foreign key constraints),
DROP INDEX name_of_constraint to drop a table constraint (excluding foreign key constraints),
DROP FOREIGN KEY name_of_foreign_key to drop a foreign key constraint,
MODIFY COLUMN column_name data_type [constraints] to modify a column,
DROP COLUMN column_name to drop a column, and
ADD COLUMN column_name data_type [constraints] to add a column.
*/

-- altering employees table
ALTER TABLE employees
DROP COLUMN age,
ADD COLUMN salary FLOAT NOT NULL AFTER contact_number,
ADD COLUMN years_in_company INT NOT NULL AFTER salary;

-- to describe the emplpoyees table, we write
DESCRIBE employees;
