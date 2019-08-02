/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           bathrooms.sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the badrooms.

*/	
DROP TABLE IF EXISTS rent_sale;

CREATE TABLE rent_sale
	(value INTEGER,
	property VARCHAR
);

ALTER TABLE rent_sale OWNER TO group08_admin;

INSERT INTO rent_sale (value, property) VALUES (1, 'For Rent');
INSERT INTO rent_sale (value, property) VALUES (2, 'For Sale');
