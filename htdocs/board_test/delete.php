<?php
include("../lib/php/begin.php");
echo "<title>건희 사이트</title>";
echo "<script type='text/javascript' src='local.js'charset=utf-8></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");
echo "<form name='f' method='post'>";
echo "</form>";

echo "<input type='button' value='리스트로 돌아가기' onclick='goList();'>";
echo "<div> 삭제 완료 </div>";


$strSQL = "delete from st1_board_item where ";
$strSQL.= "bino=".$_REQUEST["in_data2"]." ";
						echo "<br>".$strSQL;
						$result = mysqli_query($db_connect, $strSQL);
						if (!$result) {
							echo "Error : " . mysqli_error($db_connect);
							die();
						}
include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/end.php");
?>