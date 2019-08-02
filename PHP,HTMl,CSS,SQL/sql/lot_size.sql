/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS lot_size;

CREATE TABLE lot_size(
	value INTEGER,
	property VARCHAR
);

ALTER TABLE lot_size OWNER TO group08_admin;

INSERT INTO lot_size (value, property) VALUES (1, '1000 Square Feet');
INSERT INTO lot_size (value, property) VALUES (2, '2000 Square Feet');
INSERT INTO lot_size (value, property) VALUES (4, '3000 Square Feet');
