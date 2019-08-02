/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           users.sql
    Date:           26/08/2018
    Description:    This is the sql file that stores all the information about the user.

*/	

DROP TABLE IF EXISTS persons;

CREATE TABLE persons
(
	user_id VARCHAR(20) NOT NULL,
	salutation VARCHAR(10),
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	street_address_1 VARCHAR(75),
	street_address_2 VARCHAR(75),
	city VARCHAR(75),
	province CHAR(2),
	postal_code VARCHAR(6),
	primary_phone_number VARCHAR(15) NOT NULL,
	secondary_phone_number VARCHAR(15),
	fax_number VARCHAR(15),
	preferred_contact_method CHAR(1) NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id)
	

);

ALTER TABLE persons OWNER TO group08_admin;