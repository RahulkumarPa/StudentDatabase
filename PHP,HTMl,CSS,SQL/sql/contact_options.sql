
DROP TABLE IF EXISTS contact_options;

CREATE TABLE contact_options
(
        value CHAR(1) NOT NULL,
	property VARCHAR(15) NOT NULL
);

ALTER TABLE contact_options OWNER TO group08_admin;


INSERT INTO contact_options (value, property) VALUES ('l', 'Letter post');
INSERT INTO contact_options (value, property) VALUES ('e', 'E-mail');
INSERT INTO contact_options (value, property) VALUES ('p', 'Phone call');

SELECT * FROM contact_options;