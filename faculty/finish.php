<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>
<?php 
if($_GET['type']=='add')
{
	echo "<pre>";
	print_r($_POST);
	echo "</pre>";
	add_subject($_POST);
}
if($_GET['type']=='delete')
{
	echo "<pre>";
	print_r($_POST);
	print_r(array_keys($_POST));
	echo "</pre>";

}
if($_GET['type']=='timetable')
{
	if(isset($_POST['submit']))
	{
	echo "<pre>";
	print_r($_GET);
	print_r($_POST);
	print_r(array_keys($_POST));
	echo "</pre>";
	$subj=insert_subjecttable($_GET,$_POST,array_keys($_POST));
	$roll=create_attendance($_GET,$_POST,array_keys($_POST),$subj);
	$table=create_daywisesheet($_GET,$_POST,array_keys($_POST));
	create_marksheet($_GET['section'],$subj);
}

}
if($_GET['type']=='att')
{
	echo "<pre>";
	print_r($_POST);
	if(!isset($_POST[51]))
	{
		echo "harin";
	}
	print_r(get_count($_POST['section']));
	echo count($_POST['class']);
	echo "</pre>";
post_attendance($_POST,get_count($_POST['section']));
add_class($_POST['class'],$_POST['faculty'],$_POST['section']);
}
if($_GET['type']=='marks')
{
	echo "<pre>";
	print_r($_POST);
	print_r(array_keys($_POST));
	echo "</pre>";
query_marks($_POST,array_keys($_POST));
}
?>