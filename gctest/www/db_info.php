<?php
//$username="mike";
//$password="rocks7";
//$database="gencon_game";
$username="user";
$password="user";
$database="gencon_2011";
if ($dbc = mysql_connect('localhost',$username,$password) ) {
} 
else {
    print_error('error connecting to database');
}

@mysql_select_db($database) or die( "Unable to select database");


?>