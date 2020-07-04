<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php
$deleteid=$_GET['id'];
mysqli_query($connection,"DELETE FROM tb_comp WHERE id='$deleteid'");
redirect_to("assol.php");
?>