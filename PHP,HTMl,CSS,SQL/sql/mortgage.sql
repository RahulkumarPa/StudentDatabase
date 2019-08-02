-- File: Morgage.sql
-- Author: Rahulkuumar Patel,Gary Baker, Heth Patel
-- Date: 01-11-2018
-- Description: SQL file to create city property/value table
DROP TABLE IF EXISTS morgage;

CREATE TABLE morgage(
value SMALLINT PRIMARY KEY,
property VARCHAR(30) NOT NULL
);

ALTER TABLE morgage OWNER TO group08_admin;

INSERT INTO morgage (value, property) VALUES (1, '100');

INSERT INTO morgage (value, property) VALUES (2, '');

INSERT INTO morgage (value, property) VALUES (4, 'Bowmanville');

INSERT INTO morgage (value, property) VALUES (8, 'Oshawa');
