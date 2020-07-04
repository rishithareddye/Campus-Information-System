<?php 

require("excelreader/reader.php"); // php excel reader
function insert($query){
	if($query==null || $query=="")
	{

	}
	else{
			global $connection;

	$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");

				}
			}
}
function query_marks($arr,$key){
	$len=count($arr);
	$table="tb_".strtolower($arr['section'])."_marksheet";
	for($i=3;$i<$len-1;$i++){
	$query="INSERT INTO ".$table." (rollno) VALUES('".$key[$i]."')";
	echo "<br /> $query";
	insert($query);
}
for($i=3;$i<$len-1;$i++){
	$query="UPDATE ".$table." SET internal=".$arr['sem'].",".$arr['faculty']."=".$arr[$key[$i]]." WHERE rollno='".$key[$i]."'";
	echo "<br /> $query";
	insert($query);
}
}
function create($query){
	if($query==null || $query=="")
	{

	}
	else{
			global $connection;

	$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");

				}
			}
}
function convert($details,$cols,$section)
{
	$len=(int)$cols;
	if($len==9)
	{
		if(is_nan((double)$details[0]))
		{
			echo "Invalid Format Please check the reference sheet";
			return null;
		}
		else
		{
			if(is_nan((double)$details[5])||is_nan((double)$details[6]))
			{
				echo "Invalid Format Please check the reference sheet";
				return null;
			}
			else
			{
				$arr = array("rollno"=>$details[1], "name"=>$details[2],"f_name"=>$details[3], "dob"=>$details[4],"cno"=>$details[5], "pno"=>$details[6],"emailid"=>$details[7], "addr"=>$details[8],"section"=>$section);
				add_singlestudent($arr);
				return $arr;
			}
		}
	}
	else
	{
		if(is_nan((double)$details[0]))
		{
			echo "Invalid Format Please check the reference sheet";
			return null;
		}
	}
}
function uploads($ext)
{
$img = array("tif","tiff","gif","jpeg","jpg","jif","jfif","jp2","jpx","j2k","j2c","fpx","pcd","png");
$xls= array("xls");
$pdf= array("pdf");
$doc= array("doc","docx");
if(is_uploaded_file($_FILES['file1']['tmp_name']))
{
$file=$_FILES['file1']['name'];
$path ="uploads/".$file;
$ext=pathinfo($path,PATHINFO_EXTENSION);
if (!in_array(strtolower($ext), $xls))
{
	echo "invalid";
}
else
{
$name=pathinfo($path,PATHINFO_FILENAME);
echo $_FILES["file1"]["size"];
    $new_name="uploads/".$name.".".$ext;
    move_uploaded_file($_FILES['file1']['tmp_name'],$new_name);
    echo "file uploded";
    return $new_name;
}
}
else
echo "Not uploaded";
}
function radio_select()
{
	if(isset($_GET['type']))
	{
		return $_GET['type'];
	}
	else
		return null;
}
function text_value()
{
	if(isset($_GET['size']))
	{
		return $_GET['size'];
	}
	else
		return null;
}
function redirect_to($new_location) {
	  header("Location: " . $new_location);
	  exit;
	}
function mysql_prep($string) {
		global $connection;
		
		$escaped_string = mysqli_real_escape_string($connection, $string);
		return $escaped_string;
	}
function confirm_query($result_set) {
		if (!$result_set) {
			die("Database query failed.");
		}
	}
	function get_profile($userid) {
		global $connection;
		
		$safe_query = mysqli_real_escape_string($connection, $userid);
		
		$query  = "SELECT * ";
	$query .= "FROM tb_studetails ";
	$query .= "WHERE stu_id='{$safe_query}'";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		if($profile = mysqli_fetch_assoc($page_set)) {
			mysqli_free_result($page_set);
			return $profile;
		} else {
			return null;
		}
	}
	function login($uname) {
		global $connection;
		
		$safe_query = mysqli_real_escape_string($connection, $uname);
		
	$query  = "SELECT * ";
	$query .= "FROM tb_login ";
	$query .= "WHERE loginid='{$safe_query}'";
	// use echo to check errors in query
	//echo "$query";
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		if($login = mysqli_fetch_assoc($page_set)) {
			mysqli_free_result($page_set);
			return $login;
		} else {
			return null;
		}
	}
	function section_checkbox()
	{
		global $connection;

			$query  = "SELECT * ";
	$query .= "FROM tb_csesections ";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		$i=0;
			echo "<select name=section id=section>";
				$mode=radio_select();
		while($sections = mysqli_fetch_assoc($page_set)) {
		
  			echo "<option value=".$sections['sname'].">".$sections['sname']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set);
	}
		function section_marks()
	{
		global $connection;

			$query  = "select distinct(section) from tb_timetable order by section";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		$i=0;
			echo "<select name=section id=section>";
		while($sections = mysqli_fetch_assoc($page_set)) {
		
  			echo "<option value=".$sections['section'].">".$sections['section']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set);
	}
	
	function add_singlestudent($arr)
	{
		if(is_null($arr))
		{
			echo "invalid";
		}
		else
		{
					global $connection;
			
			  		$rollno=mysql_prep($arr['rollno']);
			  		$name=mysql_prep($arr['name']);
			  		$rollno=strtoupper($rollno);
			  		$f_name=mysql_prep($arr['f_name']);
			  		$dob=mysql_prep($arr['dob']);
			  		$cno=mysql_prep($arr['cno']);
			  		$pno=mysql_prep($arr['pno']);
			  		$emailid=mysql_prep($arr['emailid']);
			  		$addr=mysql_prep($arr['addr']);
			  		$section=mysql_prep($arr['section']);
					$query  = "INSERT INTO tb_login";
				$query .= " VALUES (";
				$query .= "  '{$rollno}','{$rollno}','student' ";
				$query .= ")";
			echo "$query";
				$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");
				}
				$query  = "INSERT INTO tb_studetails";
				$query .= " VALUES (";
				$query .= "  '{$rollno}','{$name}','{$f_name}','CSE','{$section}','{$dob}','{$addr}','{$cno}','{$pno}','{$emailid}','../students/pics/pic.png' ";
				$query .= ")";
			echo "$query";
				$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");
				}
			}
	}
	function excel($path)
{

$file=$path;
$xlsread=new Spreadsheet_Excel_Reader(); // our main object
$xlsread->read($file);
$startrow=4;
$endrow=0;
$i=1;
$sheets=0;
$k=0;
$row;
$col;
while(isset($xlsread->sheets[$k]))
{
	$sheets++;
	$k++;
}
echo "$sheets <br />";

for($k=0;$k<$sheets;$k++)
{
	$row[$k]=0;
	$col[$k]=0;
	$i=1;
while(isset($xlsread->sheets[$k]["cells"][$i]))
{
	$row[$k]++;
	$i++;
}
$i=1;
while(isset($xlsread->sheets[$k]["cells"][1][$i]))
{
	$col[$k]++;
	$i++;
}

}
print_r($row);
print_r($col);
?>

	<?php
	$query;
	$f;
	for($k=0;$k<$sheets;$k++)
	{
		for($i=1;$i<=$col[$k];$i++)
		{
$head[$i-1]=$xlsread->sheets[$k]["cells"][1][$i];

}
echo "<pre>";
echo "<br />";
print_r($head);
echo "</pre>";

			for($j=2;$j<=$row[$k];$j++)
			{
for($i=1;$i<=$col[$k];$i++)
		{

$val1[$i-1]=isset($xlsread->sheets[$k]["cells"][$j][$i])?$xlsread->sheets[$k]["cells"][$j][$i]:"";
}
echo "<pre>";
echo "<br />";
$result=convert($val1,$col[0],$_POST['section']);
if(is_null($result)){
	echo "Invalid Format Please check the reference sheet";
}
else{
print_r($result);
}
echo "</pre>";
}
}
}
function upload_examtable($arr)
{
	$img = array("tif","tiff","gif","jpeg","jpg","jif","jfif","jp2","jpx","j2k","j2c","fpx","pcd","png","pdf");
if(is_uploaded_file($_FILES['file1']['tmp_name']))
{
$file=$_FILES['file1']['name'];
$path ="exam/".$file;
$ext=pathinfo($path,PATHINFO_EXTENSION);
if (!in_array(strtolower($ext), $img))
{
	echo "invalid";
}
else
{
$name=pathinfo($path,PATHINFO_FILENAME);
echo $_FILES["file1"]["size"];
    $new_name="exam/".$name.".".$ext;
    move_uploaded_file($_FILES['file1']['tmp_name'],$new_name);
    echo "file uploded";
    return $new_name;
}
}
}
function add_examtable($arr)
	{
		if(is_null($arr))
		{
			echo "invalid";
		}
		else
		{
					global $connection;
			  		$desc=mysql_prep($arr['desc']);
			  		$path=mysql_prep($arr['path']);
			  		$section=mysql_prep($arr['section']);
			  		$date=mysql_prep($arr['date']);
					$query  = "INSERT INTO tb_examtable";
				$query .= " VALUES (";
				$query .= "  '{$section}','{$date}','$desc','$path' ";
				$query .= ")";
			echo "$query";
				$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");
				}
			}
	}
	function get_examtable() {
		$i=0;
		$subj;
		$subject=null;
		global $connection;
		$query  = "SELECT * ";
	$query .= "FROM tb_examtable ";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
$subject_set = mysqli_query($connection, $query);
		confirm_query($subject_set);
		while($subj = mysqli_fetch_assoc($subject_set)) {
			if(!($subj['date']==""))
			{
			$subject[$i] = $subj;
		}
		$i++;
		} 
		return $subject;
	}
	function print_examtable($arr)
	{
		$i=1;
		echo " <table align=\"center\" id='block' class='box'>";
		echo "<tr class='head'>";
		echo "<th class='box'>Select</th>";
		echo "<th class='box'>Section</th>";
		echo "<th class='box'>Date</th>";
		echo "<th class='box'>Display</th>";
		echo "</tr>";
		if(is_null($arr))
		{}
	else
	{
		foreach ($arr as $value) {
			echo "<tr class='box'>";
			echo "<td class='box'><input type='checkbox' name=".$value['location']." /></td>";
			echo "<td class='box'>{$value['section']}</td>";
			echo "<td class='box'>{$value['date']}</td>";
			echo "<td class='box'><a href='".$value['location']."'>Click to View</a></td>";
			echo "</tr>";
			$i++;
		}
		echo "</table>";
		echo "<br />";
		echo "<table align='center'>";
		echo "<tr>";
		echo "<td><input type=submit name=submit /></td>";
		echo "</tr>";
		echo "</table>";
	}
}

	function add_faculty($arr)
	{
		if(is_null($arr))
		{
			echo "invalid";
		}
		else
		{
					global $connection;
			
			  		$facid=mysql_prep($arr['facid']);
			  		$name=mysql_prep($arr['name']);
			  		$dept=mysql_prep($arr['dept']);
			  		$qual=mysql_prep($arr['qualification']);
			  		$desig=mysql_prep($arr['desig']);
			  		$dob=mysql_prep($arr['dob']);
			  		$cno=mysql_prep($arr['cno']);
			  		$emailid=mysql_prep($arr['emailid']);
					$query  = "INSERT INTO tb_login";
				$query .= " VALUES (";
				$query .= "  '{$facid}','{$facid}','faculty' ";
				$query .= ")";
			echo "$query";
				$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");
				}
				$query  = "INSERT INTO tb_facdetails";
				$query .= " VALUES (";
				$query .= "  '{$facid}','{$name}','{$dept}','{$qual}','{$desig}','{$dob}','{$cno}','{$emailid}','../faculty/pics/pic.png' ";
				$query .= ")";
			echo "$query";
				$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");
				}
			}
	}	
	function faculty_checkbox()
	{
		global $connection;

			$query1  = "SELECT facid,name ";
	$query1 .= "FROM tb_facdetails ";
	// use echo to check errors in query
		$page_set1 = mysqli_query($connection, $query1);
		confirm_query($page_set1);
		$i=0;
			echo "<select name=section id=section>";
		while($sections = mysqli_fetch_assoc($page_set1)) {
		
  			echo "<option value=".$sections['facid'].">".$sections['name']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set1);
	}
		function year_checkbox()
	{
		global $connection;

			$query  = "SELECT DISTINCT year ";
	$query .= "FROM tb_subjects order by year ";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		$i=0;
			echo "<select name=section id=section>";
				$mode=radio_select();
		while($sections = mysqli_fetch_assoc($page_set)) {
		
  			echo "<option value=".$sections['year'].">".$sections['year']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set);
	}

	function add_subject($arr)
	{
		if(is_null($arr))
		{
			echo "invalid";
		}
		else
		{
					global $connection;
			
			  		$year=mysql_prep($arr['year']);
			  		$subj=mysql_prep($arr['subj']);
			  		$type=mysql_prep($arr['type']);
					$query  = "INSERT INTO tb_subjects";
				$query .= " VALUES (";
				$query .= "  '{$subj}','{$year}','{$type}' ";
				$query .= ")";
			echo "$query";
				$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");
				}
				
			}
	}
	function get_yearwisesubjects($arr) {
		$i=0;
		$subj;
		$subject=null;
		global $connection;
		$year=mysql_prep($arr['section']);
		$query  = "SELECT DISTINCT subject,type ";
	$query .= "FROM tb_subjects WHERE year= '{$year}' order by type desc ";
	// use echo to check errors in query
	//echo "$query";
	$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
$subject_set = mysqli_query($connection, $query);
		confirm_query($subject_set);
		while($subj = mysqli_fetch_assoc($subject_set)) {
			if(!($subj['type']==""))
			{
			$subject[$i] = $subj;
		}
		$i++;
		} 
		 return $subject;
	}
	function print_table($arr)
	{
		$i=1;
		echo " <table align=\"center\" id='block' class='box'>";
		echo "<tr class='head'>";
		echo "<th class='box'>Subject</th>";
		echo "<th class='box'>Faculty</th>";
		echo "</tr>";
		if(is_null($arr))
		{}
	else
	{
		foreach ($arr as $value) {
			echo "<tr class='box'>";
			if(strtolower($value['subject'])=="open elective"|| strtolower($value['subject'])=="elective 1"|| strtolower($value['subject'])=="elective 2"|| strtolower($value['subject'])=="elective 3"|| strtolower($value['subject'])=="elective 4")
			{
			echo "<td class='box'><label name=".$value['subject'].">".$value['subject']."</label><br /><input type='text' name='".$value['subject']."name' /></td>";
		}
		else
		{
			echo "<td class='box'><label name=".$value['subject'].">".$value['subject']."</label></td>";
		}
			echo "<td class='box'>";
				global $connection;
			$query1  = "SELECT facid,name ";
	$query1 .= "FROM tb_facdetails ";
	// use echo to check errors in query
		$page_set1 = mysqli_query($connection, $query1);
		confirm_query($page_set1);
		$i=0;
			echo "<select name='".$value['subject']."'' id=section>";
		while($sections = mysqli_fetch_assoc($page_set1)) {
		
  			echo "<option value=".$sections['facid'].">".$sections['name']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set1);
			echo"</td>";
			echo "</tr>";
			$i++;
		}
		echo "</table>";
		echo "<br />";
		echo "<table align='center'>";
		echo "<tr>";
		echo "<td><input type=submit name=submit value='Add Time Table' /></td>";
		echo "</tr>";
		echo "</table>";
	}
	}
	function insert_subjecttable($get,$post,$keys)
	{
		$m=0;
		$i=0;
		$table_name="tb_timetable";
		$section=mysql_prep($get['section']);
		$sem=(int)mysql_prep($get['sem']);
		foreach ($keys as $arr) {
			if($keys[$i]=="ELECTIVE_1name"||$keys[$i]=="ELECTIVE_2name"||$keys[$i]=="ELECTIVE_3name"||$keys[$i]=="ELECTIVE_4name"||$keys[$i]=="OPEN_ELECTIVEname"){
		}
			else if($keys[$i]=="ELECTIVE_1"||$keys[$i]=="ELECTIVE_2"||$keys[$i]=="ELECTIVE_3"||$keys[$i]=="ELECTIVE_4"||$keys[$i]=="OPEN_ELECTIVE"){
				$c=$keys[$i]."name";
				$k=$keys[$i];
				$post[$k]=mysql_prep($post[$k]);
			$post[$c]=mysql_prep($post[$c]);
			$query="insert into {$table_name} values ('$post[$c]','$post[$k]','{$section}',{$sem});";
			$subj[$m]=$post[$c];
			$m++;
			echo "$query";
			insert($query);
		}
		else if ($keys[$i]=='submit'){
		}
		else{
			$k=$keys[$i];
			$keys[$i]=mysql_prep($keys[$i]);
			$post[$k]=mysql_prep($post[$k]);
			$query="insert into {$table_name} values ('$keys[$i]','$post[$k]','{$section}',{$sem});";
			echo "$query";
			$subj[$m]=$keys[$i];
			insert($query);
			$m++;
		}
$i++;
	}
	return $subj;
}
function create_attendance($get,$post,$keys,$subj){
	global $connection;

			$query1  = "SELECT stu_id ";
	$query1 .= "FROM tb_studetails where stuyear='{$get['section']}' ";
	// use echo to check errors in query
		$page_set1 = mysqli_query($connection, $query1);
		confirm_query($page_set1);
		$i=0;
		$rollnumber=null;
		while($sections = mysqli_fetch_assoc($page_set1)) {
			if($sections==""||is_null($sections))
			{}
		else
		$rollnumber[$i]=$sections;
  		$i++;
		}

mysqli_free_result($page_set1);
foreach ($subj as $value) {


$table_name="tb_".$get['section']."_".$value;
$query="create table IF NOT EXISTS {$table_name} (date varchar(100),";
	$i=0;
foreach($rollnumber as $arr){
	$query.="{$arr['stu_id']} int";
	$i++;
	if(isset($rollnumber[$i])){
		$query.=",";
	}
	}
	$query.=",number int,primary key(date));";
echo "$query";
create($query);
return $rollnumber;
}
}
function create_daywisesheet($get,$post,$keys){
$table_name="tb_".$get['section']."_daysheet";
$query="create table IF NOT EXISTS {$table_name} (date varchar(50),class1 varchar(50),class2 varchar(50),class3 varchar(50),class4 varchar(50),class5 varchar(50),class6 varchar(50),class7 varchar(50),class8 varchar(50),primary key(date));";
echo "<br /> $query";
create($query);
return $table;
}
function faculty_section($section)
	{
		global $connection;
$section=mysql_prep($section);
			$query1  = "SELECT subject,facid ";
	$query1 .= "FROM tb_timetable where section='{$section}' ";
	// use echo to check errors in query
		$page_set1 = mysqli_query($connection, $query1);
		confirm_query($page_set1);
		$i=0;
			echo "<select name=faculty id=faculty>";
		while($sections = mysqli_fetch_assoc($page_set1)) {
		
  			echo "<option value=".$sections['subject'].">".$sections['subject']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set1);
	}
	function select_students($section){
		global $connection;
$section=mysql_prep($section);
			$query1  = "SELECT stu_id ";
	$query1 .= "FROM tb_studetails where section='{$section}'";
	// use echo to check errors in query
		$page_set1 = mysqli_query($connection, $query1);
		confirm_query($page_set1);
		$i=0;
			echo "<select name=faculty id=faculty>";
		while($sections = mysqli_fetch_assoc($page_set1)) {
		
  			echo "<option value=".$sections['facid'].">".$sections['subject']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set1);
	}
	function mutliple_classes($table,$date)
	{
		global $connection;
		$date=mysql_prep($date);
		$table=mysql_prep($table);
			$query1  = "SELECT * ";
	$query1 .= "FROM {$table} where date='{$date}' ";
	// use echo to check errors in query
		$page_set1 = mysqli_query($connection, $query1);
		confirm_query($page_set1);
		$i=0;
			echo "<select name=\"class[]\" id=faculty multiple>";
		$sections = mysqli_fetch_row($page_set1);
		for($i=0;$i<9;$i++)
		{
			if($sections[$i]=="null")
			echo "<option value=".$i.">".$i."</option>";
		}
  		
		
			echo "</select>"; 

mysqli_free_result($page_set1);
	}
	function add_daysheet($date,$table)
	{
		if(is_null($table))
		{
			echo "invalid";
		}
		else
		{
					global $connection;
			  		$date=mysql_prep($date);
			  		$table=mysql_prep($table);
					$query  = "INSERT INTO {$table}";
				$query .= " VALUES (";
				$query .= "  '{$date}','null','null','null','null','null','null','null','null' ";
				$query .= ")";
			//echo "$query";
				$result = mysqli_query($connection,$query);
			
				if ($result) {
					// Success
					//echo "Subject created.";
					//redirect_to("manage_content.php");
				} else {
					// Failure
					echo "Subject creation failed.";
					//redirect_to("new_subject.php");
				}
			}
		}

		function print_students($arr)
	{
		$i=0;
		echo " <table align=\"center\" id='block' class='box'>";
		echo "<tr class='head'>";
		echo "<th class='box'><input type=\"checkbox\" name=\"all\" value=\"all\" id=\"selecctall\" />ALL</th>";
		echo "<th class='box'>Student Names</th>";
		echo "</tr>";
		if(is_null($arr))
		{}
	else
	{
		foreach ($arr as $value) {
			echo "<tr class='box'>";
			echo "<td class='box'><input class=\"checkbox1\" type=\"checkbox\" name=".$i." value=".$value['stu_id']." /></td>";
			echo "<td class='box'>{$value['stu_id']}</td>";
			echo "</tr>";
			$i++;
		}
		echo "</table>";
		echo "<br />";
		echo "<table align='center'>";
		echo "<tr>";
		echo "<td><input type=submit name=submit value='Give Attendance' /></td>";
		echo "</tr>";
		echo "</table>";
	}
	}
		function enter_marks($arr)
	{
		$i=0;
		echo " <table align=\"center\" id='block' class='box'>";
		echo "<tr class='head'>";
		echo "<th class='box'>Student Names</th>";
				echo "<th class='box'>Enter Marks</th>";
		echo "</tr>";
		if(is_null($arr))
		{}
	else
	{
		foreach ($arr as $value) {
			echo "<tr class='box'>";
			echo "<td class='box'>{$value['stu_id']}</td>";
			echo "<td class='box'><input type=\"text\" name=".$value['stu_id']." value=0 /></td>";
			echo "</tr>";
			$i++;
		}
		echo "</table>";
		echo "<br />";
		echo "<table align='center'>";
		echo "<tr>";
		echo "<td><input type=submit name=submit value='Enter Marks' /></td>";
		echo "</tr>";
		echo "</table>";
	}
	}
	
		function out_students($section)
	{
		global $connection;
$section=mysql_prep($section);
			$query  = "SELECT stu_id,name";
	$query .= " FROM tb_studetails where stuyear='{$section}' ";
	//echo "$query";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		$i=0;
		while($sections = mysqli_fetch_assoc($page_set)) {
			if($sections['name']!=null || !is_null($sections))
			{
				$data[$i]=$sections;
				$i++;
			}
		}
		print_students($data);
mysqli_free_result($page_set);
	}
function out_student($section)
	{
		global $connection;
$section=mysql_prep($section);
			$query  = "SELECT stu_id,name";
	$query .= " FROM tb_studetails where stuyear='{$section}' ";
	//echo "$query";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		$i=0;
		while($sections = mysqli_fetch_assoc($page_set)) {
			if($sections['name']!=null || !is_null($sections))
			{
				$data[$i]=$sections;
				$i++;
			}
		}
		enter_marks($data);
mysqli_free_result($page_set);
	}

	function select_periods($section,$date){
		global $connection;
$section=mysql_prep(strtolower($section));
$table="tb_"."$section"."_daysheet";
$table=mysql_prep($table);
			$query1  = "SELECT count(*) as avail ";
	$query1 .= "FROM {$table} where date='{$date}'";

	// use echo to check errors in query
	//echo "$query1";
		$page_set1 = mysqli_query($connection, $query1);
		confirm_query($page_set1);
		$sections = mysqli_fetch_assoc($page_set1);
		if($sections['avail']=='0' && date('d/m/Y')==$date)
		{
			//echo "u are working";
			//<select name="class[]" multiple>
			add_daysheet($date,$table);
			mutliple_classes($table,$date);
  
//</select>
			// insert a empty record with date and use a multiple box to get output
		}		
		else if($sections['avail']=='0' && date('d/m/Y')!=$date)
		{
			echo "Invalid Date";
		}
		else if($sections['avail']!='0'){
			mutliple_classes($table,$date);
		}

mysqli_free_result($page_set1);
	}
		function get_count($section) {
		global $connection;
		
		$safe_query = mysqli_real_escape_string($connection, $section);
		
		$query  = "SELECT count(*) as total ";
	$query .= "FROM tb_studetails ";
	$query .= "WHERE stuyear='{$safe_query}'";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		if($profile = mysqli_fetch_assoc($page_set)) {
			mysqli_free_result($page_set);
			return $profile['total'];
		} else {
			return null;
		}
	}
	function create_marksheet($section,$subj){
		$table_name="tb_".strtolower($section)."_marksheet";
$query="create table IF NOT EXISTS {$table_name} ( rollno varchar(100),internal int,";
for($i=0;$i<count($subj);$i++){ 
$query .= $subj[$i]." int";
if(isset($subj[$i+1])){
	$query .=", ";
}
}
$query .="primary key(rollno,internal)) ";
echo "<br /> $query";
create($query);
	}
	function find_value($section,$table,$date) {
		global $connection;
		
		$safe_query = mysqli_real_escape_string($connection, $section);
		
		$query  = "SELECT * ";
	$query .= "FROM ".$table;
	$query .= " WHERE date='{$date}'";
	// use echo to check errors in query
	echo "$query";
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		if($profile = mysqli_fetch_assoc($page_set)) {
			mysqli_free_result($page_set);
			return $profile;
		} else {
			return null;
		}
	}
	function post_attendance($arr,$count){
		global $connection;
					$classes=count($arr['class']);
			  		$date=mysql_prep($arr['date']);
			  		$section=mysql_prep($arr['section']);
			  		$section=strtolower($section);
			  		$subject=mysql_prep($arr['faculty']);
			  		$table="tb_".$section."_".$subject;
			  		$value=find_value($section,$table,$date);
			  		if(is_null($value))
			  		{
					$query  = "INSERT INTO tb_".$section."_".$subject;
				$query .= " VALUES (";
				$query .= "  '{$date}'";
				for($i=0;$i<(int)$count;$i++){
					if(isset($arr[$i])){
						$query .= " ,{$classes}";

				}
				else{
					$query .= " ,0";
				}
				
				}	
				$query .= " ,{$classes}";
				$query .= ")";
			echo "$query";
			
} 
		else
		{
			$keys=array_keys($value);
			$cou=count($keys);
			if(isset($arr[0]))
			{
				$sum=(int)$classes+(int)$value[$keys[1]];
			}
			else
			{
				$sum=(int)$value[$keys[1]];
			}
			$query  = "UPDATE tb_".$section."_".$subject." SET ".$keys[1]."=".$sum;
			for($i=2;$i<(int)$cou-1;$i++)
			{
				$k=$i-1;
				if(isset($arr[$k]))
			{
				$sum=(int)$classes+(int)$value[$keys[$i]];
			}
			else
			{
				$sum=(int)$classes;
			}
				$query.=",".$keys[$i]."=".$sum;
			}
			$tot=(int)$value['number']+(int)$classes;
			$query.=",number={$tot} WHERE date='$date' ";
			echo "$query";
		}
			if (mysqli_query($connection, $query)) {
				  echo "Record updated successfully";
		}
  
    else {
    echo "Error updating record: " . mysqli_error($connection);
}
				
			}
			function add_class($arr,$subject,$section){
		global $connection;
					$classes=count($arr);
			  		$subject=mysql_prep($subject);
				for($i=0;$i<(int)$classes;$i++){
					$query  = "UPDATE tb_".$section."_daysheet";
						$query .= " SET class".$arr[$i]."='{$subject}' WHERE class".$arr[$i]."= 'null' ";
					echo "$query <br />";
					if (mysqli_query($connection, $query)) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . mysqli_error($conn);
}
				}	

				
			}

	
	
	function complaints_student()
	{
		global $connection;

			$query  = "SELECT * ";
	$query .= "FROM tb_comp ";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		$i=0;
			echo "<select name=section id=section>";
				$mode=radio_select();
		while($sections = mysqli_fetch_assoc($page_set)) {
		
  			echo "<option value=".$sections['id'].">id".$sections['id']."-".$sections['sfid']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set);
	}
	
	function complaints_faculty()
	{
		global $connection;

			$query  = "SELECT * ";
	$query .= "FROM tb_fcomp ";
	// use echo to check errors in query
		$page_set = mysqli_query($connection, $query);
		confirm_query($page_set);
		$i=0;
			echo "<select name=section id=section>";
				$mode=radio_select();
		while($sections = mysqli_fetch_assoc($page_set)) {
		
  			echo "<option value=".$sections['id'].">id".$sections['id']."-".$sections['fid']."</option>";
		}
			echo "</select>"; 

mysqli_free_result($page_set);
	}
	
?>
