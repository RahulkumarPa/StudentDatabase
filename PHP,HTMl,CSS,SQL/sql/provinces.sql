/*
	
    Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           provinces .sql
    Date:           01/11/2018
    Description:    This is the sql file that stores all the information about the provinces .

*/	

DROP TABLE IF EXISTS provinces;

CREATE TABLE provinces(
value SMALLINT PRIMARY KEY,
property VARCHAR(30) NOT NULL
);

ALTER TABLE provinces OWNER TO group08_admin;


INSERT INTO provinces (value,property) VALUES ('1','AB');
INSERT INTO provinces (value,property) VALUES ('2','BC');
INSERT INTO provinces (value,property) VALUES ('3','MB');
INSERT INTO provinces (value,property) VALUES ('4','NB');
INSERT INTO provinces (value,property) VALUES ('5','NF');
INSERT INTO provinces (value,property) VALUES ('6','NS');
INSERT INTO provinces (value,property) VALUES ('7','NT');
INSERT INTO provinces (value,property) VALUES ('8','NU');
INSERT INTO provinces (value,property) VALUES ('9','ON');
INSERT INTO provinces (value,property) VALUES ('10','PE');
INSERT INTO provinces (value,property) VALUES ('11','PQ');
INSERT INTO provinces (value,property) VALUES ('12','SK');
INSERT INTO provinces (value,property) VALUES ('13','YT');


SELECT * FROM provinces;