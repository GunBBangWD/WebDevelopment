<?php
include("../lib/php/begin.php");
echo "<title>���� ����Ʈ</title>";
echo "<script type='text/javascript' src='local.js'></script>";
include($project_path . "/lib/php/header.php");
include($project_path . "/lib/php/db_begin.php");
include($project_path . "/lib/php/lib.php");

echo "<form name='f' method='post'>";
echo "<input type='hidden' name='in_data2'>";
echo "<input type='button' value='����' onclick=\"goDelete(".$_REQUEST["in_data"].");\">";



$strSQL = "select * from st1_board_item where ";
$strSQL.= "bino = ".$_REQUEST["in_data"]." ";
						echo "<br>".$strSQL;
						$result = mysql_query($strSQL, $db_connect);
						if (!$result) {
							echo "Error : " . mysql_error();
							die();
						}
						while ($rs = mysql_fetch_array($result)) {
							echo "<input type='hidden' value=".$rs["bititle"]." name='db_title'>";
							echo "<input type='hidden' value=".$rs["biwriter"]." name='db_writer'>";
							echo "<input type='hidden' value=".$rs["bitext"]." name='db_text'>";
							echo "<input type='hidden' value=".$rs["bino"]." name='db_no'>";
							
							echo "<table class='EditTbl2' width='100%' cellspacing='0' cellpadding='0' style=''>";
								show_td("����", $rs["bititle"]);
								show_td("�۾���",$rs["biwriter"]);
								show_td("����",$rs["bitext"]);
								
							echo "</table>";
							echo "<div><span>÷������</span> ";
								$strSQL = "select * from st1_board_attf where atnum = '" .$_REQUEST["in_data"]. "' order by atseno ";
								$result2 = mysql_query($strSQL, $db_connect);
								while ($rs2 = mysql_fetch_array($result2)) {
									echo "<a href='http://st1.bizlet.kr/attf/" .$rs2["atsvfile"]. "'>";
									echo $rs2["atpcfile"] . "[" .$rs2["atfilesize"]. "]";
									echo "</a><br>";
								}
								mysql_free_result($result2);	
								
							echo "</div>";
						}
						mysql_free_result($result);
						
echo "<input type='button' value='�����ϱ�' onclick=goWrite();>";


echo "</form>";
include($project_path . "/lib/php/db_end.php");
include($project_path . "/lib/php/end.php");

?>


