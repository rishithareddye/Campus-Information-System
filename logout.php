<?php require_once("includes/functions.php"); ?>
<?php
session_start();
session_unset();
echo "Logged out sucessful";
redirect_to("index.php");
?>
