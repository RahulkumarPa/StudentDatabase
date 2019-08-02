/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS closets;

CREATE TABLE closets(
	value INTEGER,
	property VARCHAR
);

ALTER TABLE closets OWNER TO group08_admin;

INSERT INTO closets (value, property) VALUES (1, 'One');
INSERT INTO closets (value, property) VALUES (2, 'Two');
INSERT INTO closets (value, property) VALUES (4, 'Three');
INSERT INTO closets (value, property) VALUES (8, 'Four');
