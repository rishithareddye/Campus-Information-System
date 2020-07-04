<?php
/*
  // Create a database connection
  $dbhost = "mysql6.000webhost.com"; //host provided for database
  $dbuser = "a7039268_admin";// user alloted
  $dbpass = "campus_aurora";// user password
  $dbname = "a7039268_cse";// database name
  //mysqli_connect() is used to establish connction
  $connection = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
  // Test if connection succeeded
  if(mysqli_connect_errno()) {
    die("Database connection failed: " . 
         mysqli_connect_error() . 
         " (" . mysqli_connect_errno() . ")"
    );
  }
  else
  {
 echo "<h1>connection succesful</h1>";
  }*/
?>




<?php

//local host connection for testing .... 
	define("DB_SERVER", "localhost");
	define("DB_USER", "root");
	define("DB_PASS", "campus");
	define("DB_NAME", "db_cse");

  // 1. Create a database connection
  $connection = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
  // Test if connection succeeded
  if(mysqli_connect_errno()) {
    die("Database connection failed: " . 
         mysqli_connect_error() . 
         " (" . mysqli_connect_errno() . ")"
    );
  }
  else{
  //  echo "Connection Successfull";
  }
?>
