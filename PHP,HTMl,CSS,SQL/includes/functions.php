<?php
/*
Rahulkumar Patel
1-November-2018
WEBD2201

*/


    
function displayCopyrightInfo()
{
 echo "&copy;Rahulkumar Patel,Gary Baker,Heth Patel"." ".date('Y');	
}
	

function validate_postal_code($postal_code)
{
	$postal_code_alphabet = array('A','B','C','E','G','H','J','K','L','M','N','P','R','S','T','V','X','Y');


	if($postal_code != " ")
	{
		if(strlen($postal_code) == 6)
		{
			for($i=0; $i < sizeof($postalCodeAlphabet);$i++)
			{

				if(isnumeric(Strpos($postal_code, $postal_code_alphabet[$i])))
				{
					// Valid Canadian postal code
				}
				else
				{
					echo "The postal code you have entered is not valid for Canadian standards.";
				}

			}
		}
		else
		{
			echo "Postal code must be six characters."; // not valid characters
		}
		
		
	}
	else
	{
		echo "Postal code field can't be blank.";
	}
}


function display_phone_number($phone_number)
{
	if($phone_number != " ")
	{
		if(strlen($phone_number) <= 15 && strlen($phone_number) >= 10)
		{
			if(isnumeric($phone_number))
			{
				// Valid phone number
			}
			else 
			{
				echo "Phone number must be numeric.";
			}
		}else
		
			{
				echo "Phone number must be between 10 and 15 characters inclusive.";
			}
	}else
		{
			echo "Phone number field can't be blank.";
		}
}
/*
	this function should be passed a integer power of 2, and any decimal number,
	it will return true (1) if the power of 2 is contain as part of the decimal argument
*/
function is_bit_set($power, $decimal) {
	if((pow(2,$power)) & ($decimal)) 
		return 1;
	else
		return 0;
} 

/*
	this function can be passed an array of numbers (like those submitted as 
	part of a named[] check box array in the $_POST array).
*/
function sum_check_box($array)
{
	$num_checks = count($array); 
	$sum = 0;
	for ($i = 0; $i < $num_checks; $i++)
	{
	  $sum += $array[$i]; 
	}
	return $sum;
}

function drop_down($array)
{
	$num_checks = count($array); 
	$sum = 0;
	for ($i = 0; $i < $num_checks; $i++)
	{
	  $sum += $array[$i]; 
	}
	return $sum;
}

?>