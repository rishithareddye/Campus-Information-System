<?php include("../includes/layouts/faculty/header.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php
if(isset($_POST['submit']))	
{
$fid=$_SESSION['uname'];
$complaint=$_POST['complaint'];


if($fid&&$complaint)
{
$sql="INSERT INTO tb_fcomp (fid,complaints) VALUES ('$fid','$complaint')";
mysqli_query($connection,$sql);
redirect_to("fcomp.php");
}
else
{
	echo "please fill all the fields";
}	

}
?>

<center>
<h4>COMPLAINTS</h4>
<table align=\"center\" id='block' class='box'>
<?php
  echo '<tr class=head><th class=box>COMPLAINT</th><th class=box>STATUS</th><th class=box>SOLUTION</th></tr>';
  
 $query="SELECT * FROM tb_fcomp WHERE fid='".$_SESSION['uname']."' ORDER BY id DESC";
  
  $getquery=mysqli_query($connection,$query);
while($rows=mysqli_fetch_assoc($getquery))
{
	$id=$rows['id'];
	$fid=$rows['fid'];
    $complaint=$rows['complaints'];
	$solution=$rows['solution'];
	if($solution)
	{
		$status="resolved";
	     $reply="<a href=\"fview.php?id=" . $id . "\">view</a>";
	
	}
    		
	else
	{
		$status="not resolved";
		$reply="NULL";
	}		
	echo  '<tr class=head><td class=box>' . $complaint .  '</td>'. '<td class=box>' . $status . '</td>' . '<td class=box>' . $reply . '</td></tr>';
}
?>
</table>
</center><br><br>
<center>
<form action="fcomp.php" method=post>
<table>
<tr><td>FACULTY ID:&nbsp;&nbsp;<?php echo  $_SESSION['uname'] ?><input type="hidden" name="fid" id="fid" value=<?php echo  $_SESSION['uname'] ?>/></td></tr>
<tr><td colspan="2">COMPLAINT:</td></tr> 
<tr><td colspan="2"><textarea rows=10 cols=40 name="complaint" id="complaint"></textarea></td></tr> 
<tr><td colspan="2"><center><br><input type="submit" value="submit" name="submit" id="submit"/></center></td></tr> 
</table>
</form>
</center><br><br>
  <?php include("../includes/layouts/faculty/footer.php"); ?>