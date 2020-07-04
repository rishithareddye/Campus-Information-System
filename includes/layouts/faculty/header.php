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
   <link rel="stylesheet" href="../faculty/css/styles.css" />
   <link rel="stylesheet" href="../faculty/css/resp.css" />
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
   <script src="../faculty/js/script.js"></script>
   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <script>
$(document).ready(function() {
    $('#selecctall').click(function(event) {  //on click 
        if(this.checked) { // check select status
            $('.checkbox1').each(function() { //loop through each checkbox
                this.checked = true;  //select all checkboxes with class "checkbox1"               
            });
        }else{
            $('.checkbox1').each(function() { //loop through each checkbox
                this.checked = false; //deselect all checkboxes with class "checkbox1"                       
            });         
        }
    });
    
});
</script>
   <title>Campus Information System</title>
</head>
<body>
<?php $pagename=basename($_SERVER['PHP_SELF']); ?>
<?php //echo "{$pagename}<br />" ?>
<div id='cssmenu'>
<ul>
   <li class='active'><a href='#'>Home</a></li>
   <li class='active'><a href='attendance.php'>Attendance</a></li>
   <li class='active'><a href='marks.php'>Marks</a></li>
   <li class='active'><a href='#'>Assignments</a></li>
    <?php if($_SESSION['mode']=="deo") echo "<li><a href='#'>Edit Timetables</a></li>"; ?>
   <?php if($_SESSION['mode']=="deo") echo "<li><a href='#'>Circulars</a></li>"; ?>
   <li><a href='#'>Events</a></li>
   <?php if($_SESSION['mode']=="hod" || $_SESSION['mode']=="principal" || $_SESSION['mode']=="deo") echo "<li><a href='#'>Achievements</a></li>"; ?>
  
  <?php if($_SESSION['mode']=="hod" || $_SESSION['mode']=="principal") echo "<li><a href='#'>Report</a></li>"; ?>
  <?php if($_SESSION['mode']=="hod" || $_SESSION['mode']=="principal") echo "<li><a href='#'>Non Displinary Actions</a></li>"; ?>
    <li class='active'><a href='fcomp.php'>Complaints</a></li>
   <li class='active'><a href='../logout.php'>Logout</a></li>
</ul>
</div>
<br />
<div id="container">
<section id="left-column">