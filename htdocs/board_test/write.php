<?php
include("../lib/php/begin.php");
echo "<title>건희 사이트</title>";
echo "<script type='text/javascript' src='local.js'charset='euc-kr'></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");
include($project_path . "/lib/php/lib.php");
echo "<form name='f' method='post' enctype='multipart/form-data'>";
if($_REQUEST["test"]==1){
echo "<input type='hidden' value=".$_REQUEST["db_no"]." name='db_no'>";
echo "<input type='button' value='저장' onclick='goSave();'><br>";

echo "<table class='EditTbl2' width='100%' cellspacing='0' cellpadding='0' style=''>";
	show_td("제목", "<input type='text' name='txtBstitle' value='" .$_REQUEST["db_title"]. "' style='width:100%;'>");
	show_td("글쓴이", "<input type='text' name='txtBiwriter' value='" .$_REQUEST["db_writer"]. "' style='width:100%;'>");
	show_td("내용", "<textarea name='txtBitext' style='width:100%; height:200px; '>" .$_REQUEST["db_text"]. "</textarea>");
	//show_td("첨부파일", "<input type='file' name='fileupload' onchange=' goUpload(); '>");
	show_td("첨부파일", "<input type='file' name='fileupload'>");
echo "</table>";
}else{
	echo "<input type='hidden' value=-1 name='db_no'>";
	echo "<input type='button' value='저장' onclick='goSave();'><br>";

	echo "<table class='EditTbl2' width='100%' cellspacing='0' cellpadding='0' style=''>";
		show_td("제목", "<input type='text' name='txtBstitle' style='width:100%;'>");
		show_td("글쓴이", "<input type='text' name='txtBiwriter'  style='width:100%;'>");
		show_td("내용", "<textarea name='txtBitext' style='width:100%; height:200px; '></textarea>");
		//show_td("첨부파일", "<input type='file' name='fileupload' onchange=' goUpload(); '>");
		show_td("첨부파일", "<input type='file' name='fileupload'>");
	echo "</table>";
}

echo "</form>";



include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/end.php");
?>