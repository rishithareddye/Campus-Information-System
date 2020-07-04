<?php include("../includes/layouts/admin/header.php"); ?>
<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>
<table align="center">
  <tr>
<td colspan="2"><h4 align="center">MANAGE FACULTY</h4>
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
<td><input type="radio" id="add" name="Entry" value="add" onclick="location.href = 'faculty.php?type=add'" <?php if(radio_select()=='add') echo "checked='true'" ?>>Add Faculty</td>
<td align="right"><input type="radio" id="delete" name="Entry" value="delete"  onclick="location.href = 'faculty.php?type=delete'" <?php if(radio_select()=='delete') echo "checked='true'" ?>>Remove Faculty</td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
</table>
<?php if(!isset($_GET['mode'])) {?>
<?php
$mode=radio_select();
if($mode=='add')
{

?>
<br />
<br />
<form action="finish.php?type=add" method="POST">
<table align="center" id="add">
<tr>
<th id='resiz'>Faculty Id
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="facid"> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Faculty Name
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="name" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Department
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="dept" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Qualification
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="qualification" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Designation
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="desig" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Date Of Birth
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="dob" placeholder="dd/mm/yyyy" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Contact Number
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="cno" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<th id='resiz'>Email Id
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="emailid" /> 
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
if($mode=='delete')
{

?>
<br />
<br />
<form action="faculty.php?mode=select" method="POST" enctype='multipart/form-data'>
<table>
<tr>
<th>Select the Faculty</th>
<th><?php faculty_checkbox(); ?></th></tr>
</table>
<table align="center" id="add">
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz' colspan="4" align="center" style="color:#df0202;"><?php ?>
</th>
<td>
</td>
</tr>

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
<?php } ?>
<?php if(isset($_GET['mode'])) 
{
echo "{$_GET['mode']}";
echo "<pre>";
print_r($_POST);
echo "</pre>";
}
?>

 <?php include("../includes/layouts/admin/footer.php"); ?>

