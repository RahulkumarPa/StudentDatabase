<?php
/*  Name:           Gary Baker, Heth Patel, & Rahulkumar Patel
    File:           db.php
    Date:           04/10/2018
    Description:    This file stores database variables used in our website
*/
function db_connect()
{
$connection = pg_connect("host=127.0.0.1 dbname=group08_db user=group08_admin password=webd#123" ); 
	//$connection = pg_connect("host=".DB_HOST." dbname=".DB_NAME." user=".DB_USER." password=".DB_PASSWORD."");
	return $connection;
}

 $conn = db_connect();

$pgst1 = pg_prepare($conn, "userLogin", 'SELECT user_id, password, users_type FROM users WHERE user_id = $1 AND password = $2  ');
$pgst2 = pg_prepare($conn, "user_last_access", 'UPDATE users SET last_access = $1 WHERE user_id = $2');
$pgst0 = pg_prepare($conn, "person_detail", 'SELECT * FROM persons WHERE user_id = $1');
$pgst7 =pg_prepare($conn,"Person-update",'UPDATE persons SET first_name =$1,last_name=$2,primary_phone_number=$3 WHERE user_id=$4 ');
$pgst8 =pg_prepare($conn,"user-update",'UPDATE users SET email_address = $1 WHERE user_id = $2 ' );
$pgst8 =pg_prepare($conn,"password-update",'SELECT user_id FROM users WHERE user_id = $1 AND email_address = $2 ' );
$pgst8 =pg_prepare($conn,"new-user-update",'UPDATE users SET password =$1 WHERE user_id = $2 AND email_address = $3 ' );  


$pgst3 = pg_prepare($conn, "user_id", 'SELECT * FROM users WHERE user_id = $1');
$pgst4 = pg_prepare($conn, "user_Insert", 'INSERT INTO users (user_id, password,users_type, email_address,enrol_date,last_access)VALUES($1, $2, $3, $4, $5, $6)');
$pgst5 = pg_prepare($conn, "person_Insert", 'INSERT INTO persons (user_id,salutation ,first_name, last_name,street_address_1,street_address_2,city,province,postal_code,primary_phone_number,secondary_phone_number,fax_number,preferred_contact_method) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)');

$pgst6 = pg_prepare($conn, "query_check_if_exist_userid", "SELECT user_id FROM users WHERE user_id = $1");
$pgst7 = pg_prepare($conn, "listing_create", 'INSERT INTO listings (user_id, status, price, headline, description, postal_code,images,city,property_options, bedrooms, bathrooms, cupboards, listing_type, lot_size, closets, total_rooms, rent_sale) VALUES($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17)');

$pgst8 = pg_prepare($conn, "disabled_agent", 'SELECT * FROM users WHERE user_id = $1');



function getProperty($tableName, $sValue)

{
	# Connect to the database
	$conn = db_connect();
	# create an sql statemnt
	$sql = "SELECT value,property FROM ".$tableName;
	# Query the database
	$result = pg_query($conn, $sql);
	
	$num_records = pg_num_rows($result);
	for($i=0; $i< $num_records ; $i++)
	{
	# return the property
	$value = pg_fetch_result($result,$i,'value');
	 $property = pg_fetch_result($result, $i,'property');
    if ($value == $sValue)
    {
           return $property;

    }

	}
}


function getValue($tableName, $sProperty)

{
	# Connect to the database
	$conn = db_connect();
	# create an sql statemnt
	$sql = "SELECT value,property FROM ".$tableName;
	# Query the database
	$result = pg_query($conn, $sql);
	
	$num_records = pg_num_rows($result);
	for($i=0; $i< $num_records ; $i++)
	{
	# return the value
	$value = pg_fetch_result($result,$i,'value');
	 $property = pg_fetch_result($result, $i,'property');
    if ($propery == $sProperty)
    {
           return $value;

    }

	}
}

function buildRadio($tableName, $sValue)
{	
	global $property;
	global $conn;
	
	# For every value in the table grab the property and add it as a radio button option
	$records = pg_query($conn, "SELECT  value,property FROM " . $tableName);
	$num_records = pg_num_rows($records);

	for($i=0; $i< $num_records ; $i++)
	{
       
		 $value = pg_fetch_result($records, $i,'value');
		 $property = pg_fetch_result($records, $i,'property');

		#echo the html with variables inside
		if ($value == $sValue)
		{
			echo "<input type='radio' name=".$tableName." value=".$value." checked='checked'> ".$property."</input>";
			
		}
		else
		{
			echo "<input type='radio' name=".$tableName." value=".$value." > ".$property."</input>";
		}
	}
}

function buildCheckbox($tableName, $sValue = 0)
{	
	global $property;
	global $conn;
	
	# For every value in the table grab the property and add it as a radio button option
	$records = pg_query($conn, "SELECT  value,property FROM " . $tableName);
	$num_records = pg_num_rows($records);

	for($i=0; $i< $num_records ; $i++)
	{
       
		 $value = pg_fetch_result($records, $i,'value');
		 $property = pg_fetch_result($records, $i,'property');

		#echo the html with variables inside
		if (is_bit_set($i,$sValue))
		{
			echo "<input type='checkbox' name=\"".$tableName."[]\" value=\"".$value."\" checked='checked'> ".$property."</input>";
			
		}
		else
		{
			echo "<input type='checkbox' name=\"".$tableName."[]\" value=\"".$value."\" > ".$property."</input>";
		}
	}
}

function buildDropDown($tableName, $sValue)
{
	
	//global $property;
	global $conn;

	$records = pg_query($conn, "SELECT value ,property FROM " . $tableName);
	$num_records = pg_num_rows($records);
	
    echo "<select>";
	for($i=0; $i< $num_records; $i++)
	{ 
		//$property = (pg_fetch_result($result, $i,'property'));
		$value = pg_fetch_result($records, $i,'value');
		$property = pg_fetch_result($records, $i,'property');
      
		if ($value == $sValue)
		{
			echo "<option  value=".$value." > ".$property."</option>";
		}
		else
		{
			echo  "<option  value=".$value." > ".$property."</option>";
		}

		
		
	}
	echo "</select>";

}



function buildUserTypeDropDown($tableName, $sValue)
{
	
	 $user_type = pg_query($conn,"SELECT users_type FROM users");
	global $conn;

	$records = pg_query($conn, "SELECT value ,property FROM " . $tableName);
	$num_records = pg_num_rows($records);
	
    echo "<select>";
	for($i=0; $i< $num_records; $i++)
	{ 
		//$property = (pg_fetch_result($result, $i,'property'));
		$value = pg_fetch_result($records, $i,'value');
		$property = pg_fetch_result($records, $i,'property');
      
		if ($value == $sValue)
		{
			echo "<option  value=".$value." > ".$property."</option>";
		}
		else
		{
			echo  "<option  value=".$value." > ".$property."</option>";
		}

		
		
	}
	echo "</select>";

}
?>