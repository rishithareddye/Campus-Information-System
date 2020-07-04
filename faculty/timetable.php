<?php include("../includes/layouts/faculty/header.php"); ?>
<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>
<form action="timetable.php?type=selected" method="POST">
<table align="center">
  <tr>
<td colspan="2"><h4 align="center">SECTION WISE TIME TABLE</h4>
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
<th>Select the Semister</th>
<th><select name='sem'><option value="1">1</option><option value="2">2</option></select></th></tr>
<tr>
<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
<th id='sub' colspan="15"><input type="submit" name="submit" id="submit"/>
</th>
</tr>
</table>
</form>
 
<br />
<form action=finish.php?type=timetable<?php if(isset($_POST['section'])) echo "&section={$_POST['section']}&sem={$_POST['sem']}"?> method="POST">
<?php 
if(isset($_POST['submit']) && isset($_GET['type']))
{
	$section=$_POST['section'];
	$_POST['section']=(int)$_POST['section'];
	$num=$_POST['section'];
	if($num!="1")
	{
		$_POST['section']=$_POST['section']."-".$_POST['sem'];
	}
	print_table(get_yearwisesubjects($_POST));
}
?>
</form>


 <?php include("../includes/layouts/faculty/footer.php"); ?>