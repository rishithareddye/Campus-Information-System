<?php include("../includes/layouts/students/header.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php
if(isset($_POST['submit']))	
{
$sid=$_POST['sid'];
$complaint=$_POST['complaint'];


if($sid&&$complaint)
{
$sql="INSERT INTO tb_comp (sfid,complaints) VALUES ('$sid','$complaint')";
mysqli_query($connection,$sql);
redirect_to("scomp.php");
}
else
{
	echo "please fill all the fields";
}	

}
?>
<center>
<h2>COMPLAINTS</h2><br>


<table align=\"center\" id='block' class='box'>

<?php
echo '<tr class=head><th class=box>COMPLAINT</th><th class=box>STATUS</th><th class=box>SOLUTION</th></tr>';
$query="SELECT * FROM tb_comp WHERE sfid='".$_SESSION['uname']."' ORDER BY id DESC";
  $getquery=mysqli_query($connection,$query);
while($rows=mysqli_fetch_assoc($getquery))
{
	$id=$rows['id'];
	$sid=$rows['sfid'];
    $complaint=$rows['complaints'];
	$solution=$rows['solution'];
	if($solution)
	{
		$status="resolved";
		$reply="<a href=\"sview.php?id=" . $id . "\">view</a>";
		
	}
    		
	else
	{
		$status="not resolved";
		$reply="NULL";
	}		
	echo  '<tr class=head><td class=box>' . $complaint . '</td>' . '<td class=box>'  . $status . '</td>' . '<td class=box>'  . $reply .'</td></tr>';
}
?>
</table><br>

<form action="scomp.php" method=post>
<table>
<tr><td>STUDENT ID:&nbsp;&nbsp;<?php echo  $_SESSION['uname'] ?><input type="hidden" name="sid" id="sid" value=<?php echo  $_SESSION['uname'] ?> /></td></tr>
<tr><td colspan="2">COMPLAINT:</td></tr> 
<tr><td  colspan="2"><textarea rows=10 cols=35 name="complaint" id="complaint"></textarea></td></tr> 
<tr><td  colspan="2"><br><center><input type="submit" value="submit" name="submit" id="submit"/></center></td></tr> 
</table> 
</form><br>
 

</center>
 <?php include("../includes/layouts/students/footer.php"); ?>