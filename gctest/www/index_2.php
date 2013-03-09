<?php
ob_start();//Hook output buffer 
include("db_info.php");
ob_end_clean();//Clear output buffer

$query="SELECT
            count(*) AS count,
            sum(prereg) AS sum_prereg,
            sum(max) AS sum_max
    FROM events";
$result=mysql_query($query);
$num=mysql_numrows($result);
mysql_close();

include("header.php");

<h1>MENU</h1>

include("footer.php");
?>