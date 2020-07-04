<?php include("../includes/layouts/admin/header.php"); ?>
<?php include("../includes/db_connection.php"); ?>
<?php include("../includes/functions.php"); ?>

 <table align="center">
  <tr>
<td colspan="2"><h4 align="center">EXAM TIME TABLE</h4>
</td>
</tr>
  <tr>
<td colspan="2"><h4 align="center"><form action="finish.php?type=deletetable" method="POST"><?php print_examtable(get_examtable())?></form>
</td>
</tr>
</table>
<?php
$mode=radio_select();
?>
<form action="finish.php?type=examtable" method="POST" enctype='multipart/form-data'>
<hr />
<br />
<table>
<tr>
<th>Select the Section</th>
<th><?php (section_checkbox())?></th></tr>
</table>

<table align="center" id="add">
<tr>
<th id='resiz' colspan="2">Upload File (Image or PDF)
</th>
<td id='resiz'><input type='file' name='file1'>
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>
<th id='resiz'>Description
</th>
<th id='resiz'>:
</th>
<td id='resiz'><textarea id='resp' name="desc" cols="15"> </textarea>
</td>
</tr>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
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
<?php include("../includes/layouts/admin/footer.php"); ?>