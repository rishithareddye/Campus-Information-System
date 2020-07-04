<?php include("../includes/layouts/faculty/header.php"); ?>
<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>
<?php 
if(isset($_POST['section'])){
	$section=$_POST['section'];
	$date=$_POST['date'];
?>
<form action="finish.php?type=att" method="POST">
<table align="center">
  <tr>
<td colspan="2"><h4 align="center">ATTENDANCE SHEET</h4>
</td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
</table>

<table align="center">
<tr>
<th>DATE: </th>
<th><b><?php echo $date; ?><input type="hidden" name='date' value=<?php echo $date; ?>></b></th><th></th></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr>
<th>SECTION: </th>
<th><b><?php echo $section;?><input type="hidden" name='section' value=<?php echo $section; ?>></b></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
</tr><tr>
</tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr>
<th>SUBJECT:</th>
<th><b><?php faculty_section($section); ?></b></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th>CLASS:</th>
<th><b><?php select_periods($section,$date);?></b></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
</tr>
</table>
<?php out_students($section);?>
</form>
<?php
}
else{
?>
<?php
if(isset($_SESSION['mode']) && $_SESSION['mode']=='deo')
{
	?>
	<form action="attendance.php" method="POST">
	<table align="center">
  <tr>
<td colspan="2"><h4 align="center">ATTENDANCE SHEET</h4>
</td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
</table>

<table align="center">
<tr>
<th>Select the Section</th>
<th><?php (section_checkbox())?></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
<th>Select the Date</th>
<th><input type="text" name="date" value=<?php echo date('d/m/Y');?>></th><th></th><th></th><th></th><th></th><th></th><th></th><th></th>
</tr>
<tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<th id='sub' colspan="15"><input type="submit" name="submit" id="submit"/>
</th>
</tr>
</table>
</form>
 
	<?php
}

else if(isset($_SESSION['mode']) && $_SESSION['mode']=='hod')
{
	echo "hod";
}

else if(isset($_SESSION['mode']) && $_SESSION['mode']=='faculty')
{
	echo "faculty";
}

else if(isset($_SESSION['mode']) && $_SESSION['mode']=='principal')
{
	echo "princy";
}

else{
	echo "none";
}
}?>
 <?php include("../includes/layouts/faculty/footer.php"); ?>