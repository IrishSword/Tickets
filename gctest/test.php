<?php

error_reporting(E_ALL);
$foo = "This is a complex value & it needs to be URL-encoded.";
echo $foo, "<br /><br/>";
$bar = urlencode($foo);
echo $bar, "<br /><br/>";
echo urldecode($bar);
?>