/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS closets;

CREATE TABLE electrical_outlets(
	value INTEGER,
	property VARCHAR
);

ALTER TABLE electrical_outlets OWNER TO group08_admin;

INSERT INTO electrical_outlets (value, property) VALUES ('10', 'Ten');
INSERT INTO electrical_outlets (value, property) VALUES ('12', 'Twelve');
INSERT INTO electrical_outlets (value, property) VALUES ('14', 'Fourteen');
INSERT INTO electrical_outlets (value, property) VALUES ('16', 'Sixteen');
INSERT INTO electrical_outlets (value, property) VALUES ('18', 'Eighteen');