<?php
include("../lib/php/begin.php");
echo "<title>건희 사이트</title>";
echo "<script type='text/javascript' src='local.js'></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");
include($project_path . "/lib/php/lib.php");

echo "<form name='f' method='post'>";
echo "<input type='hidden' name='in_data2'>";
echo "<input type='hidden' name='test' value=1>";
echo "<input type='button' value='삭제' onclick=\"goDelete(".$_REQUEST["in_data"].");\">";



$strSQL = "select * from st1_board_item where ";
$strSQL.= "bino = ".$_REQUEST["in_data"]." ";
						echo "<br>".$strSQL;
						$result = mysqli_query($db_connect, $strSQL);
						if (!$result) {
							echo "Error : " . mysqli_error($db_connect);
							die();
						}
						while ($rs = mysqli_fetch_array($result)) {
							echo "<input type='hidden' value=".$rs["bititle"]." name='db_title'>";
							echo "<input type='hidden' value=".$rs["biwriter"]." name='db_writer'>";
							echo "<input type='hidden' value=".$rs["bitext"]." name='db_text'>";
							echo "<input type='hidden' value=".$rs["bino"]." name='db_no'>";
							
							echo "<table class='EditTbl2' width='100%' cellspacing='0' cellpadding='0' style=''>";
								show_td("제목", $rs["bititle"]);
								show_td("글쓴이",$rs["biwriter"]);
								show_td("내용",$rs["bitext"]);
								
							echo "</table>";
							echo "<div><span>첨부파일</span> ";
								$strSQL = "select * from st1_board_attf where atnum = '" .$_REQUEST["in_data"]. "' order by atseno ";
								$result2 = mysqli_query($db_connect, $strSQL);
								while ($rs2 = mysqli_fetch_array($result2)) {
									echo "<a href='http://118.45.89.50/attf/" .$rs2["atsvfile"]. "'>";
									echo $rs2["atpcfile"] . "[" .$rs2["atfilesize"]. "]";
									echo "</a><br>";
								}
								mysqli_free_result($result2);	
								
							echo "</div>";
						}
						mysqli_free_result($result);
						
echo "<input type='button' value='수정하기' onclick=goWrite();>";


echo "</form>";
include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/end.php");

?>


