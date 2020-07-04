<?php require_once("includes/db_connection.php"); ?>



<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>CIS Login Page</title>
   <link rel="icon" href="/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

</head>

<body>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
  <div class="login-card">
    <h1>Log-in</h1><br>
  <form action="login.php" method=post >
    <input type="text" name="user" placeholder="Username">
    <input type="password" name="pass" placeholder="Password">
    <input type="submit" name="login" class="login login-submit" value="login">
  </form>

  <div class="login-help">
   <a href="#"><h3>Forgot Password</h3></a>
  </div>
</div>

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->

 

</body>

</html>