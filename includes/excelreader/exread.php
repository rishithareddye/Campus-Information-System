<?php
session_start();
// i will tell you get data from excel with php

//first of all you add this files your project.
// And i show my excel file and add  some data

//start now :)
if(isset($_SESSION["file"]))
{
	echo $_SESSION["file"];
}
require("reader.php"); // php excel reader

$file=$_SESSION["file"];
$connection=new Spreadsheet_Excel_Reader(); // our main object
$connection->read($file);
$startrow=5;
$endrow=6;
$col1=1;
$j=0;
$sheets=0;
$break=1;
$row=0;
$col=0;
$i=$startrow;
while(isset($connection->sheets[0]["cells"][$i]))
{
	$i++;
 $row++;
}
echo $row."<br />";
$i=1;
while(isset($connection->sheets[0]["cells"][$startrow][$i]))
{
	$i++;
 $col++;
}
echo $col."<br />";
for($i=$startrow;$i<$endrow;$i++){ // we read row to row

echo $connection->sheets[0]["cells"][$i][$col1]."<br>"; // so we get [2][3] and [3][3]

}
$i=1;
while($break!=0){

	if(isset($connection->sheets[$sheets]))
	{
		$sheets++;
	}
	else
		$break=0;
}
$break=0;
$f=1;
echo $sheets;
// End this video.thank you for watch :) 
// Soppy


?>