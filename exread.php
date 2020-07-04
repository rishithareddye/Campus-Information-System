<?php

require("includes/excelreader/reader.php"); // php excel reader
//local host connection for testing .... 
 $dbhost = "localhost";
  $dbuser = "root";
  $dbpass = "campus";
  $dbname = "db_cse";
  $connection1 = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
  // Test if connection succeeded
  if(mysqli_connect_errno()) {
    die("Database connection failed: " . 
         mysqli_connect_error() . 
         " (" . mysqli_connect_errno() . ")"
    );
  }
  else{
  	echo "connected";
  }
  ?>
  <?php

$file="cse4.xls";
$connection=new Spreadsheet_Excel_Reader(); // our main object
$connection->read($file);
$startrow=1;
$endrow=0;
$i=1;
$sheets=0;
$k=0;
$row;
$col;
while(isset($connection->sheets[$k]))
{
	$sheets++;
	$k++;
}
echo "$sheets <br />";

for($k=0;$k<$sheets;$k++)
{
	$row[$k]=0;
	$col[$k]=0;
	$i=1;
while(isset($connection->sheets[$k]["cells"][$i]))
{
	$row[$k]++;
	$i++;
}
$i=1;
while(isset($connection->sheets[$k]["cells"][1][$i]))
{
	$col[$k]++;
	$i++;
}

}
print_r($row);
print_r($col);
?>
<html>
	<head><title>Table</title></head>
	<body>
	<?php
	for($k=0;$k<1;$k++)
	{
	echo "<table border=\"1px\">";
	echo	"<tr>";
		for($i=1;$i<=$col[$k];$i++)
		{
echo "<th>";
$val=$connection->sheets[$k]["cells"][1][$i];
echo "$val </th>";
}
$query1;
			
		echo "</tr>";
				echo "<tr>";
echo "</tr>";
echo "</table><br />";
			for($j=2;$j<=$row[$k];$j++)
			{

for($i=1;$i<=$col[$k];$i++)
		{
$val=$connection->sheets[$k]["cells"][$j][$i];
$query1[$i][$j-2]=$val;


}


}
print_r($query1);
}
for($j=0;$j<=7;$j++)
{
$query  = "INSERT INTO trial";
	$query .= " VALUES (";
	$query .= "  '{$query1[$j]}'";
	$query .= ")";
echo "$query";
	$result = mysqli_query($connection1,$query);

	if ($result) {
		// Success
		echo "Subject created.";
		//redirect_to("manage_content.php");
	} else {
		// Failure
		echo "Subject creation failed.";
		//redirect_to("new_subject.php");
	}
}

			?>

	</body>
</html>