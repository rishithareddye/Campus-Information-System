 <?php include("../includes/layouts/faculty/header.php"); ?>
<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>
<?php if(!isset($_GET['mode']))
{
?>
 <table align="center">
  <tr>
<td colspan="2"><h4 align="center">MARKS ENTRY</h4>
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
<td><input type="radio" id="internal" name="Entry" value="internal" onclick="location.href = 'marks.php?type=internal'" <?php if(radio_select()=='internal') echo "checked='true'" ?>>Internal Marks</td>
<td align="right"><input type="radio" id="external" name="Entry" value="external"  onclick="location.href = 'marks.php?type=external'" <?php if(radio_select()=='external') echo "checked='true'" ?>>External Marks</td>
</tr>
<tr>
<td>
</td>
<td></td>
</tr>
</table>
<?php
$mode=radio_select();
if($mode=='internal')
{

?>
<br />
<br />
<form action="marks.php?mode=select" method="POST">
<table align='center'>
<tr>
<th>Section</th>
<th><?php section_marks()?></th></tr>
<tr><th colspan="2"><input type='submit' name='vale' /></th></tr>
</table>

</form>
<br />
<br />
<?php } ?>
<?php
$mode=radio_select();
if($mode=='external')
{

?>
<br />
<br />
<form action="finish.php?type=external" method="POST" enctype='multipart/form-data'>
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
<?php } ?>
<?php if(isset($_GET['mode']) && $_GET['mode']=='select'){
?>
<form action="finish.php?type=marks" method="POST">
<table align='center'>
<tr>
<th>Section</th>
<th><?php faculty_section($_POST['section']); ?></th>
<th>Semister</th>
<th><select name=sem><option value='1'>1</option><option value='2'>2</option></select></th></tr></tr>
</table>
<input type=hidden name=section value=<?php echo $_POST['section']?> />
<br />
<br />
 <?php out_student($_POST['section']); ?>
 </form>
<?php	} ?>
 <?php include("../includes/layouts/faculty/footer.php"); ?>
