-- File: parking.sql
-- Author: Rahulkuumar Patel,Gary Baker, Heth Patel
-- Date: 01-11-2018
-- Description: SQL file to create city property/value table

DROP TABLE IF EXISTS parking;

CREATE TABLE parking(
	value VARCHAR(20)
);

ALTER TABLE bedrooms OWNER TO group08_admin;
INSERT INTO parking (value, property) VALUES ('1','1vehicale');
INSERT INTO parking (value, property) VALUES ('2','2vehicale');
INSERT INTO parking (value, property) VALUES ('3','3vehicale');
INSERT INTO parking (value, property) VALUES ('4','4vehicale');
INSERT INTO parking (value, property) VALUES ('5','5vehicale');
