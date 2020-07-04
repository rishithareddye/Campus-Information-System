<?php include("../includes/layouts/admin/header.php"); ?>
<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>
  <table align="center">
  <tr>
<td colspan="2"><h4 align="center">NEW STUDENT ENTRY FORM</h4>
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
<td><input type="radio" id="single" name="Entry" value="single" onclick="location.href = 'newentry.php?type=single'" <?php if(radio_select()=='single') echo "checked='true'" ?>>Single Entry</td>
<td align="right"><input type="radio" id="multiple" name="Entry" value="Multiple"  onclick="location.href = 'newentry.php?type=multiple'" <?php if(radio_select()=='multiple') echo "checked='true'" ?>>Group Entry</td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
</table>
<?php
$mode=radio_select();
if($mode=='single')
{

?>
<br />
<br />
<form action="finish.php?type=single" method="POST">
<table>
<tr>
<th>Select the Section</th>
<th><?php (section_checkbox())?></th></tr>
</table>
<table align="center" id="add">
<tr>
<th id='resiz'>Roll Number
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="rollno"> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Name
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="name" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Father's Name
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="f_name" /> 
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
<tr>
<th id='resiz'>Parent's Number
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="pno" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Email Id
</th>
<th id='resiz'>:
</th>
<td id='resiz'><input type="text" id='resp' name="emailid" /> 
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Address
</th>
<th id='resiz'>:
</th>
<td id='resiz'><textarea name="addr" /></textarea>
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
if($mode=='multiple')
{

?>
<br />
<br />
<form action="finish.php?type=multiple" method="POST" enctype='multipart/form-data'>
<table>
<tr>
<th>Select the Section</th>
<th><?php (section_checkbox())?></th></tr>
</table>
<table align="center" id="add">
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz' colspan="4" align="center" style="color:#df0202;">UPLOAD SHEETS AS PER THE SECTION
</th>
<td>
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz' colspan="2">Upload File (.xls only)
</th>
<td id='resiz'><input type='file' name='file1'>
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz' colspan="2">Reference File (.xls)
</th>
<td id='resiz'><a href="../admin/refsheets/studentworkbook.xls">Click To Download </a>
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

 <?php include("../includes/layouts/admin/footer.php"); ?>

