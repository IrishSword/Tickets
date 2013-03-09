<?php
define('TITLE', 'Update Event');
require("../common/header.html");

ob_start();//Hook output buffer
require("../common/db_info.php");
ob_end_clean();//Clear output buffer

/* GET means it's a first call, just display */
if($_SERVER['REQUEST_METHOD'] == 'GET') {
    $gc_id=htmlentities($_GET['gc_id']);
    if ( TEST > 0 ) echo "GET gc_id:$gc_id";
}

/* POST means it is a second call, for update */
if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $gc_id=htmlentities($_POST['gc_id']);
    echo "POST gc_id:$gc_id";
    /* so we got an gc_id via POST, so we should see if there are any updates and apply them */
    /* retreave all the values */
    $original =htmlentities($_POST['Original']);
    $generic=htmlentities($_POST['Generic']);
    $turnin =htmlentities($_POST['Envelope']);

    $ok_to_update = TRUE;
    if (! is_numeric($original))  { echo '<p class="error">Original Tickets must be numeric</p>'; $ok_to_update = false; }
    if (! is_numeric($generic)) { echo '<p class="error">Generic Tickets must be numeric</p>'; $ok_to_update = false; }
    if (! is_numeric($turnin))  { echo '<p class="error">Envelope Tickets must be numeric</p>'; $ok_to_update = false; }
    /* build update */
    if ($ok_to_update) {
        $query = "UPDATE events
                    SET original  = $original,
                        generic = $generic,
                        turnin  = $turnin
                   WHERE gc_id ='$gc_id'";
        if ( TEST > 0 )         echo "$query";
        $result=mysql_query($query);
        if ( TEST > 0 ) echo "update rc:$result";
        if(! $result )
        {
            die('Could not update data: ' . mysql_error());
        }
    }
}


/* ALL Display from here down */
if (empty($gc_id)) {
    $query="SELECT * FROM events";
    $result=mysql_query($query);
}
else {
    $query="SELECT * FROM events WHERE gc_id='$gc_id'";
    $result=mysql_query($query);
}

if ( TEST > 0 ) echo "$query";
$num=mysql_numrows($result);

mysql_close();

include("dis_event.php");

require("../common/footer.html");
?>