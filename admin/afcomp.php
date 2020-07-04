<?php include("../includes/layouts/admin/header.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;<a href="acomp.php"><input type=button value="BACK"/></a>
<?php
 if(isset($_POST['submit']))	
 {
   $fid=$_POST['fid'];
    $complaint=$_POST['complaint'];

 }
?>
<center>
<h4>COMPLAINTS</h4>
<table align=\"center\" id='block' class='box'>
<?php
 echo '<tr class=head><th class=box>FACULTY ID</th><th class=box>COMPLAINT</th><th class=box>STATUS</th><th class=box>DELETE</th></tr>';

  $getquery=mysqli_query($connection,"SELECT * FROM tb_fcomp ORDER BY id DESC");
  while($rows=mysqli_fetch_assoc($getquery))
{
	$id=$rows['id'];
	$fid=$rows['fid'];
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
	
    $dellink="<a href=\"fcompdel.php?id=" . $id . "\">DELETE</a>";
	
	echo  '<tr class=head><td class=box>' . $fid . '</td>' .  '<td class=box>' . $complaint .  '</td>' . '<td class=box>' . $status . '</td>' . '<td class=box>' . $dellink . '</td></tr>';
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
$sql="UPDATE tb_fcomp SET solution = '$solution' WHERE `tb_fcomp`.`id` =".$id;
mysqli_query($connection,$sql);
redirect_to("afsol.php");
}
else
{
	echo "please fill all the fields";
}	

}
?>

<center> 
<h4>SOLUTION</h4>
<form action="afcomp.php" method=post>
<table align=\"center\">
<tr ><td >FACULTY ID:</td><td><?php complaints_faculty() ?></td></tr>
<tr ><td  colspan="2">SOLUTION:</td></tr> 
<tr ><td  colspan="2"><textarea rows=10 cols=40 name="solution" id="solution"></textarea></td></tr> 
<tr><td  colspan="2"><br><center><input type="submit" value="submit" name="submit" id="submit"/></center></td></tr> 
</table> 
</form>

 <?php include("../includes/layouts/admin/footer.php"); ?>

