<?php include("../includes/layouts/faculty/header.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<center>
<h2>SOLUTIONS</h2>
<table  align=\"center\" id='block' class='box'>
<?php
  
 
  
  $query="SELECT * FROM tb_fcomp WHERE fid='".$_SESSION['uname']."' ORDER BY id DESC";
  $getquery=mysqli_query($connection,$query);
  $i=0;
while($rows=mysqli_fetch_assoc($getquery))
{
	$result=$rows;
	$i++;
}
if(is_null($result)){}
else
{
	echo '<tr class=head><th class=box>FACULTY ID</th><th class=box>SOLUTION</th></tr>';
for($i=0;$i<count($result);$i++)

	
}
}

?>
</table>
</center>
 <?php include("../includes/layouts/faculty/footer.php"); ?>