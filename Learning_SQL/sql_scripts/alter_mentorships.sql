-- in order to modify the foreign key contrait, we have to first drop the original foreign key using the statement below:
ALTER TABLE mentorships
DROP FOREIGN KEY fk2;


ALTER TABLE mentorships
  ADD CONSTRAINT fk2 FOREIGN KEY(mentee_id)
REFERENCES employees(id) ON DELETE CASCADE ON UPDATE
CASCADE,
  DROP INDEX mm_constraint;