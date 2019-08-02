/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bedrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS bedrooms;

CREATE TABLE bedrooms(
	value SMALLINT PRIMARY KEY,
property VARCHAR(30) NOT NULL
);

ALTER TABLE bedrooms OWNER TO group08_admin;

INSERT INTO bedrooms (value, property) VALUES ('1', 'One');
INSERT INTO bedrooms (value, property) VALUES ('2', 'two');
INSERT INTO bedrooms (value, property) VALUES ('3', 'three');
INSERT INTO bedrooms (value, property) VALUES ('4', 'four');
INSERT INTO bedrooms (value, property) VALUES ('5', 'five');