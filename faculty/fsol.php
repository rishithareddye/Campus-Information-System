<?php require_once("includes/db_connection.php"); ?>
<?php require_once("includes/functions.php"); ?>
<?php
if(isset($_POST['submit']))	
{
	
$faid=$_POST['faid'];
$solution=$_POST['solution'];


if($faid&&$solution)
{
$sql="UPDATE tb_fcomp SET solution = '$solution' WHERE `tb_fcomp`.`fid` = $faid";
mysqli_query($connection,$sql);
redirect_to("fsol.php");
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
<form action="fsol.php" method=post>
<table>
<tr><td>FACULTY ID:</td><td><input type="text" name="faid" id="faid"/></td></tr>
<tr><td colspan="2">SOLUTION:</td></tr> 
<tr><td colspan="2"><textarea rows=10 cols=40 name="solution" id="solution"></textarea></td></tr> 
<tr><td colspan="2"><input type="submit" value="submit" name="submit" id="submit"/></td></tr> 
</table> <br/><hr width=2000px color="gray"/>
</form>
<?php
  $getquery=mysqli_query($connection,"SELECT * FROM tb_fcomp ORDER BY id DESC");
while($rows=mysqli_fetch_assoc($getquery))
{
	$id=$rows['id'];
	$fid=$rows['fid'];
    $solution=$rows['solution'];
	
	if($solution)
	{
	
	echo  '<font color="pink">FACULTY ID:</font>' . $fid . '<br />' . '<br />' . '<font color="pink">SOLUTION:</font>' . $solution . '<br />' . '<br />' . '<hr width="1000px" color="white"/>';

	}
}
?>

</body>

</html>