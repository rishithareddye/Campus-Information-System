<?php include("../includes/layouts/students/header.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php
if(isset($_POST['submit']))	
{
$stid=$_POST['stid'];
$solution=$_POST['solution'];
}
?>
<center>
<h2>SOLUTIONS</h2><br>
<table  align=\"center\" id='block' class='box'>
<?php
echo '<tr class=head><th class=box>STUDENT ID</th><th class=box>SOLUTION</th></tr>';
  $query="SELECT * FROM tb_comp WHERE sfid='".$_SESSION['uname']."' ORDER BY id DESC";
  $getquery=mysqli_query($connection,$query);
while($rows=mysqli_fetch_assoc($getquery))
{
	$id=$rows['id'];
	$sid=$rows['sfid'];
    $solution=$rows['solution'];
	$dellink="<a href=\"ssoldel.php?id=" . $id . "\">DELETE</a>";
	
	if($solution)
	{
	echo  '<tr class=head><td class=box>' . $sid . '</td>' . '<td class=box>' . $solution . '</td></tr>';
     }
}
?>
</table>
</center>
<?php include("../includes/layouts/students/footer.php"); ?>