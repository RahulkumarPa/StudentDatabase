DROP TABLE IF EXISTS salutations;

CREATE TABLE salutations(
	value SMALLINT PRIMARY KEY,
property VARCHAR(30) NOT NULL

	);
ALTER TABLE salutations OWNER TO group08_admin;


INSERT INTO salutations (value,property) VALUES ('1','Mr.');
INSERT INTO salutations (value,property) VALUES ('2','Ms.');
INSERT INTO salutations (value,property) VALUES ('3','Mrs.');

SELECT * FROM salutations;