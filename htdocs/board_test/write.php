<?php
include("../lib/php/begin.php");
echo "<title>���� ����Ʈ</title>";
echo "<script type='text/javascript' src='local.js'></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");
include($project_path . "/lib/php/lib.php");


echo "<form name='f' method='post' enctype='multipart/form-data'>";
echo "<input type='hidden' value=".$_REQUEST["db_no"]." name='db_no'>";
echo "<input type='button' value='����' onclick='goSave();'><br>";

echo "<table class='EditTbl2' width='100%' cellspacing='0' cellpadding='0' style=''>";
	show_td("����", "<input type='text' name='txtBstitle' value='" .$_REQUEST["db_title"]. "' style='width:100%;'>");
	show_td("�۾���", "<input type='text' name='txtBiwriter' value='" .$_REQUEST["db_writer"]. "' style='width:100%;'>");
	show_td("����", "<textarea name='txtBitext' style='width:100%; height:200px; '>" .$_REQUEST["db_text"]. "</textarea>");
	//show_td("÷������", "<input type='file' name='fileupload' onchange=' goUpload(); '>");
	show_td("÷������", "<input type='file' name='fileupload'>");
echo "</table>";

echo "</form>";



include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/end.php");
?>