/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS cupboards;

CREATE TABLE cupboards(
	value INTEGER,
	property VARCHAR
);

ALTER TABLE cupboards OWNER TO group08_admin;

INSERT INTO cupboards (value, property) VALUES (1, 'One');
INSERT INTO cupboards (value, property) VALUES (2, 'Two');
INSERT INTO cupboards (value, property) VALUES (4, 'Three');
