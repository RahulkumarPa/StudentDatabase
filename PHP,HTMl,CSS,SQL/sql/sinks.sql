/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS sinks;

CREATE TABLE sinks(
	value INTEGER,
	property VARCHAR
);

ALTER TABLE sinks OWNER TO group08_admin;

INSERT INTO sinks (value, property) VALUES (1, 'One');
INSERT INTO sinks (value, property) VALUES (2, 'Two');
INSERT INTO sinks (value, property) VALUES (4, 'Three');
