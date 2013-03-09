<?php
$username="mike";
$password="rocks7";
$database="accts";
mysql_connect(localhost,$username,$password);
@mysql_select_db($database) or die( "Unable to select database");

?>