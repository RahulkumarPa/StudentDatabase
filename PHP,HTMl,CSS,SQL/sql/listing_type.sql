/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS listing_type;

CREATE TABLE listing_type(
	value INTEGER,
	property VARCHAR
);

ALTER TABLE listing_type OWNER TO group08_admin;

INSERT INTO listing_type (value, property) VALUES (1, 'Residential');
INSERT INTO listing_type (value, property) VALUES (2, 'Condo');
INSERT INTO listing_type (value, property) VALUES (4, 'Apartment');
INSERT INTO listing_type (value, property) VALUES (8, 'Agriculture');
