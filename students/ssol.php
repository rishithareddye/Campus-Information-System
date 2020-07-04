<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>

<?php
if(isset($_POST['submit']))	
{
$stid=$_POST['stid'];
$solution=$_POST['solution'];


if($stid&&$solution)
{
$sql="UPDATE tb_comp SET solution = '$solution' WHERE `tb_fcomp`.`sfid` = $stid";
mysqli_query($connection,$sql);
redirect_to("ssol.php");
}
else
{
	echo "please fill all the fields";
}	

}
?>
<!DOCTYPE HTML> 
<html>
<head>
</head>

<body> 
<form action="ssol.php" method=post>
<table>
<tr><td>STUDENT ID:</td><td><input type="text" name="stid" id="stid"/></td></tr>
<tr><td colspan="2">SOLUTION:</td></tr> 
<tr><td colspan="2"><textarea rows=10 cols=40 name="solution" id="solution"></textarea></td></tr> 
<tr><td colspan="2"><input type="submit" value="submit" name="submit" id="submit"/></td></tr> 
</table> <br/> <hr width=2000px color="gray"/>
</form>
<?php
  $getquery=mysqli_query($connection,"SELECT * FROM tb_comp ORDER BY id DESC");
while($rows=mysqli_fetch_assoc($getquery))
{
	$id=$rows['id'];
	$stid=$rows['sfid'];
    $solution=$rows['solution'];
	$dellink="<a href=\"ssoldel.php?id=" . $id . "\">DELETE</a>";
	
	if($solution)
	{
	
	echo  '<font color="pink">STUDENT ID:</font>' . $fid . '<br />' . '<br />' . '<font color="pink">SOLUTION:</font>' . $solution . '<br />' . '<br />' . '<hr width="1000px" color="white"/>';

	}
}
?>

</body>

</html>