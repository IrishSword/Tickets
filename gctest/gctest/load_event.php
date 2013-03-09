<?php
$gc_id  =mysql_result($result,$i,"gc_id");
$title  =mysql_result($result,$i,"title");
$gm     =mysql_result($result,$i,"gm");
$game_system =mysql_result($result,$i,"game_system");
$co_gm  =mysql_result($result,$i,"co_gm");
$start  =mysql_result($result,$i,"start");
$hours  =mysql_result($result,$i,"hours");
$min        =mysql_result($result,$i,"min");
$max        =mysql_result($result,$i,"max");
$prereg_avail     =mysql_result($result,$i,"prereg_avail");
$prereg     = $max - $prereg_avail;
$original     =mysql_result($result,$i,"original");
$generic    =mysql_result($result,$i,"generic");
$total = $original + $generic;
$turnin     =mysql_result($result,$i,"turnin");
?>