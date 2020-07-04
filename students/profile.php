<?php include("../includes/layouts/students/header.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>

<?php
$uname=$_SESSION['uname'];
?>
<?php
$profile=get_profile($uname);
//print_r($profile);
?>

<center>
<div id="image"><table><tr><td><img id="profile" src="../students/pics/pic.png" /></td></tr></table></div>
<div id="info">
<table>
<tr>
<td id="per" colspan="2">
<?php echo "<h2>Personal Information</h2>";?>
<table>
	<tr>
	<td id="des"><?php echo "Name";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['name']}";?></td>
	</tr>
	<hr/>
	<tr>
<td></td>
<td></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
	<tr>
	<td id="des"><?php echo "Roll Number  ";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['stu_id']}";?></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
	<tr>
	<td id="des"><?php echo "Department  ";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['stuyear']}-{$profile['dept']}";?></td>
	</tr>	
	<tr>
<td></td>
<td></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
	<tr>
	<td id="des"><?php echo "Father's Name  ";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['f_name']}";?></td>
	</tr>
	<tr>
<td></td>
<td></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
	<tr>
	<td id="des"><?php echo "Date of Birth";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['dob']}";?></td>
	</tr>
</table>
</td>
</tr><tr>
<td id="per" colspan="2">
<?php echo "<h2>Contact Information</h2>";?>
<table>
	<tr>
	<td id="des"><?php echo "Personal Number";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['mobno']}";?></td>
	</tr>
	<hr/>
	<tr>
<td></td>
<td></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
	<tr>
	<td id="des"><?php echo "Father's Number  ";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['fatherno']}";?></td>
	</tr><tr>
<td></td>
<td></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
	<tr>
	<td id="des"><?php echo "Email Id";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['emailid']}";?></td>
	</tr>
	<tr>
<td></td>
<td></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
	<tr>
	<td id="des"><?php echo "Address";?></td><td>:</td>
	<td id="def"><?php echo "{$profile['addr']}";?></td>
	</tr>
	<tr>
<td></td>
<td></td>
	</tr>
		<tr>
<td></td>
<td></td>
	</tr>
</table>
</td>
</tr>
</table>
<br />
<br />
<br />
</div>
<div id="edit">
<table align="center">
<tr>
<td id="per">
<?php echo "<h3>edit Profile</h3>";?>
</td>
</tr>
</table>
</div>

		<?php
  mysqli_close($connection);
?>
<?php include("../includes/layouts/students/footer.php"); ?>