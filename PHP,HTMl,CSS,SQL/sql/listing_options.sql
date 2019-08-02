/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           listing_options.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the provinces .

*/	

DROP TABLE IF EXISTS listing_options;

CREATE TABLE listing_options(
value SMALLINT PRIMARY KEY,
property VARCHAR(30) NOT NULL
);

ALTER TABLE listing_options OWNER TO group08_admin;

INSERT INTO listing_options (value, property) VALUES (1, 'Residential');

INSERT INTO listing_options (value, property) VALUES (2, 'Condo');

INSERT INTO listing_options (value, property) VALUES (4, 'Apartment');

INSERT INTO listing_options (value, property) VALUES (8, 'Agriculture');