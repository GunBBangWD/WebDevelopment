<?php
include("../lib/php/begin.php");
echo "<title>건희 사이트</title>";
echo "<script type='text/javascript' src='local.js'></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");
echo "<form name='f' method='post'>";
echo "</form>";

echo "<input type='button' value='리스트로 돌아가기' onclick='goList();'>";
echo "<div> 삭제 완료 </div>";


$strSQL = "delete from st1_board_item where ";
$strSQL.= "bino=".$_REQUEST["in_data2"]." ";
						echo "<br>".$strSQL;
						$result = mysql_query($strSQL, $db_connect);
						if (!$result) {
							echo "Error : " . mysql_error();
							die();
						}
include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/end.php");
?>