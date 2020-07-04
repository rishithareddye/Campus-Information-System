<?php

require("includes/excelreader/reader.php"); // php excel reader

$file="4-2 addres.xls";
$connection=new Spreadsheet_Excel_Reader(); // our main object
$connection->read($file);
$startrow=4;
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
	for($k=0;$k<$sheets;$k++)
	{
	echo "<table border=\"1px\">";
	echo	"<tr>";
		for($i=1;$i<=$col[$k];$i++)
		{
echo "<th>";
$val=$connection->sheets[$k]["cells"][1][$i];
echo "$val </th>";
}

			
		echo "</tr>";

			for($j=2;$j<=$row[$k];$j++)
			{
				echo "<tr>";
for($i=1;$i<=$col[$k];$i++)
		{
echo "<td align=\"center\">";
$val=isset($connection->sheets[$k]["cells"][$j][$i])?$connection->sheets[$k]["cells"][$j][$i]:"";
echo "$val </td>";
}
echo "</tr>";
}
echo "</table><br />";
}
			?>

	</body>
</html>