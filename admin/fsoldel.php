<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php
$deleteid=$_GET['id'];
mysqli_query($connection,"DELETE FROM tb_fcomp WHERE id='$deleteid'");
redirect_to("afsol.php");
?>