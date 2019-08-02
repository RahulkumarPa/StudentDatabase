-- File: for.sql
-- Author: 
-- Date: 01-11-2018
-- Description: SQL file to create city property/value table

DROP TABLE IF EXISTS fort;

CREATE TABLE fort(
value SMALLINT PRIMARY KEY,
property VARCHAR(30) NOT NULL
);

ALTER TABLE fort OWNER TO group08_admin;

INSERT INTO fort (value, property) VALUES (1, 'Rent');

INSERT INTO fort (value, property) VALUES (2, 'Sale');

