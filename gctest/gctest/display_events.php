<?php
    define('TITLE', 'Display Events');
    require("../common/header.html");



include("../common/db_info.php");

$query="SELECT * FROM events";
$result=mysql_query($query);

$num=mysql_numrows($result);

mysql_close();

echo '<table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>GM</th>
                <th>SYSTEM</th>
                <th>START TIME</th>
                <th>HRS</th>
                <th>MIN</th>
                <th>MAX</th>
                <th>SOLD</th>
                <th>ORIG</th>
                <th>GEN</th>
                <th>TTL</th>
                <th>ENV</th>
            </tr>
        </thead>
        ';

$i=0;
while ($i < $num) {

include("load_event.php");

//echo '<tr align="center">';
echo '<tr>';
echo '<td><b><a href="update_events.php?gc_id=' . "$gc_id" . '">' . "$gc_id</a></b></td>";
echo"<td><b>$title</b></td>
    <td>$gm</td>
    <td>$game_system</td>
    <td>$start</td>
    <td>$hours</td>
    <td>$min</td>
    <td>$max</td>
    <td>$prereg</td>
    <td>$original</td>
    <td>$generic</td>
    <td>$total</td>
    <td>$turnin</td>
    </tr>
    ";

$i++;
}


include("../common/db_info.php");

$i = 0;
include('gather_stats.php');
include('print_stats_table.php');

echo '</table><br />';

include("../common/footer.html");
?>