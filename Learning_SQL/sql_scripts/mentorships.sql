use companyhr;
CREATE TABLE mentorships (
  mentor_id INT NOT NULL,
  mentee_id INT NOT NULL,
  status VARCHAR(255) NOT NULL,
  project VARCHAR(255) NOT NULL,

  PRIMARY KEY (mentor_id, mentee_id, project),
  CONSTRAINT fk1 FOREIGN KEY(mentor_id) REFERENCES
co_employees(id) ON DELETE CASCADE ON UPDATE
RESTRICT,
  CONSTRAINT fk2 FOREIGN KEY(mentee_id) REFERENCES
co_employees(id) ON DELETE CASCADE ON UPDATE
RESTRICT,
  CONSTRAINT mm_constraint UNIQUE(mentor_id,
mentee_id)
)