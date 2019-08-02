<?php
/*
Group 08
26-SEP-2018
WEBD3201
*/


	define("ADMIN", 's');
	define("AGENT", 'a');
	define("CLIENT", 'c');
	define("PENDING", 'p');
	define("DISABLED", 'd');
	
	define("DB_HOST", '127.0.0.1');
	define("DB_NAME", 'group08_db');
	define("DB_PORT", '5432');
	define("DB_PASSWORD", 'webd#123');
	define("DB_USER", 'group08_admin');

	define("COOKIE_LIFESPAN", '2592000');

	define("USERTABLENAME", 'users');
	define("MINIMUM_PASSORD_LENGTH", '9');
	define("MAXIMUM_PASSWORD_LENGTH", '20');
	define("MINIMUM_LOGIN_ID_LENGTH", '4');
	define("MAXIMUM_LOGIN_ID_LENGTH", '20');
	define("MAXIMUM_EMAIL_LENGTH", '30');

    define("HASH_ALGO", 'md5');

    define("EMAIL", 'e');
    define("LETTER_POST", 'l');
    define("PHONE", 'p');
    define("FAX", 'f');
    define("OFFICE", 'o');
    define("CLOSED", 'C');
    define("HIDDEN", 'h');
    define("SOLD", 's');
?>