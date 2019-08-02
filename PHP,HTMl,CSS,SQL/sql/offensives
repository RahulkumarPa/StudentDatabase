/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:          offensives.sql
    Date:           10/12/2018
    Description:    This is the sql file that stores all the information about the user.

*/	

DROP TABLE IF EXISTS offensives;

CREATE TABLE offensives
(
	user_id VARCHAR(20) NOT NULL,
	listing_id   int not null,
	reported_on DATE NOT  NULL,
	status VARCHAR(1) NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (listing_id) REFERENCES listings(listing_id)
	

);

ALTER TABLE offensives OWNER TO group08_admin;

SELECT * FROM offensives;
