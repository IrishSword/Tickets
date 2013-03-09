<?php 
ob_start();//Hook output buffer 
include_once("../common/db_info.php");
ob_end_clean();//Clear output buffer

$gather_query="SELECT
            count(*)    AS count,
            count(DISTINCT title)   AS unique_title,
            count(DISTINCT gm)      AS unique_gm,
            count(DISTINCT game_system) AS unique_system,
            count(DISTINCT start)      AS unique_start,
            sum(hours)  AS sum_hours,
            sum(min)    AS sum_min,
            sum(max)    AS sum_max,
            sum(prereg_avail) AS sum_prereg_avail,
            sum(original)   AS sum_original,
            sum(generic)    AS sum_generic,
            sum(turnin)     AS sum_turnin
    FROM events";

$i=0;
if ($gather_result=mysql_query($gather_query) ) {

    $num=mysql_numrows($gather_result);
    mysql_close();

    $count          =mysql_result($gather_result,$i,"count");
    $unique_title   =mysql_result($gather_result,$i,"unique_title");
    $unique_gm      =mysql_result($gather_result,$i,"unique_gm");
    $unique_system  =mysql_result($gather_result,$i,"unique_system");
    $unique_start   =mysql_result($gather_result,$i,"unique_start");

    $sum_hours      =mysql_result($gather_result,$i,"sum_hours");
    $sum_min        =mysql_result($gather_result,$i,"sum_min");
    $sum_max        =mysql_result($gather_result,$i,"sum_max");
    $sum_prereg_avail =mysql_result($gather_result,$i,"sum_prereg_avail");
    $sum_original   =mysql_result($gather_result,$i,"sum_original");
    $sum_generic    =mysql_result($gather_result,$i,"sum_generic");
    $sum_turnin     =mysql_result($gather_result,$i,"sum_turnin");
    $sum_total      = $sum_original + $sum_generic;

    $prereg_perc    = 100 * round($sum_prereg_avail / $sum_max, 3 );
    $original_perc  = 100 * round($sum_original / $sum_max, 3 );
    $generic_perc   = 100 * round($sum_generic / $sum_max, 3 );
    $total_perc     = 100 * round($sum_total / $sum_max, 3 );
    $turnin_perc    = 100 * round($sum_turnin / $sum_max, 3 );

    $generic_of_total_perc = 100 * round($sum_generic / $sum_total, 3 );
}
else {
    print_error( mysql_error() );
}
?>