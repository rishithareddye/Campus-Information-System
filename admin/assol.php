<?php include("../includes/layouts/admin/header.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>

<?php
if(isset($_POST['submit']))	
{
$id=(int)$_POST['section'];
$solution=$_POST['solution'];


if($id&&$solution)
{
$sql="UPDATE tb_comp SET solution = '$solution' WHERE `tb_comp`.`id` =" .$id;
mysqli_query($connection,$sql);
redirect_to("assol.php");
}
else
{
	echo "please fill all the fields";
}	

}
?>


<center>
<h2>SOLUTION</h2>
<form action="assol.php" method=post>
<table><br>
<tr><td>STUDENT ID:</td><td><?php complaints_student() ?></td></tr>
<tr><td colspan="2">SOLUTION:</td></tr> 
<tr><td colspan="2"><textarea rows=10 cols=40 name="solution" id="solution"></textarea></td></tr> 
<tr><td  colspan="2"><br><center><input type="submit" value="submit" name="submit" id="submit"/></center></td></tr> 
</table>
</form>
</center>
 <?php include("../includes/layouts/admin/footer.php"); ?>