<?php require_once("includes/db_connection.php"); ?>
<?php require_once("includes/functions.php"); ?>
<?php
session_start();
$uname=strtoupper($_POST['user']);
$pwd=$_POST['pass'];
$_SESSION['uname']=$uname;
?>
<?php 

?>
<?php

$logindet=login($uname);
$pswd=$logindet['passkey'];
$mode=$logindet['mode'];
?>
<?php
  // 5. Close database connection
  mysqli_close($connection);
?>
<html>
<head><title>Loading... please wait</title></head>
	<body><br /><br /><br /><br /><br /><br /><center><img src='images/loading.gif' style="align:center;" /></center></body>
</html>
<?php
if($pwd==$pswd)
{
$_SESSION['sid']=session_id();
$_SESSION['mode']=$mode;
if($mode=="student")
echo "<script type='text/javascript'>location.href = 'students/index.php';</script>";
else if($mode=="admin")
echo "<script type='text/javascript'>location.href = 'admin/index.php';</script>";
else if($mode=="faculty" || $mode=="hod" || $mode=="deo" || $mode=="principal")
echo "<script type='text/javascript'>location.href = 'faculty/index.php';</script>";
}
else
echo "<script type='text/javascript'>location.href = 'index.php';</script>";
?>
