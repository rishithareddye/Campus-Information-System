<?php include("../includes/layouts/faculty/header.php"); ?>
<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>
<table align="center">
  <tr>
<td colspan="2"><h4 align="center">YEAR WISE SUBJECTS</h4>
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
<td><input type="radio" id="add" name="Entry" value="add" onclick="location.href = 'subjects.php?type=add'" <?php if(radio_select()=='add') echo "checked='true'" ?>>Add Subject</td>
<td align="right"><input type="radio" id="remove" name="Entry" value="remove"  onclick="location.href = 'subjects.php?type=remove'" <?php if(radio_select()=='remove') echo "checked='true'" ?>>Remove Subject</td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
</table>
<?php if(!isset($_GET['mode'])){ ?>
<?php
$mode=radio_select();
if($mode=='add')
{

?>
<br />
<br />
<form action="finish.php?type=add" method="POST">
<table>
<tr>
<th>Select the Semister</th>
<th><select name='year'>
	<option value='1'>1</option>
	<option value='2-1'>2-1</option>
	<option value='2-2'>2-2</option>
	<option value='3-1'>3-1</option>
	<option value='3-2'>3-2</option>
	<option value='4-1'>4-1</option>
	<option value='4-2'>4-2</option>
</select></th></tr>
</table>
<table align="center" id="add">
<tr>
<th id='resiz'>Subject Name
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="subj"> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Subject Type
</th>
<th id='resiz'>:
</th>
<td id='resiz'><select name='type'>
	<option value='lab'>LAB</option>
	<option value='theory'>THEORY</option>
</select>
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='sub' colspan="3"><input type="submit" name="submit" id="submit"/>
</th>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
</table>
</form>
<br />
<br />
<?php } ?>
<?php
$mode=radio_select();
if($mode=='remove')
{

?>
<br />
<br />
<form action="subjects.php?mode=year" method="POST" enctype='multipart/form-data'>
<table>
<tr>
<th>Select the year</th>
<th><?php (year_checkbox())?></th></tr>
</table>
<table align="center">
	<tr><td><input type='submit' name='submit' /></td></tr>
</table>
</form>
<br />
<br />
<?php } ?>
<?php } ?>
<?php if(isset($_GET['mode']) && $_GET['mode']=='year'){ 

	if(!isset($_POST['submit']))redirect_to('subjects.php')?>
<hr / >
<form action="finish.php?type=delete" method="POST">
<?php 
echo "<pre>";
	print_subject(get_yearwisesubjects($_POST));
	echo "</pre>";

?>
<?php } ?>
</form>
 <?php include("../includes/layouts/faculty/footer.php"); ?>