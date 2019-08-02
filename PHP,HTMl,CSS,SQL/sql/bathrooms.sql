/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS bathrooms;

CREATE TABLE bathrooms(
		value SMALLINT PRIMARY KEY,
property VARCHAR(30) NOT NULL
);

ALTER TABLE provinces OWNER TO group08_admin;

INSERT INTO bathrooms (value, property) VALUES ('1', 'One');
INSERT INTO bathrooms (value, property) VALUES ('2', 'two');
INSERT INTO bathrooms (value, property) VALUES ('3', 'three');

