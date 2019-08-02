/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           login.sql
    Date:           26/08/2018
    Description:    This is the sql file that stores all the information about the user.

*/	

DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users
(
	user_id VARCHAR(20) PRIMARY KEY,
	password VARCHAR(32) NOT NULL,
	users_type VARCHAR(2) NOT NULL,
	email_address VARCHAR(256) NOT NULL,
	enrol_date DATE NOT  NULL,
	last_access DATE NOT  NULL
	

);

ALTER TABLE users OWNER TO group08_admin;

INSERT INTO users(user_id, password,users_type, email_address,enrol_date,last_access) 
VALUES
(
	'patelh2',
	md5('pass'),
	'a',
	'hethpatel5@gmail.com',
	'2018-10-01',
	'2018-12-02'
);
	
INSERT INTO users(user_id, password,users_type, email_address,enrol_date,last_access) 
VALUES
(
	'bakerg21',
	md5('gary'),
	's',
	'bakerg@gmail.com',
	'2018-10-01',
	'2018-12-02'
);

INSERT INTO users(user_id, password,users_type, email_address,enrol_date,last_access) 
VALUES
(
	'patelr',
	md5('rahul'),
	'c',
	'gopalakoliya@gmail.com',
	'2018-10-01',
	'2018-12-02'
);

INSERT INTO users(user_id, password,users_type, email_address,enrol_date,last_access) 
VALUES
(
	'patelh6',
	md5('patel'),
	'd',
	'patel5@gmail.com',
	'2018-10-01',
	'2018-12-02'
);
	
SELECT * FROM users;
