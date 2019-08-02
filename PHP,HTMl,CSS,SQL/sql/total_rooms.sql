/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS closets;

CREATE TABLE total_rooms(
	value INTEGER,
	property VARCHAR
);

ALTER TABLE total_rooms OWNER TO group08_admin;


INSERT INTO total_rooms (value, property) VALUES (1, 'Three');
INSERT INTO total_rooms (value, property) VALUES (2, 'Four');
INSERT INTO total_rooms (value, property) VALUES (4, 'Five');
INSERT INTO total_rooms (value, property) VALUES (8, 'Six');
INSERT INTO total_rooms (value, property) VALUES (16, 'Seven');
INSERT INTO total_rooms (value, property) VALUES (32, 'Eight');
INSERT INTO total_rooms (value, property) VALUES (64, 'Nine');
INSERT INTO total_rooms (value, property) VALUES (128, 'Ten');