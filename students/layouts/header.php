<?php
session_start();
if(!(isset($_SESSION['sid'])) ||$_SESSION['sid']!=session_id())
echo "<script>window.location='../index.php'</script>";
?>
<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css" />
   <link rel="stylesheet" href="resp.css" />
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Campus Information System</title>
</head>
<body>
<?php $pagename=basename($_SERVER['PHP_SELF']); ?>
<?php echo "{$pagename}<br />" ?>
<div id='cssmenu'>
<ul>
   <li class='<?php if($pagename==="index.php")echo "active"; ?>'><a href='index.php'>Home</a></li>
   <li class='<?php if($pagename==="profile.php")echo "active"; ?>'><a href='profile.php'>Profile</a></li>
   <li class='<?php if($pagename==="timetable.php")echo "active"; ?>'><a href='timetable.php'>Time Table</a></li>
   <li class='<?php if($pagename==="attendance.php")echo "active"; ?>'><a href='attendance.php'>Attendance</a></li>
   <li class='<?php if($pagename==="marks.php")echo "active"; ?>'><a href='marks.php'>Marks</a></li>
   <li class='<?php if($pagename==="assignments.php")echo "active"; ?>'><a href='assignments.php'>Assignments</a></li>
    <li class='<?php if($pagename==="events.php")echo "active"; ?>'><a href='events.php'>Events</a></li>
  <li class='<?php if($pagename==="complaints.php")echo "active"; ?>'><a href='complaints.php'>Complaints</a></li>
   <li class=''><a href='../logout.php'>LogOut</a></li>
</ul>
</div>
<br />
<div id="container">
<section id="left-column">