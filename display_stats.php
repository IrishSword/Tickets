<?php
    define('TITLE', 'Display Stats');
    require("common/header.html");

include('gather_stats.php');
echo '<table border="1">';
include('print_stats_table.php');
echo '</table><br />';

include("common/footer.html");
?>