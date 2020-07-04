<?php include("../includes/layouts/admin/header.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;<a href="acomp.php"><input type=button value="BACK"/></a>
<center>
<h4>COMPLAINTS</h4>
<table align=\"center\" id='block' class='box'>
<?php
  
  $getquery=mysqli_query($connection,"SELECT * FROM tb_comp ORDER BY id DESC");
  
  
  echo '<tr class=head><th class=box>STUDENT ID</th><th class=box>COMPLAINT</th><th class=box>STATUS</th><th class=box>DELETE</th></tr>';
  while($rows=mysqli_fetch_assoc($getquery))
{
	$id=$rows['id'];
	$sid=$rows['sfid'];
    $complaint=$rows['complaints'];
	$solution=$rows['solution'];
	if($solution)
	{
		$status="resolved";
	}
    		
	else
	{
		$status="not resolved";
	}		

	$dellink="<a href=\"delete.php?id=" . $id . "\">DELETE</a>";
	
	echo    '<tr tr class=head><td class=box>' . $sid . '</td>' .  '<td class=box>' . $complaint .  '</td>' . '<td class=box>' . $status . '</td>' . '<td class=box>' . $dellink . '</td></tr>';
}
?>

</table>
</center><br>

 <?php
if(isset($_POST['submit']))	
{
$id=(int)$_POST['section'];
$solution=$_POST['solution'];


if($id&&$solution)
{
$sql="UPDATE tb_comp SET solution = '$solution' WHERE `tb_comp`.`id` =" .$id;
mysqli_query($connection,$sql);
redirect_to("ascomp.php");
}
else
{
	echo "please fill all the fields";
}	

}
?>


<center>
<h4>SOLUTION</h4>
<form action="ascomp.php" method=post>
<table>
<tr><td>STUDENT ID:</td><td><?php complaints_student() ?></td></tr>
<tr><td colspan="2">SOLUTION:</td></tr> 
<tr><td colspan="2"><textarea rows=10 cols=40 name="solution" id="solution"></textarea></td></tr> 
<tr><td  colspan="2"><br><center><input type="submit" value="submit" name="submit" id="submit"/></center></td></tr> 
</table>
</form>
</center>
 
 
  <?php include("../includes/layouts/admin/footer.php"); ?>


