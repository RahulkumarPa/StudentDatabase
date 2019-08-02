<?php
 /*
    Rahulkumar Patel ,Heth Patel,Margesh Patel & Harsh Patel
    sysa final project-2
    DEC. 03th, 2018
*/
		$title = "Disabled Users";
    	$date = "December 10th, 2018";
    	$filename = "listing-create.php";
    	$banner = "Create a Listing";
    	$description = "This page will allow users to post a real estate listing to the database. The post should then be visible in the browse listings page.";
   		include ("header.php");

        if(!isset($_SESSION['user']) || $_SESSION['user']['users_type'] != AGENT)
        {
        	$_SESSION['message'] = "You must be logged in as an agent to creae a new listing";
        	header("Location:./login.php");
        	ob_flush();
        }

define("THINGS_TO_DISPLAY", 199);
define("THINGS_PER_PAGE", 10);



$all_disabled_users = pg_query($conn, "SELECT user_id, users_type, email_address, last_access FROM users WHERE users_type = 'd' ;");

$array_of_disabled_agents= pg_fetch_all($all_disabled_users);

//print_r($array_of_disabled_agents);

 


?>


<table  border="0" cellpadding="10" style="margin-left:auto; margin-right:auto;background-color:#fafad2;">
    
    <tr>
        <td>User ID</td><td>User Type</td><td>Email Address</td><td>Last Access</td>
    </tr>
    <?php for($i=0; $i<sizeof($array_of_disabled_agents); $i++)
        {
            $user_id_result = pg_fetch_result($all_disabled_users, $i,'user_id');
            $user_type_result = pg_fetch_result($all_disabled_users, $i,'users_type');
            $email_address_result = pg_fetch_result($all_disabled_users, $i,'email_address');
            $last_access_result = pg_fetch_result($all_disabled_users, $i,'last_access');      

            echo "<tr><td>".$user_id_result."</td><td>".$user_type_result."</td><td>".$email_address_result."</td><td>".$last_access_result."</td></tr>";
        }


      ?>

</table>
