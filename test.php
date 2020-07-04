<?php

require("includes/excelreader/reader.php"); // php excel reader

$file="4-2 addres.xls";
$exc=new Spreadsheet_Excel_Reader(); // our main object
$exc->read($file);
$startrow=4;
$endrow=0;
$i=1;
$sheets=0;
$k=0;
$row;
$col;
while(isset($exc->sheets[$k]))
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
while(isset($exc->sheets[$k]["cells"][$i]))
{
	$row[$k]++;
	$i++;
}
$i=1;
while(isset($exc->sheets[$k]["cells"][1][$i]))
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
	$query;
	$f;
	for($k=0;$k<$sheets;$k++)
	{
		for($i=2;$i<=$col[$k];$i++)
		{
$head[$i-2]=$exc->sheets[$k]["cells"][1][$i];

}
echo "<pre>";
echo "<br />";
print_r($head);
echo "</pre>";

			for($j=2;$j<=$row[$k];$j++)
			{
for($i=2;$i<=$col[$k];$i++)
		{

$val1[$i-2]=isset($exc->sheets[$k]["cells"][$j][$i])?$exc->sheets[$k]["cells"][$j][$i]:"";
}
echo "<pre>";
echo "<br />";
print_r($val1);
echo "</pre>";
}
}
			?>

	</body>
</html>