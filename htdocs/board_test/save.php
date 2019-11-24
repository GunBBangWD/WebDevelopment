<?php
include("../lib/php/begin.php");
echo "<title>건희 사이트</title>";
echo "<script type='text/javascript' src='local.js'></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");
include($project_path . "/lib/php/lib.php");
echo "<form name='f' method='post'>";
echo "</form>";
$strSQL = "select * from st1_board_item where ";
$strSQL.= "bino=".$_REQUEST["db_no"]." ";
						echo "<br>".$strSQL;
						$result = mysql_query($strSQL, $db_connect);
						if ($rs=mysql_fetch_array($result)) {
							$IsFound = true;
						}else{
							$IsFound = false;
						}
						
if($IsFound){
		$strSQL = "update st1_board_item set biwriter='" .$_REQUEST["txtBiwriter"]. "', bititle='" .$_REQUEST["txtBstitle"]. "',biwrite_time = now() ,bitext='" .$_REQUEST["txtBitext"]."' where bino=".$_REQUEST["db_no"];
	echo "<br>".$strSQL;
	$rs = mysql_query($strSQL, $db_connect);
	if (!$rs) {
		echo "Error : " . mysql_error();
		//mysql_query("rollback", $db_connect);
		die();
	}
}else{
	$strSQL = "insert into st1_board_item (biwriter, bititle, bitext, biwrite_date, biwrite_time) values(";
	$strSQL.= "'" .$_REQUEST["txtBiwriter"]. "',";
	$strSQL.= "'" .$_REQUEST["txtBstitle"]. "',";
	$strSQL.= "'" .$_REQUEST["txtBitext"]. "',";
	$strSQL.= "now(), ";
	$strSQL.= "now() ";
	$strSQL.= ")";
	echo "<br>".$strSQL;
	$rs = mysql_query($strSQL, $db_connect);
	if (!$rs) {
		echo "Error : " . mysql_error();
		//mysql_query("rollback", $db_connect);
		die();
	}
	
	$_REQUEST["db_no"] = GetLastDbKey($db_connect);
	
}

if (is_uploaded_file($_FILES["fileupload"]["tmp_name"])){
	$max_seno = GetAttfMaxSeno($db_connect, $_REQUEST["db_no"]);
	$file_ext = filename_ext($_FILES["fileupload"]["name"]);
	$svfile = $_REQUEST["db_no"]."_".$max_seno. "." . $file_ext ;
	move_uploaded_file($_FILES["fileupload"]["tmp_name"], $project_path . "/attf/".$svfile);
	
	$strSQL = "insert into st1_board_attf (atnum, atseno, atsvfile, atpcfile, atfilesize) values (";
	$strSQL.= "'" .$_REQUEST["db_no"]. "', ";
	$strSQL.= "'" .$max_seno. "', ";
	$strSQL.= "'" .$svfile. "', ";
	$strSQL.= "'" .$_FILES["fileupload"]["name"]. "', ";
	$strSQL.= "'" .$_FILES["fileupload"]["size"]. "' ";
	$strSQL.= ")";
	$rs = mysql_query($strSQL, $db_connect);
	if (!$rs) {
		echo "Error : " . mysql_error();
		die();
	}
	echo "<br>".$strSQL;
}

echo "<input type='button' value='리스트로 돌아가기' onclick='goList();'>";

include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/end.php");
?>