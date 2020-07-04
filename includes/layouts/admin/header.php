<?php
session_start();
//if(!(isset($_SESSION['sid'])) ||$_SESSION['sid']!=session_id())
//echo "<script>window.location='../index.php'</script>";
?>
<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="../admin/css/styles.css" />
   <link rel="stylesheet" href="../admin/css/resp.css" />
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
   <script src="../admin/js/script.js"></script>
   <title>Campus Information System</title>
</head>
<body>
<?php $pagename=basename($_SERVER['PHP_SELF']); ?>
<?php //echo "{$pagename}<br />" ?>
<div id='cssmenu'>
<ul>
   <li class='active'><a href='#'>Home</a></li>
   <li><a href='#'>Passout</a></li>
   <li><a href='newentry.php'>New Entries</a></li>
   <li><a href='#'>Faculty</a></li>
   <li><a href='#'>Exam Timetable</a></li>
   <li><a href='acomp.php'>Complaints</a></li>
   <li><a href='../logout.php'>Logout</a></li>
</ul>
</div>
<br />
<div id="container">
<section id="left-column">