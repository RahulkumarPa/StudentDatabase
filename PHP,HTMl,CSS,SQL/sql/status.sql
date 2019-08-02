-- File: city.sql
-- Author: 
-- Date: 01-11-2018
-- Description: SQL file to create city property/value table

DROP TABLE IF EXISTS status;

CREATE TABLE status(
value SMALLINT PRIMARY KEY,
property VARCHAR  
);

ALTER TABLE status OWNER TO group08_admin;

INSERT INTO status (value, property) VALUES (1, 'o');

INSERT INTO status (value, property) VALUES (2, 'c');

INSERT INTO status (value, property) VALUES (4, 'h');

INSERT INTO status (value, property) VALUES (8, 's');

