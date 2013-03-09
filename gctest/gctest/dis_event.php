<?php
{
    include("load_event.php");

    echo '<form action="update_events.php"method="post">';
    echo "<b>$gc_id $title</b> ($game_system) ";
    echo "GM: $gm Co GMs: $co_gm Start Time: $start Length: $hours<br>";
    echo "-Tickets- Max: $max Sold: $prereg ";
    echo 'Original<input type="text" name="Original" size="4" value="' . $original . '"/>';
    echo 'Generic <input type="text" name="Generic"  size="4" value="' . $generic . '"/>';
    echo 'Envelope<input type="text" name="Envelope" size="4" value="' . $turnin . '"/>';
    echo         '<input type="hidden" name="gc_id"           value="' . $gc_id .  '"/>';
    echo         '<input name="update_event" type="submit" value="Update Event"/>';
    echo "</form>";
}
?>
