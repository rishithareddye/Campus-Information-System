<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>
<?php 
if($_GET['type']=='single')
add_singlestudent($_POST);
if($_GET['type']=='multiple')
{
	$keys=array_keys($_POST);
	print_r($_POST);
	print_r($keys);
	$path= uploads("xls");
	echo $path;
	excel($path);
}
if($_GET['type']=='add')
{
	echo "<pre>";
	print_r($_POST);
	echo "</pre>";
	add_faculty($_POST);
}
if($_GET['type']=='delete')
{
	echo "<pre>";
	print_r($_POST);
	echo "</pre>";
}
if($_GET['type']=='examtable')
{
	
	$path=upload_examtable($_POST);
	$_POST['path']=$path;
	$_POST['date'] = date('d/m/Y');
	echo "<pre>";
	print_r($_POST);
	echo "</pre>";
	add_examtable($_POST);
}
if($_GET['type']=='deletetable')
{
	echo "<pre>";
	print_r($_POST);
	echo "</pre>";
}
?>